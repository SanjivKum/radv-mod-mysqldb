DROP TABLE ROLE_SCRTY;

CREATE TABLE ROLE_SCRTY
(
	ROLE_SCRTY_ID        BIGINT NOT NULL AUTO_INCREMENT,
	SCRTY_ID             BIGINT NOT NULL,
	ROLE_ID              BIGINT NOT NULL,
	CREATD_DT            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CREATD_BY            BIGINT NULL,
	MDFYD_DT             DATETIME NULL,
	MDFYD_BY             BIGINT NULL,
	PRIMARY KEY (ROLE_SCRTY_ID),
	FOREIGN KEY ROLE_SCRTY_FK132 (SCRTY_ID) REFERENCES SCRTY (SCRTY_ID),
	FOREIGN KEY ROLE_SCRTY_FK133 (ROLE_ID) REFERENCES ROLE (ROLE_ID)
);

CREATE UNIQUE INDEX ROLE_SCRTY_PK ON ROLE_SCRTY
(
	ROLE_SCRTY_ID ASC
);

CREATE INDEX ROLE_SCRTY_FK1 ON ROLE_SCRTY
(
	SCRTY_ID ASC
);

CREATE INDEX ROLE_SCRTY_FK2 ON ROLE_SCRTY
(
	ROLE_ID ASC
);


grant select, update, insert, delete on ROLE_SCRTY to cdat_app_user;