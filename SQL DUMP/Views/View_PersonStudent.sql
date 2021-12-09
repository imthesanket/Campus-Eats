CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `person_student` AS
    SELECT 
        `a`.`person_id` AS `person_id`,
        `a`.`person_name` AS `person_name`,
        `a`.`person_email` AS `person_email`,
        `a`.`cell` AS `cell`
    FROM
        `person` `a`
    WHERE
        `a`.`person_id` IN (SELECT 
                `student`.`person_id`
            FROM
                `student`
            WHERE
                (`student`.`graduation_year` = 2019))