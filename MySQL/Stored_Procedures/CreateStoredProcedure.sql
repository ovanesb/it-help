/**
 * Author:  ovanes
 * Created: Nov 4, 2016
 */

USE `DataBase_Name`;
DROP procedure IF EXISTS `myStoredProcedure`;

DELIMITER $$
USE `DataBase_Name`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `myStoredProcedure`()
proc:BEGIN

	-- My code in here......

END $$

DELIMITER ;