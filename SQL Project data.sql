--Inserts

insert into customer(
	first_name,
	last_name,
	address,
	phone,
	state,
	zipcode,
	email,
	service_plan
) values (
	'Brian',
	'Stanton',
	'808 Circle Court',
	'555-555-0001',
	'IL',
	'bstanton@bstuntin.org'
	true
);

create procedure add_customer(
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	phone VARCHAR(20),
	email VARCHAR(50),
	service_plan BOOLEAN)
language plpgsql
as $$
begin
	insert into customer(
	first_name,
	last_name ,
	address,
	state,
	phone,
	email,
	service_plan)
		values (
	first_name,
	last_name,
	address,
	state,
	phone,
	email,
	service_plan
);
end
$$

call add_customer(
	'Tatyana',
	'Whiteboard' ,
	'444 Rectangle Lane',
	'IL',
	'555-555-0002',
	'tatboard@codingtemple.com',
	false)