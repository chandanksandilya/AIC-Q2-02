WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_BUSINESS_ENTITIES_TBL.sql
 Description  : Table Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Development(AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE TABLE XXMIG_BUSINESS_ENTITIES_TBL
(
  BUSINESS_ENTITY_ID NUMBER
 ,BUSINESS_ENTITY VARCHAR2(100)
 ,USER_LABEL VARCHAR2(100)
 ,TRANSFORMATION_ID NUMBER
 ,CSV_FILE_NAME VARCHAR2(100)
 ,INCLUDE_HEADER VARCHAR2(1)
 ,FROM_CLAUSE CLOB
 ,WHERE_CLAUSE CLOB
 ,CUSTOM_WHERE_CLAUSE CLOB
 ,GROUP_BY_CLAUSE CLOB
 ,SQL_QUERY CLOB
 ,CREATION_DATE DATE
 ,CREATED_BY NUMBER
 ,LAST_UPDATE_DATE DATE
 ,UPDATED_BY NUMBER
 ,CONSTRAINT BUSINESS_ENTITY_PK PRIMARY KEY (BUSINESS_ENTITY_ID)
 ,CONSTRAINT TRANSFORMATION_FK FOREIGN KEY (TRANSFORMATION_ID)
    REFERENCES XXMIG_MIGRATION_SETUP_TBL(TRANSFORMATION_ID))
);

SHOW ERR

GRANT ALL ON XXMIG_BUSINESS_ENTITIES_TBL TO APPS;

EXIT