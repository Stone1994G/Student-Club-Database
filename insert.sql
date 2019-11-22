/*
Stone Gulliksen
sagullik@asu.edu
*/
/*
inserting student information
*/
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president)
VALUES('Jake', 'Randle', 1111, '250.50', 'senior', 'yes', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Rabi', 'Pinkerten', 2222, '50.23', 'freshman', 'no', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Jessica', 'Allambaka', 3333, '90.52', 'senior', 'yes', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Ricky', 'Mendoza', 4444, '250.25', 'senior', 'yes', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Don', 'Vito', 5555, '150.25', 'junior', 'yes', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Jackie', 'Flanigan', 6666, '250.25', 'senior', 'yes', 'no');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Tania', 'Flute', 7777, '950.25', 'junior', 'no', 'yes');
INSERT INTO student
    (fname,lname,student_id,acc_bal,sch_year,president,vice_president
    )
VALUES('Liam', 'Evensten', 8888, '250.25', 'freshman', 'no', 'yes');

/*
insert club information
*/
INSERT INTO club
    (club_name,members)
VALUES('Coding Club',2);
INSERT INTO club
    (club_name,members
    )
VALUES('Fight Club', 2);
INSERT INTO club
    (club_name,members
    )
VALUES('Dance Club', 2);
INSERT INTO club
    (club_name,members
    )
VALUES('Music Club', 2);

/*
insert meeting informaton
*/
INSERT INTO meetings
    (club_name,meeting_num,members_att,subject,meeting_description,meeting_location,meeting_date,meeting_time,meeting_duration)
VALUES('Coding Club', 111, 2, 'Job interviews', 'Learn how nail next interview', 'HT25', '12/4/2019', '7:00PM', '1 HOUR');
INSERT INTO meetings
    (club_name,meeting_num,members_att,subject,meeting_description,meeting_location,meeting_date,meeting_time,meeting_duration
    )
VALUES('Fight Club', 222, 2, 'Self-Defense', 'Learn how to defend yourself', 'SDFC100', '12/4/2019', '6:00PM', '1 HOUR');
INSERT INTO meetings
    (club_name,meeting_num,members_att,subject,meeting_description,meeting_location,meeting_date,meeting_time,meeting_duration
    )
VALUES('Dance Club', 333, 2, 'Rythem', 'Learn how to dance on beat', 'SDFC200', '12/5/2019', '10:00AM', '50 MINUTES');
INSERT INTO meetings
    (club_name,meeting_num,members_att,subject,meeting_description,meeting_location,meeting_date,meeting_time,meeting_duration
    )
VALUES('Music Club', 444, 2, 'Music Theory', 'Learn the major scale', 'MB154', '12/6/2019', '12:00PM', '1 HOUR');

/*
insert event informaton
*/
INSERT INTO club_event
    (club_name,subject,event_description,event_date,event_name,event_number,event_time,event_location,members_att,event_duration)
VALUES('Coding Club', 'Power of Javascript', 'javascript frameworks', '11/25/2019', 'Learn about the power of javascript', 1111, '1:30PM', 'HT201', 2, '1 HOUR');
INSERT INTO club_event
    (club_name,subject,event_description,event_date,event_name,event_number,event_time,event_location,members_att,event_duration
    )
VALUES('Fight Club', 'Jiu Jitsu', 'Different Styles', '11/25/2019', 'Learn the difference between traditional Jiu Jitsu and Brazilian Jiu Jitsu', 2222, '2:30PM', 'SDFC101', 2, '1 HOUR');
INSERT INTO club_event
    (club_name,subject,event_description,event_date,event_name,event_number,event_time,event_location,members_att,event_duration
    )
VALUES('Dance Club', 'Twerking', 'Different styles of twerking', '11/25/2019', 'Learn how to twerk efficiently', 3333, '6:30PM', 'SDFC102', 2, '1 HOUR');
INSERT INTO club_event
    (club_name,subject,event_description,event_date,event_name,event_number,event_time,event_location,members_att,event_duration
    )
VALUES('Music Club', 'Jazz', 'Hear Beatiful Jazz Music', '11/25/2019', 'Jazz Recital', 4444, '6:30PM', 'MU Top Floor', 2, '1 HOUR');

/*
insert join information
*/
INSERT INTO join_club
    (student_id,member_id,club_name)
VALUES(1111, 1111, 'Coding Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(2222, 2222, 'Fight Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(3333, 3333, 'Dance Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(4444, 4444, 'Music Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(5555, 5555, 'Coding Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(6666, 6666, 'Fight Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(7777, 7777, 'Dance Club');
INSERT INTO join_club
    (student_id,member_id,club_name
    )
VALUES(8888, 8888, 'Music Club');



/*
insert payment information
*/
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date)
VALUES(1111, 1111, 'Coding Club', 9.99, 9.99, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(2222, 2222, 'Fight Club', 20.55, 20.55, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(3333, 3333, 'Dance Club', 10.45, 10.45, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(4444, 4444, 'Music Club', 15.25, 15.25, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(5555, 5555, 'Coding Club', 9.99, 9.99, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(6666, 6666, 'Fight Club', 20.55, 20.55, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(7777, 7777, 'Dance Club', 10.45, 10.45, '12/1/2019');
INSERT INTO payment
    (payment_id,student_id,club_name,payment_due,pay_amt,pay_due_date
    )
VALUES(8888, 8888, 'Music Club', 15.25, 15.25, '12/1/2019');

/*
insert attend_meetings information
*/
INSERT INTO attend_meeting
    (attendee_id,student_id,meeting_num)
VALUES(1111, 1111, 111);
INSERT INTO attend_meeting
    (attendee_id,student_id,meeting_num
    )
VALUES(2222, 2222, 222);
INSERT INTO attend_meeting
    (attendee_id,student_id,meeting_num
    )
VALUES(3333, 3333, 333);
INSERT INTO attend_meeting
    (attendee_id,student_id,meeting_num
    )
VALUES(4444, 4444, 444);
INSERT INTO attend_meeting
    (attendee_id,student_id,meeting_num
    )
VALUES(5555, 5555, 111);

/*
insert attend_event information
*/
INSERT INTO attend_event
    (event_attendee_id,student_id,event_number)
VALUES(1111, 1111, 1111);
INSERT INTO attend_event
    (event_attendee_id,student_id,event_number
    )
VALUES(2222, 2222, 2222);
INSERT INTO attend_event
    (event_attendee_id,student_id,event_number
    )
VALUES(3333, 3333, 3333);
INSERT INTO attend_event
    (event_attendee_id,student_id,event_number
    )
VALUES(4444, 4444, 4444);

/*
Update student last name and the president and vice president
*/
UPDATE student SET lname = 'Lopez' WHERE student_id=7777;
UPDATE student SET fname = 'Ricardo' WHERE student_id=4444;
UPDATE student SET president = 'no' WHERE student_id=5555;
UPDATE student SET vice_president='yes' WHERE student_id=5555;




