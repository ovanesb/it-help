/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- INSERT ... SELECT
-- To insert many rows quickly into a table from one or many tables you can use INSERT ... SELECT statement.

-- INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
--    [INTO] tbl_name 
--    [PARTITION (partition_name,...)]
--    [(col_name,...)]
--    SELECT ...
--    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]

-- Using the IGNORE keyword, ignore rows that would cause duplicate-key violations.
-- The keyword DELAYED is ignored with INSERT ... SELECT.
-- The target table of the INSERT statement may appear in the FROM clause of the SELECT part of the query.
-- AUTO_INCREMENT columns work as usual.
-- To avoid ambiguous column reference problems when the SELECT and the INSERT refer to the same table

-- Example One
INSERT INTO tbl2 (fld_id)
  SELECT tbl.fld_order_id
  FROM tbl WHERE tbl.fld_order_id > 200;



-- Example Two
INSERT INTO testpurchase   
SELECT *   
FROM purchase;



-- Example Three
INSERT INTO testpurchase   
SELECT *   
FROM purchase   
WHERE YEAR(invoice_dt)='2008'; 