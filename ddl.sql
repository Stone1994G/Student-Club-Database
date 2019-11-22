/*
Stone Gulliksen
sagullik@asu.edu
*/

/*
Create table for student **WORKS**
this includes a first name, last name, a student id, that account balance of said student
the school year, and if they are a president or vice president of a club
primary key is student_id
*/
CREATE TABLE student
(
    fname VARCHAR(20) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    student_id INTEGER PRIMARY KEY,
    acc_bal FLOAT NOT NULL CHECK (acc_bal > 0),
    sch_year VARCHAR(10) NOT NULL CHECK(sch_year='freshman' OR sch_year='sophmore' OR sch_year='junior' OR sch_year='senior'),
    president VARCHAR(5) NOT NULL CHECK(president='yes' OR president='no'),
    vice_president VARCHAR(5) NOT NULL CHECK(vice_president='yes' OR vice_president='no')
);
SHOW ERRORS;


/*
Create table for club **WORKS**
Includes the name of the club and the number of members in said club
primary key is club_name
*/
CREATE TABLE club
(
    club_name VARCHAR(20) PRIMARY KEY,
    members INTEGER NOT NULL
);

SHOW ERRORS;
/*
Create table for meetings which include the name of the club that is having, the meeting number, number of members in attendence, a description, location, meeting time and the duration
primary key - meeting_num
*/
CREATE TABLE meetings
(
    club_name VARCHAR(20),
    meeting_num INTEGER,
    members_att INTEGER NOT NULL,
    subject VARCHAR(20) NOT NULL,
    meeting_description VARCHAR(50) NOT NULL,
    meeting_location VARCHAR(10) NOT NULL,
    meeting_date VARCHAR(20) NOT NULL,
    meeting_time VARCHAR(20) NOT NULL,
    meeting_duration VARCHAR(20) NOT NULL,
    PRIMARY KEY(meeting_num)

);
SHOW ERRORS;



/*
create a table for events. This includes club name, subject of event, a description,
a date, name, time, the event number, the location, the number of members attending, 
and the event duration
The primary key - event number
*/
CREATE TABLE club_event
(
    club_name VARCHAR(20) NOT NULL,
    subject VARCHAR(20) NOT NULL,
    event_description VARCHAR(100) NOT NULL,
    event_date VARCHAR(15) NOT NULL,
    event_name VARCHAR(100) NOT NULL,
    event_number INTEGER NOT NULL,
    event_time VARCHAR(10) NOT NULL,
    event_location VARCHAR(20) NOT NULL,
    members_att INTEGER NOT NULL,
    event_duration VARCHAR(20) NOT NULL,
    PRIMARY KEY(event_number)
);

SHOW ERRORS;

/*
Create a table for payment for each individual student, this includes:
payment id, the student id, the club name, the payment due, the payment due, the amount the student paid, the payment due date
The primary key - payment id
The foreign key - student_id is used as a reference between 
*/
CREATE TABLE payment
(
    payment_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    club_name VARCHAR(20) NOT NULL,
    payment_due FLOAT NOT NULL CHECK(payment_due>0),
    pay_amt FLOAT NOT NULL CHECK(pay_amt>0),
    pay_due_date VARCHAR(10) NOT NULL,
    PRIMARY KEY(payment_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE
);
SHOW ERRORS;
/*
Alter the payment table to add another foreign key
*/
ALTER TABLE payment
    ADD
(FOREIGN KEY
(club_name) REFERENCES club
(club_name) ON
DELETE CASCADE);


SHOW ERRORS;
/*
Create a table for attend event that has the event id, the student id, and the event number
Primary key - event attendee id
Foreign key - student id, event number
*/
CREATE TABLE attend_event
(
    event_attendee_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    event_number INTEGER NOT NULL,
    PRIMARY KEY(event_attendee_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY(event_number) REFERENCES club_event(event_number) ON DELETE CASCADE
);

SHOW ERRORS;
/*
Create a table for attend meeting that has attendee id, student id, and meeting number
Primary key - attendee id
Foreign key - student id and meeting number
*/
CREATE TABLE attend_meeting
(
    attendee_id INTEGER NOT NULL,
    student_id INTEGER NOT NULL,
    meeting_num INTEGER NOT NULL,
    PRIMARY KEY(attendee_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY(meeting_num) REFERENCES meetings(meeting_num) ON DELETE CASCADE
);

SHOW ERRORS;
/*
Create table for join club it includes: student id member id and club name
Primary key - member id
Foreign key - student id, club name
*/
CREATE TABLE join_club
(
    student_id INTEGER NOT NULL,
    member_id INTEGER NOT NULL,
    club_name VARCHAR(20) NOT NULL,
    PRIMARY KEY(member_id),
    FOREIGN KEY(student_id) REFERENCES student(student_id) ON DELETE CASCADE,
    FOREIGN KEY(club_name) REFERENCES club(club_name) ON DELETE CASCADE
);

SHOW ERRORS;

