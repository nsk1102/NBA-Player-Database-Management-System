<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Player Stats A Game</title>
	<!-- reference our style sheet -->
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Player Statistics A Game</h2>
		</div>
	</div>
	
	<div id="container">
		
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			<input type="button" value="Add A Stats"
					onclick="window.location.href='playerFormForAdd'; return false"
					class="add-button"
				/>
		
			<!-- add our html table here -->
		
			<table>
				<tr>				
					<th>Name</th>
					<th>Date</th>
					<th>MP</th>
					<th>FG%</th>
					<th>3P%</th>
					<th>FT%</th>
					<th>TRB</th>
					<th>AST</th>
					<th>STL</th>
					<th>BLK</th>
					<th>TOV</th>
					<th>PF</th>
					<th>PTS</th>				
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers  -->
				<c:forEach var="tempStats" items="${playerStatsAGame}">
					
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/league/playerFormForUpdate">
						<c:param name="statsId" value="${tempStats.id}" />
					</c:url>
						
					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/league/deletePlayerStats">
						<c:param name="statsId" value="${tempStats.id}" />
						<c:param name="playerId" value="${tempStats.playerId}" />
					</c:url>
					
					<tr>
						<td> ${tempStats.name} </td>
						<td> ${tempStats.date}</td>
						<td> ${tempStats.minutes} </td>
						<td> ${tempStats.fieldGoalsPercentage} </td>
						<td> ${tempStats.threePointsPercentage} </td>
						<td> ${tempStats.freeThrowsPercentage} </td>
						<td> ${tempStats.rebounds} </td>
						<td> ${tempStats.assists} </td>
						<td> ${tempStats.steals} </td>
						<td> ${tempStats.blocks} </td>
						<td> ${tempStats.turnovers} </td>
						<td> ${tempStats.fouls} </td>
						<td> ${tempStats.points} </td>

						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
								onclick="if(!(confirm('Are you sure you want to delete this statistics?'))) return false">Delete</a>
						</td>
						
						
					</tr>
				</c:forEach>
			</table>
		
		</div>
	</div>
</body>


</html>