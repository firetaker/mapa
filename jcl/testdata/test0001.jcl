//ALPHA   JOB   843,LINLEE,CLASS=F,MSGCLASS=A,MSGLEVEL=(1,1)
//ALPHA1  EXEC PGM=J8675309
//DD000001 DD  DISP=SHR,DSN=DATA.SET.NAME.#0000001
//DD000002 DD  DISP=SHR,DSN=DATA.SET.NAME.#0000002
//DD000003 DD  DISP=SHR,DSN=&DSNQ1.DATA.SET.NAME.#0000003
//DD000004 DD  DISP=SHR,DSN=DATA&DSNQ1..SET.NAME.#0000004
//DD000005 DD  DISP=SHR,DSN=&DSNQ1..SET.NAME.#0000001
//* 
//LOS     JOB   ,'J M BUSKIRK',TIME=(4,30),MSGCLASS=H,MSGLEVEL=(2,0)
//LOS1 EXEC PGM=IEFBR14
//SYSIN DD DATA,DLM=$$
//FIRST LINE OF DD DATA
//SECOND LINE OF DD DATA
$$
//* 
//MART    JOB   1863,RESTART=STEP4 THIS IS THE THIRD JOB STATEMENT.
//JOBLIB   DD  DISP=SHR,DSN=SYS1.EXLIB
//         DD  DISP=SHR,DSN=SYS2.EXLIB
// EXEC PROC=P99
//* 
//TRY8    JOB
// EXEC PGM=#0001,PARM=&ABC
//STEPLIB  DD  DISP=SHR,DSN=SYS1.EXLIB
//         DD  DISP=SHR,DSN=SYS2.EXLIB
//* 
//RACF1    JOB   'D83,123',USER=RAC01,GROUP=A27,PASSWORD=XYY
//TSO      EXEC PGM=IKJEFT01
//SYSTSIN  DD  * abc
 DSN SYSTEM(DB2P)
 RUN PROGRAM(X2UNLOAD) PLAN(X2UNLOAD)
//* 
//RUN1    JOB   'D8306P,D83,B1062J12,S=C','JUDY PERLMAN',MSGCLASS=R,
//      MSGLEVEL=(1,1),CLASS=3,NOTIFY=D83JCS1, SIXTH JOB STATEMENT
//      COND=(8,LT)
// EXEC PGM=$#@111
//RUN1A   EXEC PGM=$1,COND=(4,EQ) INLINE COMMENT
//RUN1B   EXEC PGM=$2,COND=((0,EQ,RUN1A),(17,EQ,RUN1A))
//RUN1C   EXEC PGM=$3, GONNA CHECK THE COND NEXT
//        COND=((0,EQ,RUN1A), RUN1A GOTTA END OKAY
//         (0,EQ,RUN1B),      RUN1B GOTTA END OKAY TOO
//         EVEN)              AND THEN THERE'S THIS
//VSAMDS1  DD  AMP=('BUFSP=200,BUFND=2',     boo
//           'BUFNI=3,STRNO=4,SYNAD=ERROR')  hoo
//*  
//LONGJOB1 JOB '0A2B4C6D8E,F2G4H6I8J,K2L4M6N8OCP2Q4R6S8TDU2V4W6X8TEZ2A
//             4B6C8D','A LONG ACCOUNTING STRING',CLASS=Q 
//X EXEC PGM=IEFBR14
//*    
//LONGJOB2 JOB 'ABCDEFGHIJ,KLMNOPQRS,TUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
//             ABCDEF','A LONG ACCOUNTING STRING',CLASS=Q
//X EXEC PGM=IEFBR14
//*
//*//VSAMDS1  DD  DSNAME=DSM.CLASS,DISP=SHR,AMP=('BUFSP=200,BUFND=2',
//*//           'BUFNI=3,STRNO=4,SYNAD=ERROR')
//*STEPNAME EXEC PGM=ABC                                                00000000
//*                                                                     00000000
