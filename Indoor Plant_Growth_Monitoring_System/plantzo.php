<html>
 <head>
 
 <meta name="viewport" content="width=device-width" />
 <style>
 p {font-family: "Times New Roman", Times, serif; font-size: 20px; margin-left: 10px}

 h1 {color:green; text-align: center;font-size: 35px;}
 </style>
 <title>Plantzo</title>
 </head>
<meta http-equiv="refresh" content="2" > 
         <body background="PAGE1.jpg">
<h1>CHILATO PLANTZO</h1>
<p>Temperature: ($_GET['on']) C</p>
<p>Humidity: ($_GET['on'])%</p>
<p>Plant Height: ($_GET['on'])</p>
<p>Lamp Control:</p>
        <form method="get" action="plantzo.php">
                 <input type="submit" value="ON" name="on">
                 <input type="submit" value="OFF" name="off">
         </form>
         <?php
         $setmode24 = shell_exec("gpio -g mode 24 out");
         if(isset($_GET['on'])){
                 $gpio_on = shell_exec("gpio -g write 24 1");
                 echo "LED is on";
         }
         else if(isset($_GET['off'])){
                 $gpio_off = shell_exec("gpio -g write 24 0");
                 echo "LED is off";
         }
         ?>
<p>Watering Mode:</p>
        <form method="get" action="plantzo.php">
                 <input type="submit" value="ECONOMICAL" name="economical">
                 <input type="submit" value="NORMAL" name="normal">
         </form>
         <?php
         $setmode24 = shell_exec("gpio -g mode 24 out");
         if(isset($_GET['on'])){
                 $gpio_on = shell_exec("gpio -g write 24 1");
         }
         else if(isset($_GET['off'])){
                 $gpio_off = shell_exec("gpio -g write 24 0");
         }
         ?>
 <p>Water level: Sufficient-above 70%</p>
         </body>
 </html>
