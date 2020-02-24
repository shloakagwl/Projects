/*
create table booking(	    BCNF
bookingid int(4) NOT NULL,
name varchar(20) NOT NULL,
emailid varchar(40),
checkindate DATE NOT NULL,
checkoutdate DATE NOT NULL,
no_of_ppl int(3) NOT NULL,
PRIMARY KEY(bookingid));
*/

use hms;

set foreign_key_checks=0;

insert into booking values (0101,'Ravi Patel','ravipatel@gmail.com',str_to_date('28/11/2011','%d/%m/%Y'),str_to_date('30/11/2011','%d/%m/%Y'),3);
insert into booking values (0102,'Mukesh Patel','mukeshpatel@gmail.com',str_to_date('18/10/2013','%d/%m/%Y'),str_to_date('19/10/2013','%d/%m/%Y'),2);
insert into booking values (0103,'Dinesh Mehta',NULL,str_to_date('15/11/2015','%d/%m/%Y'),str_to_date('18/11/2015','%d/%m/%Y'),1);
insert into booking values (0104,'Bhavesh Shah','sbhavesh@gmail.com',str_to_date('26/10/2014','%d/%m/%Y'),str_to_date('28/10/2014','%d/%m/%Y'),4);
insert into booking values (0105,'Anuj Mehta','anujm@gmail.com',str_to_date('16/05/2013','%d/%m/%Y'),str_to_date('20/05/2013','%d/%m/%Y'),2);

insert into booking values (0106,'Kedar Patel',NULL,str_to_date('07/09/2012','%d/%m/%Y'),str_to_date('08/09/2012','%d/%m/%Y'),3);
insert into booking values (0107,'Nisarg Sharma','nsharma@gmail.com',str_to_date('16/05/2011','%d/%m/%Y'),str_to_date('18/05/2011','%d/%m/%Y'),2);
insert into booking values (0108,'Dhaval Mehta','dmehta@gmail.com',str_to_date('07/06/2013','%d/%m/%Y'),str_to_date('09/06/2013','%d/%m/%Y'),1);
insert into booking values (0109,'Keyur Sharma','skeyur@gmail.com',str_to_date('08/11/2014','%d/%m/%Y'),str_to_date('10/11/2014','%d/%m/%Y'),2);
insert into booking values (0110,'Virat Kohli','vkohli@gmail.com',str_to_date('25/04/2013','%d/%m/%Y'),str_to_date('30/04/2013','%d/%m/%Y'),4);

insert into booking values (0111,'Shikhar Dhawan','sdhawan@gmail.com',str_to_date('15/02/2015','%d/%m/%Y'),str_to_date('17/02/2015','%d/%m/%Y'),1);
insert into booking values (0112,'Unmukt Chand','uchand@gmail.com',str_to_date('11/08/2011','%d/%m/%Y'),str_to_date('16/08/2011','%d/%m/%Y'),2);
insert into booking values (0113,'Shane Watson',NULL,str_to_date('09/01/2014','%d/%m/%Y'),str_to_date('10/01/2014','%d/%m/%Y'),3);
insert into booking values (0114,'David Warner','dwarner@gmail.com',str_to_date('15/01/2015','%d/%m/%Y'),str_to_date('17/01/2015','%d/%m/%Y'),3);
insert into booking values (0115,'Sania Mirza','smirza@gmail.com',str_to_date('21/03/2014','%d/%m/%Y'),str_to_date('23/03/2014','%d/%m/%Y'),2);

insert into booking values (0116,'Saina Nehwal','nsaina@gmail.com',str_to_date('13/04/2015','%d/%m/%Y'),str_to_date('16/04/2015','%d/%m/%Y'),1);
insert into booking values (0117,'Barack Obama',NULL,str_to_date('22/05/2014','%d/%m/%Y'),str_to_date('27/05/2014','%d/%m/%Y'),2);
insert into booking values (0118,'Michael Obama','mobama@gmail.com',str_to_date('19/06/2013','%d/%m/%Y'),str_to_date('20/06/2013','%d/%m/%Y'),4);
insert into booking values (0119,'Tiger Woods',NULL,str_to_date('29/07/2011','%d/%m/%Y'),str_to_date('30/07/2011','%d/%m/%Y'),1);
insert into booking values (0120,'Ajmal Kasab','akasab@gmail.com',str_to_date('03/03/2013','%d/%m/%Y'),str_to_date('05/03/2013','%d/%m/%Y'),2);

insert into booking values (0121,'Amanda Wiese','amandaw@gmail.com',str_to_date('25/12/2015','%d/%m/%Y'),str_to_date('27/12/2015','%d/%m/%Y'),4);
insert into booking values (0122,'Vijay Mallya','vmallya@gmail.com',str_to_date('29/01/2014','%d/%m/%Y'),str_to_date('30/01/2014','%d/%m/%Y'),2);
insert into booking values (0123,'Dipika Padukone','pdippu@gmail.com',str_to_date('08/04/2013','%d/%m/%Y'),str_to_date('09/04/2013','%d/%m/%Y'),1);
insert into booking values (0124,'Anushka Sharma','sanushka@gmail.com',str_to_date('16/06/2011','%d/%m/%Y'),str_to_date('21/09/2011','%d/%m/%Y'),3);
insert into booking values (0125,'Narendra',NULL,str_to_date('27/02/2012','%d/%m/%Y'),str_to_date('28/02/2012','%d/%m/%Y'),3);