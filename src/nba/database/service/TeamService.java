package nba.database.service;

import java.sql.SQLException;
import java.util.List;

import nba.database.entity.Team;
import nba.database.entity.TeamSeasonStatistics;
import nba.database.entity.TeamStatisticsAGame;

public interface TeamService {

	public List<Team> getTeams() throws Exception;

	public List<TeamSeasonStatistics> getSeasonStats(int theId) throws SQLException;

	public List<TeamStatisticsAGame> getTeamStatsAGame(String teamName) throws SQLException;

	public void saveTeamStats(TeamStatisticsAGame stats) throws SQLException;

	public TeamStatisticsAGame getTeamStatisticsAGame(int statsId) throws SQLException;

	public void deleteTeamStatsAGame(int id) throws SQLException;

}
