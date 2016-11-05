/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

-- Search if string exists in any of your stored procedure
SELECT `isr`.* 
FROM `information_schema`.`ROUTINES` as `isr` 
WHERE `Routine_definition` LIKE '%string here%';

-- Search for routine.
SELECT `isr`.*
FROM `information_schema`.`ROUTINES` as `isr`
WHERE lower( `isr`.`ROUTINE_NAME` ) = lower('my-rotine-name-in-here');