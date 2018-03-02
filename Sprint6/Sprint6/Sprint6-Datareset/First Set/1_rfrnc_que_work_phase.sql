use cdat_qa_queue;

delete from rfrnc_que_work_phase;

INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (10,'Available','Available',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (20,'Assigned','Assigned',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (30,'Complete','Complete',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (40,'PM Reset','PM Reset',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (50,'Doc Issue','Doc Issue',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (70,'Manual Edit','Manual Edit',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (80,'Doc Manip','Doc Manip',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (81,'Doc Manip Complete','Doc Manip Complete',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (90,'Escalated','Escalated',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (100,'Esc Available','Esc Available',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (110,'Esc Assigned','Esc Assigned',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (120,'Esc Complete','Esc Complete',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (130,'QA Escalated','QA Escalated',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (140,'QA Available','QA Available',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (160,'QA Complete','QA Complete',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (170,'QA Reset','QA Reset',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (220,'Terminated','Terminated',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (230,'PHI/PII','PHI/PII',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (240,'Exclusion','Exclusion',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (250,'Removed','Removed',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (260,'Manually Moved to CDAT End','Manually Moved to CDAT End',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (270,'Bypass','Bypass',now(),null,null,null);
INSERT INTO rfrnc_que_work_phase (QUE_WORK_PHASE_ID, QUE_WORK_PHASE_NAME, QUE_WORK_PHASE_DESC, CREATD_DT, CREATD_BY, MDFYD_DT, MDFYD_BY) VALUES (280,'FR Bypass Rank Logic','FR Bypass Rank Logic',now(),null,null,null);