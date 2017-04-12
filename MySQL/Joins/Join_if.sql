/**
 * Author:  ovanes
 * Created: April 12, 2017
 */

-- IF condition within JOIN

    SELECT 
        `one`.* 
    
    FROM 
        `tableOne` AS `one`
    
    INNER JOIN
        `tableTwo` AS `two` ON (`two`.`id`= IF( inVarOne IS NOT NULL, inVarOne, `one`.`id`))
        
    INNER JOIN
        `tableThree` AS `three` ON (`three`.`foo`= IF( inVarTwo != -1, inVarTwo, `two`.`foo`))
        
    WHERE
        `one`.`some_val` = 'something'
        
    ORDER BY `one`.`id` desc;
