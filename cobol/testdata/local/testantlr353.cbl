000001 ID Division.                                                     00000001
000002 Program-ID. testantlr353.                                        00000002
000003 Procedure Division.                                              00000003
000004                                                                  00000004
000005     >>DEFINE A B'1'                                              00000005
000006     >>DEFINE B B'0'                                              00000006
000007     >>DEFINE C B'1'                                              00000007
000008     >>DEFINE D B'0'                                              00000008
000009                                                                  00000009
000010     >>IF A AND B                                                 00000010
000011     CALL 'PGM00001'                                              00000011
000012     >>END-IF                                                     00000012
000013                                                                  00000013
000014     >>IF (((((A AND B)))))                                       00000014
000015     CALL 'PGM00002'                                              00000015
000016     >>END-IF                                                     00000016
000017                                                                  00000017
000018     >>IF A AND (B OR C)                                          00000018
000019     CALL 'PGM00003'                                              00000019
000020     >>END-IF                                                     00000020
000021                                                                  00000021
000022     >>IF (A AND B) OR D                                          00000022
000023     CALL 'PGM00004'                                              00000023
000024     >>END-IF                                                     00000024
000025                                                                  00000025
000026     >>IF A AND (B AND (C OR D))                                  00000026
000027     CALL 'PGM00005'                                              00000027
000028     >>END-IF                                                     00000028
000029                                                                  00000029
000030     >>IF B AND (C OR D)                                          00000030
000031     CALL 'PGM00006'                                              00000031
000032     >>END-IF                                                     00000032
000033                                                                  00000033
000034     >>IF (B AND C) OR D                                          00000034
000035     CALL 'PGM00007'                                              00000035
000036     >>END-IF                                                     00000036
000037                                                                  00000037
000038     >>IF A AND (B OR C) AND D                                    00000038
000039     CALL 'PGM00008'                                              00000039
000040     >>END-IF                                                     00000040
000041                                                                  00000041
000042     >>IF (A OR D) AND (B OR C)                                   00000042
000043     CALL 'PGM00009'                                              00000043
000044     >>END-IF                                                     00000044
000045                                                                  00000045
000046     GOBACK.                                                      00000046