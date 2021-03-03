<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Vendor</title>
</head>
<body>


<pre>
<form action="saveVendor" method="post">
<div>
Id: <input type="text" name="id"/></div>

Code: <input type="text" name="code"/>

Name: <input type="text" name="name"/>
Email: <input type="text" name="email"/>
Phone: <input type="text" name="phone"/>
Address: <input type="text" name="address"/>
<div>
Type: Regular <input type="radio" name="type" value="REGULAR"/>

Type: Contract <input type="radio" name="type" value="CONTRACT"/></div>

<input type="submit" value="save"/>
</pre>
</form>
${message}

<a href="displayVendors"> View All Vendors</a>


</body>
</html>