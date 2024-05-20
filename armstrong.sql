-- always execute the command <set serveroutput on> before running 
declare
	num number;
	len number;
    armstrong number := 0;
    temp number;
begin
	num := &num;
    temp := num;
	len := length(num);
    WHILE num > 0
        LOOP
            armstrong := armstrong + power(mod(num, 10),len);
            num := floor(num/10);
        END LOOP;
    IF(armstrong = temp) THEN dbms_output.put_line('Armstrong');
        ELSE dbms_output.put_line('Not Armstrong');
    END IF;
end;
/