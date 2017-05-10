WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_SQL_VERSIONS_TBL.sql
 Description  : Table Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Development(AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE TABLE XXMIG_SQL_VERSIONS_TBL
(USER_LABEL VARCHAR2(100)
,BUSINESS_ENTITY_ID NUMBER
,SQL_QUERY CLOB
,VERSIONED_ON DATE
,CREATION_DATE DATE
,CREATED_BY NUMBER
,LAST_UPDATE_DATE DATE
,UPDATED_BY NUMBER
,CONSTRAINT SQL_VERSION_PK PRIMARY KEY (USER_LABEL,BUSINESS_ENTITY_ID)
,CONSTRAINT BUSINESS_ENTITY_FK2 FOREIGN KEY (BUSINESS_ENTITY_ID)
   REFERENCES XXMIG_BUSINESS_ENTITIES_TBL(BUSINESS_ENTITY_ID));

SHOW ERR

GRANT ALL ON XXMIG_SQL_VERSIONS_TBL TO APPS;

EXIT