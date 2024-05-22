<h1><?php
require_once("include/initialize.php");  
if (!isset($_SESSION['user_email'])) {
  # code...
  redirect('login.php');
}
echo "<br>";
echo "<br>";
echo "WELCOME ".$_SESSION['user_email']."!";
echo "<br>";
echo "<br>";
?> 
</h1>
<h3><p>Get Started here!</p></h3>

