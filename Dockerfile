ARG PROJECT

FROM ros:noetic-ros-core-focal AS v2x_if_ros_msg_requirements_base

ARG PROJECT
ARG REQUIREMENTS_FILE="requirements.${PROJECT}.ubuntu20.04.system"


RUN mkdir -p /tmp/${PROJECT}
WORKDIR /tmp/${PROJECT}
copy files/${REQUIREMENTS_FILE} /tmp/${PROJECT}


RUN apt-get update && \
    xargs apt-get install --no-install-recommends -y < ${REQUIREMENTS_FILE} && \
    rm -rf /var/lib/apt/lists/*

COPY ${PROJECT} /tmp/${PROJECT}/${PROJECT}
copy files/catkin_build.sh /tmp/${PROJECT}/${PROJECT}

FROM v2x_if_ros_msg_requirements_base AS v2x_if_ros_msg_builder
ARG PROJECT
WORKDIR /tmp/${PROJECT}/${PROJECT}
RUN mkdir -p build 
SHELL ["/bin/bash", "-c"]
WORKDIR /tmp/${PROJECT}/${PROJECT}/build

RUN source /opt/ros/noetic/setup.bash && \
    cmake .. && \
    cmake --build . --config Release --target install -- -j $(nproc) && \
    cpack -G DEB && find . -type f -name "*.deb" | xargs mv -t . && \
    cd /tmp/${PROJECT}/${PROJECT}/build && ln -s devel install && \
    mv CMakeCache.txt CMakeCache.txt.build
#RUN bash catkin_build.sh

FROM alpine:3.14

ARG PROJECT
#COPY --from=v2x_if_ros_msg_builder /tmp/${PROJECT}/build /tmp/${PROJECT}/build
COPY --from=v2x_if_ros_msg_builder /tmp/${PROJECT}/${PROJECT} /tmp/${PROJECT}/${PROJECT}

