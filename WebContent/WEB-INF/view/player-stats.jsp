<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Player Stats</title>
	<!-- reference our style sheet -->
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Player Statistics</h2>
		</div>
	</div>
	
	<div id="container">
		
		<div id="content">
		
		
			<!-- add our html table here -->
		
			<table>
				<tr>				
					<th>Name</th>
					<th>Season</th>
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
					<th>PER</th>
					<th>WS</th>
					<th>DWS</th>
					<th>USG%</th>				
				</tr>
				
				<!-- loop over and print our customers  -->
				<c:forEach var="tempStats" items="${playerStats}">
					
					<!-- construct an "teamSeason" link with customer id -->
					<c:url var="playerLink" value="/league/playerSeasons">
						<c:param name="playerId" value="${tempStats.id}" />
					</c:url>
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/league/updateTeam">
						<c:param name="statsId" value="${tempStats.id}" />
					</c:url>
						
					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/league/deleteTeam">
						<c:param name="statsId" value="${tempStats.id}" />
					</c:url>
					
					<tr>
						<td> 
							<a href="${playerLink}">${tempStats.name} </a>
						</td>
						<td>${tempStats.season}</td>
						<td> ${tempStats.minutesPerGame} </td>
						<td> ${tempStats.fieldGoalsPercentage} </td>
						<td> ${tempStats.threePointsPercentage} </td>
						<td> ${tempStats.freeThrowsPercentage} </td>
						<td> ${tempStats.reboundsPerGame} </td>
						<td> ${tempStats.assistsPerGame} </td>
						<td> ${tempStats.stealsPerGame} </td>
						<td> ${tempStats.blocksPerGame} </td>
						<td> ${tempStats.turnoversPerGame} </td>
						<td> ${tempStats.foulsPerGame} </td>
						<td> ${tempStats.pointsPerGame} </td>
						<td> ${tempStats.efficiencyRating} </td>
						<td> ${tempStats.winShares} </td>
						<td> ${tempStats.defensiveWinShares} </td>
						<td> ${tempStats.usageRate} </td>

						
						
					</tr>
				</c:forEach>
			</table>
		
		</div>
	</div>
</body>


</html>