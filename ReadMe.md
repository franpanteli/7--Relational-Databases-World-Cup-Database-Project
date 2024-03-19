# Relational-Databases-World-Cup-Database-Project
## Relational Databases Independent Learning
I independently completed [my seventh project](https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database) in freeCodeCamp's [Relational Databases course](https://www.freecodecamp.org/learn/relational-database/) to improve my shell scripting and SQL skills. This curriculum consisted of 14 guided projects, to be completed in a Gitpod environment. My notes outlining the names (et al) of these guided projects are [here](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/0%20relational-databases-course-overview.txt). This repository is for the seventh of these projects I completed as part of this.

## Project Workflow 
### Constructing & Querying an SQL Database of World Cup Games
This project produced two Bash scripts, which constructed and queried an SQL database of World Cup games. Notes on the full task brief for this are [here](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/1%20project-task-notes.txt). To complete this task, the project boilerplate files were first cloned in a Gitpod environment. World Cup game data was provided in the project [games.csv](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/games.csv) file as part of this. 

### Constructing an SQL Database by Writing the insert_data.sh Bash Script
The [insert_data.sh](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/insert_data.sh) Bash script was first written, to convert the project csv file into an SQL database (worldcup.sql). This SQL database followed specific requirements to pass the project. [These requirements were exported from the Gitpod page as a PDF](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/Task%20Challenge%20Notes.pdf) and annotated in-depth with problem solving thought processes. The Bash script devised to construct this SQL database from the project csv file was executed by using `./queries.sh`. This produced the project [worldcup.sql](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/worldcup.sql) file. 

### Querying an SQL Database by Writing the queries.sh Bash Script
A second Bash script, [queries.sh](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/queries.sh), was produced to query this project database. This used complex SQL commands to query the worldcup.sql file. The data that this Bash script was required to return to pass the project was stored by its [expected_output.txt](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/expected_output.txt) file. The SQL which produced these outputs was first generated in a psql prompt in the project Gitpod environment. Once the correct SQL statement was obtained, this was added to the project queries.sh file. These queries were tested by running this in a Bash prompt, with `./queries.sh`. Project checks were then run in the CodeRoad Virtual machine. More information about the data returned by this shell script is provided by its [comments](https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project/blob/main/queries.sh). 

### Project Testing & Submission 
A database dump and file exports were executed after successfully passing required tests. These files were then committed to this repository and submitted as part of the course. 

## To Clone This Repository
```
git clone https://github.com/franpanteli/Relational-Databases-World-Cup-Database-Project.git
```
