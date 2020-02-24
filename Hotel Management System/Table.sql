create schema hms;

use hms;

set foreign_key_checks = 0;

create table booking(	/*BCNF*/
bookingid int(4) NOT NULL,
name varchar(20) NOT NULL,
emailid varchar(40),
checkindate DATE NOT NULL,
checkoutdate DATE NOT NULL,
no_of_ppl int(3) NOT NULL,
PRIMARY KEY(bookingid));

create table customercontactno(	/*3NF as contactno -> id*/
id int(4) NOT NULL,
contactno long NOT NULL,
PRIMARY KEY(id),
foreign key (id) references booking(bookingid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table customer(	/*BCNF*/
custid int(4) NOT NULL,
doc varchar(50) NOT NULL,
custroomno int(4) NOT NULL,
PRIMARY KEY(custid),
foreign key (custid) references booking(bookingid)
		ON DELETE CASCADE ON UPDATE CASCADE,
foreign key (custroomno) references rooms(roomno)
		ON DELETE CASCADE ON UPDATE CASCADE);

create table payment(	/*BCNF*/
paymentid int(4) NOT NULL,
modeofpayment varchar(20) NOT NULL,
cardnumber decimal(16,0),
foreign KEY (paymentid) references booking(bookingid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table rooms(		/*BCNF*/
roomno int(4) NOT NULL,
roomtype varchar (20) NOT NULL,
price int (6) NOT NULL,
PRIMARY KEY (roomno));

create table service(	/*BCNF*/
serviceid int (6) NOT NULL,
servicetype varchar(20) NOT NULL,
servicecharges int (6),
PRIMARY KEY (serviceid));

create table staff(		/*BCNF*/
staffid int(4) NOT NULL,
staffname varchar (20) NOT NULL,
staffalottmentno int(5) NOT NULL,
dateofjoin DATE NOT NULL,
staffsalary int(6) NOT NULL,
staffcity varchar(20) NOT NULL,
PRIMARY KEY (staffid),
FOREIGN KEY (staffalottmentno) references alottment(alotid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table staffcontactno(	/*3NF as scontactno -> sid*/
sid int(4) NOT NULL,
scontactno long NOT NULL,
PRIMARY KEY(sid),
foreign key (sid) references staff(staffid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table feedback(	/*BCNF*/
feedbackid int(4) NOT NULL,
points int(2),
PRIMARY KEY(feedbackid),
foreign key(feedbackid) references booking(bookingid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table alottment(		/*BCNF*/
alotid int(5) NOT NULL,
alottype varchar (50) NOT NULL,
alotserviceid int(6),
PRIMARY KEY (alotid),
FOREIGN KEY (alotserviceid) references service(serviceid)
	ON DELETE CASCADE ON UPDATE CASCADE);

create table facility(		/*BCNF*/
facilityid int(2) NOT NULL,
fcustid int(4) NOT NULL,
fserviceid int(6),
PRIMARY KEY(facilityid),
FOREIGN KEY (fcustid) references booking(bookingid)
	ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (fserviceid) references service(serviceid)
	ON DELETE CASCADE ON UPDATE CASCADE);