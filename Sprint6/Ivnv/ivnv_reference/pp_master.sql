INSERT INTO rfrnc_enrlee_ident_type
(
  ENRLEE_IDENT_TYPE_ID,
  ENRLEE_IDENT_TYPE_NAME,
  ENRLEE_IDENT_TYPE_DESC
)
VALUES
(
  1,
  'CHIC',
  NULL
),
(
  2,
  'RRBHIC',
  NULL
) ON DUPLICATE KEY UPDATE ENRLEE_IDENT_TYPE_NAME = VALUES(ENRLEE_IDENT_TYPE_NAME), ENRLEE_IDENT_TYPE_DESC = VALUES(ENRLEE_IDENT_TYPE_DESC);

INSERT INTO rfrnc_dgns_cd_type
(
  DGNS_TYPE_ID,
  DGNS_CD_TYPE_NAME,
  DGNS_CD_TYPE_DESC
)
VALUES
(
  1,
  'ICD-9',
  'ICD-9 Codes'
) ON DUPLICATE KEY UPDATE DGNS_CD_TYPE_NAME = VALUES(DGNS_CD_TYPE_NAME), DGNS_CD_TYPE_DESC = VALUES(DGNS_CD_TYPE_DESC);

INSERT INTO rfrnc_coversheet_submsn_stus
(
  COVERSHEET_SUBMSN_STUS_ID,
  COVERSHEET_STUS_NAME,
  COVERSHEET_STUS_DESC
)
VALUES
(
  1,
  'Reviewed',
  'Reviewed'
)
,
(
  2,
  'Staged',
  'Staged'
)
,
(
  3,
  'Submitted',
  'Submitted'
)
,
(
  4,
  'Removed',
  'Removed'
) ON DUPLICATE KEY UPDATE COVERSHEET_STUS_NAME = VALUES(COVERSHEET_STUS_NAME), COVERSHEET_STUS_DESC = VALUES(COVERSHEET_STUS_DESC);

INSERT INTO rfrnc_upld_type
(
  UPLD_TYPE_ID,
  UPLD_TYPE_NAME,
  UPLD_TYPE_DESC
)
VALUES
(
  1,
  'MR',
  'Medical Record'
),
(
  2,
  'NoMR',
  'No Medical Record'
),
(
  3,
  'MR&ATT',
  'Medical Record and CMS-Generated Attestation'
) ON DUPLICATE KEY UPDATE UPLD_TYPE_NAME = VALUES(UPLD_TYPE_NAME), UPLD_TYPE_DESC = VALUES(UPLD_TYPE_DESC);

INSERT INTO rfrnc_prvdr_type
(
  PRVDR_TYPE_ID,
  PRVDR_TYPE_NAME,
  PRVDR_TYPE_DESC
)
VALUES
(
  1,
  'Inpatient',
  'Inpatient'
),
(
  2,
  'Outpatient',
  'PSHOO'
) ON DUPLICATE KEY UPDATE PRVDR_TYPE_NAME = VALUES(PRVDR_TYPE_NAME), PRVDR_TYPE_DESC = VALUES(PRVDR_TYPE_DESC);

INSERT INTO rfrnc_mdcl_rec_vldtn_rsn
(
  MDCL_REC_VLDTN_RSN_ID,
  MDCL_REC_VLDTN_RSN_NAME,
  MDCL_REC_VLDTN_RSN_DESC
)
VALUES
(
  1,
  'The submitted medical record is either password protected or encrypted.',
  NULL
),
(
  2,
  'The submitted medical record is an Invalid PDF File Format.',
  NULL
),
(
  3,
  'The submitted medical record does not allow page rotations.',
  NULL
),
(
  4,
  'The submitted medical record does not allow pages to be deleted.',
  NULL
),
(
  5,
  'The submitted medical record does not allow merging with the Coversheet PDF.',
  NULL
),
(
  6,
  'The submitted medical record contains binders, bookmarks, or other embedded containers.',
  NULL
),
(
  7,
  'An unidentifiable issue was encountered with the medical record.',
  NULL
),
(
  8,
  'The submitted medical record failed a virus scan.',
  NULL
) ON DUPLICATE KEY UPDATE MDCL_REC_VLDTN_RSN_NAME = VALUES(MDCL_REC_VLDTN_RSN_NAME), MDCL_REC_VLDTN_RSN_DESC = VALUES(MDCL_REC_VLDTN_RSN_DESC);

INSERT INTO rfrnc_gndr
(
  GNDR_ID,
  GNDR_NAME,
  GNDR_DESC
)
VALUES
(
  1,
  'MALE',
  'MALE'
),
(
  2,
  'FEMALE',
  'FEMALE'
),
(
  3,
  'UNDEFINED',
  'UNDEFINED'
) ON DUPLICATE KEY UPDATE GNDR_NAME = VALUES(GNDR_NAME), GNDR_DESC = VALUES(GNDR_DESC);

