package nba.database.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import nba.database.dao.TeamDao;
import nba.database.entity.Team;
import nba.database.entity.TeamSeasonStatistics;
import nba.database.entity.TeamStatisticsAGame;

@Service
public class TeamServiceImpl implements TeamService {

	@Autowired
	private TeamDao teamDao;
	@Override
	public List<Team> getTeams() throws Exception {

		return teamDao.getTeams();
	}
	@Override
	public List<TeamSeasonStatistics> getSeasonStats(int theId) throws SQLException {

		return teamDao.getSeasonStats(theId);
	}
	@Override
	public List<TeamStatisticsAGame> getTeamStatsAGame(String teamName) throws SQLException {
		
		return teamDao.getTeamStatsAGame(teamName);
	}
	@Override
	public void saveTeamStats(TeamStatisticsAGame stats) throws SQLException {
		
		teamDao.saveTeamStats(stats);
	}
	@Override
	public TeamStatisticsAGame getTeamStatisticsAGame(int statsId) throws SQLException {
		
		return teamDao.getTeamStatisticsAGame(statsId);
	}
	@Override
	public void deleteTeamStatsAGame(int id) throws SQLException {
		teamDao.deleteTeamStatsAGame(id);
	}
}
