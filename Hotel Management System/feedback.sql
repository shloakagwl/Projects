/*
create table feedback(	BCNF
feedbackid int(4) NOT NULL,
points int(2),
PRIMARY KEY(feedbackid),
foreign key(feedbackid) references booking(bookingid));
*/

use hms;

set foreign_key_checks=0;

insert into feedback values (0101,8);
insert into feedback values (0103,6);
insert into feedback values (0107,7);
insert into feedback values (0109,5);
insert into feedback values (0112,6);
insert into feedback values (0113,10);
insert into feedback values (0114,3);
insert into feedback values (0116,4);
insert into feedback values (0117,5);
insert into feedback values (0119,2);
insert into feedback values (0120,9);
insert into feedback values (0121,3);
insert into feedback values (0122,2);
insert into feedback values (0123,1);
insert into feedback values (0125,8);