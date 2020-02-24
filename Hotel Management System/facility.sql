/*
create table facility(		BCNF
fcustid int(4) NOT NULL,
fserviceid int(6),
PRIMARY KEY(fcustid),
FOREIGN KEY (fcustid) references booking(bookingid),
FOREIGN KEY (fserviceid) references service(serviceid));
*/

use hms;

set foreign_key_checks=0;

insert into facility values (1,0121, 800004);
insert into facility values (2,0114, 800003);
insert into facility values (3,0110, 800003);
insert into facility values (4,0110, 800001);
insert into facility values (5,0107, 800009);
insert into facility values (6,0106, 801507);
insert into facility values (7,0122, 800004);
insert into facility values (8,0119, 800001);
insert into facility values (9,0107, 800008);
insert into facility values (10,0106, 801505);
insert into facility values (11,0107, 800003);
insert into facility values (12,0103, 801507);
insert into facility values (13,0104, 801407);
insert into facility values (14,0124, 801508);
insert into facility values (15,0122, 800006);
insert into facility values (16,0122, 800009);
insert into facility values (17,0125, 800003);
insert into facility values (18,0121, 800005);
insert into facility values (19,0125, 800002);
insert into facility values (20,0125, 800005);
insert into facility values (21,0106, 801505);
insert into facility values (22,0125, 800005);
insert into facility values (23,0106, 800003);
insert into facility values (24,0101, 801609);
insert into facility values (25,0116, 800002);
insert into facility values (26,0118, 800004);
insert into facility values (27,0101, 801608);
insert into facility values (28,0103, 800006);
insert into facility values (29,0106, 801507);
insert into facility values (30,0106, 800009);
insert into facility values (31,0124, 800009);