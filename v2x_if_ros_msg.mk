# This Makefile contains useful targets that can be included in downstream projects.

ifndef v2x_if_ros_msg_MAKEFILE_PATH

MAKEFLAGS += --no-print-directory

.EXPORT_ALL_VARIABLES:
v2x_if_ros_msg_project=v2x_if_ros_msg
V2X_IF_ROS_MSG_PROJECT=${v2x_if_ros_msg_project}

v2x_if_ros_msg_MAKEFILE_PATH:=$(shell realpath "$(shell dirname "$(lastword $(MAKEFILE_LIST))")")
make_gadgets_PATH:=${v2x_if_ros_msg_MAKEFILE_PATH}/make_gadgets
REPO_DIRECTORY:=${v2x_if_ros_msg_MAKEFILE_PATH}

v2x_if_ros_msg_tag:=$(shell cd ${make_gadgets_PATH} && make get_sanitized_branch_name REPO_DIRECTORY=${REPO_DIRECTORY})
V2X_IF_ROS_MSG_TAG=${v2x_if_ros_msg_tag}

v2x_if_ros_msg_image=${v2x_if_ros_msg_project}:${v2x_if_ros_msg_tag}
V2X_IF_ROS_MSG_IMAGE=${v2x_if_ros_msg_image}

v2x_if_ros_msg_CMAKE_BUILD_PATH="${v2x_if_ros_msg_project}/build"
V2X_IF_ROS_MSG_CMAKE_BUILD_PATH=${v2x_if_ros_msg_CMAKE_BULID_PATH}!

v2x_if_ros_msg_CMAKE_INSTALL_PATH="${v2x_if_ros_msg_CMAKE_BUILD_PATH}/install"
V2X_IF_ROS_MSG_CMAKE_INSTALL_PATH=${v2x_if_ros_msg_CMAKE_INSTALL_PATH}


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
