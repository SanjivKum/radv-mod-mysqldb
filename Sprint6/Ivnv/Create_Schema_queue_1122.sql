CREATE DATABASE cdat_ivnv_queue;
CREATE USER 'cdat_app_queue' IDENTIFIED BY 'VRadvmod0927$';
GRANT ALL on cdat_ivnv_queue.* TO cdat_app_queue;
FLUSH PRIVILEGES;