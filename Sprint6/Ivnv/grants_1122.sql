
USE CDAT_IVNV_QUEUE;

grant select, update, insert, delete on org_que_work_stp to cdat_app_queue;
grant select, update, insert, delete on que_trans_log to cdat_app_queue;
grant select, update, insert, delete on rfrnc_aplctn_mod to cdat_app_queue;
grant select, update, insert, delete on rfrnc_que_work_phase to cdat_app_queue;
grant select, update, insert, delete on rfrnc_que_work_stp to cdat_app_queue;
grant select, update, insert, delete on smpl_aplctn_mod_que_work_stp to cdat_app_queue;
