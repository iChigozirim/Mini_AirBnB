-- Prepares a MySQL server for the AirBnB clone:
--   Creates a database hbnb_dev_db.
--   Creates a user hbnb_dev in localhost and grant all privileges.
--   Grants SELECT privileges on performance_schema to the user hbnb_dev.

CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
CREATE USER
    IF NOT EXISTS 'hbnb_dev'@'localhost'
    IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES
    ON hbnb_dev_db.*
    TO 'hbnb_dev'@'localhost';
GRANT SELECT
    ON perfomance_schema.*
    TO 'hbnb_dev'@'localhost';
FLUSH PRIVILEGES;