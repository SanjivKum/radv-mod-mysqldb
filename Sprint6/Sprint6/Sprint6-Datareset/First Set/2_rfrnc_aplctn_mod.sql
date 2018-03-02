use cdat_qa_queue;

delete from rfrnc_aplctn_mod;

INSERT INTO `rfrnc_aplctn_mod`
(`APLCTN_MOD_ID`,
`APLCTN_MOD_NAME`,
`APLCTN_MOD_DESC`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(1,
'Intake',
'Intake - CDAT Steps 2, 3, and 4',
now(),
null,
null,
null);

INSERT INTO `rfrnc_aplctn_mod`
(`APLCTN_MOD_ID`,
`APLCTN_MOD_NAME`,
`APLCTN_MOD_DESC`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(2,
'Abstraction',
'Abstraction - CDAT Steps 6 and 7',
now(),
null,
null,
null);
