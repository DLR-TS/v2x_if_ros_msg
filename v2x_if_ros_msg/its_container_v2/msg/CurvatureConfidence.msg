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
# Element type: ENUMERATED
# 
# ASN.1 Definition:
# ENUMERATED { onePerMeter_0_00002(0), onePerMeter_0_0001(1), onePerMeter_0_0005(2), onePerMeter_0_002(3), onePerMeter_0_01(4), onePerMeter_0_1(5), outOfRange(6), unavailable(7) } 
#
# ********** START of CurvatureConfidence **********
#

int8            value

int8            MIN                    = 0
int8            MAX                    = 5
int8            UNAVAILABLE            = 7
int8            OUT_OF_RANGE           = 6

int8            ONE_PER_METER__0_00002 = 0
int8            ONE_PER_METER__0_0001  = 1
int8            ONE_PER_METER__0_0005  = 2
int8            ONE_PER_METER__0_002   = 3
int8            ONE_PER_METER__0_01    = 4
int8            ONE_PER_METER__0_1     = 5

# ********** END of CurvatureConfidence   **********
