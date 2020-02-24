/*
create table service(		BCNF
serviceid int (6) NOT NULL,
servicetype varchar(20) NOT NULL,
servicecharges int (6),
PRIMARY KEY (serviceid));
*/

use hms;

set foreign_key_checks=0;

insert into service values (800001, 'Laundry', 100);
insert into service values (800002, 'Taxi Service', 500);
insert into service values (800003, 'Pick up/Drop Service', 300);
insert into service values (800004, 'Salon', 150);
insert into service values (800005, 'Spa', 1000);
insert into service values (800006, 'Gym', null);
insert into service values (801107, 'Room Cleaning', null);
insert into service values (801207, 'Room Cleaning', null);
insert into service values (801307, 'Room Cleaning', null);
insert into service values (801407, 'Room Cleaning', null);
insert into service values (801507, 'Room Cleaning', null);
insert into service values (801607, 'Room Cleaning', null);

insert into service values (801108, 'Room Service', null);
insert into service values (801208, 'Room Service', null);
insert into service values (801308, 'Room Service', null);
insert into service values (801408, 'Room Service', null);
insert into service values (801508, 'Room Service', null);
insert into service values (801608, 'Room Service', null);

insert into service values (800009, 'Refreshment', 200);