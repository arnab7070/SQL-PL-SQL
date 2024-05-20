-- always execute the command <set serveroutput on> before running 
DECLARE
    id SAILOR.SNAME%TYPE;
    s SAILOR%ROWTYPE;
BEGIN   
    id := '&id';
    SELECT * INTO s FROM SAILOR WHERE sid = id;
    DBMS_OUTPUT.PUT_LINE('sname: '||s.sname);
    DBMS_OUTPUT.PUT_LINE('rating: '||s.rating);
    DBMS_OUTPUT.PUT_LINE('age: '||s.age);
END;
/