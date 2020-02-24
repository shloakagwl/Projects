/*
create table customercontactno(		3NF as contactno -> id
id int(4) NOT NULL,
contactno long NOT NULL,
PRIMARY KEY(id),
foreign key (id) references booking(bookingid));
*/

use hms;

set foreign_key_checks=0;

insert into customercontactno values (0101,8506581350);
insert into customercontactno values (0102,7869427811);
insert into customercontactno values (0103,5040002151);
insert into customercontactno values (0104,2841949674);
insert into customercontactno values (0105,5362468948);

insert into customercontactno values (0106,5737748379);
insert into customercontactno values (0107,8935863042);
insert into customercontactno values (0108,7480361155);
insert into customercontactno values (0109,8803999574);
insert into customercontactno values (0110,5310622636);

insert into customercontactno values (0111,7213051176);
insert into customercontactno values (0112,7779669272);
insert into customercontactno values (0113,9590714597);
insert into customercontactno values (0114,2557583030);
insert into customercontactno values (0115,4779250453);

insert into customercontactno values (0116,7934691752);
insert into customercontactno values (0117,5057620450);
insert into customercontactno values (0118,8547837058);
insert into customercontactno values (0119,4229586041);
insert into customercontactno values (0120,5511570805);

insert into customercontactno values (0121,6075848862);
insert into customercontactno values (0122,5050756589);
insert into customercontactno values (0123,2547042183);
insert into customercontactno values (0124,2447373122);
insert into customercontactno values (0125,1807210684);
