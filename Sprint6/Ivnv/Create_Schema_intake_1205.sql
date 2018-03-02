CREATE DATABASE cdat_IVNV_intake;
CREATE USER 'cdat_app_intake' IDENTIFIED BY 'VRadvmod0927$';
GRANT ALL on cdat_ivnv_intake.* TO cdat_app_intake;
FLUSH PRIVILEGES;