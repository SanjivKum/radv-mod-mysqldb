use cdat_Qa_intake;
-- intake schema
INSERT INTO rfrnc_atsttn_type
(
  ATSTTN_TYPE_ID,
  ATSTTN_TYPE_NAME,
  ATSTTN_TYPE_DESC
)
VALUES
(
  1,
  'CMS_Generated_Attestation',
  'A CMS-generated attestation'
)
,
(
  2,
  'Non_CMS_Generated_Attestation',
  'A non-CMS-generated attestation'
)
,
(
  3,
  'No_Attestation',
  'No attestation'
); 
