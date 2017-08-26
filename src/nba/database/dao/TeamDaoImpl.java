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

import nba.database.entity.Team;
import nba.database.entity.TeamSeasonStatistics;
import nba.database.entity.TeamStatisticsAGame;

@Repository
public class TeamDaoImpl implements TeamDao {

	public Connection conn;
	
	public TeamDaoImpl() {
		this.conn = DBConnection.conn;
	}
	
	@SuppressWarnings("finally")
	@Override
	public List<Team> getTeams() throws SQLException {
		List<Team> teamList = new ArrayList<Team>();
		PreparedStatement getTeams = conn.prepareStatement("select t.*, c.name from team t, coach c where c.coaching = t.id");
		try {	
			ResultSet rs = getTeams.executeQuery();		
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String city = rs.getString(3);
				String from = rs.getString(4);
				String to = rs.getString(5);
				int championships = rs.getInt(6);
				int wins = rs.getInt(7);
				int loses = rs.getInt(8);
				String coachName = rs.getString(9);
				teamList.add(new Team(id, name, city, from, to, championships, wins, loses, coachName));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getTeams != null) getTeams.close();
			return teamList;
		}
	}

	@SuppressWarnings("finally")
	@Override
	public List<TeamSeasonStatistics> getSeasonStats(int theId) throws SQLException {
		List<TeamSeasonStatistics> teamSeasons = new ArrayList<TeamSeasonStatistics>();
		PreparedStatement getSeasons = conn.prepareStatement("select t.name, s.name, ts.* from team t, "
				+ "TeamSeasonStatistics ts, Season s where ts.partOf = t.id and ts.season = s.id and t.id = ?");
		try {
			getSeasons.setInt(1, theId);
			ResultSet rs = getSeasons.executeQuery();		
			while (rs.next()) {
				String team = rs.getString(1);
				String season = rs.getString(2);
				int id = rs.getInt(3);
				int wins = rs.getInt(4);
				int loses = rs.getInt(5);
				double pointsPerGame = rs.getDouble(6);
				double reboundsPerGame = rs.getDouble(7);
				double assistsPerGame = rs.getDouble(8);
				double blocksPerGame = rs.getDouble(9);
				double stealsPerGame = rs.getDouble(10);
				double turnoversPerGame = rs.getDouble(11);
				double foulsPerGame = rs.getDouble(12);
				double fieldGoalsPercentage = rs.getDouble(13);
				double threePointsPercentage = rs.getDouble(14);
				double freeThrowsPercentage = rs.getDouble(15);
				
				teamSeasons.add(new TeamSeasonStatistics(team, season, id, wins, loses, 
						pointsPerGame, reboundsPerGame, assistsPerGame, blocksPerGame, 
						stealsPerGame, turnoversPerGame, foulsPerGame, fieldGoalsPercentage,
						threePointsPercentage, freeThrowsPercentage));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if (getSeasons != null) getSeasons.close();
			return teamSeasons;
		}
	}

	@SuppressWarnings("finally")
	@Override
	public List<TeamStatisticsAGame> getTeamStatsAGame(String teamName) throws SQLException {
		List<TeamStatisticsAGame> stats = new ArrayList<>();
		PreparedStatement getStats = conn.prepareStatement("select t.name, g.gameDate, p.win, p.home, ts.* "
				+ "from Team t, Game g, Participation p, TeamStatisticsAGame ts "
				+ "where t.id = p.isParticipatedBy and p.participates = g.id and t.name = ? "
				+ "and ts.partOfTeam = p.isParticipatedBy and ts.partOfGame = p.participates "
				+ "order by g.gameDate");
		try {
			getStats.setString(1, teamName);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String name = rs.getString(1);
				String date = rs.getString(2);
				boolean win = rs.getBoolean(3);
				boolean home = rs.getBoolean(4);
				int id = rs.getInt(5);
				int pts = rs.getInt(6);
				int trb = rs.getInt(7);
				int ast = rs.getInt(8);
				int blk = rs.getInt(9);
				int stl = rs.getInt(10);
				int tov = rs.getInt(11);
				int ft = rs.getInt(12);				
				double fgp = rs.getDouble(13);
				double tp = rs.getDouble(14);
				double ftp = rs.getDouble(15);
				
				stats.add(new TeamStatisticsAGame(id, name, date, win, home, pts, trb, ast, 
						blk, stl, tov, ft, fgp, tp, ftp));
			}
			Collections.sort(stats, new Comparator<TeamStatisticsAGame>() {
				@Override
				public int compare(TeamStatisticsAGame s1, TeamStatisticsAGame s2) {
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
	public void saveTeamStats(TeamStatisticsAGame stats) throws SQLException {
	
		if (stats.getId() == 0) {
			PreparedStatement saveStats = conn.prepareStatement("insert into Game(gameDate) values (?) ");
			PreparedStatement saveStats2 = conn.prepareStatement("insert into Participation values (?, ?, ?, "
					+ "(select distinct last_insert_id() from Game), (select t.id from Team t where t.name = ?))");
			PreparedStatement saveStats3 = conn.prepareStatement("insert into TeamStatisticsAGame(points, rebounds, assists, blocks, steals, "
					+ "turnover, fouls, fieldGoalsPercentage, threePointsPercentage, freeThrowsPercentage, "
					+ "partOfTeam, partOfGame) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "(select t.id from Team t where t.name = ?), "
					+ "(select distinct last_insert_id() from Game))");
				try {
					saveStats.setString(1, stats.getDate());
					saveStats2.setBoolean(1, stats.isHome());
					saveStats2.setBoolean(2, stats.isWin());
					saveStats2.setInt(3, stats.getPoints());
					saveStats2.setString(4, stats.getName());;
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
			PreparedStatement saveStats = conn.prepareStatement("update TeamStatisticsAGame "
				+ "set points = ?, rebounds = ?, assists = ?, blocks = ?, steals = ?, turnover = ?, "
				+ "fouls = ?, fieldGoalsPercentage = ?, threePointsPercentage = ?, "
				+ "freeThrowsPercentage = ? where id = ?");
			PreparedStatement saveStats1 = conn.prepareStatement("update Game set gameDate = ? "
					+ "where id = (select t.partOfGame from TeamStatisticsAGame t where t.id = ?)");
			PreparedStatement saveStats2 = conn.prepareStatement("update Participation set home = ?, win = ? "
					+ "where participates = (select t.partOfGame f from TeamStatisticsAGame t where t.id = ?) ");
			try {
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
				saveStats2.setBoolean(1, stats.isHome());
				saveStats2.setBoolean(2, stats.isWin());
				saveStats2.setInt(3, stats.getId());
				saveStats.executeUpdate();
				saveStats1.executeUpdate();
				saveStats2.executeUpdate();
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				if (saveStats != null) saveStats.close();
				System.out.println(stats.getPoints());

			}
		}
	}

	@SuppressWarnings("finally")
	@Override
	public TeamStatisticsAGame getTeamStatisticsAGame(int statsId) throws SQLException {
		PreparedStatement getStats = conn.prepareStatement("select t.name, g.gameDate, p.win, p.home, ts.* "
				+ "from Team t, Game g, Participation p, TeamStatisticsAGame ts "
				+ "where t.id = p.isParticipatedBy and p.participates = g.id and ts.id = ? "
				+ "and ts.partOfTeam = p.isParticipatedBy and ts.partOfGame = p.participates");
		TeamStatisticsAGame stats = null;
		try {
			getStats.setInt(1, statsId);
			ResultSet rs = getStats.executeQuery();		
			while (rs.next()) {
				String name = rs.getString(1);
				String date = rs.getString(2);
				boolean win = rs.getBoolean(3);
				boolean home = rs.getBoolean(4);
				int id = rs.getInt(5);
				int pts = rs.getInt(6);
				int trb = rs.getInt(7);
				int ast = rs.getInt(8);
				int blk = rs.getInt(9);
				int stl = rs.getInt(10);
				int tov = rs.getInt(11);
				int ft = rs.getInt(12);				
				double fgp = rs.getDouble(13);
				double tp = rs.getDouble(14);
				double ftp = rs.getDouble(15);
				
				stats = new TeamStatisticsAGame(id, name, date, win, home, pts, trb, ast, 
						blk, stl, tov, ft, fgp, tp, ftp);
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
	public void deleteTeamStatsAGame(int id) throws SQLException {
		PreparedStatement deleteStats = conn.prepareStatement("delete from TeamStatisticsAGame where id = ?");
		try {
			deleteStats.setInt(1, id);
			deleteStats.executeUpdate();		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			return;
		}
	}

}
