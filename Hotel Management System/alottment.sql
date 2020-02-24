/*
create table alottment(		BCNF
alotid int(5) NOT NULL,
alottype varchar (50) NOT NULL,
alotserviceid int(6),
PRIMARY KEY (alotid),
FOREIGN KEY (alotserviceid) references service(serviceid));
*/

use hms;

set foreign_key_checks=0;

insert into alottment values (70001, 'Laundry Man', 800001);
insert into alottment values (70002, 'Taxi Driver', 800002);
insert into alottment values (70003, 'Pick up Driver', 800003);
insert into alottment values (70004, 'Hairstylist', 800004);
insert into alottment values (70005, 'Spa Therapist', 800005);
insert into alottment values (70006, 'Gym Trainer', 800006);

insert into alottment values (71107, 'Presidential Suite Room Cleaner', 801107);
insert into alottment values (71207, 'Penthouse Suite Room Cleaner', 801207);
insert into alottment values (71307, 'Prestige Suite Room Cleaner', 801307);
insert into alottment values (71407, 'Family Suite Room Cleaner', 801407);
insert into alottment values (71507, 'Superior Executive Room Cleaner', 801507);
insert into alottment values (71607, 'Premier Executive Room Cleaner', 801607);

insert into alottment values (71108, 'Presidential Suite Room Service Waiter', 801108);
insert into alottment values (71208, 'Penthouse Suite Room Service Waiter', 801208);
insert into alottment values (71308, 'Prestige Suite Room Service Waiter', 801308);
insert into alottment values (71408, 'Family Suite Room Service Waiter', 801408);
insert into alottment values (71508, 'Superior Executive Room Service Waiter', 801508);
insert into alottment values (71608, 'Premier Executive Room Service Waiter', 801608);

insert into alottment values (70009, 'Cook', 800009);
insert into alottment values (70010, 'Security Guard', null);
insert into alottment values (70011, 'Receptionist', null);
insert into alottment values (70012, 'Manager', null);
insert into alottment values (70013, 'Refreshment Waiter', 800009);