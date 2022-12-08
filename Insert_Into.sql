--insert cars
insert into cars(
	car_id, make, model ,"year" ,color ,vin_number 
) values(
	1,'Buggati','Bolide','2022', 'black','22233366622'
);
insert into cars(
	car_id, make, model ,"year" ,color ,vin_number 
) values(
	2,'Lamborghini','Veneno','2022', 'metalic','2221777'
);
insert into cars(
	car_id, make, model ,"year" ,color ,vin_number 
) values(
	3,'Rolls-Royce','Sweptail','2022', 'midnight','748421043'
);
--insert into customers

insert into customer (
	customer_id,car_id , first_name , last_name  ,email  ,phone
) values(
	1,1,'Asap','Rocky', 'arock@gmail.com','(213)-330-8643'
);

insert into customer (
	customer_id,car_id , first_name , last_name  ,email  ,phone
) values(
	2,2,'Dwayne','Carter', 'lilwayne@gmail.com','(310)-330-1234'
);
insert into customer (
	customer_id,car_id , first_name , last_name  ,email  ,phone
) values(
	3,3,'Sean','Combs', 'pdiddy@gmail.com','(805)-330-8824'
);

--insert into sales person
insert into sales_person(
	sales_id, first_name,last_name
) values(
	1,'John','Patterson'
);

insert into sales_person(
	sales_id, first_name,last_name
) values(
	2,'David','Ogilvy'
);
insert into sales_person(
	sales_id, first_name,last_name
) values(
	3,'Dale','Carnegie'
);

--insert into invoices 
insert into invoices(invoice_id,car_id,sales_id,invoice_date,sub_total)values(1,1,1,'03/25/22',4600000.00);
insert into invoices(invoice_id,car_id,sales_id,invoice_date,sub_total)values(2,2,2,'05/09/22',4500000.00);
insert into invoices(invoice_id,car_id,sales_id,invoice_date,sub_total)values(3,3,3,'08/02/22',13000000.00);

--insert into mechanic
insert into mechanic(
	mechanic_id,first_name, last_name
)values(
	1,'Rudolf','Diesel'
);

insert into mechanic(
	mechanic_id,first_name, last_name
)values(
	2,'Karl','Benz'
);
insert into mechanic(
	mechanic_id,first_name, last_name
)values(
	3,'Nikola','Tesla'
);

insert into parts (part_id, part_name,part_price)values(1,'transmission',50000.99);
insert into parts (part_id, part_name,part_price)values(2,'Engine',200000.99);
insert into parts (part_id, part_name,part_price)values(3,'Exhaust',950.99);
--insert into service ticket
insert into service_ticket(serv_ticket_id,car_id,part_id,service_date,service_sub_total,service_done)
values(1,1,1,'2022',450.99,'Ultimate Tune-Up');
insert into service_ticket(serv_ticket_id,car_id,part_id,service_date,service_sub_total,service_done)
values(2,2,2,'2022',350.99,'Supreme Tune-Up');
insert into service_ticket(serv_ticket_id,car_id,part_id,service_date,service_sub_total,service_done)
values(3,3,3,'2022',250.99,'Advanced Tune-Up');

--insert into mechanics_service

insert into mechanic_service(serv_mec_id,mechanic_id,part_id,part_price)values(1,1,2,200000.00);
insert into mechanic_service(serv_mec_id,mechanic_id,part_id,part_price)values(2,2,3,950.00);
insert into mechanic_service(serv_mec_id,mechanic_id,part_id,part_price)values(3,3,1,50000.00);
