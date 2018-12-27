<?php
include "db.php";
error_reporting(E_ALL);
$query = "INSERT INTO report(issue,plain,limb,dt,num,tp) VALUES";
$c = count($_POST['issue']);

extract($_POST);

for($a = 0; $a < $c; $a++)
{
	echo $query .= "('".$issue[$a]."', '".$plain[$a]."', '".$limb[$a]."', '".$date[$a]."', '".$num[$a]."', '".$type[$a]."'),";
}

$query = substr($query, 0, -1);
$res = $conn->query($query);
if ($res === TRUE) {
	$_SESSION['id2'] = $num[0];
	?>
	<meta http-equiv="refresh" content="0; URL=http:../continue.php">
	<?php
}
else{
	echo "Error ".$query." ".$conn->error;
}