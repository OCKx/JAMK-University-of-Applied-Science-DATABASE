# Exam

## Exam phases
This exam has six phases. Start doing the exam from the first phase. During these six phases, three exam files
will be created. These files will be evaluated after the exam.
The following files will be graded in this exam:
1. Exercise 1 – Data modelling (exam_exercise_1.mwb) [max 20 points]
2. Exercise 2 – SQL dump file creation (exam_exercise_2.sql) [max 6 points]
3. Exercise 3 – Queries (exam_exercise_3.txt) [2 points each, max 14 points]

## Database for digital asset management system for photographers
1. Specification from the customer
In this database design assignment, you are tasked with developing the database schema for a Digital Asset
Management System tailored specifically for photographers. Your database design should facilitate the
organization, storage, retrieval, and sharing of digital assets, empowering photographers to efficiently manage
their portfolios and collaborate with clients and colleagues. The objective of this assignment is to design a
comprehensive database structure that efficiently manages photographs. Photographers can add photographs to
their collections and also add keywords to photographs.
2. Import your database model
When you think your database model is ready, use Forward Engineer feature in MySQL Workbench and import
your model to your empty database created for this exam (Database → Forward Engineer …). If you encounter
errors during the import process, check that your database model definitions are correct (for example the foreign
key settings which are typically numbered as 12x or 15x). Some guidance for these errors can be found from
this page.
3. Insert data to your database
Insert at least three rows of data to each table in your database. You can choose the data freely.
4. Export your database to .sql file
After inserting example data to your database, create .sql file using data export tool (see detailed guide in the
last page of this document).

## Database for fitness tracking and workout planning application
5. Import a new database
For the last part of this exam you will need to import a database model of fitness tracking and workout planning
application. Download the database sql file called fitness_app.sql from the DigiCampus Moodle under the
Exam tab. Then create a new database and import the file contents into it. After importing, check that all five
tables are included and the example data can be found from each table.
6. Database queries
Design the following queries to your newly created database (fitness tracking and workout planning). Your
queries must be valid and should retrieve the asked information from the database

a) Count how many workouts has the "park" mentioned in the description.
b) Show username and workout count for those users who have logged at least 3 workouts.
c) Show average calories burned by each user for the logged exercises.
d) Show usernames and emails for users who have achieved a weight loss with target of at least 5.
e) Show all user information for users who have not recorded any workout, but are aiming for muscle
gain as one of their goals.
f) Show TOP 3 exercise categories which have been logged the most.
g) Determine the most common goal type among users who have achieved the '10 Workouts Streak'
achievement.