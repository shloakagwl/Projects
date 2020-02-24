/*						
create table customer(	BCNF
custid int(4) NOT NULL,
doc varchar(50) NOT NULL,
custroomno int(4) NOT NULL,
PRIMARY KEY(custid),
foreign key (custid) references booking(bookingid),
foreign key (custroomno) references rooms(roomno));
*/

use hms;

set foreign_key_checks=0;

insert into customer values (0101,'Passport',1603);
insert into customer values (0102,'Adhar Card',1301);
insert into customer values (0103,'License',1503);
insert into customer values (0104,'Passport',1401);
insert into customer values (0105,'License',1310);

insert into customer values (0106,'Adhar Card',1508);
insert into customer values (0107,'Passport',1307);
insert into customer values (0108,'Passport',1601);
insert into customer values (0109,'License',1310);
insert into customer values (0110,'License',1204);

insert into customer values (0111,'License',1209);
insert into customer values (0112,'License',1303);
insert into customer values (0113,'Passport',1602);
insert into customer values (0114,'Passport',1509);
insert into customer values (0115,'Adhar Card',1308);

insert into customer values (0116,'Adhar Card',1203);
insert into customer values (0117,'Passport',1306);
insert into customer values (0118,'Passport',1103);
insert into customer values (0119,'Passport',1207);
insert into customer values (0120,'Passport',1203);

insert into customer values (0121,'Passport',1405);
insert into customer values (0122,'License',1101);
insert into customer values (0123,'Adhar Card',1206);
insert into customer values (0124,'License',1508);
insert into customer values (0125,'Adhar Card',1610);