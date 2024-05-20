-- always execute the command <set serveroutput on> before running 
DECLARE
    result NUMBER(3); 
    grade VARCHAR2(2);
BEGIN
    result := &result;
    IF(result >= 90) THEN grade := 'O';
    ELSIF(result >= 80 AND result < 90) THEN grade := 'E';
    ELSIF(result >= 70 AND result < 80) THEN grade := 'A';
    ELSIF(result >= 60 AND result < 70) THEN grade := 'B';
    ELSIF(result >= 50 AND result < 60) THEN grade := 'C';
    ELSIF(result >= 40 AND result < 50) THEN grade := 'D';
    ELSE grade := 'F';
    END IF;
    DBMS_OUTPUT.PUT_LINE('GRADE: '||grade);
END;
/