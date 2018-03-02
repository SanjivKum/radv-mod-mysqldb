CREATE DATABASE cdat_dev_queue;
CREATE USER 'cdat_app_queue' IDENTIFIED BY 'Elkridge2017';
GRANT ALL on cdat_dev_queue.* TO cdat_app_queue;
FLUSH PRIVILEGES;