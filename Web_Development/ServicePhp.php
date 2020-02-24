<!DOCTYPE html>
<html>

<head lang="en">
	<link rel="stylesheet" type="text/css" href="css\pet.css">
	<meta charset="utf-8">
	<title> Pet Store </title>
	<style>
         .error {
         	color: #FF0000;
         	font-size: 10px;
         }
    </style>
</head>

<body>
	<?php
	    $servername = "localhost";  
	    $username = "root";  
	    $password = "";  
	    $dbname = "pet";
	    
	    $dbname = new mysqli($servername , $username , $password, $dbname) or die('not connected to server');
		
	    $first_name = "";
	    $last_name = $email = "";
	    $phone = "";
	    $B_name = "";
	    $fnameErr=$lnameErr=$emailErr=$commentsErr=$phoneErr="";    $flag=2;

	    if ($_SERVER["REQUEST_METHOD"] == "POST") {
	    	if (empty($_POST['fn'])) {
	  			$fnameErr = "* First Name is required";
	  			$flag=0;
	  		}
	  		else {
	  			$first_name = input_testing($_POST['fn']);
	  			$flag=1;
	  		}

	  		if (empty($_POST['lname'])) {
				$lnameErr = "* Last Name is required";
				$flag=0;
			}
			else {
				$last_name = input_testing($_POST['lname']);
				$flag=1;
			}
			
			if (empty($_POST["email"]))//should not be empty
		 	{
	    		$emailErr = "* Email is required";
	       		$flag=0;
	   		} 
	  		else
	  		{
	    		$email = input_testing($_POST["email"]);
	    		$flag=1;
	  		}

			if (empty($_POST["comments"])) {
				$commentsErr = "* Comments are required";
				$flag=0;
			} 
			else {
				$B_name = input_testing($_POST["comments"]);
				$flag=1;
			}

			$phone = input_testing($_POST["phone"]);
	  		
	  	}

	  	function input_testing($data) {
		  $data = trim($data);
		  $data = stripslashes($data);
		  $data = htmlspecialchars($data);
		  return $data;
		}

	    if($flag==1) {
	    	email_pass(1234567);
	    	$password = 1234567;
	    	$client=1;
			$sql_user = "INSERT INTO pet.user (email, password, roleid) VALUES ( '$email', '$password', '$client')";
			mysqli_query($dbname, $sql_user);
			$sql_user_search = "SELECT userid from pet.user where email= '$email'";
			$result = mysqli_query($dbname, $sql_user_search);
			while ($row = $result->fetch_assoc()) {
	    		$result1 = $row['userid'];
			}
			$sql = "INSERT INTO pet.service (serviceid, fname, lname, phone, email, userid, bname) VALUES ( NULL, '$first_name', '$last_name', '$phone', '$email', $result1, '$B_name')";
	 		mysqli_query($dbname, $sql);
	 		header('Location: BusinessPetStore.php');
		}
		
		function email_pass($var)
		{	
			$to = "shloak.agwl@gmail.com";
			$mail_subject = "Mail Script";
			//$mail_content = "Hello";
			$header = "From: creativeknight258@gmail.com";

			$result = mail($to, $mail_subject, $var, $header);
			if($result){}
			//	echo "Sucess";
			else{}
			//	echo "fail";
		}
		// Close connection
		mysqli_close($dbname);
	?>
<div id="wrapper">
	<header>
		<h1> Pet Store </h1>
	</header>
	<div class="container">
		<nav >
			<a href="index.php">Home</a><br />
			<a href="AboutUs.php">About Us</a><br /> 
			<a href="ContactUs.php">Contact Us</a> <br />
			<a href="Client.php">Client</a> <br />
			<a href="Service.php">Service</a> <br />
			<a href="Login.php">Login</a> <br />
		</nav>
		<div class="col2">
			<img src="images\pet store banner 8 png.png">		
			<h2 style="padding-left: 2%"> 
				Services
			</h2>	
			<p style="padding-left: 2%; color: black;">
				Required information is marked with an asterisk(&#42;).
			</p>
			<form action="#" method="post" action = "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" >
				<table>
					<tr>
						<td>
							&#42; First Name:
						</td>
						<td >
							<input type="text" name="fn" /><br>
							<span class = "error"><?php echo $fnameErr;?></span>
						</td>
					</tr>
					<tr>
						<td>
							&#42; Last Name:
						</td>
						<td>
							<input type="text" name="lname" /><br>
							<span class = "error"><?php echo $lnameErr;?></span>
						</td>
					</tr>
					<tr>
						<td>
							&#42; E-mail:
						</td>
						<td>
							<input type="email" name="email" /><br>
							<span class = "error"><?php echo $emailErr;?></span>
						</td>
					</tr>
					<tr>
						<td>
							Phone:
						</td>
						<td>
							 <input type="tel" name="phone" /><br>
							<span class = "error"><?php echo $phoneErr;?></span>
						</td>
					</tr>
					<tr>
						<td>
							&#42; Business Name:
						</td>
						<td>
							<input type="text" name="comments" /><br>
							<span class = "error"><?php echo $commentsErr;?></span>
						</td>
					</tr>
					<tr>
						<td>
							<button class="button" name= "submit" >Submit</button>
						</td>
					</tr>
				</table>
			</form>
			<footer>
				<i> 
					<font size="2"> 
						Copyright &copy; 2018 Pet Store <br>
						<a href="mailto:Shloak@Agarwal.com">Shloak@Agarwal.com</a>
					</font>
				</i>
			</footer>		
		</div>
	</div>
</div>
</body>
</html>