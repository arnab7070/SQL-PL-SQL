-- always execute the command <set serveroutput on> before running
-- create table sphere (radius number, area number, volume number);
DECLARE
    radius number := 1;
    area number;
    volume number;
BEGIN
    FOR radius in 1..15
        LOOP
           INSERT INTO SPHERE VALUES (radius, 3.14*radius*radius, 1.33*3.14*radius*radius*radius);
           COMMIT;
        END LOOP;
END;
/