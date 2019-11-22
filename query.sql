/*
Stone Gulliksen
sagullik@asu.edu
*/

/*
This query gives the first and last names of students that are freshman
along with the club they are associated with
*/
SELECT student.fname, student.lname, club.club_name
FROM student, club, join_club
WHERE student.student_id=join_club.student_id
    AND join_club.club_name=club.club_name
    AND student.sch_year='junior';

/*
this query shows all the payment information from all students
along with their first and last name
*/
SELECT student.fname, student.lname, payment.payment_id, payment.student_id, payment.club_name, payment.payment_due, payment.pay_amt, payment.pay_due_date
FROM student, payment
WHERE student.student_id=payment.student_id;

/*
This query shows all members that are in the fight club
attributes being retrieved- clubname,firstname,lastname,memberID
*/
SELECT student.fname, student.lname, club.club_name, join_club.member_id
FROM student, club, join_club
WHERE student.student_id=join_club.student_id
    AND club.club_name=join_club.club_name
    AND club.club_name='Fight Club';


/*
This query shows all students who have attended club meetings from their respective club
*/
SELECT student.fname, student.lname, student.student_id, meetings.meeting_num, meetings.subject, meetings.club_name
FROM student, meetings, attend_meeting
WHERE attend_meeting.student_id=student.student_id
    AND meetings.meeting_num=attend_meeting.meeting_num;
