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
# This file belongs to the DLR Wind project de.dlr.ts.v2x:cpm_v1_19:1.3
# 
# Module: CPM_CommonDataTypes_Descriptions {itu-t(0) identified-organization(4) etsi(0) itsDomain(5) 
#     wg1(1) ts(103324) commonDataTypes(2) version1(1)}
# 
# For support contact v2x-ts@dlr.de
# 
# 
cmake_minimum_required(VERSION 3.13)
project(cpm_v1_19_cpm_commondatatypes_descriptions)

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++17)


add_library(${PROJECT_NAME} INTERFACE)
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
    dsrc_v2_dsrc
    its_container_v2_its_container
)
find_package(Boost)

add_message_files(
    FILES
    AngleConfidence.msg
    AnimalSubclassType.msg
    AreaCircular.msg
    AreaEllipse.msg
    AreaPolygon.msg
    AreaRadial.msg
    AreaRectangle.msg
    CartesianAngle.msg
    CartesianAngleValue.msg
    ClassConfidence.msg
    CollectivePerceptionMessage.msg
    CPM.msg
    CpmContainerId.msg
    CpmManagementContainer.msg
    CpmParameters.msg
    CpmParameters_perceptionData.msg
    CpmPerceptionDataContainer.msg
    CpmStationDataContainer.msg
    CpmStationDataId.msg
    DetectionArea.msg
    DistanceConfidence.msg
    DistanceValue.msg
    DynamicStatus.msg
    FreeSpaceAddendum.msg
    FreeSpaceAddendumContainer.msg
    FreeSpaceArea.msg
    FreeSpaceConfidence.msg
    FrontOverhang.msg
    HitchPointOffset.msg
    Identifier.msg
    LongitudinalLanePosition.msg
    LongitudinalLanePositionConfidence.msg
    LongitudinalLanePositionValue.msg
    MatchedPosition.msg
    MessageSegmentInfo.msg
    NodeOffsetPointZ.msg
    NumberOfPerceivedObjects.msg
    ObjectAge.msg
    ObjectClass.msg
    ObjectClassDescription.msg
    ObjectClassWithConfidence.msg
    ObjectConfidence.msg
    ObjectDimension.msg
    ObjectDimensionConfidence.msg
    ObjectDimensionValue.msg
    ObjectDistance.msg
    ObjectRefPoint.msg
    OffsetPoint.msg
    OriginatingRSUContainer.msg
    OriginatingVehicleContainer.msg
    OtherSubclassType.msg
    PersonSubclassType.msg
    PerceivedObject.msg
    PerceivedObjectContainer.msg
    PerceivedObjectContainer_perceivedObjects.msg
    PolyPointList.msg
    Radius.msg
    Range.msg
    RearOverhang.msg
    RefPointId.msg
    SegmentCount.msg
    SemiRangeLength.msg
    SensorHeight.msg
    SensorIdList.msg
    SensorInformation.msg
    SensorInformationContainer.msg
    SensorType.msg
    ShadowingApplies.msg
    SpeedExtended.msg
    SpeedValueExtended.msg
    TimeOfMeasurement.msg
    TrailerData.msg
    TrailerDataContainer.msg
    UnknownSubclassType.msg
    VehicleHeight.msg
    VehicleSubclassType.msg
    VehicleSensor.msg
    VehicleSensorProperties.msg
    VehicleSensorPropertyList.msg
    WGS84Angle.msg
    WGS84AngleValue.msg
    XSensorOffset.msg
    YSensorOffset.msg
    ZSensorOffset.msg
)

generate_messages(
    DEPENDENCIES
    std_msgs
    its_container_v2_its_container
    dsrc_v2_dsrc
)

catkin_package(
    # INCLUDE_DIRS include  # This indicates that the folder "include" within the package folder is where exported headers go
    CATKIN_DEPENDS message_runtime std_msgs
    # CATKIN_DEPENDS message_runtime roscpp
)

install(TARGETS ${PROJECT_NAME}
        EXPORT ${PROJECT_NAME}_Targets
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})


include(CMakePackageConfigHelpers)

configure_package_config_file(
  "${PROJECT_SOURCE_DIR}/cmake/LibraryConfig.cmake.in"
  "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
  INSTALL_DESTINATION
  ${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}/cmake)

install(EXPORT ${PROJECT_NAME}_Targets
        COMPONENT ${PROJECT_NAME}
        FILE ${PROJECT_NAME}Targets.cmake
        NAMESPACE ${PROJECT_NAME}::
        DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}/cmake
)

install(FILES "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
              # "${PROJECT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
        DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}/cmake
        COMPONENT ${PROJECT_NAME}
)

install(DIRECTORY ${PROJECT_SOURCE_DIR}/../build/devel/include/${PROJECT_NAME} DESTINATION .) 