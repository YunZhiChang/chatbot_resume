create database chatbot_db;
use chatbot_db;

create table users (
    user_open_id varchar(255),
    user_nick_name varchar(255),
    user_status varchar(255),
    user_img varchar(255),
    user_register_date varchar(255),
    user_register_menu varchar(255),
    PRIMARY KEY (user_open_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table menus (
	menu_id varchar(255),
	menu_content JSON,
	PRIMARY KEY (menu_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create user 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
GRANT SELECT ON chatbot_db.users TO 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
GRANT SELECT ON chatbot_db.menus TO 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
GRANT SELECT ON chatbot_db.assoc_sa_questions TO 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
GRANT SELECT ON chatbot_db.assoc_dev_questions TO 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
GRANT SELECT ON chatbot_db.assoc_sys_questions TO 'read_only_user'@'%' IDENTIFIED BY 'akirapf3';
