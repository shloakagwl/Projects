/*
create table staff(		BCNF
staffid int(4) NOT NULL,
staffname varchar (20) NOT NULL,
staffalottmentno int(5) NOT NULL,
dateofjoin DATE NOT NULL,
staffsalary int(6) NOT NULL,
staffcity varchar(20) NOT NULL,
PRIMARY KEY (staffid),
FOREIGN KEY (staffalottmentno) references alottment(alotid));
*/

use hms;

set foreign_key_checks=0;

insert into staff values (4001, 'Jimmy Edwards', 70001,str_to_date('03/28/2014','%m/%d/%Y'),10000,'Tafí Viejo');
insert into staff values (4002, 'Ralph Black', 70001,str_to_date('06/13/2012','%m/%d/%Y'),10000,'Hudson');
insert into staff values (4003, 'Howard Green', 70001,str_to_date('08/11/2015','%m/%d/%Y'),10000,'Sirghāyā');
insert into staff values (4004, 'Ronald Baker', 70001,str_to_date('06/16/2013','%m/%d/%Y'),10000,'Norfolk');
insert into staff values (4005, 'Jimmy Cooper', 70002,str_to_date('11/29/2014','%m/%d/%Y'),12000,'Kesambilerenkrajan');
insert into staff values (4006, 'Steven Sanders', 70002,str_to_date('08/29/2014','%m/%d/%Y'),12000,'Khairpur');
insert into staff values (4007, 'Kimberly Lawrence', 70002,str_to_date('03/24/2013','%m/%d/%Y'),12000,'Talcahuano');
insert into staff values (4008, 'Frank Rogers', 70002,str_to_date('04/21/2012','%m/%d/%Y'),12000,'Donnybrook');
insert into staff values (4009, 'Anne Ferguson', 70002,str_to_date('11/02/2014','%m/%d/%Y'),12000,'Oro Verde');
insert into staff values (4010, 'Russell Diaz', 70002,str_to_date('08/12/2012','%m/%d/%Y'),12000,'Idrinskoye');

insert into staff values (4011, 'Victor Williams', 70003,str_to_date('05/28/2011','%m/%d/%Y'),15000,'Dadukou');
insert into staff values (4012, 'Howard Andrews', 70003,str_to_date('09/11/2011','%m/%d/%Y'),15000,'Tingo María');
insert into staff values (4013, 'Teresa Hansen', 70003,str_to_date('09/09/2014','%m/%d/%Y'),15000,'Turmus‘ayyā');
insert into staff values (4014, 'Jerry Daniels', 70003,str_to_date('02/17/2013','%m/%d/%Y'),15000,'Jatisari');
insert into staff values (4015, 'David Jenkin', 70003,str_to_date('02/24/2011','%m/%d/%Y'),15000,'Sobue');
insert into staff values (4016, 'Amy Snyder', 70003,str_to_date('03/27/2015','%m/%d/%Y'),15000,'Oslo');
insert into staff values (4017, 'Marilyn Owens', 70004,str_to_date('02/03/2012','%m/%d/%Y'),12000,'Dawwār');
insert into staff values (4018, 'Timothy Ross', 70004,str_to_date('05/11/2013','%m/%d/%Y'),12000,'Dawwār');
insert into staff values (4019, 'Ann Evans', 70004,str_to_date('04/24/2011','%m/%d/%Y'),12000,'Logan');
insert into staff values (4020, 'Jeffrey Weaver', 70005,str_to_date('04/24/2012','%m/%d/%Y'),10000,'Concepción');

insert into staff values (4021, 'Debra Thompson', 70005,str_to_date('04/24/2012','%m/%d/%Y'),10000,'Kim');
insert into staff values (4022, 'Anne Morrison', 70006,str_to_date('09/12/2011','%m/%d/%Y'),9000,'Lota');
insert into staff values (4023, 'Michael Berry', 70006,str_to_date('03/27/2013','%m/%d/%Y'),9000,'Ailigandí');
insert into staff values (4024, 'Margaret Gibson', 71107,str_to_date('11/11/2014','%m/%d/%Y'),15000,'Kengko');
insert into staff values (4025, 'Sara Castillo', 71207,str_to_date('03/24/2014','%m/%d/%Y'),14000,'Trelleborg');
insert into staff values (4026, 'Lillian Bryant', 71307,str_to_date('03/19/2013','%m/%d/%Y'),13000,'Huanglin');
insert into staff values (4027, 'Andrea Ross', 71407,str_to_date('02/23/2015','%m/%d/%Y'),12000,'Novomoskovsk');
insert into staff values (4028, 'Rose Powell', 71507,str_to_date('05/20/2013','%m/%d/%Y'),11000,'Yambio');
insert into staff values (4029, 'Daniel Sims', 71607,str_to_date('05/20/2013','%m/%d/%Y'),10000,'Olivar');
insert into staff values (4030, 'Jessica Matthews', 71108,str_to_date('06/19/2015','%m/%d/%Y'),15000,'Idrinskoye');

insert into staff values (4031, 'Aaron Butler', 71208,str_to_date('04/26/2015','%m/%d/%Y'),14000,'Sobue');
insert into staff values (4032, 'Julia Boyd', 71308,str_to_date('05/28/2011','%m/%d/%Y'),13000,'Staroutkinsk');
insert into staff values (4033, 'Ernest Chavez', 71408,str_to_date('11/07/2011','%m/%d/%Y'),12000,'Shevchenkove');
insert into staff values (4034, 'Victor Smith', 71508,str_to_date('05/01/2015','%m/%d/%Y'),11000,'Benito');
insert into staff values (4035, 'Beverly Diaz', 71608,str_to_date('01/20/2011','%m/%d/%Y'),10000,'Vohibinany');
insert into staff values (4036, 'Martha Nichols', 70009,str_to_date('07/31/2011','%m/%d/%Y'),9000,'Kolodeznyy');
insert into staff values (4037, 'Karen Jacobs', 70009,str_to_date('01/05/2011','%m/%d/%Y'),9000,'Cana Chapetón');
insert into staff values (4038, 'Joyce Wood', 70009,str_to_date('11/02/2015','%m/%d/%Y'),9000,'Plaeng Yao');
insert into staff values (4039, 'Russell Stephens', 70009,str_to_date('11/29/2014','%m/%d/%Y'),9000,'Jeonju');
insert into staff values (4040, 'Antonio Davis', 70009,str_to_date('09/03/2014','%m/%d/%Y'),9000,'Dasongshu');

insert into staff values (4041, 'Brian Wheeler', 70010,str_to_date('09/16/2013','%m/%d/%Y'),15000,'Pleven');
insert into staff values (4042, 'Ralph Wood', 70010,str_to_date('01/10/2014','%m/%d/%Y'),15000,'Palkino');
insert into staff values (4043, 'Jane Dean', 70010,str_to_date('01/24/2013','%m/%d/%Y'),15000,'Maardu');
insert into staff values (4044, 'Robin Morris', 70010,str_to_date('09/11/2015','%m/%d/%Y'),15000,'Ruwaba');
insert into staff values (4045, 'Virginia Riley', 70010,str_to_date('05/25/2011','%m/%d/%Y'),15000,'Compiègne');
insert into staff values (4046, 'Kevin Armstrong', 70010,str_to_date('06/12/2015','%m/%d/%Y'),15000,'Koźle');
insert into staff values (4047, 'Lisa Adams', 70010,str_to_date('03/16/2015','%m/%d/%Y'),15000,'Awaj');
insert into staff values (4048, 'Brandon Palmer', 70010,str_to_date('05/15/2015','%m/%d/%Y'),15000,'Dingzhai');
insert into staff values (4049, 'Keith Roberts', 70010,str_to_date('08/01/2015','%m/%d/%Y'),15000,'Sulahan');
insert into staff values (4050, 'Joan Berry', 70010,str_to_date('11/03/2012','%m/%d/%Y'),15000,'Campurrejo');

insert into staff values (4051, 'Willie Lawrence', 70010,str_to_date('07/12/2013','%m/%d/%Y'),15000,'Wenchun');
insert into staff values (4052, 'Helen Hamilton', 70010,str_to_date('08/29/2013','%m/%d/%Y'),15000,'Fernando');
insert into staff values (4053, 'Ralph Fowler', 70010,str_to_date('07/31/2013','%m/%d/%Y'),15000,'Wulingyuan');
insert into staff values (4054, 'Brian Johnston', 70010,str_to_date('06/23/2014','%m/%d/%Y'),15000,'Kadubadak');
insert into staff values (4055, 'Melissa Fox', 70010,str_to_date('12/11/2012','%m/%d/%Y'),15000,'Guyancourt');
insert into staff values (4056, 'Benjamin Wallace', 70011,str_to_date('01/16/2014','%m/%d/%Y'),5000,'Huacaschuque');
insert into staff values (4057, 'David Daniels', 70011,str_to_date('07/28/2012','%m/%d/%Y'),5000,'Ruma');
insert into staff values (4058, 'Harry Andrews', 70011,str_to_date('01/06/2011','%m/%d/%Y'),5000,'Ceará Mirim');
insert into staff values (4059, 'Angela Harrisons', 70012,str_to_date('03/27/2012','%m/%d/%Y'),25000,'Balungao');
insert into staff values (4060, 'Charles Georges', 70012,str_to_date('02/27/2011','%m/%d/%Y'),25000,'Fuyo');

insert into staff values (4061, 'Howard Gonzalezs', 70012,str_to_date('09/17/2012','%m/%d/%Y'),25000,'Chapultepec');
insert into staff values (4062, 'Todd Duncans', 70012,str_to_date('05/01/2012','%m/%d/%Y'),25000,'Jadowniki');
insert into staff values (4063, 'Wayne Blacks', 70012,str_to_date('09/14/2014','%m/%d/%Y'),25000,'Bondoukou');
insert into staff values (4064, 'Johnny Stones', 70013,str_to_date('06/11/2014','%m/%d/%Y'),11000,'Chimbas');
insert into staff values (4065, 'Janice Rogerss', 70013,str_to_date('05/19/2015','%m/%d/%Y'),11000,'Diourbel');
insert into staff values (4066, 'Julie Greens', 70013,str_to_date('08/26/2012','%m/%d/%Y'),11000,'Tatebayashi');
insert into staff values (4067, 'Lawrence Kims', 70013,str_to_date('01/27/2014','%m/%d/%Y'),11000,'Sacapulas');
insert into staff values (4068, 'Lisa Knights', 70013,str_to_date('08/01/2013','%m/%d/%Y'),11000,'Marttila');