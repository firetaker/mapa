000001 ID Division.                                                     00000001
000002 Program-ID. testantlr352.                                        00000002
000003 Procedure Division.                                              00000003
000004                                                                  00000004
000005 >>DEFINE IGY-ARCH 0                                              00000005
000006 >>DEFINE VAR1 0                                                  00000006
000007                                                                  00000007
000008 >>EVALUATE TRUE                                                  00000008
000009 >>WHEN IGY-CICS                                                  00000009
000010     EXEC CICS                                                    00000010
000011          XCTL                                                    00000011
000012          PROGRAM('IGYCICS1')                                     00000012
000013     END-EXEC                                                     00000013
000014 >>WHEN IGY-ARCH > 10                                             00000014
000015     CALL 'IGYARCH1' USING                                        00000015
000016          X                                                       00000016
000017          Y                                                       00000017
000018          Z                                                       00000018
000019     END-CALL                                                     00000019
000020 >>WHEN VAR2 IS DEFINED                                           00000020
000021     CALL 'VAR2#1' USING                                          00000021
000022          X                                                       00000022
000023          Y                                                       00000023
000024          Z                                                       00000024
000025     END-CALL                                                     00000025
000026 >>WHEN VAR1 + 1 = 2                                              00000026
000027     CALL 'VAR1#1' USING                                          00000027
000028          X                                                       00000028
000029          Y                                                       00000029
000030          Z                                                       00000030
000031     END-CALL                                                     00000031
000032 >>WHEN OTHER                                                     00000032
000033     CALL 'OTHER#1' USING                                         00000033
000034          X                                                       00000034
000035          Y                                                       00000035
000036          Z                                                       00000036
000037     END-CALL                                                     00000037
000038 >>END-EVALUATE                                                   00000038
000039                                                                  00000039
000040 >>DEFINE VAR1 AS 1                                               00000040
000041                                                                  00000041
000042 >>EVALUATE TRUE                                                  00000042
000043 >>WHEN IGY-CICS                                                  00000043
000044     EXEC CICS                                                    00000044
000045          XCTL                                                    00000045
000046          PROGRAM('IGYCICS2')                                     00000046
000047     END-EXEC                                                     00000047
000048 >>WHEN IGY-ARCH > 10                                             00000048
000049     CALL 'IGYARCH2' USING                                        00000049
000050          X                                                       00000050
000051          Y                                                       00000051
000052          Z                                                       00000052
000053     END-CALL                                                     00000053
000054 >>WHEN VAR2 IS DEFINED                                           00000054
000055     CALL 'VAR2#2' USING                                          00000055
000056          X                                                       00000056
000057          Y                                                       00000057
000058          Z                                                       00000058
000059     END-CALL                                                     00000059
000060 >>WHEN VAR1 + 1 = 2                                              00000060
000061     CALL 'VAR1#2' USING                                          00000061
000062          X                                                       00000062
000063          Y                                                       00000063
000064          Z                                                       00000064
000065     END-CALL                                                     00000065
000066 >>WHEN OTHER                                                     00000066
000067     CALL 'OTHER#2' USING                                         00000067
000068          X                                                       00000068
000069          Y                                                       00000069
000070          Z                                                       00000070
000071     END-CALL                                                     00000071
000072 >>END-EVALUATE                                                   00000072
000073                                                                  00000073
000074 >>DEFINE VAR2                                                    00000074
000075                                                                  00000075
000076 >>EVALUATE TRUE                                                  00000076
000077 >>WHEN IGY-CICS                                                  00000077
000078     EXEC CICS                                                    00000078
000079          XCTL                                                    00000079
000080          PROGRAM('IGYCICS3')                                     00000080
000081     END-EXEC                                                     00000081
000082 >>WHEN IGY-ARCH > 10                                             00000082
000083     CALL 'IGYARCH3' USING                                        00000083
000084          X                                                       00000084
000085          Y                                                       00000085
000086          Z                                                       00000086
000087     END-CALL                                                     00000087
000088 >>WHEN VAR2 IS DEFINED                                           00000088
000089     CALL 'VAR2#3' USING                                          00000089
000090          X                                                       00000090
000091          Y                                                       00000091
000092          Z                                                       00000092
000093     END-CALL                                                     00000093
000094 >>WHEN VAR1 + 1 = 2                                              00000094
000095     CALL 'VAR1#3' USING                                          00000095
000096          X                                                       00000096
000097          Y                                                       00000097
000098          Z                                                       00000098
000099     END-CALL                                                     00000099
000100 >>WHEN OTHER                                                     00000100
000101     CALL 'OTHER#3' USING                                         00000101
000102          X                                                       00000102
000103          Y                                                       00000103
000104          Z                                                       00000104
000105     END-CALL                                                     00000105
000106 >>END-EVALUATE                                                   00000106
000107                                                                  00000107
000108 >>DEFINE IGY-ARCH 11                                             00000108
000109                                                                  00000109
000110 >>EVALUATE TRUE                                                  00000110
000111 >>WHEN IGY-CICS                                                  00000111
000112     EXEC CICS                                                    00000112
000113          XCTL                                                    00000113
000114          PROGRAM('IGYCICS4')                                     00000114
000115     END-EXEC                                                     00000115
000116 >>WHEN IGY-ARCH > 10                                             00000116
000117     CALL 'IGYARCH4' USING                                        00000117
000118          X                                                       00000118
000119          Y                                                       00000119
000120          Z                                                       00000120
000121     END-CALL                                                     00000121
000122 >>WHEN VAR2 IS DEFINED                                           00000122
000123     CALL 'VAR2#4' USING                                          00000123
000124          X                                                       00000124
000125          Y                                                       00000125
000126          Z                                                       00000126
000127     END-CALL                                                     00000127
000128 >>WHEN VAR1 + 1 = 2                                              00000128
000129     CALL 'VAR1#4' USING                                          00000129
000130          X                                                       00000130
000131          Y                                                       00000131
000132          Z                                                       00000132
000133     END-CALL                                                     00000133
000134 >>WHEN OTHER                                                     00000134
000135     CALL 'OTHER#4' USING                                         00000135
000136          X                                                       00000136
000137          Y                                                       00000137
000138          Z                                                       00000138
000139     END-CALL                                                     00000139
000140 >>END-EVALUATE                                                   00000140
000141                                                                  00000141
000142 >>DEFINE IGY-CICS                                                00000142
000143                                                                  00000143
000144 >>EVALUATE TRUE                                                  00000144
000145 >>WHEN IGY-CICS                                                  00000145
000146     EXEC CICS                                                    00000146
000147          XCTL                                                    00000147
000148          PROGRAM('IGYCICS5')                                     00000148
000149     END-EXEC                                                     00000149
000150 >>WHEN IGY-ARCH > 10                                             00000150
000151     CALL 'IGYARCH5' USING                                        00000151
000152          X                                                       00000152
000153          Y                                                       00000153
000154          Z                                                       00000154
000155     END-CALL                                                     00000155
000156 >>WHEN VAR2 IS DEFINED                                           00000156
000157     CALL 'VAR2#5' USING                                          00000157
000158          X                                                       00000158
000159          Y                                                       00000159
000160          Z                                                       00000160
000161     END-CALL                                                     00000161
000162 >>WHEN VAR1 + 1 = 2                                              00000162
000163     CALL 'VAR1#5' USING                                          00000163
000164          X                                                       00000164
000165          Y                                                       00000165
000166          Z                                                       00000166
000167     END-CALL                                                     00000167
000168 >>WHEN OTHER                                                     00000168
000169     CALL 'OTHER#5' USING                                         00000169
000170          X                                                       00000170
000171          Y                                                       00000171
000172          Z                                                       00000172
000173     END-CALL                                                     00000173
000174 >>END-EVALUATE                                                   00000174
000175                                                                  00000175
000176                                                                  00000176
000177     GOBACK.                                                      00000177