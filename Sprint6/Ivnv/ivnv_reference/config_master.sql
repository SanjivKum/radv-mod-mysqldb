INSERT INTO rfrnc_smpl_type
(
  SMPL_TYPE_ID,
  SMPL_TYPE_NAME,
  SMPL_TYPE_DESC
)
VALUES
(
  1,
  'National',
  'National Sample'
)
,
(
  2,
  'Contract',
  'Contract Sample'
)
ON DUPLICATE KEY UPDATE SMPL_TYPE_NAME = VALUES(SMPL_TYPE_NAME), SMPL_TYPE_DESC = VALUES(SMPL_TYPE_DESC);