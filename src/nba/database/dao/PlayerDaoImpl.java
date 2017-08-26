package nba.database.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.stereotype.Repository;

import nba.database.entity.Player;
import nba.database.entity.PlayerCareerStats;
import nba.database.entity.PlayerSeasonStats;
import nba.database.entity.PlayerStatistics;
import nba.database.entity.PlayerStatisticsAGame;
import nba.database.entity.TeamStatisticsAGame;

@Repository
public class PlayerDaoImpl implements PlayerDao {

	public Connection conn;
	
	public PlayerDaoImpl() {
		this.conn = DBConnection.conn;
	}
	
	@SuppressWarnings("finally")
	@Override
	public List<Player> getPlayers(int seasonId) throws SQLException {
		List<Player> playerList = new ArrayList<>();
		PreparedStatement getPlayers = conn.prepareStatement("select t.name, p.*, pn.nationality, pp.position, s.name, "
				+ "c.salary, c.years, c.clause from Team t, Player p, Contract c, "
				+ "PlayerNationality pn, PlayerPosition pp, TeamSeasonStatistics ts, Season s "
				+ "where c.isEmployedBy = t.id and c.employs = p.id and ts.partOf = t.id and "
				+ "pp.player = p.id and pn.player = p.id and ts.season = s.id and ts.id = ?");
		try {	
			getPlayers.setInt(1, seasonId);
			ResultSet rs = getPlayers.executeQuery();		
			while (rs.next()) {
				String team = rs.getString(1);
				int id = rs.getInt(2);
				String name = rs.getString(3);
				String bornDate = rs.getString(4);
				double height = rs.getDouble(5);
				double weight = rs.getDouble(6);
				boolean hallOfFame = rs.getBoolean(7);
				String nationality = rs.getString(8);
				String position = rs.getString(9);				
				String season = rs.getString(10);
				int salary = rs.getInt(11);
				int years = rs.getInt(12);
				String clause = rs.getString(13);
				playerList.add(new Player(id, team, name, bornDate, height, weight, hallOfFame, 
						nationality, position, season, salary, years, clause));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getPlayers != null) getPlayers.close();
			return playerList;
		}
	}

	@SuppressWarnings("finally")
	@Override
	public List<PlayerStatistics> getPlayerStats(int playerId) throws SQLException {
		List<PlayerStatistics> statsList = new ArrayList<>();

		PreparedStatement getStats = conn.prepareStatement("select s.name, p.name, pst.* "
				+ "from Player p, PlayerSeasonStatistics pst, Season s "
				+ "where pst.partOf = p.id and pst.season = s.id and p.id = ?");
		try {	
			getStats.setInt(1, playerId);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String season = rs.getString(1);
				String name = rs.getString(2);

				int id = rs.getInt(3);
				double mp = rs.getDouble(4);
				double pts = rs.getDouble(5);
				double trb = rs.getDouble(6);
				double ast = rs.getDouble(7);
				double blk = rs.getDouble(8);
				double stl = rs.getDouble(9);
				double tov = rs.getDouble(10);
				double pf = rs.getDouble(11);
				double fg = rs.getDouble(12);
				double tp = rs.getDouble(13);
				double ft = rs.getDouble(14);
				double eff = rs.getDouble(15);
				double ws = rs.getDouble(16);
				double dws = rs.getDouble(17);
				double usg = rs.getDouble(18);
				statsList.add(new PlayerSeasonStats(season, playerId, mp, pts, trb, ast, blk, stl, tov,
						 pf, fg, tp, ft, eff, ws, dws, usg, name));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getStats != null) getStats.close();
			return statsList;
		}
	}
	

	@SuppressWarnings("finally")
	@Override
	public PlayerStatistics getCareerStats(int playerId) throws SQLException {
		PlayerStatistics stats = null;
		PreparedStatement getStats = conn.prepareStatement("select p.name, pct.* "
				+ "from Player p, PlayerCareerStatistics pct "
				+ "where pct.partOf = p.id and p.id = ?");
		try {	
			getStats.setInt(1, playerId);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String name = rs.getString(1);
				int id = rs.getInt(2);
				double mp = rs.getDouble(3);
				double pts = rs.getDouble(4);
				double trb = rs.getDouble(5);
				double ast = rs.getDouble(6);
				double blk = rs.getDouble(7);
				double stl = rs.getDouble(8);
				double tov = rs.getDouble(9);
				double pf = rs.getDouble(10);
				double fg = rs.getDouble(11);
				double tp = rs.getDouble(12);
				double ft = rs.getDouble(13);
				double eff = rs.getDouble(14);
				double ws = rs.getDouble(15);
				double dws = rs.getDouble(16);
				double usg = rs.getDouble(17);
				stats = new PlayerCareerStats(id, mp, pts, trb, ast, blk, stl, tov,
						 pf, fg, tp, ft, eff, ws, dws, usg, name);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getStats != null) getStats.close();
			return stats;
		}
	}

	@SuppressWarnings({ "finally", "null" })
	@Override
	public List<PlayerStatisticsAGame> getPlayersStatsAGame(int playerId) throws SQLException {
		List<PlayerStatisticsAGame> stats = new ArrayList<>();
		PreparedStatement getStats = conn.prepareStatement("select p.name, g.gameDate, pl.minutes, psa.* "
				+ "from Player p, PlayerStatisticsAGame psa, play pl, Game g "
				+ "where p.id = pl.isPlayedBy and pl.plays = g.id "
				+ "and psa.partOfPlayer = pl.isPlayedBy and psa.partOfGame = pl.plays and p.id = ? "
				+ "order by g.gameDate");
		try {	
			getStats.setInt(1, playerId);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String name = rs.getString(1);
				String date = rs.getString(2);
				double minutes = rs.getDouble(3);
				int id = rs.getInt(4);
				int pts = rs.getInt(5);
				int trb = rs.getInt(6);
				int ast = rs.getInt(7);
				int blk = rs.getInt(8);
				int stl = rs.getInt(9);
				int tov = rs.getInt(10);
				int pf = rs.getInt(11);
				double fg = rs.getDouble(12);
				double tp = rs.getDouble(13);
				double ft = rs.getDouble(14);
				stats.add(new PlayerStatisticsAGame(id, name, date, pts, trb, ast, blk, stl, tov,
						 pf, fg, tp, ft, minutes, playerId));
			}
			Collections.sort(stats, new Comparator<PlayerStatisticsAGame>() {
				@Override
				public int compare(PlayerStatisticsAGame s1, PlayerStatisticsAGame s2) {
					String[] date1 = s1.getDate().split("-");
					String[] date2 = s2.getDate().split("-");
					int i = 0, j = 0;
					while (i < date1.length && j < date1.length) {
						int d1 = Integer.parseInt(date1[i]);
						int d2 = Integer.parseInt(date2[j]);
						if ((d1 - d2) != 0) return d1 - d2;
						else {
							i++;
							j++;
						}
					}
					return 0;
				}
			});

		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getStats != null) getStats.close();
			return stats;
		}
		
	}

	@Override
	public void savePlayerStats(PlayerStatisticsAGame stats) throws SQLException {
		
		if (stats.getId() == 0) {
			PreparedStatement saveStats = conn.prepareStatement("insert into Game(gameDate) values (?) ");
			PreparedStatement saveStats2 = conn.prepareStatement("insert into Play values (?, ?, "
					+ "(select distinct last_insert_id() from Game), (select p.id from Player p where p.name = ?))");
			PreparedStatement saveStats3 = conn.prepareStatement("insert into PlayerStatisticsAGame(points, rebounds, assists, blocks, steals, "
					+ "turnover, fouls, fieldGoalsPercentage, threePointsPercentage, freeThrowsPercentage, "
					+ "partOfPlayer, partOfGame) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "(select p.id from Player p where p.name = ?), "
					+ "(select distinct last_insert_id() from Game))");
				try {
					saveStats.setString(1, stats.getDate());
					saveStats2.setDouble(1, stats.getMinutes());
					saveStats2.setBoolean(2, true);
					saveStats2.setString(3, stats.getName());;
					saveStats3.setInt(1, stats.getPoints());
					saveStats3.setInt(2, stats.getRebounds());
					saveStats3.setInt(3, stats.getAssists());
					saveStats3.setInt(4, stats.getBlocks());
					saveStats3.setInt(5, stats.getSteals());
					saveStats3.setInt(6, stats.getTurnovers());
					saveStats3.setInt(7, stats.getFouls());
					saveStats3.setDouble(8, stats.getFieldGoalsPercentage());
					saveStats3.setDouble(9, stats.getThreePointsPercentage());
					saveStats3.setDouble(10, stats.getFreeThrowsPercentage());
					saveStats3.setString(11, stats.getName());;
					saveStats.executeUpdate();		
					saveStats2.executeUpdate();	
					saveStats3.executeUpdate();	
				}catch(Exception ex) {
					ex.printStackTrace();
				}finally {
					if (saveStats != null) saveStats.close();
				}
		}
		else {
			System.out.println(stats.getPoints());
			PreparedStatement saveStats = conn.prepareStatement("update PlayerStatisticsAGame "
				+ "set points = ?, rebounds = ?, assists = ?, blocks = ?, steals = ?, turnover = ?, "
				+ "fouls = ?, fieldGoalsPercentage = ?, threePointsPercentage = ?, "
				+ "freeThrowsPercentage = ? where id = ?");
			
			PreparedStatement saveStats1 = conn.prepareStatement("update Game set gameDate = ? "
					+ "where id = (select p.partOfGame from PlayerStatisticsAGame p where p.id = ?)");
			PreparedStatement saveStats2 = conn.prepareStatement("update Play set minutes = ? "
					+ "where plays = (select p.partOfGame from PlayerStatisticsAGame p where p.id = ?)");
			
			
			
			try {
				System.out.println(stats.getPoints());
				saveStats.setInt(1, stats.getPoints());
				saveStats.setInt(2, stats.getRebounds());
				saveStats.setInt(3, stats.getAssists());
				saveStats.setInt(4, stats.getBlocks());
				saveStats.setInt(5, stats.getSteals());
				saveStats.setInt(6, stats.getTurnovers());
				saveStats.setInt(7, stats.getFouls());
				saveStats.setDouble(8, stats.getFieldGoalsPercentage());
				saveStats.setDouble(9, stats.getThreePointsPercentage());
				saveStats.setDouble(10, stats.getFreeThrowsPercentage());
				saveStats.setInt(11, stats.getId());
				saveStats1.setString(1, stats.getDate());
				saveStats1.setInt(2, stats.getId());
				saveStats2.setDouble(1, stats.getMinutes());
				saveStats2.setInt(2, stats.getId());
				
				saveStats.executeUpdate();	
				saveStats1.executeUpdate();	
				saveStats2.executeUpdate();	
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				if (saveStats != null) saveStats.close();
			}
		}
	}

	@SuppressWarnings("finally")
	@Override
	public PlayerStatisticsAGame getPlayerStatisticsAGame(int statsId) throws SQLException {
		PreparedStatement getStats = conn.prepareStatement("select p.name, g.gameDate, pl.minutes, psa.* "
				+ "from Player p, PlayerStatisticsAGame psa, play pl, Game g "
				+ "where p.id = pl.isPlayedBy and pl.plays = g.id "
				+ "and psa.partOfPlayer = pl.isPlayedBy and psa.partOfGame = pl.plays and psa.id = ?");
		PlayerStatisticsAGame stats = null;
		try {
			getStats.setInt(1, statsId);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String name = rs.getString(1);
				String date = rs.getString(2);
				double minutes = rs.getDouble(3);
				int id = rs.getInt(4);
				int pts = rs.getInt(5);
				int trb = rs.getInt(6);
				int ast = rs.getInt(7);
				int blk = rs.getInt(8);
				int stl = rs.getInt(9);
				int tov = rs.getInt(10);
				int ft = rs.getInt(11);				
				double fgp = rs.getDouble(12);
				double tp = rs.getDouble(13);
				double ftp = rs.getDouble(14);
				int playerId = rs.getInt(15);	
				stats = new PlayerStatisticsAGame(id, name, date, pts, trb, ast, 
						blk, stl, tov, ft, fgp, tp, ftp, minutes, playerId);
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getStats != null) getStats.close();
			return stats;
		}
	}

	@SuppressWarnings("finally")
	@Override
	public void deletePlayerStatsAGame(int id) throws SQLException {
		PreparedStatement deleteStats = conn.prepareStatement("delete from PlayerStatisticsAGame where id = ?");
		try {
			deleteStats.setInt(1, id);
			deleteStats.executeUpdate();		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return;
		}
	}

	@SuppressWarnings("finally")
	@Override
	public int getPlayerId(PlayerStatisticsAGame stats) throws SQLException {
		PreparedStatement getId = conn.prepareStatement("select distinct p.id "
				+ "from Player p "
				+ "where p.name = ?");
		int id = 0;
		try {	
			getId.setString(1, stats.getName());
			ResultSet rs = getId.executeQuery();		
			while (rs.next()) id = rs.getInt(1);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getId != null) getId.close();
			return id;
		}
	}
		
}

