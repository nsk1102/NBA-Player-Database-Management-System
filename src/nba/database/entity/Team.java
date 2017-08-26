package nba.database.entity;

public class Team {

	private int id;
	private String name;
	private String city;
	private String from;
	private String to;
	private int championships;
	private int wins;
	private int loses;
	private String coachName;
	
	public Team(int id, String name, String city, String from, String to, int championships, int wins, int loses, String coachName) {
		setId(id);
		setName(name);
		setCity(city);
		setFrom(from);
		setTo(to);
		setChampionships(championships);
		setWins(wins);
		setLoses(loses);
		setCoachName(coachName);
	}
	
	public Team() {
		// TODO Auto-generated constructor stub
	}

	public String getCoachName() {
		return coachName;
	}

	public void setCoachName(String coachName) {
		this.coachName = coachName;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}

	public int getChampionships() {
		return championships;
	}
	public void setChampionships(int championships) {
		this.championships = championships;
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
}
