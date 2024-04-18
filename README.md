 # ⚽ Football ⚽
-- Final Paper from the Database Fundamentals Course --

### Table of Contents

[1. Relational Database](#relational-database)

[2. One-to-One and Many-to-Many Relationships](#one-to-one-and-many-to-many-relationships)

[3. SQL Subqueries and Sets](#sql-subqueries-and-sets)

[4. Stored Procedures](#stored-procedures)

[5. Views with the Same Logical Load](#views-with-the-same-logical-load)


## Introduction

Welcome to the repository for the final paper of the Database Fundamentals course. In this paper, we delve into various aspects of database management, focusing particularly on relational databases, relationships, SQL subqueries, sets, stored procedures, and views.

 ## Content Overview
 ```

1. **Relational Database**: This section explores the foundational concepts of relational databases, their structure, and operations.

2. **One-to-One and Many-to-Many Relationships**: Here, we discuss the different types of relationships that can exist between entities in a relational database, with a focus on one-to-one and many-to-many relationships.

3. **SQL Subqueries and Sets**: This section delves into the use of subqueries and sets in SQL, demonstrating their importance in complex query construction and data manipulation.

4. **Stored Procedures**: We examine the concept of stored procedures, their advantages, and how they are used to execute frequently performed operations within the database.
   
```
<a name="relational-database"></a>
### Practical Assignment 1:
![progress](http://www.yarntomato.com/percentbarmaker/button.php?barPosition=60&leftFill=%23FF0000 "progress")

 Design a relational database for a football league system. The database should store information about teams, players, matches, goals, and standings. 
 A football league system is a hierarchy of leagues that compete in the same sport. Each league has a number of teams that play against each other in a round-robin format. The teams are ranked by points, goal difference, and goals scored. The top teams of each league may be promoted to a higher league, while the bottom teams may be relegated to a lower league. 
>Bonus: Join


<a name="one-to-one-and-many-to-many-relationships"></a> 
### Practical Assignment 2: 
![progress](http://www.yarntomato.com/percentbarmaker/button.php?barPosition=20&leftFill=%23FF0000 "progress")

Design a relational database for a football league system. The database should store information about teams, players, matches, goals, and standings. 
A football league system is a hierarchy of leagues that compete in the same sport. Each league has a number of teams that play against each other in a round-robin format. The teams are ranked by points, goal difference, and goals scored. The top teams of each league may be promoted to a higher league, while the bottom teams may be relegated to a lower league
>Bonus: Indexes

<a name="sql-subqueries-and-sets"></a>
### Practical Assignment 3: 
![progress](http://www.yarntomato.com/percentbarmaker/button.php?barPosition=50&leftFill=%23FF0000 "progress")

To get more practice we need to write one SELECT query, one UPDATE query, and one DELETE query for the following list of clauses:

= with non-correlated subqueries result
IN with non-correlated subqueries result
NOT IN with non-correlated subqueries result
EXISTS with non-correlated subqueries result
NOT EXISTS with non-correlated subqueries result
= with correlated subqueries result
IN with correlated subqueries result
NOT IN with correlated subqueries result
EXISTS with correlated subqueries result
NOT EXISTS with correlated subqueries result
Also, we need to write four SELECT queries that include the clause UNION / UNION ALL / INTERSECT / EXCEPT (could be separate queries or include multiple set clauses).

ACC:

The queries are added as a separate file pa3.sql in the Git repo
Every query includes a human-readable comment on what it is about
PR is prepared and the link is sent to your teacher
>Bonus: Write a simple .Net (or Python) application that communicates with your MySQL DB executing simple CRUD operations (four queries). Screenshots with code and execution results should be added to the Git repo in the new folder pa3_bonus.

<a name="stored-procedures"></a>
### Practical Assignment 4: 
![progress](http://www.yarntomato.com/percentbarmaker/button.php?barPosition=70&leftFill=%23FF0000 "progress")

1. Prepare your own stored procedure which demonstrates how to work with all kinds of parameters: IN/OUT/INOUT. It is allowed to write multiple stored procedures with different kinds (for instance one is for IN/OUT and another one is for INOUT) if you find this way easier.

2. Add a transactional mechanism that contains conditional logic: commit or rollback changes according to condition. SQL scripts for items 1-2 should be placed in the pa4/procedures.sql file in your git repo.

3. Demonstrate your knowledge of how to call procedures; demonstrate different results of your transaction completion depending on the logic. Procedure invocations should be placed into file pa4/executions.sql, scripts should be supported by readable comments of what is your intent and what is an expected result (in English).
>Bonus: Demonstrate your knowledge of how to work with transactions using the application layer. Your application should include several operations initiated on the application layer and be executed in the scope of the same transaction.

<a name="views-with-the-same-logical-load"></a>
### Practical Assignment 5: 
![progress](http://www.yarntomato.com/percentbarmaker/button.php?barPosition=100&leftFill=%23FF0000 "progress")

Create two different views with the same logical load: select standing table with latest data for tournament X and Y.

For the case when your schema does not support several tournaments at the same time (there are some people who followed the different data structure than described there ) then you can any alternative stats table, for instance stats of best strikers with comma-separated match-day like this:

 

player name | team name | total goals | comma separated match days with number of goals

For instance:

Oleksandr Shovkovskyi | Dynamo Kyiv | 21 | 1 (2), 2(1), 5(3), 7(1)...
>Bonus: To increase and differentiate your knowledge of Git you need to register your account in GitLab, create the same repository, add it as one yet remote to your local repository, push data before PA5, and then push changes for PA5, and create a merge request. You should be able to demonstrate your knowledge of how to work with different remotes for the same repo.

## Conclusion

This README serves as a guide to the content presented in this repository. We hope you find the information insightful and valuable for your understanding of database fundamentals. Feel free to explore the contents further and engage with the practical assignment to reinforce your learning. Thank you for your interest!

---
