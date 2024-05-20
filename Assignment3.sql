create table customer (
	cust_id        number,
	cust_fname     varchar2(50),
	cust_lname     varchar2(50),
	territory      varchar2(50),
	cred_lmt       number,
	mngr_id        number,
	marital_status varchar2(20),
	sex            varchar2(1),
	income         number
);

-- Inserting the first record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	1,
	'John',
	'Doe',
	'North',
	10000,
	101,
	'Married',
	'M',
	50000
);

-- Inserting the second record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	2,
	'Jane',
	'Smith',
	'South',
	15000,
	102,
	'Single',
	'F',
	60000
);

-- Inserting the third record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	3,
	'Michael',
	'Johnson',
	'East',
	12000,
	103,
	'Married',
	'M',
	55000
);

-- Inserting the fourth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	4,
	'Emily',
	'Williams',
	'West',
	18000,
	104,
	'Single',
	'F',
	70000
);

-- Inserting the fifth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	5,
	'David',
	'Brown',
	'Central',
	11000,
	105,
	'Married',
	'M',
	60000
);

-- Inserting the sixth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	6,
	'Emma',
	'Jones',
	'North',
	13000,
	106,
	'Single',
	'F',
	65000
);

-- Inserting the seventh record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	7,
	'Daniel',
	'Garcia',
	'South',
	17000,
	107,
	'Married',
	'M',
	75000
);

-- Inserting the eighth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	8,
	'Olivia',
	'Martinez',
	'East',
	14000,
	108,
	'Single',
	'F',
	80000
);

-- Inserting the ninth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	9,
	'Ethan',
	'Lopez',
	'West',
	16000,
	109,
	'Married',
	'M',
	70000
);

-- Inserting the tenth record
insert into customer (
	cust_id,
	cust_fname,
	cust_lname,
	territory,
	cred_lmt,
	mngr_id,
	marital_status,
	sex,
	income
) values (
	10,
	'Sophia',
	'Hernandez',
	'Central',
	15000,
	110,
	'Single',
	'F',
	85000
);
