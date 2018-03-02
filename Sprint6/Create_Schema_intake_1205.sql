CREATE DATABASE cdat_dev_intake;
CREATE USER 'cdat_app_intake' IDENTIFIED BY 'Elkridge2017';
GRANT ALL on cdat_dev_intake.* TO cdat_app_intake;
FLUSH PRIVILEGES;