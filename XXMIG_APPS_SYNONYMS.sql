WHENEVER SQLERROR CONTINUE

----------------------------------------------------------------------
/*
 Created By   : IBM
 Creation Date: 10-May-2017
 Filename     : XXMIG_APPS_SYNONYMS.sql
 Description  : APPS Synonym Creation Script

 Change History:

 Date         Version#  Name              Remarks
 -----------  --------  ----------------  ----------------------------
 10-May-2017  1.0       IBM               Initial Development(AIC-Q2-02)
*/
----------------------------------------------------------------------

CREATE OR REPLACE SYNONYM XXMIG_MIGRATION_SETUP_TBL FOR XXOEM.XXMIG_MIGRATION_SETUP_TBL;
CREATE OR REPLACE SYNONYM XXMIG_BUSINESS_ENTITIES_TBL FOR XXOEM.XXMIG_BUSINESS_ENTITIES_TBL;
CREATE OR REPLACE SYNONYM XXMIG_MAPPINGS_TBL FOR XXOEM.XXMIG_MAPPINGS_TBL;
CREATE OR REPLACE SYNONYM XXMIG_SQL_VERSIONS_TBL FOR XXOEM.XXMIG_SQL_VERSIONS_TBL;
CREATE OR REPLACE SYNONYM XXMIG_EXTRACTS_TBL FOR XXOEM.XXMIG_EXTRACTS_TBL;


SHOW ERR

EXIT