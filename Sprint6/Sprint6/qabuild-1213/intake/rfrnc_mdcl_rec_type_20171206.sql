use cdat_Qa_intake;
-- intake schema
INSERT INTO rfrnc_mdcl_rec_type
(
  MDCL_REC_TYPE_ID,
  MDCL_REC_TYPE_NAME,
  MDCL_REC_TYPE_DESC
)
VALUES
(
  1,
  'Electronic_Medical_Record',
  'An electronic medical record'
)
,
(
  2,
  'Scanned_Handwritten_Medical_Record',
  'A scanned, hand-written medical record'
)
,
(
  3,
  'No_Medical_Record',
  'No medical record'
); 
