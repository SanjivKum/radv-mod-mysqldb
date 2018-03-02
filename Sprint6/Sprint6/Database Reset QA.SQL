#Delete all medical records and library documents

DELETE FROM cdat_qa_dm.user_doc_acs_log;
DELETE FROM cdat_qa_dm.doc_upld;
DELETE FROM cdat_qa_dm.DOC_STUS WHERE DOC_VRSN_ID IN (SELECT DOC_VRSN_ID FROM cdat_qa_dm.doc_VRSN WHERE doc_ID IN (SELECT DOC_ID FROM cdat_qa_dm.doc WHERE DOC_TYPE_ID NOT IN (1,2,3)));
DELETE FROM cdat_qa_dm.USER_DOC_ACS_LOG WHERE DOC_VRSN_ID IN (SELECT DOC_VRSN_ID FROM cdat_qa_dm.doc_VRSN WHERE doc_ID IN (SELECT DOC_ID FROM cdat_qa_dm.doc WHERE DOC_TYPE_ID NOT IN (1,2,3)));
DELETE FROM cdat_qa_dm.doc_VRSN WHERE doc_ID IN (SELECT DOC_ID FROM cdat_qa_dm.doc WHERE DOC_TYPE_ID NOT IN (1,2,3));
DELETE FROM cdat_qa_dm.doc WHERE DOC_TYPE_ID NOT IN (1,2,3);
DELETE FROM cdat_qa_dm.smpl_cntrct_doc WHERE doc_id in (select doc_id from cdat_qa_dm.doc where DOC_TYPE_ID not in (1,2,3));

# Delete from Plan portal for all coversheets
DELETE FROM cdat_qa_pp.coversheet_vrsn_enrlee_hcc;
DELETE FROM cdat_qa_pp.COVERSHEET_MDCL_REC_VLDTN;
DELETE FROM cdat_qa_pp.coversheet_vrsn;
DELETE FROM cdat_qa_pp.coversheet;

# Reset Enrollee
UPDATE cdat_qa_pp.enrlee SET CMPLTD_BY = null, CMPLTD_BY_DT = null, LAST_RANKED_BY_DT = null, LAST_RANKED_BY = null,
							 RCPT_FIL_DOC_ID = null, LOCKED_BY_USER_ID = null, LOCKED_BY_DT = null;

# Delete from the Queue
DELETE FROM cdat_qa_queue.QUE_TRANS_LOG;