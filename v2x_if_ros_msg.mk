# This Makefile contains useful targets that can be included in downstream projects.

ifeq ($(filter v2x_if_ros_msg.mk, $(notdir $(MAKEFILE_LIST))), v2x_if_ros_msg.mk)

MAKEFLAGS += --no-print-directory

.EXPORT_ALL_VARIABLES:
V2X_IF_ROS_MSG_PROJECT=v2x_if_ros_msg

V2X_IF_ROS_MSG_MAKEFILE_PATH:=$(shell realpath "$(shell dirname "$(lastword $(MAKEFILE_LIST))")")
ifeq ($(SUBMODULES_PATH),)
V2X_IF_ROS_MSG_SUBMODULES_PATH:=${V2X_IF_ROS_MSG_MAKEFILE_PATH}
else
V2X_IF_ROS_MSG_SUBMODULES_PATH:=$(shell realpath ${SUBMODULES_PATH})
endif
MAKE_GADGETS_PATH:=${V2X_IF_ROS_MSG_SUBMODULES_PATH}/make_gadgets
ifeq ($(wildcard $(MAKE_GADGETS_PATH)),)
    $(info INFO: To clone submodules use: 'git submodules update --init --recursive')
    $(info INFO: To specify alternative path for submodules use: SUBMODULES_PATH="<path to submodules>" make build')
    $(info INFO: Default submodule path is: ${V2X_IF_ROS_MSG_MAKEFILE_PATH}')
    $(error "ERROR: ${MAKE_GADGETS_PATH} does not exist. Did you clone the submodules?")
endif
REPO_DIRECTORY:=${V2X_IF_ROS_MSG_MAKEFILE_PATH}

V2X_IF_ROS_MSG_TAG:=$(shell cd ${MAKE_GADGETS_PATH} && make get_sanitized_branch_name REPO_DIRECTORY=${REPO_DIRECTORY})

V2X_IF_ROS_MSG_IMAGE=${V2X_IF_ROS_MSG_PROJECT}:${V2X_IF_ROS_MSG_TAG}

V2X_IF_ROS_MSG_CMAKE_BUILD_PATH="${V2X_IF_ROS_MSG_PROJECT}/build"
V2X_IF_ROS_MSG_CMAKE_INSTALL_PATH="${V2X_IF_ROS_MSG_CMAKE_BUILD_PATH}/install"

include ${MAKE_GADGETS_PATH}/make_gadgets.mk
include ${MAKE_GADGETS_PATH}/docker/docker-tools.mk

.PHONY: build_v2x_if_ros_msg 
build_v2x_if_ros_msg: ## Build v2x_if_ros_msg
	cd "${v2x_if_ros_msg_MAKEFILE_PATH}" && make

.PHONY: clean_v2x_if_ros_msg
clean_v2x_if_ros_msg: ## Clean v2x_if_ros_msg build artifacts
	cd "${v2x_if_ros_msg_MAKEFILE_PATH}" && make clean

.PHONY: branch_v2x_if_ros_msg
branch_v2x_if_ros_msg: ## Returns the current docker safe/sanitized branch for v2x_if_ros_msg
	@printf "%s\n" ${v2x_if_ros_msg_tag}

.PHONY: image_v2x_if_ros_msg
image_v2x_if_ros_msg: ## Returns the current docker image name for v2x_if_ros_msg
	@printf "%s\n" ${v2x_if_ros_msg_image}

.PHONY: update_v2x_if_ros_msg
update_v2x_if_ros_msg:
	cd "${v2x_if_ros_msg_MAKEFILE_PATH}" && git pull

endif
