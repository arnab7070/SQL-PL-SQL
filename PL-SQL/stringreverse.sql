-- always execute the command <set serveroutput on> before running 
DECLARE
	str  varchar(20);
	len  number;
	str1 varchar(20);
BEGIN
    str := '&str';
	len := length(str);
  -- here we starting a loop from max len to 1
	FOR i in reverse 1..len LOOP
		str1 := str1 || substr(str,i,1);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE('Reverse of string is ' || str1);
END;
/