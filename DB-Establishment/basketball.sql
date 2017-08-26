CREATE DATABASE basketball;
USE basketball;


create table Season (
	id int primary key auto_increment,
    totalNumOfGame int default 1230,
    name varchar(200)
);

create table Game (
	id int primary key auto_increment,
    gameDate varchar(200) 
);

create table Team (
	id int primary key auto_increment,
    name varchar(200),
	arena varchar(200),
	fromDate varchar(200) default '1947-07-11',
	toDate varchar(200),
	championship int,
	win int,
	lose int
);

create table Participation (
	home boolean,
    win boolean,
    score int,
    participates int,
    foreign key(participates)
		references Game(id)
			on update cascade
            on delete cascade,
	isParticipatedBy int,
    foreign key(isParticipatedBy)
		references Team(id)
			on update cascade
            on delete cascade,
	primary key(participates, isParticipatedBy)
);


create table TeamStatistics (
	id int primary key auto_increment
);
create table TeamSeasonStatistics (
	id int primary key auto_increment,
	wins int,
	loses int,
	pointsPerGame double,
	reboundsPerGame double,
	assistsPerGame double, 
	blocksPerGame double,
	stealsPerGame double,
	turnoverPerGame double,
	foulsPerGame double,
	fieldGoalsPercentage double,
	threePointsPercentage double,
	freeThrowsPercentage double,
    season int,
    foreign key(season)
		references Season(id)
			on update cascade
            on delete no action,
    foreign key(id)
		references TeamStatistics(id)
			on update cascade
            on delete cascade,
	partOf int,
    foreign key(partOf)
		references Team(id)
			on update cascade
			on delete cascade
);
create table TeamStatisticsAGame (
	id int primary key auto_increment,
    points int,
	rebounds int,
	assists int,
	blocks int,
	steals int,
	turnover int,
	fouls int,
	fieldGoalsPercentage double,
	threePointsPercentage double,
	freeThrowsPercentage double,
    foreign key(id)
		references TeamStatistics(id)
			on update cascade
			on delete cascade,
	partOfTeam int,
    foreign key(partOfTeam)
		references Participation(isParticipatedBy)
			on update cascade
            on delete cascade,
	partOfGame int,
	foreign key(partOfGame)
		references Participation(participates)
			on update cascade
            on delete cascade
);
create table Coach (
	id int primary key auto_increment,
    name varchar(200),
    bornDate varchar(200),
    height double,
    weight double,
    hallOfFame boolean,
    coaching int,
    foreign key(coaching)
		references Team(id)
			on update cascade
            on delete no action
    
);
create table CoachNationality (
	coach int,
    nationality varchar(200),
	foreign key(coach)
		references Coach(id)
			on update cascade
			on delete cascade,
	primary key(coach, nationality)
);


create table PlayerStatistics (
	id int primary key auto_increment
);
create table Player (
	id int primary key auto_increment,
    name varchar(200),
	bornDate varchar(200),
	height double,
	weight double,
	hallOfFame boolean
);
create table PlayerPosition (
	player int,
    position varchar(200),
    primary key(player, position),
    foreign key(player)
		references Player(id)
			on update cascade
            on delete cascade
);
create table PlayerNationality (
	player int,
    nationality varchar(200),
    foreign key(player)
		references Player(id)
			on update cascade
            on delete cascade,
	primary key(player, nationality)
);

create table Play (
	minutes double,
    starter boolean,
    plays int,
    foreign key(plays)
		references Game(id)
			on update cascade
            on delete cascade,
	isPlayedBy int,
    foreign key(isPlayedBy)
		references Player(id)
			on update cascade
            on delete cascade,
	primary key(plays, isPlayedBy)
);

create table PlayerSeasonStatistics (
	id int primary key auto_increment,
	minutesPerGame double,
	pointsPerGame double,
	reboundsPerGame double,
	assistsPerGame double,
	blocksPerGame double,
	stealsPerGame double,
	turnoverPerGame double,
	foulsPerGame double, 
	fieldGoalsPercentage double,
	threePointsPercentage double,
	freeThrowsPercentage double,
	efficiencyRating double,
	winShares double,
	defensiveWinShares double,
	usageRate double,
	foreign key(id)
		references PlayerStatistics(id)
			on update cascade
            on delete cascade,
	season int,
    foreign key(season)
		references Season(id)
			on update cascade
            on delete no action,
    partOf int,
    foreign key(partOf)
		references Player(id)
			on update cascade
			on delete cascade
);

create table PlayerCareerStatistics (
	id int primary key auto_increment,
	minutesPerGame double,
	pointsPerGame double,
	reboundsPerGame double, 
	assistsPerGame double,
	blocksPerGame double,
	stealsTota int,
	stealsPerGame double, 
	turnoverPerGame double,
	foulsPerGame double, 
	fieldGoalsPercentage double,
	threePointsPercentage double,
	freeThrowsPercentage double,
	efficiencyRating double,
	winShares double,
	defensiveWinShares double,
	usageRate double,
	foreign key(id)
		references PlayerStatistics(id)
			on update cascade
            on delete cascade,
    partOf int,
    foreign key(partOf)
		references Player(id)
			on update cascade
			on delete cascade
);
create table PlayerStatisticsAGame (
	id int primary key auto_increment,
	points int,
	rebounds int,
	assists int,
	blocks int,
	steals int,
	turnover int,
	fouls int,
	fieldGoalsPercentage double,
	threePointsPercentage double,
	freeThrowsPercentage double,
	foreign key(id)
		references PlayerStatistics(id)
			on update cascade
            on delete cascade,
	partOfPlayer int,
    foreign key(partOfPlayer)
		references Play(isPlayedBy)
			on update cascade
            on delete cascade,
	partOfGame int,
	foreign key(partOfGame)
		references Play(plays)
			on update cascade
            on delete cascade
);

create table Contract (
	salary int,
    years int,
    clause enum ('No-trade Clause', 'Amnesty Clause', 'Rose Clause', 'Team Option', 'Player Option'),
    employs int,
    foreign key(employs)
		references Player(id)
			on update cascade
            on delete cascade,
	isEmployedBy int,
    foreign key(isEmployedBy)
		references Team(id)
			on update cascade
            on delete cascade,
	primary key(employs, isEmployedBy)
);
create table Draft (
	year int,
    picks int,
    drafts int,
    foreign key(drafts)
		references Player(id)
			on update cascade
            on delete cascade,
	isDraftedBy int,
    foreign key(isDraftedBy)
		references Team(id)
			on update cascade
            on delete cascade,
	primary key(drafts, isDraftedBy)
);