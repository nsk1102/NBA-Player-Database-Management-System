<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Teams</title>
	<!-- reference our style sheet -->
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Teams List</h2>
		</div>
	</div>
	
	<div id="container">
		
		<div id="content">
			
			<table>
				<tr>				
					<th>Name</th>
					<th>Arena</th>
					<th>Coach</th>
					<th>From</th>
					<th>To</th>
					<th>Championships</th>
					<th>Wins</th>
					<th>Loses</th>
				</tr>
				
				<!-- loop over and print our customers  -->
				<c:forEach var="tempTeam" items="${teams}">
					
					<!-- construct an "teamSeason" link with team id -->
					<c:url var="teamLink" value="/league/teamSeasons">
						<c:param name="teamId" value="${tempTeam.id}" />
					</c:url>
									
					<!-- construct an "update" link with team id -->
					<c:url var="updateLink" value="/league/updateTeam">
						<c:param name="teamId" value="${tempTeam.id}" />
					</c:url>
										
					<tr>
						<td> 
							<a href="${teamLink}">${tempTeam.name}</a> 
						</td>
						<td> 
							 ${tempTeam.city}
						</td>
						<td> ${tempTeam.coachName} </td>
						<td> ${tempTeam.from} </td>
						<td> ${tempTeam.to} </td>
						<td> ${tempTeam.championships} </td>
						<td> ${tempTeam.wins} </td>
						<td> ${tempTeam.loses} </td>
						
						
					</tr>
				</c:forEach>
			</table>
		
		</div>
	
	</div>

</body>


</html>