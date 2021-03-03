<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Vendors</title>
</head>
<body>


<pre>
<form action="editVendors" method="post">
<div>
Id: <input type="text" name="id" value="${vendors.id}" readonly/></div>

Code: <input type="text" name="code" value="${vendors.code}"/>

Name: <input type="text" name="name" value="${vendors.name}"/>
Email: <input type="text" name="email" value="${vendors.name}"/>
Phone: <input type="text" name="phone" value="${vendors.phone}"/>
Address: <input type="text" name="address" value="${vendors.address}"/>
<div>
Type: Regular <input type="radio" name="type" value="REGULAR" ${vendor.type=='REGULAR'?'checked':''} />

Type: Contract <input type="radio" name="type" value="CONTRACT" ${vendor.type=='CONTRACT'?'checked':''}/></div>

<input type="submit" value="save"/>

</form>
</pre>

</body>
</html>