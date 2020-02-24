/**************TRIGGERS*********************/
/**************FOR Booking******************/
DELIMITER $$ 
Create trigger delete_trigger
	After delete
		on booking
			for each row
				begin
					delete from customer
						where customer.custid = old.bookingid;
					delete from customercontactno
						where customercontactno.id = old.bookingid;
					delete from payment
						where payment.paymentid = old.bookingid;
					delete from feedback
						where feedback.feedbackid = old.bookingid;
					delete from facility
						where facility.fcustid = old.bookingid;
				end
$$

drop trigger delete_trigger;

/**************FOR Staff******************/
DELIMITER $$ 
Create trigger delete_trigger_staff
	After delete
		on staff
			for each row
				begin
					delete from staffcontactno
						where staffcontactno.sid = old.staffid;
				end
$$

drop trigger delete_trigger_staff;

/**************FOR Alottment******************/
DELIMITER $$ 
Create trigger delete_trigger_alottment 
	After delete
		on alottment
			for each row
				begin
					UPDATE staff
						SET staffalottmentno = staffalottmentno+1
							WHERE staff.staffalottmentno = old.alotid;
					
				end
$$

drop trigger delete_trigger_alottment;

/**************FOR Service******************/
DELIMITER $$ 
Create trigger delete_trigger_service 
	After delete
		on service
			for each row
				begin
					UPDATE alottment
						SET alotserviceid = alotserviceid+1
							WHERE alottment.alotserviceid = old.serviceid;
					DELETE from facility
						where facility.fserviceid = old.serviceid;
				end
$$

drop trigger delete_trigger_service;