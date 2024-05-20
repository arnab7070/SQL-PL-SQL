-- always execute the command <set serveroutput on> before running 
DECLARE
	num NUMBER;
BEGIN
    num := &num;
    IF(num = 1) THEN DBMS_OUTPUT.PUT_LINE('Not Prime'); RETURN;
    END IF;
    FOR i in 2..num
        LOOP
            IF (mod(num, i) = 0 and num != i) THEN 
                DBMS_OUTPUT.PUT_LINE('Not Prime'); 
                RETURN;
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Prime');
END;
/