use cdat_qa_queue;

delete from rfrnc_que_work_stp;

INSERT INTO `rfrnc_que_work_stp`
(`QUE_WORK_STP_ID`,
`QUE_WORK_STP_NAME`,
`QUE_WORK_STP_DESC`,
`QUE_DSPLY_NAME`,
`SCRTY_ID`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(1,
'Submission_Review',
'Step 2: Submission Review',
'Submission Review',
1,
now(),
null,
null,
null);

INSERT INTO `rfrnc_que_work_stp`
(`QUE_WORK_STP_ID`,
`QUE_WORK_STP_NAME`,
`QUE_WORK_STP_DESC`,
`QUE_DSPLY_NAME`,
`SCRTY_ID`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(2,
'Senior_Evaluation',
'Step 3: Senior Evaluation',
'Senior Evaluation',
2,
now(),
null,
null,
null);

INSERT INTO `rfrnc_que_work_stp`
(`QUE_WORK_STP_ID`,
`QUE_WORK_STP_NAME`,
`QUE_WORK_STP_DESC`,
`QUE_DSPLY_NAME`,
`SCRTY_ID`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(3,
'Invalid_Confirmation',
'Step 4: Invalid Confirmation',
'Invalid Confirmation',
3,
now(),
null,
null,
null);

INSERT INTO `rfrnc_que_work_stp`
(`QUE_WORK_STP_ID`,
`QUE_WORK_STP_NAME`,
`QUE_WORK_STP_DESC`,
`QUE_DSPLY_NAME`,
`SCRTY_ID`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(4,
'Focused_Review',
'Step 6: Focused Review',
'Focused Review',
4,
now(),
null,
null,
null);

INSERT INTO `rfrnc_que_work_stp`
(`QUE_WORK_STP_ID`,
`QUE_WORK_STP_NAME`,
`QUE_WORK_STP_DESC`,
`QUE_DSPLY_NAME`,
`SCRTY_ID`,
`CREATD_DT`,
`CREATD_BY`,
`MDFYD_DT`,
`MDFYD_BY`)
VALUES
(5,
'Discrepant_Confirmation',
'Step 7: Discrepant Confirmation',
'Discrepant Confirmation',
5,
now(),
null,
null,
null);