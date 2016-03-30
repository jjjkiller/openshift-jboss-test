<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="java.util.logging.Level" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Logger</title>
</head>
<body>

<%

final Logger testLogger;

if (request.getParameter("logger") == null) {
    testLogger = Logger.getLogger("");
} else {
	testLogger = Logger.getLogger(request.getParameter("logger"));
}

if (request.getParameter("logging") == null) {
	testLogger.log(Level.WARNING, "");
	testLogger.log(Level.INFO, "");
} else {
	testLogger.log(Level.WARNING, request.getParameter("logging"));
	testLogger.log(Level.INFO, request.getParameter("logging"));
}

%>

<form name="formTestLogger" action="" method="post">
	<span>Logger : </span><input type="text" name="logger" value="toto"/>
 	<span>Logging : </span><input type="text" name="logging" value=""/>
  	<input type="submit" name="Valider" value="Valider"/>
</form>

</body>
</html>