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
# Element type: NUMERICAL
# 
# ASN.1 Definition:
# INTEGER(0..32767) { mapData(18), rtcmCorrections(28), signalPhaseAndTimingMessage(19), signalRequestMessage(29), signalStatusMessage(30) } 
#
# ********** START of DSRCmsgID **********
#

int16           value

int16           MIN                             = 0
int16           MAX                             = 32767

int16           MAP_DATA                        = 18
int16           RTCM_CORRECTIONS                = 28
int16           SIGNAL_PHASE_AND_TIMING_MESSAGE = 19
int16           SIGNAL_REQUEST_MESSAGE          = 29
int16           SIGNAL_STATUS_MESSAGE           = 30

# ********** END of DSRCmsgID   **********
