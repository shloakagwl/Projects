/*
create table payment(	BCNF
paymentid int(4) NOT NULL,
modeofpayment varchar(20) NOT NULL,
cardnumber decimal(16,0),
foreign KEY (paymentid) references booking(bookingid));
*/

use hms;

set foreign_key_checks=0;

insert into payment values (0101, 'Cash', null );
insert into payment values (0102, 'Cash', null );
insert into payment values (0103, 'Card', 1022150447046800);
insert into payment values (0104, 'Card', 5047892589121477);
insert into payment values (0105, 'Cash', null );
insert into payment values (0106, 'Cash', null );
insert into payment values (0107, 'Cash', null );
insert into payment values (0108, 'Card', 8869635851220044);
insert into payment values (0109, 'Cash', null );
insert into payment values (0110, 'Card', 1012257124101007);
insert into payment values (0111, 'Cash', null );
insert into payment values (0112, 'Cash', null );
insert into payment values (0113, 'Cash', null );
insert into payment values (0114, 'Card', 1725416891290078);
insert into payment values (0115, 'Cash', null );
insert into payment values (0116, 'Card', 3512885125992581);
insert into payment values (0117, 'Cash', null );
insert into payment values (0118, 'Cash', null );
insert into payment values (0119, 'Card', 1433255126990120);
insert into payment values (0120, 'Cash', null );
insert into payment values (0121, 'Cash', null );
insert into payment values (0122, 'Card', 1105691412452644);
insert into payment values (0123, 'Card', 5725893691281450);
insert into payment values (0124, 'Card', 2100442561263300);
insert into payment values (0125, 'Card', 2512557801221400);
