/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- UPDATE [LOW_PRIORITY] [IGNORE] table_reference 
--      SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...
--      [WHERE where_condition]
--      [ORDER BY ...]
--      [LIMIT row_count]


-- Example One
-- UPDATE column
UPDATE tbl 
SET col=10;



-- Example Two
--  UPDATE with WHERE
UPDATE tbl   
SET col=10   
WHERE col1>70;



-- Example Three
-- UPDATE using NULL
UPDATE tbl    
SET 
    col=10,
    col1='Hello',
    col2='World',
    col3=NULL   
WHERE col4>70;  