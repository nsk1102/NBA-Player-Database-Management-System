package nba.database.dao;

import java.sql.SQLException;
import java.util.List;

import nba.database.entity.Player;
import nba.database.entity.PlayerStatistics;
import nba.database.entity.PlayerStatisticsAGame;

public interface PlayerDao {

	List<Player> getPlayers(int seasonId) throws SQLException;

	List<PlayerStatistics> getPlayerStats(int playerId) throws SQLException;

	PlayerStatistics getCareerStats(int playerId) throws SQLException;

	List<PlayerStatisticsAGame> getPlayersStatsAGame(int playerId) throws SQLException;

	void savePlayerStats(PlayerStatisticsAGame stats) throws SQLException;

	PlayerStatisticsAGame getPlayerStatisticsAGame(int statsId) throws SQLException;

	void deletePlayerStatsAGame(int id) throws SQLException;

	int getPlayerId(PlayerStatisticsAGame stats) throws SQLException;
	
}
