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
# Element type: BIT STRING
# 
# ASN.1 Definition:
# BIT STRING { ingressPath(0), egressPath(1) }(SIZE(2)) 
#
# ********** START of LaneDirection **********
#

bool[]          values

uint8           ARRAY_SIZE      = 2

uint8           INGRESS_PATH    = 0
uint8           EGRESS_PATH     = 1

# ********** END of LaneDirection   **********
