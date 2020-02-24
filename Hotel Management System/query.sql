use hms;

/*Complex Queries
/*1.Generating Bill*/
SELECT 
	bookingid AS ID,
    name AS Name,
    checkindate AS Check_in_date,
    checkoutdate AS Check_out_date,
    roomno AS Room_Number,
    (checkoutdate-checkindate) AS Number_Days,
    price AS Room_Price,
    ((checkoutdate-checkindate)*price) AS Room_amt,
    modeofpayment AS Mode_of_Payment,
    sum(servicecharges) AS Service_Charges,
    (((checkoutdate-checkindate)*price)+sum(servicecharges)) AS Total_amt
		FROM(booking AS b JOIN customer AS c
			ON(b.bookingid=c.custid)
				JOIN rooms AS r 
					ON(custroomno = r.roomno)
						JOIN payment p 
							ON(bookingid = p.paymentid)
								JOIN facility AS f
									ON(bookingid = f.fcustid) 
										JOIN service AS ser 
											ON(fserviceid = ser.serviceid))
												WHERE bookingid= '0121';

/*2.Count the number of customers checked in to Premier Executive rooms on 2011/11/28?*/
SELECT count(bookingid) AS No_of_cust
	FROM ((	SELECT *
		FROM(SELECT bookingid,checkindate 
			FROM booking 
				WHERE checkindate = '2011/11/28') AS b 
					JOIN (SELECT custid,custroomno FROM customer) AS c 
						ON (b.bookingid = c.custid)) AS bc 
							JOIN (SELECT roomno FROM rooms WHERE roomtype = 'Premier Executive') AS r
								ON (bc.custroomno = r.roomno));

/*3.List id, name and card number of customers who checked in to Family Suite room and mode of payment was card? */
SELECT custid AS ID, name AS Name, cardnumber AS Credit_card_NO 
	FROM (customer AS c JOIN booking AS b
			ON(c.custid = b.bookingid)
				JOIN rooms AS r
					ON(custroomno = r.roomno)
						JOIN payment AS p
							ON(bookingid = p.paymentid))
								WHERE modeofpayment = 'card' AND roomtype = 'Family Suite';
    
/*4.List the number of facilities used by customers.*/
SELECT DISTINCT(servicetype) AS Service_Used
	FROM (facility AS f JOIN 
		booking AS b
			ON (f.fcustid = b.bookingid)
				JOIN service AS s
					ON(fserviceid = s.serviceid));
                            
/*5.List the name, document submitted by the customer who gave feedback points > 5?*/                            
SELECT name AS Name, doc AS Documents
	FROM( customer AS c JOIN booking AS b
			ON(c.custid = b.bookingid)
				JOIN feedback AS f
					ON(bookingid = f.feedbackid))
						WHERE points > 5;

/*6.Count the avgerage feedback points for each room type */
SELECT roomtype AS Room_Type, avg(points) AS Avg_Rating
	FROM (feedback AS f JOIN booking AS b
			ON(f.feedbackid = b.bookingid)
				JOIN customer AS c
					ON(bookingid = c.custid)
						JOIN rooms AS r
							ON(custroomno = r.roomno))
								GROUP BY roomtype;
           
/*7.Show name, contactno, emailid of customers who booked Family Suite and checked in on 25/12/2015*/
SELECT name AS Name, contactno AS Contact_Number, emailid AS Email_ID  
	FROM (booking AS b JOIN customercontactno AS cc
			ON(b.bookingid = cc.id)
				JOIN customer AS c
					ON(bookingid = c.custid)
						JOIN rooms AS r
							ON(custroomno = r.roomno))
								WHERE roomtype = 'Family Suite' and checkindate = '2014/10/26';

/*8.List contact number, name and id of staff who are providing service as laundry*/
SELECT staffid AS Staff_ID, staffname AS Staff_Name, scontactno AS Conatct_Number
	FROM ( staff AS s JOIN staffcontactno AS sc
		ON(s.staffid = sc.sid)
			JOIN alottment AS a
				ON(staffalottmentno = a.alotid)
					JOIN service AS ser
						ON(alotserviceid = ser.serviceid))
							WHERE servicetype = 'Laundry';

/*9.Count the number of staff members whose salary is less than 10000 and alloted to Gym*/
SELECT count(staffid) AS Number
	FROM ( staff AS s JOIN alottment AS a
		ON(staffalottmentno = a.alotid)
			JOIN service AS ser
				ON(alotserviceid = ser.serviceid))
					WHERE servicetype = 'Gym' and staffsalary<10000;

/*10.Count the number of staff employees providing service in saloon and are from delhi*/
SELECT count(staffid) AS Number
	FROM ( staff AS s JOIN alottment AS a
		ON(staffalottmentno = a.alotid)
			JOIN service AS ser
				ON(alotserviceid = ser.serviceid))
					WHERE servicetype = 'Salon' and staffcity = 'Dawwār';

/*11.Find name and id of customers who have used service of spa or Salon?*/
SELECT bookingid AS ID,name AS Name 
	FROM booking 
		WHERE booking.bookingid IN (
			SELECT fcustid 
				FROM facility 
					WHERE facility.fserviceid IN (
						SELECT serviceid 		
							FROM service 
								WHERE servicetype ='spa' OR servicetype='salon'));
                                
/*12.Find the names of customers who have paid through card and given feedback above 5?*/
SELECT name AS Name
	FROM booking 
		WHERE booking.bookingid IN (
			SELECT paymentid 
				FROM payment 
					WHERE modeofpayment = 'Card') AND booking.bookingid IN (
						SELECT feedbackid 
							FROM feedback 
								WHERE points>=5);

/*Simple Queries
/*13.List emailid of the customers where no_of_ppl > 3 people?*/
SELECT emailid AS Email_ID
	FROM booking 
		WHERE no_of_ppl > 3;

/*14.List custid and name of the customers where checkout date is 30/11/2011?*/
SELECT bookingid AS ID, name
	FROM booking
		WHERE checkoutdate = '2011/11/30';  

/*15.List room numbers and price where room type is Presidential Suite?*/
SELECT roomno AS Room_No, price AS Price
	FROM rooms
		WHERE roomtype = 'Presidential Suite';

/*16.List custid, name, contactno where document is Aadhaar card?*/
SELECT custid AS ID
	FROM customer
		WHERE doc = 'Adhar Card';

/*17.List staffid, name, contactno where staffcity is Norfolk?*/
SELECT staffid AS ID, staffname AS Name
	FROM staff
		WHERE staffcity = 'Norfolk';

/*18.List bill no and payment id where mode of payment is cash?*/
SELECT paymentid AS Bill_ID
	FROM payment 
		WHERE modeofpayment = 'cash';

/*19.List service charges where service id is 800002 and service type is Taxi Service?*/
SELECT servicecharges AS Amount
	FROM service
		WHERE serviceid = 800002 AND servicetype = 'Taxi Service'; 

/*20.List staff salary where date of join is 09/09/2014 and staff city is Turmus‘ayyā?*/
SELECT staffsalary AS Salary
	FROM staff
		WHERE dateofjoin = '2014/09/09' AND staffcity = 'Turmus‘ayyā';

/*21.	List alot id where allot type is cook?*/
SELECT alotid AS ID
	FROM alottment
		WHERE alottype = 'Cook';

/*22.	List document where cust id is 0114?*/
SELECT doc AS Documents
	FROM customer
		WHERE custid = 0114;

/*****************Trigger*************************/
/*1.When a customer exit hotel*/
DELETE FROM booking WHERE bookingid = '0101';

/*2.When a staff leaves the job*/
DELETE FROM staff WHERE staffid = '4001';

/*3.When an alottment of an staff is delete*/
DELETE FROM alottment WHERE alotid = '70001';

/*4.When a service is delete*/
DELETE FROM service WHERE serviceid = '800001';
