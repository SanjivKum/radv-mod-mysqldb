use cdat_qa_user;

DROP TABLE SCRTY;

CREATE TABLE SCRTY
(
	SCRTY_ID             BIGINT NOT NULL AUTO_INCREMENT,
	SCRTY_NAME           VARCHAR(300) NOT NULL,
	SCRTY_DESC           VARCHAR(500) NOT NULL,
	CREATD_DT            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CREATD_BY            BIGINT NULL,
	MDFYD_DT             DATETIME NULL,
	MDFYD_BY             BIGINT NULL,
	PRIMARY KEY (SCRTY_ID)
);

CREATE UNIQUE INDEX SCRTY_PK ON SCRTY
(
	SCRTY_ID ASC
);

grant select, update, insert, delete on SCRTY to cdat_app_user;
use cdat_qa_user;

alter table oauth_access_token ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table oauth_client_details ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table oauth_client_token ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table oauth_code ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table oauth_refresh_token ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table org ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table rfrnc_org_type ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table role ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table tc_acceptance ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table user ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table user_org ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;
alter table user_role ADD CREATD_DT DATETIME NOT NULL DEFAULT current_timestamp;

alter table oauth_access_token ADD CREATD_BY BIGINT;
alter table oauth_client_details ADD CREATD_BY BIGINT;
alter table oauth_client_token ADD CREATD_BY BIGINT;
alter table oauth_code ADD CREATD_BY BIGINT;
alter table oauth_refresh_token ADD CREATD_BY BIGINT;
alter table org ADD CREATD_BY BIGINT;
alter table rfrnc_org_type ADD CREATD_BY BIGINT;
alter table role ADD CREATD_BY BIGINT;
alter table tc_acceptance ADD CREATD_BY BIGINT;
alter table user ADD CREATD_BY BIGINT;
alter table user_org ADD CREATD_BY BIGINT;
alter table user_role ADD CREATD_BY BIGINT;

alter table oauth_access_token ADD MDFYD_DT DATETIME;
alter table oauth_client_details ADD MDFYD_DT DATETIME;
alter table oauth_client_token ADD MDFYD_DT DATETIME;
alter table oauth_code ADD MDFYD_DT DATETIME;
alter table oauth_refresh_token ADD MDFYD_DT DATETIME;
alter table org ADD MDFYD_DT DATETIME;
alter table rfrnc_org_type ADD MDFYD_DT DATETIME;
alter table role ADD MDFYD_DT DATETIME;
alter table tc_acceptance ADD MDFYD_DT DATETIME;
alter table user ADD MDFYD_DT DATETIME;
alter table user_org ADD MDFYD_DT DATETIME;
alter table user_role ADD MDFYD_DT DATETIME;

alter table oauth_access_token ADD MDFYD_BY BIGINT;
alter table oauth_client_details ADD MDFYD_BY BIGINT;
alter table oauth_client_token ADD MDFYD_BY BIGINT;
alter table oauth_code ADD MDFYD_BY BIGINT;
alter table oauth_refresh_token ADD MDFYD_BY BIGINT;
alter table org ADD MDFYD_BY BIGINT;
alter table rfrnc_org_type ADD MDFYD_BY BIGINT;
alter table role ADD MDFYD_BY BIGINT;
alter table tc_acceptance ADD MDFYD_BY BIGINT;
alter table user ADD MDFYD_BY BIGINT;
alter table user_org ADD MDFYD_BY BIGINT;
alter table user_role ADD MDFYD_BY BIGINT;

use cdat_qa_user;

alter table ROLE CHANGE ROLE ROLE_NAME VARCHAR(255);

alter table USER  CHANGE USER_1ST_NAME_TXT USER_1ST_NAME varchar(50);

alter table USER  CHANGE USER_MDL_INITL_TXT USER_MDL_NAME varchar(50);

alter table USER  CHANGE USER_LAST_NAME_TXT USER_LAST_NAME varchar(50);

alter table RFRNC_ORG_TYPE  CHANGE ORG_TYPE_DESC_TXT ORG_TYPE_NAME varchar(300);

alter table RFRNC_ORG_TYPE  ADD ORG_TYPE_DESC varchar(500) NOT NULL;












use cdat_qa_user;

set foreign_key_checks=0;

alter table ORG MODIFY ORG_NAME VARCHAR(500) Not Null;

alter table RFRNC_ORG_TYPE MODIFY ORG_TYPE_NAME VARCHAR(300) Not Null;

alter table ROLE MODIFY ROLE_DESC_TXT VARCHAR(3000) Not Null;

alter table USER_ORG MODIFY USER_ID BIGINT Not Null;

alter table USER_ORG MODIFY ORG_ID BIGINT Not Null;

alter table USER_ORG MODIFY ACTV_IND TINYINT Not Null;

alter table USER_ROLE MODIFY USER_ID BIGINT Not Null;

set foreign_key_checks=1;

















