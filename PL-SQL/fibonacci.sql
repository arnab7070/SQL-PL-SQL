-- always execute the command <set serveroutput on> before running 
DECLARE
	a NUMBER := 0; 
    b NUMBER := 1;
    c NUMBER;
    terms NUMBER;
BEGIN
    terms := &terms;
    DBMS_OUTPUT.PUT_LINE(a);
    DBMS_OUTPUT.PUT_LINE(b);
    FOR i in 3..terms
        LOOP
            c :=  a+b;
            DBMS_OUTPUT.PUT_LINE(c);
            a := b;
            b := c;
        END LOOP;
END;
/