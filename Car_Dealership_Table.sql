create table cars(
	car_id serial primary key,
	
	make varchar(100),
	model varchar(100),
	year integer,
	color varchar(100),
	vin_number varchar(21)
);


create table customer(
	customer_id serial primary key,
	car_id int not null,
	foreign key (car_id) references cars(car_id),
	first_name varchar(150),
	last_name varchar(150),
	email varchar(150),
	phone text
);

create table parts(
	part_id serial primary key,
	part_name varchar(100),
	part_price numeric
);

create table service_ticket(
	serv_ticket_id serial primary key,
	car_id int not null,
	foreign key(car_id) references cars(car_id),
	part_id int not null,
	foreign key(part_id) references parts(part_id),
	service_date varchar(150),
	service_done varchar(150),
	service_sub_total numeric(9,2)
	
);

create table mechanic(
	mechanic_id serial primary key,
	first_name varchar(150),
	last_name varchar(150)
);

create table mechanic_service(
	serv_mec_id serial primary key,
	mechanic_id int not null,
	foreign key (mechanic_id) references mechanic(mechanic_id),
	part_id int not null,
	part_price numeric
	
);

create table sales_person(
	sales_id serial primary key,
	first_name varchar(150),
	last_name varchar(150)
	
);

create table invoices(
	invoice_id serial primary key,
	car_id int not null,
	foreign key(car_id) references cars(car_id),
	sales_id int not null,
	foreign key (sales_id) references sales_person(sales_id),
	invoice_date varchar(50),
	sub_total numeric
)