SHELL:=/bin/bash

.DEFAULT_GOAL := all

ROOT_DIR:=$(shell dirname "$(realpath $(firstword $(MAKEFILE_LIST)))")

include v2x_if_ros_msg.mk

.EXPORT_ALL_VARIABLES:
DOCKER_BUILDKIT?=1
DOCKER_CONFIG?=

SUBMODULES_PATH?=${ROOT_DIR}

include ${SUBMODULES_PATH}/ci_teststand/ci_teststand.mk

.PHONY: all
all: build

.PHONY: set_env 
set_env: 
	$(eval PROJECT := ${V2X_IF_ROS_MSG_PROJECT}) 
	$(eval TAG := ${V2X_IF_ROS_MSG_TAG})

.PHONY: build 
build: root_check docker_group_check set_env clean ## Build v2x_if_ros_msg 
	docker build --network host \
                 --tag ${PROJECT}:${TAG} \
                 --build-arg PROJECT=${PROJECT} .
	docker cp $$(docker create --rm ${PROJECT}:${TAG}):/tmp/${PROJECT}/${PROJECT}/build "${ROOT_DIR}/${PROJECT}"

.PHONY: clean
clean: set_env ## Clean v2x_if_ros_msg build artifacts 
	rm -rf "${ROOT_DIR}/${PROJECT}/build"
	docker rm $$(docker ps -a -q --filter "ancestor=${PROJECT}:${TAG}") --force 2> /dev/null || true
	docker rmi $$(docker images -q ${PROJECT}:${TAG}) --force 2> /dev/null || true

.PHONY: test
test: ci_test
