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
# ENUMERATED { neutral(0), park(1), forwardGears(2), reverseGears(3), reserved1(4), reserved2(5), reserved3(6), unavailable(7) } 
#
# ********** START of TransmissionState **********
#

int8            value

int8            MIN             = 0
int8            MAX             = 6
int8            UNAVAILABLE     = 7

int8            NEUTRAL         = 0
int8            PARK            = 1
int8            FORWARD_GEARS   = 2
int8            REVERSE_GEARS   = 3
int8            RESERVED_1      = 4
int8            RESERVED_2      = 5
int8            RESERVED_3      = 6

# ********** END of TransmissionState   **********
