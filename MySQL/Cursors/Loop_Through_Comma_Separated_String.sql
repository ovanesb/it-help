/**
 * Author:  obudakyan
 * Created: 09-May-2017
 */
USE `DB_NAME`;
DROP procedure IF EXISTS `LoopThroughCommaSeparatedString`;

DELIMITER $$
USE `DB_NAME`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `LoopThroughCommaSeparatedString`( )
LoopThroughCommaSeparatedString:BEGIN

  DECLARE strIDs varchar(150) DEFAULT '1, 2, 3, 4, 5, 6, 7, 8, 9, 10';
  DECLARE element varchar(150);

  WHILE strIDs != '' DO
    
    -- Element we will need.
    SET element = SUBSTRING_INDEX(strIDs, ',', 1);      

    IF LOCATE(',', strIDs) > 0 THEN
      SET strIDs = SUBSTRING(strIDs, LOCATE(',', strIDs) + 1);
    ELSE
      SET strIDs = '';
    END IF;
 
  END WHILE;

END$$

DELIMITER ;


