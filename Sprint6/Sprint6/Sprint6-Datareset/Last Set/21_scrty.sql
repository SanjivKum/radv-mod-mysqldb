use cdat_dev_user;

delete from scrty;

INSERT INTO `scrty`
(`SCRTY_NAME`, `SCRTY_DESC`)
VALUES
('Plan_Library', 'Plan Library'),
('Plan_Portal', 'Plan Portal'),
('Team_Library', 'Team Library'),
('Queue_Central_Coder', 'Central Coder Queue'),
('Queue_Escalation_Senior', 'Escalation Senior Queue'),
('Queue_PM_Reset', 'PM Reset Queue'),
('Queue_QA_Panel', 'QA Panel Queue'),
('Task_Submission_Review', 'Submission Review'),
('Task_Senior_Evaluation', 'Senior Evaluation'),
('Task_Invalid_Confirmation', 'Invalid Confirmation'),
('Task_Focused_Review', 'Focused Review'),
('Task_Discrepant_Confirmation', 'Discrepant Confirmation')
;