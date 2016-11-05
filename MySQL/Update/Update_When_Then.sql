/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- Example One
-- http://www.w3resource.com/mysql/update-table/update-table.php
-- Problem
-- If you want to update the val1 with 5,8 and 7 for concerned id 1,3 and 4 and 
-- the other val1 will remain same and the val2 will be updated with 13 and 5 
-- for the concerned id 2 and 4 and the other will remain same,
-- the following update statement can be used by using IF and CASE.
UPDATE table1 SET val1= CASE id   
                          WHEN 1 THEN 5   
                          WHEN 3 THEN 8   
                          WHEN 4 THEN 7   
                          ELSE val1  
                        END,   
                 val2= CASE id   
                          WHEN 2 THEN 13   
                          WHEN 4 THEN 5   
                          ELSE val2   
                        END  
             WHERE id IN (1, 2, 3, 4); 


--------------------------------
- title   - id - val1 -  val2  -
--------------------------------
- title1  - 1 -    5  -      3 -
--------------------------------
- title2  - 2 -    1  - (2) 13 -
--------------------------------
- title3  - 3 - (7)8  -     13 -
--------------------------------
- title4  - 4 - (4)7  - (11) 5 -
--------------------------------


Output :
--------------------------------
- title   - id - val1 -  val2  -
--------------------------------
- title1  - 1 -    5  -      3 -
--------------------------------
- title2  - 2 -    1  -     13 -
--------------------------------
- title3  - 3 -    8  -     13 -
--------------------------------
- title4  - 4 -    7  -      5 -
--------------------------------