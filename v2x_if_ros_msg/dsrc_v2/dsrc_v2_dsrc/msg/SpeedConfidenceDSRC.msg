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
# ENUMERATED { unavailable(0), prec100ms(1), prec10ms(2), prec5ms(3), prec1ms(4), prec0_1ms(5), prec0_05ms(6), prec0_01ms(7) } 
#
# ********** START of SpeedConfidenceDSRC **********
#

int8            value

int8            MIN             = 0
int8            MAX             = 7
int8            UNAVAILABLE     = 0

int8            PREC_100MS      = 1
int8            PREC_10MS       = 2
int8            PREC_5MS        = 3
int8            PREC_1MS        = 4
int8            PREC_0_1MS      = 5
int8            PREC_0_05MS     = 6
int8            PREC_0_01MS     = 7

# ********** END of SpeedConfidenceDSRC   **********
