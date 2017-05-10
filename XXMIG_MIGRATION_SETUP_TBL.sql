WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_MIGRATION_SETUP_TBL.sql
 Description  : Table Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Creation (AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE TABLE XXMIG_MIGRATION_SETUP_TBL
(
  TRANSFORMATION_ID NUMBER
 ,SOURCE_APPLICATION VARCHAR2(100)
 ,SRC_APP_VERSION VARCHAR2(20)
 ,TARGET_APPLICATION VARCHAR2(100)
 ,TGT_APP_VERSION VARCHAR2(20)
 ,ENABLED VARCHAR2(1)
 ,CREATION_DATE DATE
 ,CREATED_BY NUMBER
 ,LAST_UPDATE_DATE DATE
 ,UPDATED_BY NUMBER
 ,CONSTRAINT TRANSFORMATION_PK PRIMARY KEY (TRANSFORMATION_ID)
 );

SHOW ERR

GRANT ALL ON XXMIG_MIGRATION_SETUP_TBL TO APPS;

EXIT