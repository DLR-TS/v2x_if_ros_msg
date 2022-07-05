# Temp V2x Msgs

Temporary home of the v2x msgs to build up a self-contained build module

## Getting Started
You must have docker and make installed and configured on your system

1. clone the repository:
```bash
git@gitlab.dlr.de:csa/v2x_if_ros_msg.git && cd v2x_if_ros_msg
```

2. build v2x_if_ros_msg:
```bash
make
```

### Build Artifacts 
After running make on this project you get the following:
1. Build artifacts are available in v2x_if_ros_msg/build
2. Docker image available called v2x_if_ros_msg:latest 
3. Within the v2x_if_ros_msg:latest image build artifacts are located at /tmp/v2x_if_ros_msg/build
build artifacts will be available at:
v2x_if_ros_msg/build

Copying build artifacts from the provided docker image into the current working directory:
```bash
docker cp $(docker create --rm v2x_if_ros_msg:latest):/tmp/v2x_if_ros_msg/build .
```

Pulling in v2x_if_ros_msg build artifacts into a Dockerfile:
```Dockerfile
FROM v2x_if_ros_msg:latest AS v2x_if_ros_msg
...

COPY --from=v2x_if_ros_msg /tmp/v2x_if_ros_msg/build .
```



