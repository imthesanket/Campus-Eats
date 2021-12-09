DELIMITER //

CREATE DEFINER=`root`@`localhost` FUNCTION `get_years_of_service`(id INTEGER) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE years_since_hired INT; 
	SELECT TIMESTAMPDIFF(YEAR, d.date_hired, CURDATE()) INTO years_since_hired from driver as d WHERE d.driver_id=id;
    RETURN years_since_hired;
END

DELIMITER ;