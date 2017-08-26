# Description
In this project, a practical Relational Database Management System (RDBMS) was designed and implemented for the statistics and records of NBA players. We first designed the relational model with UML diagram, then encoded it as SQL schemes. With JDBC API, we connected the database system with our user program. To carry out the review and modification functionality, a front-end GUI was developed based on HTML/CSS/JSP. With Spring/Spring MVC frameworks, each front-end operation was mapped into a controller-layer method, which connected with database by calling service-layer and DAO-layer methods. Several SQL queries were developed for Select, Insert, Update and Delete of game records. All the programming works were based on MySQL and Java EE web service.
# statistics
*	Player Basic Information (name, team, birthday, country, etc.)
*	Team Basic Information (name, city, wins, founded time, etc.)
*	Player Game Records (points, rebounds, etc.)
*	Team Game Records (points, rebounds, etc.)
*	Player Season Records (average points, average rebounds, etc.)
*	Player Career Records (average points, average rebounds, etc.)
*	Team Season Records (wins, championships, etc.)
# Use Cases
1. Query Teams [queryTeams]  
    Description: User queries the system to obtain information of relevant teams.    
    Step-by-step:
    - [#User] - A user requests information of teams that satisfy some specified criteria.
    - [#NBPDMS] - The system returns the information about all relevant teams.

2. Query Team Season Statistics [queryTeamSeason]  
    Description: User queries the system to obtain all season statistics of a team, including Wins, Loses, FG%, etc.  
    Step-by-step:
    - [#User] - The user submits the name of a team.
    - [#NBPDMS] - The system returns a list of season statistics of this team.
 
3. Query Team Statistics A Game [queryTeamAGame]  
    Description: User queries the system to obtain all game statistics of a team, including Home, Win, FG%, etc.  
    Step-by-step: 
    - [#User] - The user submits the name of a team.
    - [#NBPDMS] - The system returns the list of game statistics of this team.

4. Insert Team Statistics A Game [insertTeamAGame]  
  Description: User gives the system a new team record of a game, inserts it into the database.  
  Step-by-step: 
    - [#User] - The user provides new game record of a team.
    - [#NBPDMS] - The system inserts this record into database.

5. Update Team Statistics A Game [updateTeamAGame]  
    Description: User edits the team record of a game; system reflects corresponding updates in the database.  
    Step-by-step: 
    - [#User] - The user provides new values of some columns of a game record of a team.
    - [#NBPDMS] - The system updates corresponding records.

6. Delete Team Statistics A Game [deleteTeamAGame]  
    Description: User deletes the team record of a game; system reflects corresponding affects in the database.  
    Step-by-step: 
    - [#User] - The user asks to delete a game record of a team.
    - [#NBPDMS] - The system reflects corresponding changes.

7. Query Players [queryPlayers]  
    Description: User queries the system to obtain information of relevant players.  
    Step-by-step:
    - [#User] - A user requests information of players that play for a specific team at a specific season.
    - [#NBPDMS] - The system returns all the information about all relevant players.

8. Query Player Season/Career Statistics [queryPlayerSeasonCareer]  
    Description: User queries the system to obtain all season and career statistics of a player, including average Minutes Play, Win Share, FG%, etc.
    Step-by-step:
    - [#User] - The user submits the name of a player.
    - [#NBPDMS] - The system returns a list of season and career statistics of this player.

9. Query Player Statistics A Game [queryPlayerAGame]  
    Description: User queries the system to obtain all game statistics of a player, including Minutes Play, FG%, points, etc.
    Step-by-step: 
    - [#User] - The user submits the name of a player.
    - [#NBPDMS] - The system returns the list of game statistics of this player.

10. Insert Player Statistics A Game [insertPlayerAGame]  
    Description: User gives the system a new player record of a game, inserts it into the database.  
    Step-by-step: 
    - [#User] - The user provides new game record of a player.
    - [#NBPDMS] - The system inserts this record into database.

11. Update Player Statistics A Game [updatePlayerAGame]  
    Description: User edits the player record of a game; system reflects corresponding updates in the database.  
    Step-by-step: 
    - [#User] - The user provides new values of some columns of a game record of a player.
    - [#NBPDMS] - The system updates corresponding records.

12. Delete Player Statistics A Game [deletePlayerAGame]  
    Description: User deletes the player record of a game; system reflects corresponding affects in the database.  
    Step-by-step: 
    - [#User] - The user asks to delete a game record of a player.
    - [#NBPDMS] - The system reflects corresponding changes.

