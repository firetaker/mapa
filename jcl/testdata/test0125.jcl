//CNTL JOB
//*
//JOBCNTL1 CNTL
//TURTLES  DD  DISP=SHR,DSN=TORTISES
//REPTILES DD  BUFNO=20
//         ENDCNTL
//*
//JOBCNTL2 CNTL * CONTROL STATEMENTS FOLLOW
//TURTLE$  DD  DISP=SHR,DSN=TORTISE$
//REPTILE$ DD  BUFNO=20
//         ENDCNTL THOSE WERE THE CONTROL STATEMENTS
//*
//STEP0001 EXEC PGM=IEFBR14
//STEPCNTL CNTL *
//ETC      DD  PATH='/etc'
//ABCDEFG ENDCNTL
//*
//STEP0002 EXEC PGM=IEFBR14
//STEPCNTL CNTL * ENDCNTL TERMINATES CNTL STATEMENTS
//END      DD  DISP=SHR,DSN=ENDCNTL
//ABCDEFG ENDCNTL END OF CNTL STATEMENTS
//*
