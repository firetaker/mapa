000001 Identification Division.
000002 Program-ID. testantlr115.
000003 Data Division.
000004 Working-Storage Section.
000005
000006 01  CONSTANTS.
000007     05  MYNAME               PIC X(012) VALUE 'testantlr115'.
000008     05  PGM-0001             PIC X(008) VALUE 'PGMA0001'.
000009
000010 Procedure Division.
000011     DISPLAY MYNAME ' Begin'
000012     
000013     EXEC CICS
000014          XCTL
000015          PROGRAM(PGM-0001)
000016          COMMAREA(CA-STUFF)
000017          LENGTH(CA-STUFF-LEN)
000018     END-EXEC
000019
000020     DISPLAY MYNAME ' End'
000021     
000022     GOBACK
000023     .
000024
000025
