# ********************************************************************************
# * Copyright (C) 2017-2020 German Aerospace Center (DLR). 
# * Eclipse ADORe, Automated Driving Open Research https://eclipse.org/adore
# *
# * This program and the accompanying materials are made available under the 
# * terms of the Eclipse Public License 2.0 which is available at
# * http://www.eclipse.org/legal/epl-2.0.
# *
# * SPDX-License-Identifier: EPL-2.0 
# *
# * Contributors: 
# *   Thomas Lobig
# ********************************************************************************

cmake_minimum_required(VERSION 2.8.3)
project(v2x_if_ros_msg)

add_subdirectory(its_container_v2)
add_subdirectory(cam_v2)
add_subdirectory(mcm_dmove)
add_subdirectory(mcm_transaid)
add_subdirectory(denm_v2)
add_subdirectory(odds)
add_subdirectory(strp_fau)
add_subdirectory(dsrc_v2/dsrc_v2_electronicregistrationidentificationvehicledatamodule)
add_subdirectory(dsrc_v2/dsrc_v2_dsrc)
add_subdirectory(dsrc_v2/dsrc_v2_addgrpc)
add_subdirectory(dsrc_v2/dsrc_v2_aviaeinumberinganddatastructures)
add_subdirectory(dsrc_v2/dsrc_v2_efcdsrcapplication)
add_subdirectory(dsrc_v2/dsrc_v2_mapem_pdu_descriptions)
add_subdirectory(dsrc_v2/dsrc_v2_spatem_pdu_descriptions)
add_subdirectory(dsrc_v2/dsrc_v2_srem_pdu_descriptions)
add_subdirectory(dsrc_v2/dsrc_v2_ssem_pdu_descriptions)

add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_commondatatypes_descriptions)
add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_originatingstationdata_descriptions)
add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_freespaceaddendum_descriptions)
add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_perceivedobject_descriptions)
add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_sensorinformation_descriptions)
add_subdirectory(cpm_v1_19/cpm_v1_19_cpm_pdu_descriptions)


set(PACKAGE_VENDOR "DLR TS-KOS-SAI")
set(PACKAGE_DESCRIPTION "v2x_if_ros_msg")
set(PACKAGE_MAINTAINER "DLR TS-KOS-SAI")
set(PACKAGE_MAINTAINER_EMAIL "ts-kos-sai@dlr.de")

include(GNUInstallDirs)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(Packing)
