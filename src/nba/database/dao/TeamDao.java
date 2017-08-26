package nba.database.dao;

import java.sql.SQLException;
import java.util.List;

import nba.database.entity.Team;
import nba.database.entity.TeamSeasonStatistics;
import nba.database.entity.TeamStatisticsAGame;

public interface TeamDao {

	List<Team> getTeams() throws SQLException;

	List<TeamSeasonStatistics> getSeasonStats(int theId) throws SQLException;

	List<TeamStatisticsAGame> getTeamStatsAGame(String teamName) throws SQLException;

	void saveTeamStats(TeamStatisticsAGame stats) throws SQLException;

	TeamStatisticsAGame getTeamStatisticsAGame(int statsId) throws SQLException;

	void deleteTeamStatsAGame(int id) throws SQLException;

}
