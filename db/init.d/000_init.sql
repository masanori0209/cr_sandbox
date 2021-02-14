CREATE DATABASE IF NOT EXISTS strapi CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS 'strapi'@'%' IDENTIFIED BY 'strapi';
GRANT ALL PRIVILEGES ON strapi.* TO 'strapi'@'%';
SET session wait_timeout=259200;
SET global max_allowed_packet=10485760;

FLUSH PRIVILEGES;
