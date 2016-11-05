/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- DELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name
--    [PARTITION (partition_name,...)]
--    [WHERE where_condition]
--    [ORDER BY ...]
--    [LIMIT row_count



-- Example One
-- Delete all records
DELETE FROM tbl;



-- Example Two 
-- Delete specific record
DELETE FROM tbl   
WHERE id=10; 



-- Example Three
-- Delete limited number of rows or order of deletion.
DELETE FROM tbl WHERE col = 'val'
ORDER BY col1 LIMIT 1;



-- Example Four
-- Using subquery
DELETE FROM tbl   
WHERE col in (
    SELECT val1   
    FROM  tbl1   
    WHERE id>100   
        AND tbl.val_id=tbl1.val_id
); 