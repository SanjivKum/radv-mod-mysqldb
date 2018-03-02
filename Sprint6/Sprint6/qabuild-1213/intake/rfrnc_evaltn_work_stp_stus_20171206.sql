use cdat_Qa_intake;
-- intake schema
INSERT INTO rfrnc_evaltn_work_stp_stus
(
  EVALTN_WORK_STP_STUS_ID,
  EVALTN_WORK_STP_STUS_NAME,
  EVALTN_WORK_STP_STUS_DESC
)
VALUES
(
  '1',
  'In_Progress',
  'In Progress'
)
,
(
  '2',
  'Submitted',
  'Submitted'
)
,
(
  '3',
  'Reset',
  'Reset'
); 
