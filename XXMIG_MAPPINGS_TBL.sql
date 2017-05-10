WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_MAPPINGS_TBL.sql
 Description  : Table Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Creation (AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE TABLE XXMIG_MAPPINGS_TBL
(
  MAPPING_ID NUMBER
 ,BUSINESS_ENTITY_ID NUMBER
 ,TARGET_COLUMN VARCHAR2(30)
 ,TGT_COL_DATA_TYPE VARCHAR2(128)
 ,TGT_COL_DATA_LENGTH NUMBER
 ,USER_REFERENCE VARCHAR2(240)
 ,SOURCE_COLUMN_SEED VARCHAR2(4000)
 ,SOURCE_COLUMN_ALT VARCHAR2(4000)
 ,SRC_COL_DATA_TYPE VARCHAR2(128)
 ,SRC_COL_DATA_LENGTH NUMBER
 ,MANDATORY_COLUMN VARCHAR2(1)
 ,INCLUDE_COLUMN VARCHAR2(1)
 ,CREATION_DATE DATE
 ,CREATED_BY NUMBER
 ,LAST_UPDATE_DATE DATE
 ,UPDATED_BY NUMBER
 ,CONSTRAINT MAPPING_PK PRIMARY KEY (MAPPING_ID)
 ,CONSTRAINT BUSINESS_ENTITY_FK1 FOREIGN KEY (BUSINESS_ENTITY_ID)
    REFERENCES XXMIG_BUSINESS_ENTITIES_TBL(BUSINESS_ENTITY_ID)
);

SHOW ERR

GRANT ALL ON XXMIG_MAPPINGS_TBL TO APPS;

EXIT