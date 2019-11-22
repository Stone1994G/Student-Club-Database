/*
Stone Gulliksen
sagullik@asu.edu
*/

/*
Run the ddl file 
*/
@ddl

DESC student;
DESC club;
DESC meetings;
DESC club_event;
DESC payment;
DESC attend_event;
DESC attend_meeting;
DESC join_club;

/*
Run the insert file 
*/
@insert

/*
Select all the tables
*/
SELECT *
FROM student;

SELECT *
FROM club;

SELECT *
FROM meetings;

SELECT *
FROM club_event;

SELECT *
FROM payment;

SELECT *
FROM attend_event;

SELECT *
FROM attend_meeting;

SELECT *
FROM join_club;

/*
Run the query file
*/
@query

/*
Run the drop file
*/
@drop 
