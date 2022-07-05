# 
# Copyright (C) 2017-2021 German Aerospace Center e.V. (https://www.dlr.de)
# Institute of Transportation Systems. (https://www.dlr.de/ts/)
# 
# Eclipse ADORe, Automated Driving Open Research https://eclipse.org/adore
# 
# This program and the accompanying materials are made available under the
# terms of the Eclipse Public License 2.0 which is available at
# http://www.eclipse.org/legal/epl-2.0.
# 
# SPDX-License-Identifier: EPL-2.0
# 
# 
# File automatically generated with DLR Wind v2 (2021)
# 
# This file belongs to the DLR Wind project de.dlr.ts.v2x:denm_v2:1.5
# 
# Module: DENM_PDU_Descriptions {itu-t(0) identified-organization(4) etsi(0) itsDomain(5) 
#     wg1(1) en(302637) denm(1) version(2)}
# 
# For support contact v2x-ts@dlr.de
# 
# 
cmake_minimum_required(VERSION 3.13)
project(denm_v2_denm_pdu_descriptions)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
    its_container_v2_its_container
)
find_package(Boost)

add_message_files(
    FILES
    AlacarteContainer.msg
    DENM.msg
    DecentralizedEnvironmentalNotificationMessage.msg
    ImpactReductionContainer.msg
    LocationContainer.msg
    ManagementContainer.msg
    ReferenceDenms.msg
    RoadWorksContainerExtended.msg
    SituationContainer.msg
    StationaryVehicleContainer.msg
    Termination.msg
)

generate_messages(
    DEPENDENCIES
    std_msgs
    its_container_v2_its_container
)

##------------------  Receiver  ------------------##
add_executable(receiver
    src/receiver.cpp
    src/udp_receiver.cpp
    src/denm_v2_denm_pdu_descriptions_translator_wind2ros.cpp
    src/denm_v2_denm_pdu_descriptions_receiver.cpp
    src/denm_v2_denm_pdu_descriptions_rserial_decoder.cpp
)
add_dependencies(receiver ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(receiver ${catkin_LIBRARIES})
target_include_directories(receiver PRIVATE include ${catkin_INCLUDE_DIRS})
install(TARGETS receiver RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
##------------------------------------------------##

##------------------   Sender   ------------------##
add_executable(sender
    src/sender.cpp
    src/udp_sender.cpp
    src/denm_v2_denm_pdu_descriptions_translator_ros2wind.cpp
    src/denm_v2_denm_pdu_descriptions_sender.cpp
    src/denm_v2_denm_pdu_descriptions_rserial_encoder.cpp
)
add_dependencies(sender ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(sender ${catkin_LIBRARIES})
target_include_directories(sender PRIVATE include ${catkin_INCLUDE_DIRS})
install(TARGETS sender RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
##------------------------------------------------##

catkin_package(
    INCLUDE_DIRS include  # This indicates that the folder "include" within the package folder is where exported headers go
    CATKIN_DEPENDS message_runtime std_msgs
    # CATKIN_DEPENDS message_runtime roscpp
)
