/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- Statement is used to list the binary log files on the server. 
SHOW BINARY LOGS;



-- Shows the events in the binary log.
SHOW BINLOG EVENTS;
--  [IN 'log_name'] [FROM pos] [LIMIT [offset,] row_count]



-- Statement is used to check all available character sets.
SHOW CHARACTER SET;
-- [LIKE 'pattern' | WHERE expr]



-- Statement is used to list collations (a collation is a set of rules for comparing characters in a character set) supported by the server.
SHOW COLLATION;
--  [LIKE 'pattern' | WHERE expr]



-- Statement is used to display information about the columns in a given table. 
SHOW COLUMNS FROM user_details;
-- SHOW [FULL] COLUMNS {FROM | IN} tbl_name [{FROM | IN} db_name] 
--   [LIKE 'pattern' | WHERE expr]



-- Statement is used to show CREATE DATABASE statement.
SHOW CREATE DATABASE hr;
-- SHOW CREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name



-- This statement displays the CREATE EVENT statement needed to re-create a given event. 
-- It requires the EVENT privilege for the database from which the event is to be shown.
SHOW CREATE EVENT event_name;



-- Statement is used to get the exact string that can be used to re-create the named stored function.
SHOW CREATE FUNCTION func_name



-- Satement is used to get the exact string that can be used to re-create the named stored procedure. 
-- The statement require that you must be the owner of the routine.
SHOW CREATE PROCEDURE proc_name



-- Statement is used to show the create table statement.
SHOW CREATE TABLE  table_name;



-- Statement is used to show the CREATE TRIGGER statement that creates the named trigger.
SHOW CREATE TRIGGER trigger_name



-- Statement is used to show the create view statement.
SHOW CREATE VIEW  view_name;



-- Statement is used to lists the databases on the MySQL server host. 
-- The SHOW SCHEMAS can be used as a synonym for SHOW DATABASES.
SHOW DATABASES;
-- SHOW {DATABASES | SCHEMAS}
--    [LIKE 'pattern' | WHERE expr]



-- Statement is used to display operational information about a storage engine.
SHOW ENGINE INNODB STATUS\G;
-- SHOW ENGINE INNODB STATUS
-- SHOW ENGINE INNODB MUTEX
-- SHOW ENGINE INNODB MUTEX
-- SHOW ENGINE {NDB | NDBCLUSTER} STATUS
-- SHOW ENGINE PERFORMANCE_SCHEMA STATUS



-- Statement is used to display the status information about the server's storage engines. 
-- It is important for checking whether a storage engine is supported, or what the default engine is.
SHOW ENGINES\G
-- SHOW [STORAGE] ENGINES;



-- Statement is used to display the errors, warnings, and notes. 
-- This statement is almost similar to SHOW WARNINGS except displaying errors.
SHOW ERRORS\G
-- SHOW ERRORS [LIMIT [offset,] row_count]
-- SHOW COUNT(*) ERRORS



-- Statement is used to display information about Event Manager events. 
-- It requires the EVENT privilege for the database from which the events are to be shown.
SHOW EVENTS\G
SHOW EVENTS FROM test;
-- SHOW EVENTS [{FROM | IN} schema_name]
--    [LIKE 'pattern' | WHERE expr]



-- This statement is similar to SHOW PROCEDURE CODE but for stored functions.
SHOW FUNCTION CODE func_name



-- Tatement returns the characteristics of a stored function, such as the database, name, type, creator, creation and modification dates, and character set information.
SHOW FUNCTION STATUS\G
-- SHOW FUNCTION STATUS
--    [LIKE 'pattern' | WHERE expr]



-- Statement is used to list the GRANT statement or statements that must be issued to duplicate the privileges that are granted to a MySQL user account. 
-- The account is named using the same format as for the GRANT statement; 
-- If you specify only the username part of the account name, a host name part of '%' is used.
SHOW GRANTS FOR 'root'@'localhost';
-- SHOW GRANTS [FOR user]



-- Statement returns the information of index of a table.
SHOW INDEX FROM employees;
-- SHOW {INDEX | INDEXES | KEYS}
-- {FROM | IN} tbl_name
-- [{FROM | IN} db_name]
-- [WHERE expr]

-- SHOW INDEX 
-- FROM empinfo.employees 
-- WHERE column_name='employee_id';

-- SHOW KEYS
-- FROM empinfo.employees 
-- WHERE column_name='employee_id';

-- SHOW KEYS
-- IN employees 
-- WHERE column_name='employee_id';



-- Statement provides status information about the binary log files of the master. 
-- It requires either the SUPER or REPLICATION CLIENT privilege.
SHOW MASTER STATUS\G
-- SHOW MASTER STATUS



-- Statement is used to list the non-TEMPORARY tables that are currently open in the table cache
SHOW OPEN TABLES FROM empinfo;
-- SHOW OPEN TABLES [{FROM | IN} db_name]
--  [LIKE 'pattern' | WHERE expr]

-- SHOW OPEN TABLES FROM employee LIKE 'e%';



-- Statement is used to display the information about server plugins. 
-- The information or Plugins is also available in the INFORMATION_SCHEMA.PLUGINS table.
SHOW PLUGINS\G
-- SHOW PLUGINS



-- Tatement shows the list of system privileges that the MySQL server supports. 
-- The exact list of privileges depends on the version of server which you are using.
SHOW PRIVILEGES\G
-- SHOW PRIVILEGES



-- Statement is used to display the internal implementation of the named stored procedure. 
-- This statement is a is available only for servers that have been built with debugging support.



-- Statement is used to display the internal implementation of the named stored procedure. 
-- This statement is a is available only for servers that have been built with debugging support.
SHOW PROCEDURE CODE proc_name
-- See the following example, here the server has not built with debugging support.
--SHOW PROCEDURE CODE job_data;
-- ERROR 1289 (HY000): The 'SHOW PROCEDURE|FUNCTION CODE' feature is disabled; you need MySQL built with '--with-debug' to have it working



-- Statement shows you which threads are running.
-- If you have the PROCESS privilege, you can see all threads. 
-- Otherwise, you can see only your own threads (that is, threads associated with the MySQL account that you are using).
-- If you do not use the FULL keyword, only the first 100 characters of each statement are shown in the Info field.
SHOW  PROCESSLIST\G
-- SHOW [FULL] PROCESSLIST



-- Statement shows the events in the relay log of a replication slave. 
-- If you do not specify 'log_name', the first relay log is displayed.

-- SHOW RELAYLOG EVENTS
--   [IN 'log_name'] [FROM pos] [LIMIT [offset,] row_count]



-- Statement is used to display a list of replication slaves currently registered with the master.
SHOW SLAVE HOSTS



-- Statement provides status information on essential parameters of the slave threads.
SHOW SLAVE STATUS
-- The statement requires either the SUPER or REPLICATION CLIENT privilege.



-- Sstatement provides the information of server status. 
-- The LIKE clause along with this statement helps to match the specific variable. 
-- The usage of WHERE clause can fetch rows against a general conditions. 
-- This statement does not require any privilege.
SHOW  STATUS;
-- SHOW [GLOBAL | SESSION] STATUS
--   [LIKE 'pattern' | WHERE expr]

-- SHOW STATUS LIKE 'Qca%';



-- Statement provides a lot of information about each non-TEMPORARY table. 
-- The LIKE clause, if present, indicates which table names to match.
-- The usage of WHERE clause can fetch rows against a general conditions.
SHOW TABLE STATUS;
-- SHOW TABLE STATUS [{FROM | IN} db_name]
--   [LIKE 'pattern' | WHERE expr]

-- SHOW TABLE STATUS FROM employee LIKE 'job%';
-- SHOW TABLE STATUS FROM employee WHERE name='countries';



-- Lists the non-TEMPORARY tables in a given database.
-- The LIKE clause, if present, indicates which table names to match. 
--The usage of WHERE clause can fetch rows against a general conditions.
SHOW  TABLES;
-- SHOW [FULL] TABLES [{FROM | IN} db_name]
--   [LIKE 'pattern' | WHERE expr]

-- SHOW TABLES FROM empinfo;
-- SHOW TABLES IN empinfo;
-- SHOW TABLES FROM empinfo LIKE 'e%';
-- SHOW TABLES FROM empinfo WHERE Tables_in_empinfo='employees';



-- Statement is used to list the triggers currently defined for tables in a database.
 SHOW TRIGGERS LIKE 'acc%'\G
-- SHOW TRIGGERS [{FROM | IN} db_name]     
-- [LIKE 'pattern' | WHERE expr]

-- SHOW  VARIABLES;
-- SHOW GLOBAL VARIABLES;
-- SHOW VARIABLES LIKE 'time%';
-- SHOW VARIABLES LIKE 'time%';



-- Statement is used to display the warnings,errors, and notes that resulted from the last statement in the current session that generated messages. 
-- It shows nothing if the last statement does not generate any message. 
SELECT * FORM employee
SHOW WARNINGS\G
-- SHOW WARNINGS [LIMIT [offset,] row_count]
-- SHOW COUNT(*) WARNINGS

-- SELECT @@warning_count;


