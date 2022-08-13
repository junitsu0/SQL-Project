-- Tables

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	phone INTEGER,
	email VARCHAR(50)
);

create table dealership(
	dealership SERIAL primary key,
	address VARCHAR(50),
	phone INTEGER
);

create table car(
	car_id SERIAL primary key,
	vin_num INTEGER,
	make VARCHAR(10),
	model VARCHAR(20),
	year INTEGER,
	color VARCHAR(10),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	dealership_id INTEGER,
	foreign key(dealership_id) references dealership(dealership_id)
);

create table sales(
	sales_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	phone INTEGER,
	email VARCHAR(50),
	job VARCHAR(20)
	dealership_id INTEGER,
	foreign key(dealership_id) references dealership(dealership_id)
);

create table service(
	service_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	address VARCHAR(50),
	state VARCHAR(2),
	phone INTEGER,
	email VARCHAR(50),
	job VARCHAR(20),
	dealership_id INTEGER,
	foreign key(dealership_id) references dealership(dealership_id)
);

create table invoice(
	invoice_id SERIAL primary key,
	date DATETIME,
	amount NUMERIC(8,2),
	sales_id INTEGER,
	foreign key(sales_id) references sales(sales_id),
	car_id INTEGER,
	foreign key(car_id) references car(car_id),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);

create table ticket(
	ticket_id SERIAL primary key,
	date DATETIME,
	amount NUMERIC(8,2),
	description VARCHAR(250)
	service_id INTEGER,
	foreign key(service_id) references service(service_id),
	car_id INTEGER,
	foreign key(car_id) references car(car_id),
	customer_id INTEGER,
	foreign key(customer_id) references customer(customer_id)
);