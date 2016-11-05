/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- INSERT INTO statement is used to insert record(s) or row(s) into a table

-- INSERT INTO table_name ([column_name],[...column_name],...)
-- VALUES( [column_value],[..column_value]);

-- Example One
-- INSERT one row in a table
INSERT INTO tbl   
VALUES ("abc","def"); 



-- Example Two
-- INSERT values for specific columns
INSERT INTO tbl  (col1, col2, col3, col4)  
VALUES  ("val1", "val2", "val3", NULL); 



-- INSERT multiple rows in a single SQL query.
INSERT INTO tbl ( Col1, Col2 ) 
VALUES
    ( Val1, Val2 ), 
    ( Val1, Val2 );