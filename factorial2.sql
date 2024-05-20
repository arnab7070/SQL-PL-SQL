-- always execute the command <set serveroutput on> before running 
DECLARE
	term NUMBER;
    ans number := 1; -- make sure to initialize this
BEGIN
    term := &term;
    FOR i in 1..term
        LOOP
            FOR j in 1..i
                LOOP
                    ans := ans * j;
                END LOOP;
            DBMS_OUTPUT.PUT_LINE('Factorial of '||i||' is: '||ans);
            ans := 1; -- reinitialize this for next round
        END LOOP;
END;
/