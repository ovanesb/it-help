/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- Example One
-- UPDATE with subqueries
UPDATE  tbl   
SET col=val  
WHERE id IN(
    SELECT id   
    FROM tbl1   
    WHERE col>10
);