#* Copyright (C) 2017-2021 German Aerospace Center e.V. (https://www.dlr.de)        *
#* Institute of Transportation Systems. (https://www.dlr.de/ts/)                    *
#*                                                                                  *
#* Eclipse ADORe, Automated Driving Open Research https://eclipse.org/adore         *
#*                                                                                  *
#* This program and the accompanying materials are made available under the         *
#* terms of the Eclipse Public License 2.0 which is available at                    *
#* http://www.eclipse.org/legal/epl-2.0.                                            *
#*                                                                                  *
#* SPDX-License-Identifier: EPL-2.0                                                 *
#*                                                                                  *
#*                                                                                  *
#* File automatically generated with DLR Wind v2 (2021)                             *
#*                                                                                  *
#* This file belongs to the DLR Wind project de.dlr.ts.v2x:its_container_v2:1.6     *
#*                                                                                  *
#* Module: ITS_Container {itu-t(0) identified-organization(4) etsi(0) itsDomain(5)  *
#*     wg1(1) ts(102894) cdd(2) version(2)}                                         *
#*                                                                                  *
#* For support contact v2x-ts@dlr.de                                                *
#*                                                                                  *

#
# Element type: NUMERICAL
# 
# ASN.1 Definition:
# INTEGER { pointOneMeterPerSecSquaredUp(1), pointOneMeterPerSecSquaredDown(_1), unavailable(161) }(-160 .. 161) SD(10) 
#
# ********** START of VerticalAccelerationValue **********
#

float32         value

float32         MIN                                  = -16
float32         MAX                                  = 16.1
float32         UNAVAILABLE                          = 16.1
int8            SCALEDIVISOR                         = 10

float32         POINT_ONE_METER_PER_SEC_SQUARED_UP   = 1
float32         POINT_ONE_METER_PER_SEC_SQUARED_DOWN = -1

# ********** END of VerticalAccelerationValue   **********
