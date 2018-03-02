INSERT INTO rfrnc_doc_cntnt_type
(
  DOC_CNTNT_TYPE_ID,
  DOC_CNTNT_TYPE_NAME
)
VALUES
(
  1,
  'application/pdf'
)
,
(
  2,
  'application/x-msdownload'
)
,
(
  3,
  'application/x-zip-compressed'
) ON DUPLICATE KEY UPDATE DOC_CNTNT_TYPE_NAME = VALUES(DOC_CNTNT_TYPE_NAME);

INSERT INTO rfrnc_user_doc_acs_type
(
  USER_DOC_ACS_TYPE_ID,
  USER_DOC_ACS_TYPE_NAME
)
VALUES
(
  1,
  'CREATE'
)
,
(
  2,
  'UPDATE'
)
,
(
  3,
  'READ'
)
,
(
  4,
  'DELETE'
) ON DUPLICATE KEY UPDATE USER_DOC_ACS_TYPE_NAME = VALUES(USER_DOC_ACS_TYPE_NAME);

INSERT INTO rfrnc_doc_upld_stus
(
  DOC_UPLD_STUS_ID,
  DOC_UPLD_STUS_NAME,
  DOC_UPLD_STUS_DESC
)
VALUES
(
  1,
  'FILE_REC_DOC_AV_SVC',
  'File Received  to Document Antivirus Service'
)
,
(
  2,
  'FILE_REC_DOC_AV_SVC_NO_AV_ISSUE',
  'File Received No Virus Found.'
)
,
(
  3,
  'FILE_REC_DOC_AV_SVC_HAVE_AV_ISSUE',
  'File Received Document have Virus Issue.'
)
,
(
  4,
  'FILE_IS_NOT_PDF',
  'File Received Document is not PDF.'
) ON DUPLICATE KEY UPDATE DOC_UPLD_STUS_NAME = VALUES(DOC_UPLD_STUS_NAME), DOC_UPLD_STUS_DESC = VALUES(DOC_UPLD_STUS_DESC);

INSERT INTO rfrnc_doc_type
(
  DOC_TYPE_ID,
  DOC_TYPE_NAME
)
VALUES
(
  1,
  'Plan_Library'
)
,
(
  2,
  'Contract Additional Documents'
)
,
(
  3,
  'Contract Enrollee List'
)
,
(
  4,
  'Medical Record'
)
,
(
  5,
  'MRR Enrollee Receipt File'
)
,
(
  6,
  'MRR Coversheet'
)
,
(
  7,
  'Medical Record Coversheet'
) ON DUPLICATE KEY UPDATE DOC_TYPE_NAME = VALUES(DOC_TYPE_NAME);