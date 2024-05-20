-- always execute the command <set serveroutput on> before running
DECLARE
    a NUMBER;
    b NUMBER;
    c NUMBER;
    result NUMBER;
BEGIN
    EXECUTE IMMEDIATE 'set serveroutput on';
    a := &a;
    b := &b;
    c := &c;

    IF(a >= b and a >= c) THEN result := a;
    ELSIF (b >= a and b >= c) THEN result := b;
    ELSE result := c;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Largest Number: '||result); 
END;
/