-- Write a solution to report the name and bonus amount of
-- each employee with a bonus less than 1000.
SELECT
    NAME,
    BONUS
FROM
    EMPLOYEE E
    LEFT JOIN BONUS B
    ON B.EMPID = E.EMPID
WHERE
    BONUS < 1000
    OR BONUS IS NULL;