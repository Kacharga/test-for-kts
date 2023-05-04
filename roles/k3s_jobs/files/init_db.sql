-- Создаем роль владельца логической базы данных
CREATE ROLE db_admin WITH INHERIT LOGIN NOSUPERUSER NOREPLICATION PASSWORD 'secret';

-- Создаем базу данных с кодировкой UTF8
CREATE DATABASE ip_database OWNER db_admin ENCODING 'UTF8' LC_COLLATE='ru_RU.UTF-8' LC_CTYPE='ru_RU.UTF-8' TEMPLATE='template0' CONNECTION LIMIT 100; 

-- Подключаемся к созданой базе данных
\c ip_database 

-- Создаем и устанавливаем схему как дефолт для данной базы данных
CREATE SCHEMA ip_database_schema AUTHORIZATION db_admin; 
ALTER DATABASE ip_database SET search_path TO ip_database_schema;

-- Создаем в рамках данной схемы таблицу
CREATE TABLE ip_list(
  ip varchar(64)
);