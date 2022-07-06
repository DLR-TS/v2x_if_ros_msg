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
# Module: CPM_FreeSpaceAddendum_Descriptions {itu-t(0) identified-organization(4) etsi(0) itsDomain(5) 
#     wg1(1) ts(103324) freeSpaceAddendum(6) version1(1)}
# 
# For support contact v2x-ts@dlr.de
# 
# 
cmake_minimum_required(VERSION 2.8.3)
project(cpm_v1_19_cpm_freespaceaddendum_descriptions)

add_compile_options(-std=c++17)

add_library(${PROJECT_NAME} INTERFACE)
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

find_package(catkin REQUIRED COMPONENTS
    roscpp
    std_msgs
    message_generation
    cpm_v1_19_cpm_commondatatypes_descriptions
)
find_package(Boost)

add_message_files(
    FILES
    FreeSpaceAddendum.msg
    FreeSpaceAddendumContainer.msg
    FreeSpaceArea.msg
)

generate_messages(
    DEPENDENCIES
    std_msgs
    cpm_v1_19_cpm_commondatatypes_descriptions
)

catkin_package(
    CATKIN_DEPENDS message_runtime std_msgs cpm_v1_19_cpm_commondatatypes_descriptions
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

install(DIRECTORY ${PROJECT_SOURCE_DIR}/../../build/devel/include/${PROJECT_NAME} DESTINATION .) 