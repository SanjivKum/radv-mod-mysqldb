
use cdat_qa_pp;

ALTER TABLE SMPL_CNTRCT ADD CNTRCT_SUBMSN_END_DT DATETIME;

ALTER TABLE ENRLEE ADD CNTRCT_SUBMSN_END_DT DATETIME;

use cdat_qa_pp;

ALTER TABLE ENRLEE CHANGE CNTRCT_SUBMSN_END_DT ENRLEE_SUBMSN_END_DT DATETIME;

use cdat_qa_dm;

alter table DOC  CHANGE DOC_DESC_TXT  DOC_DESC varchar(500);

alter table DOC_VRSN  CHANGE VRSN_ID VRSN_NUM INTEGER default 1;

alter table RFRNC_DOC_CNTNT_TYPE CHANGE DOC_CNTNT_DESC DOC_CNTNT_TYPE_NAME varchar(300);

alter table RFRNC_DOC_TYPE CHANGE DOC_TYPE_DESC_TXT DOC_TYPE_NAME varchar(300);

alter table RFRNC_USER_DOC_ACS_TYPE CHANGE USER_DOC_ACS_ACTN_TXT USER_DOC_ACS_TYPE_NAME varchar(300);

alter table RFRNC_DOC_ACS_LVL CHANGE ACS_LVL_NAME DOC_ACS_LVL_NAME varchar(300);

alter table RFRNC_DOC_ACS_TYPE CHANGE ACS_TYPE DOC_ACS_TYPE_NAME varchar(300);


use cdat_qa_dm;

set foreign_key_checks=0;

alter table DOC MODIFY DOC_OWNR bigint(20) not null;

alter table DOC MODIFY SMPL_ID bigint(20) not null;

alter table DOC_STUS MODIFY DOC_VRSN_ID bigint(20) not null;

alter table DOC_VRSN MODIFY DOC_ID bigint(20) not null;
alter table DOC_VRSN MODIFY ACNT_NAME varchar(500) not null;
alter table DOC_VRSN MODIFY CONTAINER_NAME varchar(500) not null;
alter table DOC_VRSN MODIFY FIL_NAME varchar(500) not null;

alter table RFRNC_DOC_ACS_LVL MODIFY DOC_ACS_LVL_NAME varchar(300) not null;

alter table RFRNC_DOC_ACS_TYPE MODIFY DOC_ACS_TYPE_NAME varchar(300) not null;

alter table RFRNC_DOC_TYPE MODIFY DOC_TYPE_NAME varchar(300) not null;

alter table RFRNC_USER_DOC_ACS_TYPE MODIFY USER_DOC_ACS_TYPE_NAME varchar(300) not null;

alter table USER_DOC_ACS_LOG MODIFY  USER_DOC_ACS_TYPE_ID bigint(20) not null;

alter table USER_DOC_ACS_LOG MODIFY DOC_VRSN_ID  bigint(20) not null;

set foreign_key_checks=1;

use cdat_qa_dm;

alter table DOC_VRSN DROP FOREIGN KEY doc_vrsn_ibfk_3, DROP COLUMN DOC_UPLD_ID;

alter table DOC_VRSN ADD COLUMN DOC_SIZE INTEGER NOT NULL;

alter table DOC_VRSN ADD COLUMN BLOB_FIL_NAME VARCHAR(1024) NOT NULL; 

use cdat_qa_dm;

alter table DOC ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

# alter table DOC ADD CREATD_BY BIGINT;

alter table DOC ADD MDFYD_DT DATETIME;

alter table DOC ADD MDFYD_BY BIGINT;

alter table doc_org_shr ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table doc_org_shr ADD CREATD_BY BIGINT;

alter table doc_org_shr ADD MDFYD_DT DATETIME;

alter table doc_org_shr ADD MDFYD_BY BIGINT;

alter table doc_stus ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table doc_stus ADD CREATD_BY BIGINT;

alter table doc_stus ADD MDFYD_DT DATETIME;

alter table  doc_stus ADD MDFYD_BY BIGINT;

alter table doc_upld MODIFY CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

# alter table doc_upld ADD CREATD_BY BIGINT;

# alter table doc_upld ADD MDFYD_DT DATETIME;

# alter table doc_upld  ADD MDFYD_BY BIGINT;

alter table doc_user_role_shr ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table doc_user_role_shr ADD CREATD_BY BIGINT;

alter table doc_user_role_shr ADD MDFYD_DT DATETIME;

alter table doc_user_role_shr ADD MDFYD_BY BIGINT;

alter table doc_user_shr ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table doc_user_shr ADD CREATD_BY BIGINT;

alter table doc_user_shr ADD MDFYD_DT DATETIME;

alter table doc_user_shr ADD MDFYD_BY BIGINT;

alter table doc_vrsn ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table doc_vrsn ADD CREATD_BY BIGINT;

alter table doc_vrsn ADD MDFYD_DT DATETIME;

alter table doc_vrsn ADD MDFYD_BY BIGINT;

alter table rfrnc_doc_acs_lvl ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table rfrnc_doc_acs_lvl ADD CREATD_BY BIGINT;

alter table rfrnc_doc_acs_lvl ADD MDFYD_DT DATETIME;

alter table rfrnc_doc_acs_lvl ADD MDFYD_BY BIGINT;

alter table rfrnc_doc_acs_type ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table rfrnc_doc_acs_type ADD CREATD_BY BIGINT;

alter table rfrnc_doc_acs_type ADD MDFYD_DT DATETIME;

alter table rfrnc_doc_acs_type ADD MDFYD_BY BIGINT;

alter table rfrnc_doc_cntnt_type ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table rfrnc_doc_cntnt_type ADD CREATD_BY BIGINT;

alter table rfrnc_doc_cntnt_type ADD MDFYD_DT DATETIME;

alter table rfrnc_doc_cntnt_type ADD MDFYD_BY BIGINT;

alter table rfrnc_doc_type ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table rfrnc_doc_type ADD CREATD_BY BIGINT;

alter table rfrnc_doc_type ADD MDFYD_DT DATETIME;

alter table rfrnc_doc_type ADD MDFYD_BY BIGINT;

alter table rfrnc_doc_upld_stus MODIFY CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

# alter table rfrnc_doc_upld_stus ADD CREATD_BY BIGINT;

# alter table rfrnc_doc_upld_stus ADD MDFYD_DT DATETIME;

# alter table rfrnc_doc_upld_stus ADD MDFYD_BY BIGINT;

alter table rfrnc_user_doc_acs_type ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table rfrnc_user_doc_acs_type ADD CREATD_BY BIGINT;

alter table rfrnc_user_doc_acs_type ADD MDFYD_DT DATETIME;

alter table rfrnc_user_doc_acs_type ADD MDFYD_BY BIGINT;

alter table smpl_cntrct_doc ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

# alter table smpl_cntrct_doc ADD CREATD_BY BIGINT;

alter table smpl_cntrct_doc ADD MDFYD_DT DATETIME;

alter table smpl_cntrct_doc ADD MDFYD_BY BIGINT;

alter table user_doc_acs_log ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table user_doc_acs_log ADD CREATD_BY BIGINT;

alter table user_doc_acs_log ADD MDFYD_DT DATETIME;

alter table user_doc_acs_log ADD MDFYD_BY BIGINT;

use cdat_qa_dm;

alter table DOC MODIFY DOC_TITLE Varchar(300) NOT NULL;

alter table DOC_STUS MODIFY DOC_STUS_STRT_DT DATETIME;

alter table DOC_STUS MODIFY DOC_STUS_END_DT DATETIME;

alter table DOC_VRSN MODIFY ACNT_NAME VARCHAR(1024) NOT NULL;

alter table DOC_VRSN MODIFY CONTAINER_NAME VARCHAR(1024) NOT NULL;

alter table DOC_VRSN MODIFY FIL_NAME VARCHAR(1024) NOT NULL; 

ALTER TABLE DOC_UPLD ADD DOC_VRSN_ID BIGINT;

ALTER TABLE DOC_UPLD
ADD FOREIGN KEY DOC_UPLD_FK3 (DOC_VRSN_ID) REFERENCES DOC_VRSN (DOC_VRSN_ID);

alter table smpl_cntrct_doc MODIFY CREATD_BY BIGINT;

alter table smpl_cntrct_doc drop column CREATD_BY_DT;

alter table doc drop column CREATD_BY_DT;

alter table doc_stus drop column CREATD_BY_DT;
