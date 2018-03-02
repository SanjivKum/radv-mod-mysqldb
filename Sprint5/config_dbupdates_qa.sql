use cdat_qa_config;

alter table ancmt add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table ancmt_org add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table ancmt_org_type add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table ancmt_smpl add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table hstry_user_smpl add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table rfrnc_aplctn_area add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table rfrnc_smpl_type add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table smpl add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table user_smpl add CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table ancmt ADD CREATD_BY BIGINT;
alter table ancmt_org ADD CREATD_BY BIGINT;
alter table ancmt_org_type ADD CREATD_BY BIGINT;
alter table ancmt_smpl ADD CREATD_BY BIGINT;
alter table hstry_user_smpl ADD CREATD_BY BIGINT;
alter table rfrnc_aplctn_area ADD CREATD_BY BIGINT;
alter table rfrnc_smpl_type ADD CREATD_BY BIGINT;
alter table smpl ADD CREATD_BY BIGINT;
alter table user_smpl ADD CREATD_BY BIGINT;

alter table ancmt ADD MDFYD_DT DATETIME;
alter table ancmt_org ADD MDFYD_DT DATETIME;
alter table ancmt_org_type ADD MDFYD_DT DATETIME;
alter table ancmt_smpl ADD MDFYD_DT DATETIME;
alter table hstry_user_smpl ADD MDFYD_DT DATETIME;
alter table rfrnc_aplctn_area ADD MDFYD_DT DATETIME;
alter table rfrnc_smpl_type ADD MDFYD_DT DATETIME;
alter table smpl ADD MDFYD_DT DATETIME;
alter table user_smpl ADD MDFYD_DT DATETIME;

alter table ancmt ADD MDFYD_BY BIGINT;
alter table ancmt_org ADD MDFYD_BY BIGINT;
alter table ancmt_org_type ADD MDFYD_BY BIGINT;
alter table ancmt_smpl ADD MDFYD_BY BIGINT;
alter table hstry_user_smpl ADD MDFYD_BY BIGINT;
alter table rfrnc_aplctn_area ADD MDFYD_BY BIGINT;
alter table rfrnc_smpl_type ADD MDFYD_BY BIGINT;
alter table smpl ADD MDFYD_BY BIGINT;
alter table user_smpl ADD MDFYD_BY BIGINT;


use cdat_qa_config;


alter table SMPL CHANGE SMPL_YR_NUM SMPL_YR VARCHAR(4);

alter table SMPL CHANGE SMPL_NAME_TXT SMPL_NAME VARCHAR(50);

alter table RFRNC_APLCTN_AREA CHANGE APLCTN_AREA_DESC_TXT APLCTN_AREA_DESC VARCHAR(500);

alter table RFRNC_APLCTN_AREA CHANGE APLCTN_FNCTN_ID APLCTN_AREA_NAME VARCHAR(300);

alter table RFRNC_SMPL_TYPE CHANGE SMPL_TYPE_DESC_TXT SMPL_TYPE_NAME VARCHAR(300);

alter table ANCMT DROP COLUMN DSPLY_DATE;

alter table ANCMT ADD ACTV_IND TINYINT NOT NULL;

alter table RFRNC_SMPL_TYPE ADD SMPL_TYPE_DESC VARCHAR(500) NOT NULL;


use cdat_qa_config;

set foreign_key_checks=0;


alter table ANCMT MODIFY ANCMT_TXT VARCHAR(3000) Not Null;

alter table ANCMT MODIFY ANNOUNCMENT_GLBL_IND TINYINT Not Null;

alter table ANCMT MODIFY ANCMT_STRT_DT DATETIME Not Null;

alter table ANCMT MODIFY ANCMT_END_DT DATETIME Not Null;

alter table ANCMT_ORG MODIFY ORG_ID BIGINT Not Null;

alter table ANCMT_ORG MODIFY ANCMT_ID BIGINT Not Null;

alter table ANCMT_ORG_TYPE MODIFY ORG_TYPE_ID BIGINT Not Null;

alter table ANCMT_ORG_TYPE MODIFY ANCMT_ID BIGINT Not Null;

alter table ANCMT_SMPL MODIFY SMPL_ID BIGINT Not Null;

alter table ANCMT_SMPL MODIFY ANCMT_ID BIGINT Not Null;

alter table HSTRY_USER_SMPL MODIFY  USER_SMPL_ID BIGINT Not Null;

alter table RFRNC_APLCTN_AREA MODIFY APLCTN_AREA_DESC VARCHAR(500) Not Null;

alter table SMPL MODIFY SMPL_BLNDD_RATS_IND TINYINT Not Null;

alter table USER_SMPL MODIFY ACTV_IND TINYINT Not Null;

set foreign_key_checks=1;


use cdat_qa_config;


alter table ancmt drop column dsply_dt;
