package nba.database.entity;

import java.text.NumberFormat;
import java.util.Locale;

public class Player {

	private int id;
	private String team;
	private String name;
	private String bornDate;
	private double height;
	private double weight;
	private boolean hallOfFame;
	private String nationality;
	private String position;
	private String season;
	private String salary;
	private int years;
	private String clause;
	
	
	public Player(int id2, String team, String name, String bornDate, double height, double weight, boolean hallOfFame,
			String nationality, String position, String season, int salary, int years, String clause) {
		setId(id2);
		setTeam(team);
		setName(name);
		setBornDate(bornDate);
		setHeight(height);
		setWeight(weight);
		setHallOfFame(hallOfFame);
		setNationality(nationality);
		setPosition(position);
		setSeason(season);
		setSalary(salary);
		setYears(years);
		setClause(clause);
	}
	
	public String getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = NumberFormat.getNumberInstance(Locale.US).format(salary);
	}

	public int getYears() {
		return years;
	}

	public void setYears(int years) {
		this.years = years;
	}

	public String getClause() {
		return clause;
	}

	public void setClause(String clause) {
		this.clause = clause;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getBornDate() {
		return bornDate;
	}
	public String getNationality() {
		return nationality;
	}
	public String getPosition() {
		return position;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public void setBornDate(String bornDate) {
		this.bornDate = bornDate;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getId() {
		return id;
	}
	public void setId(int id2) {
		this.id = id2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = roundTwoDecimals.roundTwoDecimals(height);
				
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = roundTwoDecimals.roundTwoDecimals(weight);
	}
	public boolean isHallOfFame() {
		return hallOfFame;
	}
	public void setHallOfFame(boolean hallOfFame) {
		this.hallOfFame = hallOfFame;
	}
	
	
	
}
