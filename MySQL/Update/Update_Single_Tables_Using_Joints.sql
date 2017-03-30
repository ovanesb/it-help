/**
 * Author:  ovanes
 * Created: March 30, 2017
 */

    UPDATE `my_table` AS `mt`
    INNER JOIN `table_one` AS `ta` ON(`ta`.`val`=`mt`.`val`)
    INNER JOIN `table_two` AS `tb` ON(`tb`.`PersonID` = `ta`.`val`)
    INNER JOIN `table_tree` AS `tc` ON(`tc`.`val` = `tb`.`val`)
    SET `mt`.`val`= 'value'
    WHERE `mt`.`val` = 'value' AND `tc`.`val` = 'value' AND `tc`.`val` = 'value';