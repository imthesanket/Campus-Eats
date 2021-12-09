CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `person_join` AS
    SELECT 
        `person`.`person_id` AS `person_id`,
        `person`.`person_name` AS `person_name`,
        `person`.`person_email` AS `person_email`,
        `student`.`student_id` AS `student_id`,
        `student`.`graduation_year` AS `graduation_year`
    FROM
        (`person`
        JOIN `student` ON ((`student`.`person_id` = `person`.`person_id`)))
    WHERE
        (`student`.`major` = 'Computer Science')