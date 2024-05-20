-- always execute the command <set serveroutput on> before running 
DECLARE
	num NUMBER;
    temp NUMBER;
    reverse NUMBER := 0;
BEGIN
    num := &num;
    temp := num;
    WHILE num > 0
        LOOP
            reverse := reverse*10 + mod(num, 10);
            num := floor(num/10);
        END LOOP;
    IF(reverse = temp) THEN DBMS_OUTPUT.PUT_LINE('Palindrome');
    ELSE DBMS_OUTPUT.PUT_LINE('Not Palindrome');
    END IF;
END;
/