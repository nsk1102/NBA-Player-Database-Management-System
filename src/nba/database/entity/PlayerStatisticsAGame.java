package nba.database.entity;

public class PlayerStatisticsAGame {
	
	private int id;
	private String name;
	private String date;
	private int points;
	private int rebounds;
	private int assists;
	private int blocks;
	private int steals;
	private int turnovers;
	private int fouls;
	private double fieldGoalsPercentage;
	private double threePointsPercentage;
	private double freeThrowsPercentage;
	private double minutes;
	private int playerId;
	
	public PlayerStatisticsAGame(int id, String name, String date, int pts, int trb, int ast, int blk, int stl, int tov,
			int pf, double fg, double tp, double ft, double minutes, int playerId) {
		setId(id);
		setName(name);
		setDate(date);
		setPoints(pts);
		setRebounds(trb);
		setAssists(ast);
		setBlocks(blk);
		setSteals(stl);
		setTurnovers(tov);
		setFouls(pf);
		setFieldGoalsPercentage(fg);
		setThreePointsPercentage(tp);
		setFreeThrowsPercentage(ft);
		setMinutes(minutes);
		setPlayerId(playerId);
	}
	
	
	public int getPlayerId() {
		return playerId;
	}


	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}


	public PlayerStatisticsAGame() {
		// TODO Auto-generated constructor stub
	}


	public double getMinutes() {
		return minutes;
	}


	public void setMinutes(double minutes) {
		this.minutes = minutes;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getRebounds() {
		return rebounds;
	}
	public void setRebounds(int rebounds) {
		this.rebounds = rebounds;
	}
	public int getAssists() {
		return assists;
	}
	public void setAssists(int assists) {
		this.assists = assists;
	}
	public int getBlocks() {
		return blocks;
	}
	public void setBlocks(int blocks) {
		this.blocks = blocks;
	}
	public int getSteals() {
		return steals;
	}
	public void setSteals(int steals) {
		this.steals = steals;
	}
	public int getTurnovers() {
		return turnovers;
	}
	public void setTurnovers(int turnovers) {
		this.turnovers = turnovers;
	}
	public int getFouls() {
		return fouls;
	}
	public void setFouls(int fouls) {
		this.fouls = fouls;
	}
	public double getFieldGoalsPercentage() {
		return fieldGoalsPercentage;
	}
	public void setFieldGoalsPercentage(double fieldGoalsPercentage) {
		this.fieldGoalsPercentage = roundTwoDecimals.roundTwoDecimals(fieldGoalsPercentage);
	}
	public double getThreePointsPercentage() {
		return threePointsPercentage;
	}
	public void setThreePointsPercentage(double threePointsPercentage) {
		this.threePointsPercentage = roundTwoDecimals.roundTwoDecimals(threePointsPercentage);
	}
	public double getFreeThrowsPercentage() {
		return freeThrowsPercentage;
	}
	public void setFreeThrowsPercentage(double freeThrowsPercentage) {
		this.freeThrowsPercentage = roundTwoDecimals.roundTwoDecimals(freeThrowsPercentage);
	}
	
	
}
