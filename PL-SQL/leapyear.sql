-- always execute the command <set serveroutput on> before running 
SET SERVEROUTPUT ON;
DECLARE
	year NUMBER;
BEGIN
    year := &year;
    IF(
        MOD(year, 400) = 0 OR 
        (MOD(year, 4) = 0 AND MOD(year, 100) != 0)
    ) THEN DBMS_OUTPUT.PUT_LINE('Leap Year');
    ELSE DBMS_OUTPUT.PUT_LINE('Not a Leap Year');
    END IF;
END;
/