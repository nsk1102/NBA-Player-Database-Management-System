package nba.database.entity;

public class TeamSeasonStatistics {

	private String name;
	private String season;
	private int id;
	private int wins;
	private int loses;
	private double pointsPerGame;
	private double reboundsPerGame;
	private double assistsPerGame;
	private double blocksPerGame;
	private double stealsPerGame;
	private double turnoversPerGame;
	private double foulsPerGame;
	private double fieldGoalsPercentage;
	private double threePointsPercentage;
	private double freeThrowsPercentage;

	
	public TeamSeasonStatistics(String name, String season, int id, int wins, int loses, double pointsPerGame,
			double reboundsPerGame, double assistsPerGame, double blocksPerGame, double stealsPerGame,
			double turnoversPerGame, double foulsPerGame, double fieldGoalsPercentage, double threePointsPercentage,
			double freeThrowsPercentage) {
		setName(name);
		setSeason(season);
		setId(id);
		setWins(wins);
		setLoses(loses);
		setPointsPerGame(pointsPerGame);
		setReboundsPerGame(reboundsPerGame);
		setAssistsPerGame(assistsPerGame);
		setBlocksPerGame(blocksPerGame);
		setStealsPerGame(stealsPerGame);
		setTurnoversPerGame(turnoversPerGame);
		setFoulsPerGame(foulsPerGame);
		setFieldGoalsPercentage(fieldGoalsPercentage);
		setThreePointsPercentage(threePointsPercentage);
		setFreeThrowsPercentage(freeThrowsPercentage);
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
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public int getWins() {
		return wins;
	}
	public void setWins(int wins) {
		this.wins = wins;
	}
	public int getLoses() {
		return loses;
	}
	public void setLoses(int loses) {
		this.loses = loses;
	}
	public double getPointsPerGame() {
		return pointsPerGame;
	}
	public void setPointsPerGame(double pointsPerGame) {
		this.pointsPerGame = roundTwoDecimals.roundTwoDecimals(pointsPerGame);
	}
	public double getReboundsPerGame() {
		return reboundsPerGame;
	}
	public void setReboundsPerGame(double reboundsPerGame) {
		this.reboundsPerGame = roundTwoDecimals.roundTwoDecimals(reboundsPerGame);
	}
	public double getAssistsPerGame() {
		return assistsPerGame;
	}
	public void setAssistsPerGame(double assistsPerGame) {
		this.assistsPerGame = roundTwoDecimals.roundTwoDecimals(assistsPerGame);
	}
	public double getBlocksPerGame() {
		return blocksPerGame;
	}
	public void setBlocksPerGame(double blocksPerGame) {
		this.blocksPerGame = roundTwoDecimals.roundTwoDecimals(blocksPerGame);
	}
	public double getStealsPerGame() {
		return stealsPerGame;
	}
	public void setStealsPerGame(double stealsPerGame) {
		this.stealsPerGame = roundTwoDecimals.roundTwoDecimals(stealsPerGame);
	}
	public double getTurnoversPerGame() {
		return turnoversPerGame;
	}
	public void setTurnoversPerGame(double turnoversPerGame) {
		this.turnoversPerGame = roundTwoDecimals.roundTwoDecimals(turnoversPerGame);
	}
	public double getFoulsPerGame() {
		return foulsPerGame;
	}
	public void setFoulsPerGame(double foulsPerGame) {
		this.foulsPerGame = roundTwoDecimals.roundTwoDecimals(foulsPerGame);
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
