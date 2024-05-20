-- always execute the command <set serveroutput on> before running

-- multiplication table of 5 using loop
DECLARE 
    a NUMBER := 5;
    b NUMBER := 1;
    ans NUMBER;
BEGIN
    LOOP
        EXIT WHEN b > 10;
        ans := a * b;
        DBMS_OUTPUT.PUT_LINE(a||' * '||b||' = '||ans);
        b := b+1;
    END LOOP;
END;
/
-- multiplication table of 6 using while loop
DECLARE 
    a NUMBER := 6;
    b NUMBER := 1;
    ans NUMBER;
BEGIN
    WHILE b <= 10
        LOOP
            ans := a * b;
            DBMS_OUTPUT.PUT_LINE(a||' * '||b||' = '||ans);
            b := b+1;
        END LOOP;
END;
/
-- multiplication table of 7 using for loop
DECLARE 
    a NUMBER := 7;
    b NUMBER := 1;
    ans NUMBER;
BEGIN
    FOR b in 1..10
        LOOP
            ans := a * b;
            DBMS_OUTPUT.PUT_LINE(a||' * '||b||' = '||ans);
        END LOOP;
END;
/