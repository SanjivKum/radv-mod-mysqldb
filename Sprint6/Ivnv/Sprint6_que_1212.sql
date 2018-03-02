
use cdat_qa_queue;


DROP TABLE ORG_TYPE_COVERSHEET;

CREATE TABLE ORG_TYPE_COVERSHEET
(
	ORG_TYPE_COVERSHEET_ID BIGINT NOT NULL AUTO_INCREMENT,
	ORG_TYPE_ID          BIGINT NOT NULL,
	COVERSHEET_ID        BIGINT NOT NULL,
	ORG_TYPE_DOC_COVERSHEET_MDCL_REC_ID BIGINT NOT NULL,
	CREATD_DT            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CREATD_BY            BIGINT NULL,
	MDFYD_DT             DATETIME NULL,
	MDFYD_BY             BIGINT NULL,
	PRIMARY KEY (ORG_TYPE_COVERSHEET_ID)
);

CREATE UNIQUE INDEX ORG_TYPE_COVERSHEET_PK ON ORG_TYPE_COVERSHEET
(
	ORG_TYPE_COVERSHEET_ID ASC
);

CREATE INDEX ORG_TYPE_COVERSHEET_FK1 ON ORG_TYPE_COVERSHEET
(
	ORG_TYPE_ID ASC
);

CREATE INDEX ORG_TYPE_COVERSHEET_FK2 ON ORG_TYPE_COVERSHEET
(
	COVERSHEET_ID ASC
);

CREATE INDEX ORG_TYPE_COVERSHEET_FK3 ON ORG_TYPE_COVERSHEET
(
	ORG_TYPE_DOC_COVERSHEET_MDCL_REC_ID ASC
);


DROP TABLE ORG_TYPE_COVERSHEET_PAGE;

CREATE TABLE ORG_TYPE_COVERSHEET_PAGE
(
	ORG_TYPE_COVERSHEET_PAGE_ID BIGINT NOT NULL AUTO_INCREMENT,
	PAGE_THUMBNAIL_DOC_ID BIGINT NOT NULL,
	PAGE_NUMBER          BIGINT NOT NULL ,
	CREATD_DT            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CREATD_BY            BIGINT NULL,
	MDFYD_DT             DATETIME NULL,
	MDFYD_BY             BIGINT NULL,
	PRIMARY KEY (ORG_TYPE_COVERSHEET_PAGE_ID)
);

CREATE UNIQUE INDEX ORG_TYPE_COVERSHEET_PAGE_PK ON ORG_TYPE_COVERSHEET_PAGE
(
	ORG_TYPE_COVERSHEET_PAGE_ID ASC
);

CREATE INDEX ORG_TYPE_COVERSHEET_PAGE_FK1 ON ORG_TYPE_COVERSHEET_PAGE
(
	PAGE_THUMBNAIL_DOC_ID ASC
);


grant select, update, insert, delete on ORG_TYPE_COVERSHEET to cdat_app_queue;

grant select, update, insert, delete on ORG_TYPE_COVERSHEET_PAGE to cdat_app_queue;