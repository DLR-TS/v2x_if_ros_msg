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
# Element type: CHOICE
# 
# ASN.1 Definition:
# CHOICE {
#    pathEndPointAngle DeltaAngle,
#    laneCrownPointCenter RoadwayCrownAngle,
#    laneCrownPointLeft RoadwayCrownAngle,
#    laneCrownPointRight RoadwayCrownAngle,
#    laneAngle MergeDivergeNodeAngle,
#    speedLimits SpeedLimitList,
#    ... 
# } 
#
# ********** START of LaneDataAttribute **********
#

uint8                 choice               # Use this field to indicate which of the following fields contains valid data.

DeltaAngle            pathEndPointAngle    # choice = 0
RoadwayCrownAngle     laneCrownPointCenter # choice = 1
RoadwayCrownAngle     laneCrownPointLeft   # choice = 2
RoadwayCrownAngle     laneCrownPointRight  # choice = 3
MergeDivergeNodeAngle laneAngle            # choice = 4
SpeedLimitList        speedLimits          # choice = 5

# ********** END of LaneDataAttribute   **********
