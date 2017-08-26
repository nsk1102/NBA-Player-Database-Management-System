<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE>
<html>

<head>
	<title>Save Player Stats</title>
	
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>NBA Basketball Database</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Player Statistics</h3>
	
		<form:form action="saveForPlayerStats" modelAttribute="playerStats" method="POST">
		
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			
			<table>
				<tbody>
					<tr>
						<td><label>Name:</label></td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td><label>Date:</label></td>
						<td><form:input path="date" /></td>
					</tr>
					<tr>
						<td><label>Minutes:</label></td>
						<td><form:input path="minutes" /></td>
					</tr>
					<tr>
						<td><label>PTS:</label></td>
						<td><form:input path="points" /></td>
					</tr>
					<tr>
						<td><label>TRB:</label></td>
						<td><form:input path="rebounds" /></td>
					</tr>
					<tr>
						<td><label>AST:</label></td>
						<td><form:input path="assists" /></td>
					</tr>
					<tr>
						<td><label>BLK:</label></td>
						<td><form:input path="blocks" /></td>
					</tr>
					<tr>
						<td><label>STL:</label></td>
						<td><form:input path="steals" /></td>
					</tr>
					<tr>
						<td><label>TOV:</label></td>
						<td><form:input path="turnovers" /></td>
					</tr>
					<tr>
						<td><label>FT:</label></td>
						<td><form:input path="fouls" /></td>
					</tr>
					<tr>
						<td><label>FG%:</label></td>
						<td><form:input path="fieldGoalsPercentage" /></td>
					</tr>
					<tr>
						<td><label>3PG%:</label></td>
						<td><form:input path="threePointsPercentage" /></td>
					</tr>
					<tr>
						<td><label>FT%:</label></td>
						<td><form:input path="freeThrowsPercentage" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>	
			</table>
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/league/showTeams">Back to List</a>
		</p>
		
	</div>
</body>



</html>