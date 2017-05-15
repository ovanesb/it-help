/**
 * Author:  obudakyan
 * Created: 15-May-2017
 */

USE `DB_NAME`;
DROP procedure IF EXISTS `loopThroughSelectResults`;

DELIMITER $$
USE `DB_NAME`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `loopThroughSelectResults`()
loopThroughSelectResults:BEGIN

    DECLARE done INT DEFAULT FALSE;
    DECLARE v_one VARCHAR(255);
    DECLARE v_two VARCHAR(255);
    DECLARE v_three VARCHAR(255);

    
    DECLARE cur1 CURSOR FOR 
    SELECT 
        `one`.`resultOne` AS 'one',
        `two`.`resultTwo` AS 'two',
        `two`.`resultThree` AS 'three'
    FROM 
        `DB_NAME`.`TblOne` AS `one`

    INNER JOIN 
        `DB_NAME_TWO`.`TblTwo` AS `two` ON(`one`.`id`=`two`.`id`)

    INNER JOIN 
        `DB_NAME`.`TblThree`  AS `three` ON(`three`.`id`=`two`.`id`)

    WHERE 
        `three`.`status` = 1
        AND `three`.`type` = 8 

    GROUP BY 
        `headerFooter`.`fileId`;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

	SET done = FALSE;
    
	OPEN cur1;
            igmLoop: LOOP
                FETCH cur1 INTO v_one, v_two, v_three;
			
                    IF done = 1 THEN
                        LEAVE igmLoop; 
                    END IF;

				
                    -- do something with v_one, v_two and v_three
            

            END LOOP igmLoop;
	CLOSE cur1;
        
END$$

DELIMITER ;


