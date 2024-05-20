-- always execute the command <set serveroutput on> before running 
declare
	num number;
	len number;
    armstrong number := 0;
    temp number;
begin
    FOR i in 1..15000 
        LOOP
            num := i;
            temp := num;
            len := length(num);
            WHILE num > 0
                LOOP
                    armstrong := armstrong + power(mod(num, 10),len);
                    num := floor(num/10);
                END LOOP;
            IF(armstrong = temp) THEN dbms_output.put_line(temp);
            END IF;
            armstrong := 0; -- reset the variable value
        END LOOP;
end;
/