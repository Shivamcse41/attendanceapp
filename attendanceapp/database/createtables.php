<?php

$path = $_SERVER['DOCUMENT_ROOT'];
require_once $path . "/attendanceapp/database/database.php";
function clearTable($dbo, $tabName)
{
  $c = "delete from ".$tabName;
  $s = $dbo->conn->prepare($c);
  try {
    $s->execute();
    echo($tabName." cleared");
  } catch (PDOException $oo) {
    echo($oo->getMessage());
  }
}
$dbo = new Database();
$c = "create table student_details
(
    id int auto_increment primary key,
    roll_no varchar(20) unique,
    name varchar(50),
    email_id varchar(100)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>student_details created");
} catch (PDOException $o) {
  echo ("<br>student_details not created");
}

$c = "create table course_details
(
    id int auto_increment primary key,
    code varchar(20) unique,
    title varchar(50),
    credit int
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>course_details created");
} catch (PDOException $o) {
  echo ("<br>course_details not created");
}


$c = "create table faculty_details
(
    id int auto_increment primary key,
    user_name varchar(20) unique,
    name varchar(100),
    password varchar(50)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>faculty_details created");
} catch (PDOException $o) {
  echo ("<br>faculty_details not created");
}


$c = "create table session_details
(
    id int auto_increment primary key,
    year int,
    term varchar(50),
    unique (year,term)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>session_details created");
} catch (PDOException $o) {
  echo ("<br>session_details not created");
}



$c = "create table course_registration
(
    student_id int,
    course_id int,
    session_id int,
    primary key (student_id,course_id,session_id)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>course_registration created");
} catch (PDOException $o) {
  echo ("<br>course_registration not created");
}
clearTable($dbo, "course_registration");

$c = "create table course_allotment
(
    faculty_id int,
    course_id int,
    session_id int,
    primary key (faculty_id,course_id,session_id)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>course_allotment created");
} catch (PDOException $o) {
  echo ("<br>course_allotment not created");
}
clearTable($dbo, "course_allotment");

$c = "create table attendance_details
(
    faculty_id int,
    course_id int,
    session_id int,
    student_id int,
    on_date date,
    status varchar(10),
    primary key (faculty_id,course_id,session_id,student_id,on_date)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>attendance_details created");
} catch (PDOException $o) {
  echo ("<br>attendance_details not created");
}
clearTable($dbo, "attendance_details");

$c = "create table sent_email_details
(
    faculty_id int,
    course_id int,
    session_id int,
    student_id int,
    on_date date,
    id int auto_increment primary key,
    message varchar(200),
    to_email varchar(100)
)";
$s = $dbo->conn->prepare($c);
try {
  $s->execute();
  echo ("<br>sent_email_details created");
} catch (PDOException $o) {
  echo ("<br>sent_email_details not created");
}
clearTable($dbo, "sent_email_details");

clearTable($dbo, "student_details");
$c = "insert into student_details
(id,roll_no,name,email_id)
values

(1,'2023-cs-01','Deepika Kumari','deepikakumarirfj0@gmail.com'),
(2,'2023-cs-04','Khushi Kumari','kp197534@gmail.com'),
(3,'2023-cs-05','Ashvini Kumar','ashvinibilari2006@gmail.com'),
(4,'2023-cs-06','Sivani Ranjan','sivaniranjan281@gmail.com'),
(5,'2023-cs-09','Ashutosh Kumar Singh','ashutoshsingh89389@gmail.com'),
(6,'2023-cs-10','Suruchi Kumari','nsingh821307@gmail.com'),
(7,'2023-cs-11','Smriti Kumari','kd423851@gmail.com'),
(8,'2023-cs-12','Badal Kumar','badalmg2019@gmail.com'),
(9,'2023-cs-15','Chandan Kumar','chandankumar929768@gmail.com'),
(10,'2023-cs-16','Nikhil Kumar','nk0240919@gmail.com'),
(11,'2023-cs-17','Anil Kumar','anilyadavsasna@gmail.com'),
(12,'2023-cs-18','Beauty Kumari','bk6620507@gmail.com'),
(13,'2023-cs-19','Khushabu Kumari','khushbu00985@gmail.com'),
(14,'2023-cs-21','Nikki Kumari','kumarinikki01012006@gmail.com'),
(15,'2023-cs-22','Khushi Kumari','manojkumar824120820@gmail.com'),
(16,'2023-cs-23','Rohit Kumar','rohitpatelkanker@gmail.com'),
(17,'2023-cs-24','Misha Kumari','mishakumari08062@gmail.com'),
(18,'2023-cs-25','Preeti Kumari','mehtaavadha@gmail.com'),
(19,'2023-cs-26','Rinki Kumari','rinkikumari713535@gmail.com'),
(20,'2023-cs-27','Ranjan Kumar','krranjan12121@gmail.com'),
(21,'2023-cs-28','Rishi Kumarr','kumarrishi824207@gmail.com'),
(22,'2023-cs-29','Neha Kumari','neha8242176@gmail.com'),
(23,'2023-cs-30','Ankit Kumar','rittik8292@gmail.com'),
(24,'2023-cs-34','Priyanshu Kumar','pk0375410@gmail.com'),
(25,'2023-cs-36','Aditya Kumar','adityakumar91358578@gmail.com'),
(26,'2023-cs-37','Anshu Kumari','akr810947@gmail.com'),
(27,'2023-cs-38','Ayush kumar','ashu051105@gmail.com'),
(28,'2023-cs-41','Shivam kumar','cseshivam41@gmail.com'),
(29,'2023-cs-43','Abhay Kumar','abhaykumar008211@gmail.com'),
(30,'2023-cs-44','Suman Ghosh','sumanghosh589510@gmail.com'),
(31,'2023-cs-45','Marry Kumari','marrybabu33@gmail.com'),
(32,'2023-cs-47','Mohammad Shoaib','mohammadshoaib2817@gmail.com'),
(33,'2023-cs-48','Dipu Sharma','dipuvsh11@gmail.com'),
(34,'2023-cs-52','Shubham Kumari','shubhamkumari7244616@gmail.com'),
(35,'2023-cs-53','Riya Kumari','riyakumari8037620@gmail.com'),
(36,'2023-cs-54','Sonali Kumari','lovekushsharma085@gmail.com'),
(37,'2023-cs-57','Rupa Kumari','rupakumariwoob1@gmail.com'),
(38,'2023-cs-59','Jyoti Kumari','jyotikumari893585@gmail.com'),
(39,'2023-cs-303','Neha Kumari','nehapol255@gmail.com'),
(40,'2023-cs-601','Ankit Kumar','ankitmandar9199@gmail.com'),
(41,'2023-cs-602','Avinash Kumar','avinashsinghrajput130@gmail.com')";

$s = $dbo->conn->prepare($c);
try {
  $s->execute();
} catch (PDOException $o) {
  echo ("<br>duplicate entry");
}

clearTable($dbo, "faculty_details");
$c = "insert into faculty_details
(id,user_name,name,password)
values
(1,'Randhir','Randhir Sir','824102'),
(2,'Kundan','Kundan Sir','824102'),
(3,'Ayushi','Ayushi yadav','824102'),
(4,'Prince','Prince RAj','824102'),
(5,'Priom','Priom Sir','824102'),
(6,'Coe','Coe_sir','824102')";

$s = $dbo->conn->prepare($c);
try {
  $s->execute();
} catch (PDOException $o) {
  echo ("<br>duplicate entry");
}

clearTable($dbo, "session_details");
$c = "insert into session_details
(id,year,term)
values
(1,2025,'ODD SEMESTER'),
(2,2025,'EVEN SEMESTER')";

$s = $dbo->conn->prepare($c);
try {
  $s->execute();
} catch (PDOException $o) {
  echo ("<br>duplicate entry");
}

clearTable($dbo, "course_details");
$c = "insert into course_details
(id,title,code,credit)
values

  (1,'Mobile Computing','2018501',3),
  (2,'Computer Hardware & Networking','2018502',3),
  (3,'OOP through Java','2018503',3),
  (4,'Multimedia Technology','2018504',4),
  (5,'Drone Technology','2018505',2),
  (6,'Computer Hardware & Networking (LAB)','2018506',1),
  (7,'OOP through Java (LAB)','2018507',2),
  (8,'Drone Technology (LAB)','2018508',2)";
  

$s = $dbo->conn->prepare($c);
try {
  $s->execute();
} catch (PDOException $o) {
  echo ("<br>duplicate entry");
}

//if any record already there in the table delete them
clearTable($dbo, "course_registration");
$c = "insert into course_registration
  (student_id,course_id,session_id)
  values
  (:sid,:cid,:sessid)";
$s = $dbo->conn->prepare($c);
//iterate over all the 41 students
//for each of them chose max 3 random courses, from 1 to 8

for ($i = 1; $i <= 41; $i++) {
  for ($j = 0; $j < 8; $j++) {
    $cid = rand(1, 8);
    //insert the selected course into course_registration table for 
    //session 1 and student_id $i
    try {
      $s->execute([":sid" => $i, ":cid" => $cid, ":sessid" => 1]);
    } catch (PDOException $pe) {
    }

    //repeat for session 2
    $cid = rand(1, 8);
    //insert the selected course into course_registration table for 
    //session 2 and student_id $i
    try {
      $s->execute([":sid" => $i, ":cid" => $cid, ":sessid" => 2]);
    } catch (PDOException $pe) {
    }

    //repeat for session 3
    //$cid = rand(1, 6);
    //insert the selected course into course_registration table for 
    //session 2 and student_id $i
   // try {
   //   $s->execute([":sid" => $i, ":cid" => $cid, ":sessid" => 3]);
    //} catch (PDOException $pe) {
   // }
  }
}


//if any record already there in the table delete them
clearTable($dbo, "course_allotment");
$c = "insert into course_allotment
  (faculty_id,course_id,session_id)
  values
  (:fid,:cid,:sessid)";
$s = $dbo->conn->prepare($c);
//iterate over all the 6 teachers
//for each of them chose max 2 random courses, from 1 to 6

for ($i = 1; $i <= 6; $i++) {
  for ($j = 0; $j < 3; $j++) {
    $cid = rand(1, 3);
    //insert the selected course into course_allotment table for 
    //session 1 and fac_id $i
    try {
      $s->execute([":fid" => $i, ":cid" => $cid, ":sessid" => 1]);
    } catch (PDOException $pe) {
    }

    //repeat for session 2
   // $cid = rand(1, 3);
    //insert the selected course into course_allotment table for 
    //session 2 and student_id $i
   // try {
    //  $s->execute([":fid" => $i, ":cid" => $cid, ":sessid" => 2]);
    //} catch (PDOException $pe) {
    //}

    //repeat for session 3
    //$cid = rand(1, 6);
    //insert the selected course into course_allotment table for 
    //session 2 and student_id $i
    //try {
    //  $s->execute([":fid" => $i, ":cid" => $cid, ":sessid" => 3]);
    //} catch (PDOException $pe) {
    //}
  }
}
