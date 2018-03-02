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
)
,
(
  '4',
  'Doc Issue',
  'Doc Issue'
)ON DUPLICATE KEY UPDATE EVALTN_WORK_STP_STUS_NAME = VALUES(EVALTN_WORK_STP_STUS_NAME), EVALTN_WORK_STP_STUS_DESC = VALUES(EVALTN_WORK_STP_STUS_DESC);

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
) ON DUPLICATE KEY UPDATE ATSTTN_TYPE_NAME = VALUES(ATSTTN_TYPE_NAME), ATSTTN_TYPE_DESC = VALUES(ATSTTN_TYPE_DESC);


INSERT INTO invld_mdcl_rec_qstn_rsn
(
  INVLD_MDCL_REC_QSTN_RSN_ID,
  INVLD_MDCL_REC_QSTN_ID,
  INVLD_MDCL_REC_RSN_ID
)
VALUES
(
  1,
  2,
  1
),
(
  2,
  2,
  2
),
(
  3,
  2,
  3
),
(
  4,
  2,
  4
),
(
  5,
  2,
  22
),
(
  6,
  3,
  5
),
(
  7,
  3,
  6
),
(
  8,
  3,
  22
),
(
  9,
  4,
  7
),
(
  10,
  4,
  8
),
(
  11,
  4,
  9
),
(
  12,
  4,
  22
),
(
  13,
  5,
  10
),
(
  14,
  5,
  22
),
(
  15,
  6,
  11
),
(
  16,
  6,
  12
),
(
  17,
  6,
  13
),
(
  18,
  6,
  22
),
(
  19,
  7,
  14
),
(
  20,
  7,
  15
),
(
  21,
  7,
  16
),
(
  22,
  7,
  22
),
(
  23,
  8,
  17
),
(
  24,
  8,
  18
),
(
  25,
  8,
  19
),
(
  26,
  8,
  20
),
(
  27,
  8,
  21
),
(
  28,
  8,
  22
),
(
  29,
  9,
  1
),
(
  30,
  9,
  2
),
(
  31,
  9,
  3
),
(
  32,
  9,
  4
),
(
  33,
  9,
  22
) ON DUPLICATE KEY UPDATE INVLD_MDCL_REC_QSTN_ID = VALUES(INVLD_MDCL_REC_QSTN_ID), INVLD_MDCL_REC_RSN_ID = VALUES(INVLD_MDCL_REC_RSN_ID);

INSERT INTO rfrnc_work_stp_cmt_type
(
  WORK_STP_CMT_TYPE_ID,
  WORK_STP_CMT_TYPE_NAME,
  WORK_STP_CMT_TYPE_DESC
)
VALUES
(
  1,
  'General',
  'General Comment'
),
(
  2,
  'Doc Issue',
  'Document issue Comment'
),
(
  3,
  'Non Compliance Reason',
  'Non-Compliance Reason Comment'
),
(
  4,
  'INV',
  'INV Question Comment'
),
(
  5,
  'Invalid Attestation Reason',
  'Invalid Attestation Reason Comment'
) ON DUPLICATE KEY UPDATE WORK_STP_CMT_TYPE_NAME = VALUES(WORK_STP_CMT_TYPE_NAME), WORK_STP_CMT_TYPE_DESC = VALUES(WORK_STP_CMT_TYPE_DESC);

INSERT INTO rfrnc_mdcl_rec_type
(
  MDCL_REC_TYPE_ID,
  MDCL_REC_TYPE_NAME,
  MDCL_REC_TYPE_DESC
)
VALUES
(
  1,
  'A_Medical_Record',
  'A medical record'
)
,
(
  2,
  'No_Medical_Record',
  'No medical record'
) ON DUPLICATE KEY UPDATE MDCL_REC_TYPE_NAME = VALUES(MDCL_REC_TYPE_NAME), MDCL_REC_TYPE_DESC = VALUES(MDCL_REC_TYPE_DESC);

INSERT INTO rfrnc_mdcl_rec_non_cmplnc_rsn
(
  MDCL_REC_NON_CMPLNC_RSN_ID,
  MDCL_REC_NON_CMPLNC_RSN_NAME,
  MDCL_REC_NON_CMPLNC_RSN_DESC
)
VALUES
(
  1,
  'Low copy quality',
  'Low copy quality'
),
(
  2,
  'Multiple dates of service on a continuous page or inpatient record',
  'Multiple dates of service on a continuous page or inpatient record'
),
(
  3,
  'Multiple records with one coversheet',
  'Multiple records with one coversheet'
),
(
  4,
  'Page out of order',
  'Page out of order'
),
(
  5,
  'Possible altered medical record',
  'Possible altered medical record'
),
(
  6,
  'Possible PHI/PII issue',
  'Possible PHI/PII issue'
),
(
  7,
  'Other',
  'Other'
) ON DUPLICATE KEY UPDATE MDCL_REC_NON_CMPLNC_RSN_NAME = VALUES(MDCL_REC_NON_CMPLNC_RSN_NAME), MDCL_REC_NON_CMPLNC_RSN_DESC = VALUES(MDCL_REC_NON_CMPLNC_RSN_DESC);

INSERT INTO rfrnc_invld_mdcl_rec_rsn
(
  INVLD_MDCL_REC_RSN_ID,
  INVLD_MDCL_REC_RSN_NAME,
  INVLD_MDCL_REC_RSN_DESC
)
VALUES
(
  1,
  'Name on coversheet does not match the name on the medical record',
  'Name on coversheet does not match the name on the medical record'
),
(
  2,
  'No patient name on the record',
  'No patient name on the record'
),
(
  3,
  'Different patient name on page',
  'Different patient name on page'
),
(
  4,
  'Patient name is the same but birthday is completely different',
  'Patient name is the same but birthday is completely different'
),
(
  5,
  'Name on record is the middle name/maiden name',
  'Name on record is the middle name/maiden name'
),
(
  6,
  'Not an acceptable name variance',
  'Not an acceptable name variance'
),
(
  7,
  'No Date of Service on medical record',
  'No Date of Service on medical record'
),
(
  8,
  'Year of service missing on medical record',
  'Year of service missing on medical record'
),
(
  9,
  'No valid date of service - only date is signature date/dictation date',
  'No valid date of service - only date is signature date/dictation date'
),
(
  10,
  'Date of service outside data collection period',
  'Date of service outside data collection period'
),
(
  11,
  'Invalid Provider Type (RN, LPN, RD, licensed counselor)',
  'Invalid Provider Type (RN, LPN, RD, licensed counselor)'
),
(
  12,
  'Invalid Provider Source (Diagnostic radiology, Home Health)',
  'Invalid Provider Source (Diagnostic radiology, Home Health)'
),
(
  13,
  'No face-to-face documented (pacemaker telephonic check)',
  'No face-to-face documented (pacemaker telephonic check)'
),
(
  14,
  'Observation/Amb surg record incorrectly submitted as IP on CS',
  'Observation/Amb surg record incorrectly submitted as IP on CS'
),
(
  15,
  'Overnight ER stay submitted as IP on CS',
  'Overnight ER stay submitted as IP on CS'
),
(
  16,
  'Insufficient documentation to support IP medical record (consult only, progress note only, no discharge date in record)',
  'Insufficient documentation to support IP medical record (consult only, progress note only, no discharge date in record)'
),
(
  17,
  'No valid signature in medical record',
  'No valid signature in medical record'
),
(
  18,
  'Signature stamps are not permitted for Medicare record authentication',
  'Signature stamps are not permitted for Medicare record authentication'
),
(
  19,
  'No valid signature in medical record – valid attestation',
  'No valid signature in medical record – valid attestation'
),
(
  20,
  'No valid signature in medical record – invalid attestation',
  'No valid signature in medical record – invalid attestation'
),
(
  21,
  'No valid credential in medical record – no attestation)',
  'No valid credential in medical record – no attestation)'
),
(
  22,
  'Other',
  'Other'
) ON DUPLICATE KEY UPDATE INVLD_MDCL_REC_RSN_NAME = VALUES(INVLD_MDCL_REC_RSN_NAME), INVLD_MDCL_REC_RSN_DESC = VALUES(INVLD_MDCL_REC_RSN_DESC);

INSERT INTO rfrnc_invld_mdcl_rec_qstn
(
  INVLD_MDCL_REC_QSTN_ID,
  INVLD_MDCL_REC_QSTN_NAME,
  INVLD_MDCL_REC_QSTN_DESC,
  SMPL_APLCTN_MOD_QUE_WORK_STP_ID,
  FAILR_DISP,
  FAILR_DISP_TXT,
  ROUTE,
  DSPLY_ORDR
)
VALUES
(
  1,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  2,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  2,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  2,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  3,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  2,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  4,
  'INV4',
  'Is there a date on the medical record?',
  2,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  5,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  2,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  6,
  'INV5',
  'Is the medical record from a valid source?',
  2,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  7,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  2,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  8,
  'INV2',
  'Is the medical record signed?',
  2,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  9,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  2,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  10,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  2,
  20,
  '',
  'Invalid If No',
  10
),

(
  11,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  3,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  12,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  3,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  13,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  3,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  14,
  'INV4',
  'Is there a date on the medical record?',
  3,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  15,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  3,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  16,
  'INV5',
  'Is the medical record from a valid source?',
  3,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  17,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  3,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  18,
  'INV2',
  'Is the medical record signed?',
  3,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  19,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  3,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  20,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  3,
  20,
  '',
  'Invalid If No',
  10
),

(
  21,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  7,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  22,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  7,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  23,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  7,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  24,
  'INV4',
  'Is there a date on the medical record?',
  7,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  25,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  7,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  26,
  'INV5',
  'Is the medical record from a valid source?',
  7,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  27,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  7,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  28,
  'INV2',
  'Is the medical record signed?',
  7,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  29,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  7,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  30,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  7,
  20,
  '',
  'Invalid If No',
  10
),

(
  31,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  8,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  32,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  8,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  33,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  8,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  34,
  'INV4',
  'Is there a date on the medical record?',
  8,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  35,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  8,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  36,
  'INV5',
  'Is the medical record from a valid source?',
  8,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  37,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  8,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  38,
  'INV2',
  'Is the medical record signed?',
  8,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  39,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  8,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  40,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  8,
  20,
  '',
  'Invalid If No',
  10
),

(
  41,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  12,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  42,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  12,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  43,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  12,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  44,
  'INV4',
  'Is there a date on the medical record?',
  12,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  45,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  12,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  46,
  'INV5',
  'Is the medical record from a valid source?',
  12,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  47,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  12,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  48,
  'INV2',
  'Is the medical record signed?',
  12,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  49,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  12,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  50,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  12,
  20,
  '',
  'Invalid If No',
  10
),

(
  51,
  'INV17',
  'Is acceptable Medical Record documentation included?',
  13,
  17,
  'Something other than a MR is attached',
  'Invalid If No',
  1
),
(
  52,
  'INV1',
  'Does the medical record correctly identify the sampled beneficiary?',
  13,
  1,
  'Wrong record/no name',
  'Invalid If No',
  2
),
(
  53,
  'INV3',
  'Is the name on the medical record an acceptable variance of the name of the sampled beneficiary?',
  13,
  3,
  'Name variation',
  'Invalid If No',
  3
),
(
  54,
  'INV4',
  'Is there a date on the medical record?',
  13,
  4,
  'Date missing',
  'Invalid If No',
  4
),
(
  55,
  'INV14',
  'Is the date on the medical record within the data collection period?',
  13,
  14,
  'Date outside data collection period',
  'Invalid If No',
  5
),
(
  56,
  'INV5',
  'Is the medical record from a valid source?',
  13,
  5,
  'Invalid provider type, lab only, super-bill, non-face to face, SNP',
  'Invalid If No',
  6
),
(
  57,
  'INV15',
  'Does the Provider Type of the medical record match the Provider Type selected on the Medical Record Coversheet?',
  13,
  15,
  'Provider type mismatch',
  'Invalid If No',
  7
),
(
  58,
  'INV2',
  'Is the medical record signed?',
  13,
  2,
  'Missing signature',
  'Invalid If No CMS Generated Attestation And PSHOO',
  8
),
(
  59,
  'INV7',
  'Are you able to confirm an acceptable credential/specialty?',
  13,
  7,
  'Credentials missing',
  'Invalid If No CMS Generated Attestation And PSHOO',
  9
),
(
  60,
  'INV20',
  'Is the medical record free from invalid issues not otherwise addressed through existing INV checks?',
  13,
  20,
  '',
  'Invalid If No',
  10
) ON DUPLICATE KEY UPDATE INVLD_MDCL_REC_QSTN_NAME = VALUES(INVLD_MDCL_REC_QSTN_NAME), INVLD_MDCL_REC_QSTN_DESC = VALUES(INVLD_MDCL_REC_QSTN_DESC),
  SMPL_APLCTN_MOD_QUE_WORK_STP_ID  = VALUES(SMPL_APLCTN_MOD_QUE_WORK_STP_ID), FAILR_DISP = VALUES(FAILR_DISP), FAILR_DISP_TXT = VALUES(FAILR_DISP_TXT),
  ROUTE = VALUES(ROUTE), DSPLY_ORDR = VALUES(DSPLY_ORDR);
  
 INSERT INTO rfrnc_invld_atsttn_rsn
(
  INVLD_ATSTTN_RSN_ID,
  INVLD_ATSTTN_RSN_NAME,
  INVLD_ATSTTN_RSN_DESC
)
VALUES
(
  1,
  'Attestation altered',
  'Attestation altered'
),
(
  2,
  'Attestation Incomplete',
  'Attestation Incomplete'
),
(
  3,
  'Date of service mismatch',
  'Date of service mismatch'
),
(
  4,
  'Incorrect enrollee',
  'Incorrect enrollee'
),
(
  5,
  'Inpatient record',
  'Inpatient record'
),
(
  6,
  'Other',
  'Other'
) ON DUPLICATE KEY UPDATE INVLD_ATSTTN_RSN_NAME = VALUES(INVLD_ATSTTN_RSN_NAME), INVLD_ATSTTN_RSN_DESC = VALUES(INVLD_ATSTTN_RSN_DESC);