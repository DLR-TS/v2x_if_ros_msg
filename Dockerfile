ARG PROJECT="v2x_if_ros_msg"
ARG REQUIREMENTS_FILE="requirements.ubuntu20.04.system"

FROM ros:noetic-ros-core-focal AS v2x_if_ros_msg_builder

ARG PROJECT
ARG REQUIREMENTS_FILE


RUN mkdir -p /tmp/${PROJECT}
WORKDIR /tmp/${PROJECT}
copy files/${REQUIREMENTS_FILE} /tmp/${PROJECT}


RUN apt-get update && \
    xargs apt-get install --no-install-recommends -y < ${REQUIREMENTS_FILE} && \
    rm -rf /var/lib/apt/lists/*

COPY ${PROJECT} /tmp/${PROJECT}
copy files/catkin_build.sh /tmp/${PROJECT}

WORKDIR /tmp/${PROJECT}
RUN mkdir -p build 
SHELL ["/bin/bash", "-c"]
WORKDIR /tmp/${PROJECT}/build

RUN source /opt/ros/noetic/setup.bash && \
    cmake .. && \
    cmake --build . --config Release --target install -- -j $(nproc) && \
    cpack -G DEB && find . -type f -name "*.deb" | xargs mv -t . && \
    cd /tmp/${PROJECT}/build && ln -s devel install 
#RUN bash catkin_build.sh

FROM alpine:3.14

ARG PROJECT
COPY --from=v2x_if_ros_msg_builder /tmp/${PROJECT} /tmp/${PROJECT}

