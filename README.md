# PostgreSQL-Spectacle-Theater-ER-Diagram
The project uses draw.io application in VS code to model ER diagram for a spectacle theater and used the SQL DDL statements to develop the database as well as the tables and the columns applying the defined constraints from the diagram.

# Intro ....
The idea is to design a database for a movie theater that has required tables and columns as defined through the business requirements.
The database has the following tables: Film, Auditorium, Event, Customers, and Account. The columns of these tables are defined based on requirement to management the business, keeping track of the every day activities.

# ER Diagram...
Consider this ER diagram for the spectacle movie theater database model, the ER diagram was developed on VS code with the "draw.io" application. "draw.io" is the only application that can do this for us, other applications are visio, SQLDBM,QuickDBD, Lucidchart etc.

# Constraints...
* Nullabilty & Non-Nullability Constraints: The thin line indicates that the attribute could be accept NULL values(meaning it may or may not be Null) while the bold lines implies the attribute cannot be Null(NOT NULL).
* Uniqueness : In our ER diagram, the underlined attributes indicates unqueness, the columns are required to have unique values. In otherwords, attributes in the ER diagram that are not underlined would accept non-unique/repeated values in its columns
* Thin line with an arrow: The thin line with an arrow from the entity to the relationship(diamond) in btw the associated entity indicates that the participation of the entity with the associated entity could be at most once(0 or 1).
* Bold line with an arrow: The bold line with arrow pointing to the diamond implies the participitation of the entity with the opposite entity is mandatorily one(only 1).

![spectacle_theater](https://user-images.githubusercontent.com/48870117/139621243-e429a627-f263-4a06-94fc-146fece38770.png)

There are five entities here, Auditorium, Film, event, Customer, and Account contained in rectangles, the attributes are enclosed in oval chapes, between the entities, there are 4 relationships, represented by diamonds.
The mandatory and non-mandatory business requirements are represented with the lines(thin/bold) and arrows(thin/bold), they are what translates into the integrity constraints and references in our database table but we shall examine that later. 

First, see the table below for the description of each relationship and its type:

![spectacletheaterrelationship](https://user-images.githubusercontent.com/48870117/139626842-601aac36-9d27-4d12-8e4c-62d7c5418775.PNG)

![spectacle-theater1](https://user-images.githubusercontent.com/48870117/139916874-865252c9-5310-47be-b579-3ad0322e8be5.PNG)



