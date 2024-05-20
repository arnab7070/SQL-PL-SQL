-- always execute the command <set serveroutput on> before running 
DECLARE
	num NUMBER;
    ans number := 1; -- make sure to initialize this
BEGIN
    num := &num;
    FOR i in 1..num
        LOOP
            ans := ans * i;
        END LOOP;
    DBMS_OUTPUT.PUT_LINE('Factorial of '||num||' is: '||ans);
END;
/