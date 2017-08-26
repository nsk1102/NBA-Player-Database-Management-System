<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Team Seasons</title>
	<!-- reference our style sheet -->
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Team Season Statistics</h2>
		</div>
	</div>
	
	<div id="container">
		
		<div id="content">
		
		
			<!-- add our html table here -->
		
			<table>
				<tr>				
					<th>Season</th>
					<th>Name</th>
					<th>Wins</th>
					<th>Loses</th>
					<th>FG%</th>
					<th>3P%</th>
					<th>FT%</th>
					<th>TRB</th>
					<th>AST</th>
					<th>STL</th>
					<th>BLK</th>
					<th>TOV</th>
					<th>PF</th>
					<th>PTS/G</th>
				</tr>
				
				<!-- loop over and print our customers  -->
				<c:forEach var="tempSeason" items="${teamSeasons}">
					
					<!-- construct an "teamSeason" link with customer id -->
					<c:url var="playerLink" value="/league/teamPlayers">
						<c:param name="seasonId" value="${tempSeason.id}" />
					</c:url>
					
					<c:url var="teamStats" value="/league/teamStatsAGame">
						<c:param name="teamName" value="${tempSeason.name}" />
					</c:url>
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/league/updateTeam">
						<c:param name="seasonId" value="${tempSeason.id}" />
					</c:url>
						
					
					<tr>
						<td> 
							<a href="${playerLink}">${tempSeason.season}</a>
						</td>
						<td> <a href="${teamStats}">${tempSeason.name}</a>
						</td>
						<td> ${tempSeason.wins} </td>
						<td> ${tempSeason.loses} </td>
						<td> ${tempSeason.fieldGoalsPercentage} </td>
						<td> ${tempSeason.threePointsPercentage} </td>
						<td> ${tempSeason.freeThrowsPercentage} </td>
						<td> ${tempSeason.reboundsPerGame} </td>
						<td> ${tempSeason.assistsPerGame} </td>
						<td> ${tempSeason.stealsPerGame} </td>
						<td> ${tempSeason.blocksPerGame} </td>
						<td> ${tempSeason.turnoversPerGame} </td>
						<td> ${tempSeason.foulsPerGame} </td>
						<td> ${tempSeason.pointsPerGame} </td>
						
						
					</tr>
				</c:forEach>
			</table>
		
		</div>
	
	</div>

</body>


</html>