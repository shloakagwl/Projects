/*
create table rooms(		BCNF
roomno int(4) NOT NULL,
roomtype varchar (20) NOT NULL,
price int (6) NOT NULL,
PRIMARY KEY (roomno));
*/

use hms;

set foreign_key_checks=0;

insert into rooms values (1101, 'Presidential Suite', 9000);
insert into rooms values (1102, 'Presidential Suite', 9000);
insert into rooms values (1103, 'Presidential Suite', 9000);
insert into rooms values (1104, 'Presidential Suite', 9000);
insert into rooms values (1105, 'Presidential Suite', 9000);
insert into rooms values (1106, 'Presidential Suite', 9000);
insert into rooms values (1107, 'Presidential Suite', 9000);
insert into rooms values (1108, 'Presidential Suite', 9000);
insert into rooms values (1109, 'Presidential Suite', 9000);
insert into rooms values (1110, 'Presidential Suite', 9000);

insert into rooms values (1201, 'Penthouse Suite', 8000);
insert into rooms values (1202, 'Penthouse Suite', 8000);
insert into rooms values (1203, 'Penthouse Suite', 8000);
insert into rooms values (1204, 'Penthouse Suite', 8000);
insert into rooms values (1205, 'Penthouse Suite', 8000);
insert into rooms values (1206, 'Penthouse Suite', 8000);
insert into rooms values (1207, 'Penthouse Suite', 8000);
insert into rooms values (1208, 'Penthouse Suite', 8000);
insert into rooms values (1209, 'Penthouse Suite', 8000);
insert into rooms values (1210, 'Penthouse Suite', 8000);

insert into rooms values (1301, 'Prestidge Suite', 4500);
insert into rooms values (1302, 'Prestidge Suite', 4500);
insert into rooms values (1303, 'Prestidge Suite', 4500);
insert into rooms values (1304, 'Prestidge Suite', 4500);
insert into rooms values (1305, 'Prestidge Suite', 4500);
insert into rooms values (1306, 'Prestidge Suite', 4500);
insert into rooms values (1307, 'Prestidge Suite', 4500);
insert into rooms values (1308, 'Prestidge Suite', 4500);
insert into rooms values (1309, 'Prestidge Suite', 4500);
insert into rooms values (1310, 'Prestidge Suite', 4500);

insert into rooms values (1401, 'Family Suite', 7500);
insert into rooms values (1402, 'Family Suite', 7500);
insert into rooms values (1403, 'Family Suite', 7500);
insert into rooms values (1404, 'Family Suite', 7500);
insert into rooms values (1405, 'Family Suite', 7500);
insert into rooms values (1406, 'Family Suite', 7500);
insert into rooms values (1407, 'Family Suite', 7500);
insert into rooms values (1408, 'Family Suite', 7500);
insert into rooms values (1409, 'Family Suite', 7500);
insert into rooms values (1410, 'Family Suite', 7500);

insert into rooms values (1501, 'Superior Executive', 6000);
insert into rooms values (1502, 'Superior Executive', 6000);
insert into rooms values (1503, 'Superior Executive', 6000);
insert into rooms values (1504, 'Superior Executive', 6000);
insert into rooms values (1505, 'Superior Executive', 6000);
insert into rooms values (1506, 'Superior Executive', 6000);
insert into rooms values (1507, 'Superior Executive', 6000);
insert into rooms values (1508, 'Superior Executive', 6000);
insert into rooms values (1509, 'Superior Executive', 6000);
insert into rooms values (1510, 'Superior Executive', 6000);

insert into rooms values (1601, 'Premier Executive', 5000);
insert into rooms values (1602, 'Premier Executive', 5000);
insert into rooms values (1603, 'Premier Executive', 5000);
insert into rooms values (1604, 'Premier Executive', 5000);
insert into rooms values (1605, 'Premier Executive', 5000);
insert into rooms values (1606, 'Premier Executive', 5000);
insert into rooms values (1607, 'Premier Executive', 5000);
insert into rooms values (1608, 'Premier Executive', 5000);
insert into rooms values (1609, 'Premier Executive', 5000);
insert into rooms values (1610, 'Premier Executive', 5000);