#* Copyright (C) 2017-2021 German Aerospace Center e.V. (https://www.dlr.de)                *
#* Institute of Transportation Systems. (https://www.dlr.de/ts/)                            *
#*                                                                                          *
#* Eclipse ADORe, Automated Driving Open Research https://eclipse.org/adore                 *
#*                                                                                          *
#* This program and the accompanying materials are made available under the                 *
#* terms of the Eclipse Public License 2.0 which is available at                            *
#* http://www.eclipse.org/legal/epl-2.0.                                                    *
#*                                                                                          *
#* SPDX-License-Identifier: EPL-2.0                                                         *
#*                                                                                          *
#*                                                                                          *
#* File automatically generated with DLR Wind v2 (2021)                                     *
#*                                                                                          *
#* This file belongs to the DLR Wind project de.dlr.ts.v2x:dsrc_v2:3.0                      *
#*                                                                                          *
#* Module: SSEM_PDU_Descriptions {itu-t(0) identified-organization(4) etsi(0) itsDomain(5)  *
#*     wg1(1) en(103301) ssem(4) version2(2)}                                               *
#*                                                                                          *
#* For support contact v2x-ts@dlr.de                                                        *
#*                                                                                          *

#
# Element type: ENUMERATED
# 
# ASN.1 Definition:
# ENUMERATED { none , mixedContent , generalMapData , intersectionData , curveData , roadwaySectionData , parkingAreaData , sharedLaneData , ... } 
#
# ********** START of LayerType **********
#

int8            value

int8            MIN                  = 0
int8            MAX                  = 7

int8            NONE                 = 0
int8            MIXED_CONTENT        = 1
int8            GENERAL_MAP_DATA     = 2
int8            INTERSECTION_DATA    = 3
int8            CURVE_DATA           = 4
int8            ROADWAY_SECTION_DATA = 5
int8            PARKING_AREA_DATA    = 6
int8            SHARED_LANE_DATA     = 7

# ********** END of LayerType   **********
