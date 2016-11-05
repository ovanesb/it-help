/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- Example One
-- http://www.w3resource.com/mysql/update-table/update-table.php
-- If we want to update the book_price of the table book_mast by an increment of 5% and
-- also update the purch_price and total_cost of puchase table by an increment of 5%, and 
-- this increment will effect only those rows in both book_mast and purchase table, 
-- which publishing language is English and book_id matching in both the tables, 
-- we can write the following code -
UPDATE book_mast, purchase 
 
SET 
    book_mast.book_price=book_mast.book_price+(book_mast.book_price*.05),  
    purchase.purch_price=purchase.purch_price+(purchase.purch_price*.05),  
    purchase.total_cost=receive_qty*(purchase.purch_price+(purchase.purch_price*.05))  

WHERE book_mast.book_id=purchase.book_id  
    AND purchase.pub_lang="English";  



-- Example Two
-- http://www.w3resource.com/mysql/update-table/update-table.php
-- If we want to update the aval1of table11 with the bval1 of table12 against the following condition -
-- 1). id of table11 and table13 must be matched, and
-- 2). bval2 of table12 must be matched with the cval1 of table13 -
-- then the following code can be used.
UPDATE table11, table12, table13   
SET table11.aval1 = table12.bval1  
WHERE table11.id = table13.id   
    AND table12.bval2 = table13.cval1;