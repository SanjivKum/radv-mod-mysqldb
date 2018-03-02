DELIMITER $$
CREATE DEFINER=`cdat_app_queue`@`%` PROCEDURE `sp_getSubmissionStatusCount`(IN userId bigint(20), IN sampleId bigint(20))
BEGIN
SELECT 
            1 as SUBMSN_STUS_ID,
            qtl.QUE_WORK_PHASE_ID as QUE_WORK_PHASE_ID,
			'Open' AS `WORK_PHASE`,
			COUNT(`qtl`.`QUE_TRANS_LOG_ID`) AS `COUNT`
		FROM
			`que_trans_log` as `qtl` 
            join `smpl_aplctn_mod_que_work_stp` as `spmqws` on `qtl`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
               = `spmqws`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
		WHERE
			((`qtl`.`QUE_WORK_PHASE_ID` = 20)
				AND (`qtl`.`ACTV_STP_IND` = 1) AND (`qtl`.`USER_ID` =userId) AND (`spmqws`.`SMPL_ID` =sampleId)) 
    UNION 
   		SELECT 
            2 as SUBMSN_STUS_ID,
            qtl.QUE_WORK_PHASE_ID as QUE_WORK_PHASE_ID,
			'Escalated' AS `WORK_PHASE`,
			COUNT(`qtl`.`QUE_TRANS_LOG_ID`) AS `COUNT`
		FROM
			`que_trans_log` as `qtl` 
            join `smpl_aplctn_mod_que_work_stp` as `spmqws` on `qtl`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
               = `spmqws`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
		WHERE
			((`qtl`.`QUE_WORK_PHASE_ID` = 90) AND (`qtl`.`RSET_IND` = 0)
				AND (`qtl`.`ESCAL_CMPLT_IND` = 0) AND (`qtl`.`USER_ID` =userId) AND (`spmqws`.`SMPL_ID` =sampleId)) 
    UNION 
		SELECT 
            3 as SUBMSN_STUS_ID,
            qtl.QUE_WORK_PHASE_ID as QUE_WORK_PHASE_ID,
			'Completed' AS `WORK_PHASE`,
			COUNT(`qtl`.`QUE_TRANS_LOG_ID`) AS `COUNT`
		FROM
			`que_trans_log` as `qtl` 
            join `smpl_aplctn_mod_que_work_stp` as `spmqws` on `qtl`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
               = `spmqws`.`SMPL_APLCTN_MOD_QUE_WORK_STP_ID`
		WHERE
			((`qtl`.`QUE_WORK_PHASE_ID` = 30)
				AND (`qtl`.`RSET_IND` = 0) AND (`qtl`.`USER_ID` =userId) AND (`spmqws`.`SMPL_ID` =sampleId));
END$$
DELIMITER ;
