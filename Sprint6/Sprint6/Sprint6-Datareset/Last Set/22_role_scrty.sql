use cdat_qa_user;

delete from role_scrty;

-- Plan User
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('2', '17');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('3', '17');

-- Submission Review
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('4', '14');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('5', '14');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('9', '14');

-- Senior Evaluation
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('4', '15');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('5', '15');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('10', '15');

-- Invalid Confirmation
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('4', '16');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('5', '16');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('11', '16');

-- Focused Review
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('4', '48');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('5', '48');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('12', '48');

-- Discrepant Confirmation
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('4', '45');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('5', '45');
INSERT INTO `role_scrty` (`SCRTY_ID`, `ROLE_ID`) VALUES ('13', '45');
