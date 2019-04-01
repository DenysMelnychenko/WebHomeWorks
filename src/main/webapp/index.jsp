<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
</head>
<body>
<center>
<table border = "0">
<form action = "">
<tr>
<td>
<input type = "text" name = "first" />
</td>
<td>
<input type = "text" name = "operator" />
</td>
<td>
<input type="text" name = "second" />
</td>
<td>
<input type="submit" name = "calculate" value = "Calculate" />
</td>
</tr>
<tr>
<td>
 <%! 
 double first = 0;
 double second = 0;
 String operator = null;
 private double calculate(double first, double second, String operator) throws IllegalArgumentException {
   switch(operator) {
	  case "+": 
	  	return first + second;
	  case "-": 
	   return first - second;
	  case "*":
		return first * second;
	  case "/":
	return first / second;
	  case "%": 
	return first % second;
	  	default:
	  	  throw new IllegalArgumentException("This operation doesn't support");
	}
 }%>
       <%@ page import="java.util.Objects" %>

<%  String firstNumber = request.getParameter("first");
	String submit=request.getParameter("calculate");
		 operator = request.getParameter("operator");
	String secondNumber = request.getParameter("second");
	if(Objects.equals(submit, "calculate")) {
	  if(!firstNumber.equals(null) && !firstNumber.equals("") && !secondNumber.equals("")) {
	first = Double.parseDouble(firstNumber);
	second = Double.parseDouble(secondNumber);
 }
}
%>
 <span>Result : <%= try { <%=((first + operator + second + " = ") + calculate(first, second, operator)).asString);
}	catch(IllegalArgumentException e) {
  e,printStackTrace();
}
 Pattern emailPattern = Pattern.compile("\w{1,16}@[a-z]{1,5}\.[a-z]{1,3}");
	Matcher matcher = pattern.matcher(login);
%></span>

</td>
</tr>
</form>
</table>
</center>
</body>
</html>

