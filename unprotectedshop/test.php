<?php
try {
$pdo = new PDO('mysql:host=localhost;dbname:shopping','root','');
print "work";
} catch (Exception $e) {
     echo "There was an error connecting to the db";
}
$sql = "SELECT * FROM users";
$stmt = $pdo->prepare($sql);
while($row=$stmt->fetch(PDO::FETCH_ASSOC)) {
	print $row['email'];
}	
?>