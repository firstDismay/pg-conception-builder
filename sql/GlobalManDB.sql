--
-- funcownerQL database cluster dump
--

-- Started on 2023-04-18 11:42:31

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE administrators;
ALTER ROLE administrators WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE administrators IS 'Группа встроенных администраторов';

CREATE ROLE base_level;
ALTER ROLE base_level WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE base_level IS 'Группа определяющая базовый уровень полномочий пользователей, необходимый для работы клиента и служебных подпрограмм';
CREATE ROLE bdu_administrators;
ALTER ROLE bdu_administrators WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_administrators IS 'Группа администраторов сервера БД. Создание пользователей в рамках модели безопасности приложения и назначение полномочий, не выше группы администраторов.';
CREATE ROLE bdu_class_delete;
ALTER ROLE bdu_class_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_class_delete IS 'Базовая роль: Классы - DELETE';
CREATE ROLE bdu_class_export;
ALTER ROLE bdu_class_export WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_class_export IS 'Базовая роль: Классы - EXPORT';
CREATE ROLE bdu_class_insert;
ALTER ROLE bdu_class_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_class_insert IS 'Базовая роль: Классы - INSERT';
CREATE ROLE bdu_class_select;
ALTER ROLE bdu_class_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_class_select IS 'Базовая роль: Классы - SELECT';
CREATE ROLE bdu_class_update;
ALTER ROLE bdu_class_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_class_update IS 'Базовая роль: Классы - UPDATE';
CREATE ROLE bdu_developers;
ALTER ROLE bdu_developers WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_developers IS 'Группа разработчиков приложения. Доступ ко всем возможностям приложения в части конфигурирования настройки и управления';
CREATE ROLE bdu_document_delete;
ALTER ROLE bdu_document_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_document_delete IS 'Базовая роль: Документы - DELETE';
CREATE ROLE bdu_document_export;
ALTER ROLE bdu_document_export WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_document_export IS 'Базовая роль: Документы - EXPORT';
CREATE ROLE bdu_document_insert;
ALTER ROLE bdu_document_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_document_insert IS 'Базовая роль: Документы - INSERT';
CREATE ROLE bdu_document_select;
ALTER ROLE bdu_document_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_document_select IS 'Базовая роль: Документы - SELECT';
CREATE ROLE bdu_document_update;
ALTER ROLE bdu_document_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_document_update IS 'Базовая роль: Документы - UPDATE';
CREATE ROLE bdu_group_delete;
ALTER ROLE bdu_group_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_group_delete IS 'Базовая роль: Группы - DELETE';
CREATE ROLE bdu_group_insert;
ALTER ROLE bdu_group_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_group_insert IS 'Базовая роль: Группы - INSERT';
CREATE ROLE bdu_group_select;
ALTER ROLE bdu_group_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_group_select IS 'Базовая роль: Группы - SELECT';
CREATE ROLE bdu_group_update;
ALTER ROLE bdu_group_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_group_update IS 'Базовая роль: Группы - UPDATE';
CREATE ROLE bdu_log_delete;
ALTER ROLE bdu_log_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_log_delete IS 'Базовая роль: Записи журнала - DELETE';
CREATE ROLE bdu_log_export;
ALTER ROLE bdu_log_export WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_log_export IS 'Базовая роль: Записи журнала - EXPORT';
CREATE ROLE bdu_log_insert;
ALTER ROLE bdu_log_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_log_insert IS 'Базовая роль: Записи журнала - INSERT';
CREATE ROLE bdu_log_select;
ALTER ROLE bdu_log_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_log_select IS 'Базовая роль: Записи журнала - SELECT';
CREATE ROLE bdu_log_update;
ALTER ROLE bdu_log_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_log_update IS 'Базовая роль: Записи журнала - UPDATE';
CREATE ROLE bdu_object_delete;
ALTER ROLE bdu_object_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_object_delete IS 'Базовая роль: Объекты - DELETE';
CREATE ROLE bdu_object_export;
ALTER ROLE bdu_object_export WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_object_export IS 'Базовая роль: Объекты - EXPORT';
CREATE ROLE bdu_object_insert;
ALTER ROLE bdu_object_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_object_insert IS 'Базовая роль: Объекты - INSERT';
CREATE ROLE bdu_object_select;
ALTER ROLE bdu_object_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_object_select IS 'Базовая роль: Объекты - SELECT';
CREATE ROLE bdu_object_update;
ALTER ROLE bdu_object_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_object_update IS 'Базовая роль: Объекты - UPDATE';
CREATE ROLE bdu_plan_delete;
ALTER ROLE bdu_plan_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_plan_delete IS 'Базовая роль: План - DELETE';
CREATE ROLE bdu_plan_export;
ALTER ROLE bdu_plan_export WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_plan_export IS 'Базовая роль: План - DELETE';
CREATE ROLE bdu_plan_insert;
ALTER ROLE bdu_plan_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_plan_insert IS 'Базовая роль: План - EXPORT';
CREATE ROLE bdu_plan_select;
ALTER ROLE bdu_plan_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_plan_select IS 'Базовая роль: План - SELECT';
CREATE ROLE bdu_plan_update;
ALTER ROLE bdu_plan_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_plan_update IS 'Базовая роль: План - UPDATE';
CREATE ROLE bdu_pos_temp_delete;
ALTER ROLE bdu_pos_temp_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_pos_temp_delete IS 'Базовая роль: Шаблоны позиций - DELETE';
CREATE ROLE bdu_pos_temp_insert;
ALTER ROLE bdu_pos_temp_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_pos_temp_insert IS 'Базовая роль: Шаблоны позиций - INSERT';
CREATE ROLE bdu_pos_temp_select;
ALTER ROLE bdu_pos_temp_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_pos_temp_select IS 'Базовая роль: Шаблоны позиций - SELECT';
CREATE ROLE bdu_pos_temp_update;
ALTER ROLE bdu_pos_temp_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_pos_temp_update IS 'Базовая роль: Шаблоны позиций - UPDATE';
CREATE ROLE bdu_position_delete;
ALTER ROLE bdu_position_delete WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_position_delete IS 'Базовая роль: Позиции - DELETE';
CREATE ROLE bdu_position_insert;
ALTER ROLE bdu_position_insert WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_position_insert IS 'Базовая роль: Позиции - INSERT';
CREATE ROLE bdu_position_select;
ALTER ROLE bdu_position_select WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_position_select IS 'Базовая роль: Позиции - SELECT';
CREATE ROLE bdu_position_update;
ALTER ROLE bdu_position_update WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_position_update IS 'Базовая роль: Позиции - UPDATE';
CREATE ROLE bdu_worker;
ALTER ROLE bdu_worker WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE bdu_worker IS 'Группа рядовых сотрудников. Осуществление основной хозяйственной деятельности. минимальный уровень привилегий';
CREATE ROLE developers;
ALTER ROLE developers WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;

CREATE ROLE funcowner;
ALTER ROLE funcowner WITH NOSUPERUSER INHERIT CREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
COMMENT ON ROLE funcowner IS 'Владелец внешних функций API';

CREATE ROLE rest_anon;
ALTER ROLE rest_anon WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE rest_authent;

CREATE ROLE test1;
ALTER ROLE test1 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE test2;
ALTER ROLE test2 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE test3;
ALTER ROLE test3 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE test31;
ALTER ROLE test31 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;

--
-- User Configurations
--

--
-- User Config "poligon_user"
--

ALTER ROLE poligon_user SET search_path TO 'plg', 'public';


--
-- Role memberships

GRANT base_level TO bdu_administrators GRANTED BY funcowner;
GRANT base_level TO bdu_class_delete GRANTED BY funcowner;
GRANT base_level TO bdu_class_export GRANTED BY funcowner;
GRANT base_level TO bdu_class_insert GRANTED BY funcowner;
GRANT base_level TO bdu_class_select GRANTED BY funcowner;
GRANT base_level TO bdu_class_update GRANTED BY funcowner;
GRANT base_level TO bdu_developers GRANTED BY funcowner;
GRANT base_level TO bdu_document_delete GRANTED BY funcowner;
GRANT base_level TO bdu_document_export GRANTED BY funcowner;
GRANT base_level TO bdu_document_insert GRANTED BY funcowner;
GRANT base_level TO bdu_document_select GRANTED BY funcowner;
GRANT base_level TO bdu_document_update GRANTED BY funcowner;
GRANT base_level TO bdu_group_delete GRANTED BY funcowner;
GRANT base_level TO bdu_group_insert GRANTED BY funcowner;
GRANT base_level TO bdu_group_select GRANTED BY funcowner;
GRANT base_level TO bdu_group_update GRANTED BY funcowner;
GRANT base_level TO bdu_log_delete GRANTED BY funcowner;
GRANT base_level TO bdu_log_export GRANTED BY funcowner;
GRANT base_level TO bdu_log_insert GRANTED BY funcowner;
GRANT base_level TO bdu_log_select GRANTED BY funcowner;
GRANT base_level TO bdu_log_update GRANTED BY funcowner;
GRANT base_level TO bdu_object_delete GRANTED BY funcowner;
GRANT base_level TO bdu_object_export GRANTED BY funcowner;
GRANT base_level TO bdu_object_insert GRANTED BY funcowner;
GRANT base_level TO bdu_object_select GRANTED BY funcowner;
GRANT base_level TO bdu_object_update GRANTED BY funcowner;
GRANT base_level TO bdu_plan_delete GRANTED BY funcowner;
GRANT base_level TO bdu_plan_export GRANTED BY funcowner;
GRANT base_level TO bdu_plan_insert GRANTED BY funcowner;
GRANT base_level TO bdu_plan_select GRANTED BY funcowner;
GRANT base_level TO bdu_plan_update GRANTED BY funcowner;
GRANT base_level TO bdu_pos_temp_delete GRANTED BY funcowner;
GRANT base_level TO bdu_pos_temp_insert GRANTED BY funcowner;
GRANT base_level TO bdu_pos_temp_select GRANTED BY funcowner;
GRANT base_level TO bdu_pos_temp_update GRANTED BY funcowner;
GRANT base_level TO bdu_position_delete GRANTED BY funcowner;
GRANT base_level TO bdu_position_insert GRANTED BY funcowner;
GRANT base_level TO bdu_position_select GRANTED BY funcowner;
GRANT base_level TO bdu_position_update GRANTED BY funcowner;
GRANT base_level TO bdu_worker GRANTED BY funcowner;
GRANT base_level TO funcowner GRANTED BY funcowner;
GRANT bdu_administrators TO administrators GRANTED BY funcowner;
GRANT bdu_administrators TO test1 GRANTED BY funcowner;
GRANT bdu_class_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_class_delete TO engs_nsi GRANTED BY funcowner;
GRANT bdu_class_export TO bdu_developers GRANTED BY funcowner;
GRANT bdu_class_export TO engs_nsi GRANTED BY funcowner;
GRANT bdu_class_export TO nsi_users GRANTED BY funcowner;
GRANT bdu_class_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_class_insert TO engs_nsi GRANTED BY funcowner;
GRANT bdu_class_insert TO test2 GRANTED BY "NabokovSA";
GRANT bdu_class_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_class_select TO engs_nsi GRANTED BY funcowner;
GRANT bdu_class_select TO nsi_users GRANTED BY funcowner;
GRANT bdu_class_update TO bdu_developers GRANTED BY funcowner;
GRANT bdu_class_update TO engs_nsi GRANTED BY funcowner;
GRANT bdu_developers TO developers GRANTED BY funcowner;
GRANT bdu_developers TO test1 GRANTED BY funcowner;
GRANT bdu_document_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_document_delete TO engs_nsi GRANTED BY funcowner;
GRANT bdu_document_export TO bdu_developers GRANTED BY funcowner;
GRANT bdu_document_export TO engs_nsi GRANTED BY funcowner;
GRANT bdu_document_export TO nsi_users GRANTED BY funcowner;
GRANT bdu_document_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_document_insert TO engs_nsi GRANTED BY funcowner;
GRANT bdu_document_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_document_select TO engs_nsi GRANTED BY funcowner;
GRANT bdu_document_select TO nsi_users GRANTED BY funcowner;
GRANT bdu_document_update TO bdu_developers GRANTED BY funcowner;
GRANT bdu_document_update TO engs_nsi GRANTED BY funcowner;
GRANT bdu_group_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_group_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_group_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_group_select TO engs_nsi GRANTED BY funcowner;
GRANT bdu_group_select TO nsi_users GRANTED BY funcowner;
GRANT bdu_group_update TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_delete TO engs_nsi GRANTED BY funcowner;
GRANT bdu_object_export TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_export TO engs_nsi GRANTED BY funcowner;
GRANT bdu_object_export TO nsi_users GRANTED BY funcowner;
GRANT bdu_object_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_insert TO engs_nsi GRANTED BY funcowner;
GRANT bdu_object_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_select TO engs_nsi GRANTED BY funcowner;
GRANT bdu_object_select TO ererer GRANTED BY funcowner;
GRANT bdu_object_select TO nsi_users GRANTED BY funcowner;
GRANT bdu_object_update TO bdu_developers GRANTED BY funcowner;
GRANT bdu_object_update TO engs_nsi GRANTED BY funcowner;
GRANT bdu_pos_temp_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_pos_temp_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_pos_temp_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_pos_temp_update TO bdu_developers GRANTED BY funcowner;
GRANT bdu_position_delete TO bdu_developers GRANTED BY funcowner;
GRANT bdu_position_insert TO bdu_developers GRANTED BY funcowner;
GRANT bdu_position_select TO bdu_developers GRANTED BY funcowner;
GRANT bdu_position_update TO bdu_developers GRANTED BY funcowner;
