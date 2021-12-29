<?php 
define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'shopping_protected');
$con = new mysqli(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
try {
    $db = new PDO('mysql:host=localhost;
        dbname=shopping_protected;
        charset=utf8',
        'root',
        ''
    ); 
}
catch  (PDOExeption $e) {
    echo $e->getMessage();
}
?>