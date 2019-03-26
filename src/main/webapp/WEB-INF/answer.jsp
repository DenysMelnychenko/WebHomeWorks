<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>answer</title>
</head>
<body>
<%	String firstNumber = request.getParameter("first");
	double first = Double.parseDouble(firstNumber);
	String sign = request.getParameter("sign");
	String secondNumber = request.getParameter("second");
	double second = Double.parseDouble(secondNumber);
	switch(sign) {
	  case "+": 
	    out.write("</br> Peзультат: </br>");
	  	out.write(first + " + " + second + " = " + first + second);
	  	break;
	}
%>
</body>
</html>