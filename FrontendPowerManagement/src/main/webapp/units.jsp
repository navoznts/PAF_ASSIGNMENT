<%@page import="com.Unit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unit Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/units.js"></script>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Unit Management</h1>
				<form id="formUnit" name="formUnit" method="post" action="units.jsp">
					Tariff Block:<input id="Tariff_Block" name="Tariff_Block" type="text" class="form-control form-control-sm"> <br> 
					Charge Per Unit:<input id="Charge_per_Unit" name="Charge_per_Unit" type="text" class="form-control form-control-sm"> <br> 
					Type: <input id="Type" name="Type" type="text" class="form-control form-control-sm"> <br> 
				    <input id="btnSave" name="btnSave" type="button" value="Save"class="btn btn-primary"> 
				    <input type="hidden" id="hidUnit_Record_IdSave" name="hidUnit_Record_IdSave" value="">
				</form>
				<br>
				<div>
					<%
					Unit UnitObj = new Unit();
					out.print(UnitObj.readUnits());
					%>
				</div>
			</div>
		</div>
	</div>

</body>
</html>