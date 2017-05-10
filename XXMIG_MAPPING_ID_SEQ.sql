WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_MAPPING_ID_SEQ.sql
 Description  : APPS Synonym Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Creation (AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE SEQUENCE XXMIG_MAPPING_ID_SEQ
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1
  INCREMENT BY 1
  NOCACHE;

GRANT ALL ON XXMIG_MAPPING_ID_SEQ TO APPS;

CREATE OR REPLACE SYNONYM APPS.XXMIG_MAPPING_ID_SEQ FOR XXMIG_MAPPING_ID_SEQ;

SHOW ERR

EXIT