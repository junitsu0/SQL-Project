--=========--
-- Inserts --
--=========--

insert into customer(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	service_plan
) values (
	'Brenda',
	'Walsh',
	'808 Circle Court',
	'CA',
	'90210',
	'555-555-4973',
	'bwalsh@yahoo.com',
	true
),(
	'Andrea',
	'Zuckerman',
	'1540 Candy Castle Lane',
	'CA',
	'90210',
	'555-555-7586',
	'azucker@hotmail.com',
	true
);

insert into service(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job
) values (
	'Steve',
	'Sanders',
	'628 Boring Court',
	'CA',
	'90210',
	'555-555-9581',
	'ssanders@yahoo.com',
	'general mechanic'
),(
	'Brandon',
	'Walsh',
	'1652 Haviture Way',
	'CA',
	'90210',
	'555-555-7586',
	'brwalsh@hotmail.com',
	'auto body mechanic'
);

insert into sales(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job
) values (
	'Dylan',
	'McKay',
	'628 Boring Court',
	'CA',
	'90210',
	'555-555-9581',
	'dmckay@yahoo.com',
	'sales associate'
),(
	'David',
	'Silver',
	'1652 Haviture Way',
	'CA',
	'90210',
	'555-555-7586',
	'dsilver@hotmail.com',
	'sales associate'
);

insert into dealership(
	name,
	address,
	state,
	zipcode,
	email,
	main_phone,
	sales_phone,
	service_phone
) values (
	'Bolivias Automobiles',
	'764 Funky Avenue',
	'CA',
	'90210',
	'bobbybcars@gmail.com',
	'555-555-0001',
	'555-555-0002',
	'555-555-0003'
);

insert into car(
	vin_num,
	make,
	model,
	year,
	color,
	price,
	used,
	owned
) values (
	'3B7KF23Z42M211215',
	'Chevrolet',
	'Silverado',
	1990,
	'white',
	32750.00,
	true,
	false
),(
	'JH4DB7640SS009074',
	'Chevrolet',
	'Corvette',
	1992,
	'red',
	16000.00,
	true,
	true
);

insert into parts(
	name,
	description,
	price,
	supplier
) values (
	'Battery',
	'Powers the vehicle and, more importantly, your air conditioning',
	59.99,
	'Panasonic'
),(
	'Brake Pad',
	'Helps you to not run into things that you do not want to run into',
	25.30,
	'Ceco Friction Products'
);



--================--
-- Add Procedures --
--================--

create procedure add_customer(
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	zipcode VARCHAR(5),
	phone VARCHAR(20),
	email VARCHAR(50),
	service_plan BOOLEAN)
language plpgsql
as $$
begin
	insert into customer(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	service_plan)
		values (
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	service_plan
);
end
$$

create procedure add_service(
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	zipcode VARCHAR(5),
	phone VARCHAR(20),
	email VARCHAR(50),
	job VARCHAR(20))
language plpgsql
as $$
begin
	insert into service(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job)
		values (
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job
);
end
$$

create procedure add_sales(
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	zipcode VARCHAR(5),
	phone VARCHAR(20),
	email VARCHAR(50),
	job VARCHAR(20))
language plpgsql
as $$
begin
	insert into sales(
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job)
		values (
	first_name,
	last_name,
	address,
	state,
	zipcode,
	phone,
	email,
	job
);
end
$$

create procedure add_car(
	vin_num VARCHAR(17),
	make VARCHAR(15),
	model VARCHAR(20),
	year INTEGER,
	color VARCHAR(10),
	price numeric(8,2),
	used BOOLEAN,
	owned BOOLEAN)
language plpgsql
as $$
begin
	insert into car(
	vin_num,
	make,
	model,
	year,
	color,
	price,
	used,
	owned)
		values (
	vin_num,
	make,
	model,
	year,
	color,
	price,
	used,
	owned
);
end
$$

create procedure add_part(
	name VARCHAR(50),
	description VARCHAR(250),
	price NUMERIC(6,2),
	supplier VARCHAR(50))
language plpgsql
as $$
begin
	insert into parts(
	name,
	description,
	price,
	supplier)
		values (
		name,
		description,
		price,
		supplier
);
end
$$

--=====================--
-- Call Add Procedures --
--=====================--

call add_customer(
	'Kelly',
	'Taylor' ,
	'2130 Rectangle Drive',
	'CA',
	'90210',
	'555-555-6242',
	'ktaylor@gmail.com',
	false);

call add_service(
	'Donna',
	'Martin',
	'444 Memory Lane',
	'CA',
	'90210',
	'555-555-3354',
	'dmartin@gmail.com',
	'brake technician');

call add_sales(
	'Emily',
	'Valentine',
	'623 Gravy Train Lane',
	'CA',
	'90210',
	'555-555-7820',
	'eval@wait.com',
	'sales manager');

call add_car(
	'WDCGG8HB0AF462890',
	'Chevrolet',
	'Lumina',
	1991,
	'silver',
	17499.99,
	false,
	false);

call add_part(
	'Steering Wheel',
	'Used to avoid suddenly appearing and/or slow moving pedestrians',
	64.49,
	'Whitecap Industries');

--===========--
-- Functions --
--===========--
--check model inventory

--==========--
-- Triggers --
--==========--

select *
from customer;