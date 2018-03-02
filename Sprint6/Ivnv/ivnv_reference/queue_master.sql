INSERT INTO rfrnc_que_work_stp
(
	QUE_WORK_STP_ID,
	QUE_WORK_STP_NAME,
	QUE_WORK_STP_DESC,
	QUE_DSPLY_NAME,
	SCRTY_ID
)
VALUES
(
	1,
	'Submission_Review',
	'Step 2: Submission Review',
	'Submission Review',
	8
)
,
(
	2,
	'Senior_Evaluation',
	'Step 3: Senior Evaluation',
	'Senior Evaluation',
	9
)
,
(
	3,
	'Invalid_Confirmation',
	'Step 4: Invalid Confirmation',
	'Invalid Confirmation',
	10
)
,
(
	4,
	'Focused_Review',
	'Step 6: Focused Review',
	'Focused Review',
	11
)
,
(
	5,
	'Discrepant_Confirmation',
	'Step 7: Discrepant Confirmation',
	'Discrepant Confirmation',
	12
)
ON DUPLICATE KEY UPDATE
QUE_WORK_STP_NAME = VALUES(QUE_WORK_STP_NAME),
QUE_WORK_STP_DESC = VALUES(QUE_WORK_STP_DESC),
QUE_DSPLY_NAME = VALUES(QUE_DSPLY_NAME),
SCRTY_ID = VALUES(SCRTY_ID);

INSERT INTO rfrnc_que_work_phase
(
	QUE_WORK_PHASE_ID,
	QUE_WORK_PHASE_NAME,
	QUE_WORK_PHASE_DESC
)
VALUES
(
	10,
	'Available',
	'Available'
)
,
(
	20,
	'Assigned',
	'Assigned'
)
,
(
	30,
	'Complete',
	'Complete'
)
,
(
	40,
	'PM Reset',
	'PM Reset'
)
,
(
	50,
	'Doc Issue',
	'Doc Issue'
)
,
(
	70,
	'Manual Edit',
	'Manual Edit'
)
,
(
	80,
	'Doc Manip',
	'Doc Manip'
)
,
(
	81,
	'Doc Manip Complete',
	'Doc Manip Complete'
)
,
(
	90,
	'Escalated',
	'Escalated'
)
,
(
	100,
	'Esc Available',
	'Esc Available'
)
,
(
	110,
	'Esc Assigned',
	'Esc Assigned'
)
,
(
	120,
	'Esc Complete',
	'Esc Complete'
)
,
(
	130,
	'QA Escalated',
	'QA Escalated'
)
,
(
	140,
	'QA Available',
	'QA Available'
)
,
(
	160,
	'QA Complete',
	'QA Complete'
)
,
(
	170,
	'QA Reset',
	'QA Reset'
)
,
(
	220,
	'Terminated',
	'Terminated'
)
,
(
	230,
	'PHI/PII',
	'PHI/PII'
)
,
(
	240,
	'Exclusion',
	'Exclusion'
)
,
(
	250,
	'Removed',
	'Removed'
)
,
(
	260,
	'Manually Moved to CDAT End',
	'Manually Moved to CDAT End'
)
,
(
	270,
	'Bypass',
	'Bypass'
)
,
(
	280,
	'FR Bypass Rank Logic',
	'FR Bypass Rank Logic'
)
,
(
	290,
	'Error',
	'Error happened in process'
)
,
(
	300,
	'CDAT End',
	'CDAT End'
)
ON DUPLICATE KEY UPDATE
QUE_WORK_PHASE_NAME = VALUES(QUE_WORK_PHASE_NAME),
QUE_WORK_PHASE_DESC = VALUES(QUE_WORK_PHASE_DESC);

INSERT INTO rfrnc_aplctn_mod
(
	APLCTN_MOD_ID,
	APLCTN_MOD_NAME,
	APLCTN_MOD_DESC
)
VALUES
(
	1,
	'Intake',
	'Intake - CDAT Steps 2, 3, and 4'
)
,
(
	2,
	'Abstraction',
	'Abstraction - CDAT Steps 6 and 7'
)
ON DUPLICATE KEY UPDATE
APLCTN_MOD_NAME = VALUES(APLCTN_MOD_NAME),
APLCTN_MOD_DESC = VALUES(APLCTN_MOD_DESC);