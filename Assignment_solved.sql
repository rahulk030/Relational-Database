/*
				Assignment 1 
                  Worth 3%
                Total Assignment is out of 75 marks  
		Complete all of the questions in this SQL file and submit the file for grading
                Open this file in SQL Workbench to complete all of the statements

*/





/*
 Question 1
 
 Write a statement to Create a database (make sure your database doesn't contain special characters)  ( 5 marks )
 
*/

# Put your answer here
CREATE DATABASE school_db;




/*
 Question 2
 
 Write a statement to Drop that Database you created in Question 1  ( 5 marks )
 
*/
DROP DATABASE school_db;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        


/*
 Question 3
 
 Write a statement to set the database you created to be the one that will be active for your session  ( 5 marks )
 
*/
USE school_db;




/*
 Question 4
 
 Write a statement to Create a table that will have columns that represent all of the basic datatypes that are available in the databse  (make sure your table and column names are describe the content of the table)  ( 15 marks )
 example
 CREATE TABLE book_info (
     id                 VARCHAR(32)     not null,
     filePath           long varchar     null,
     price		        float     null ,
     title                  null,
     author             long varchar     null,
  );
 
 
*/
CREATE TABLE employee (
  emp_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  salary DECIMAL(10,2),
  hire_date DATE NOT NULL,
  dept_id INT,
  email VARCHAR(100) UNIQUE,
  PRIMARY KEY (emp_id),
  FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

/*
 Question 5
 
 Write 5 statements to add data to the table you created in question 4   ( 15 marks )
 
   
 */
/* created table book_info */
CREATE TABLE book_info (
  id VARCHAR(32) NOT NULL,
  filePath LONG VARCHAR NULL,
  price FLOAT NULL,
  title VARCHAR(100) NULL,
  author LONG VARCHAR NULL
);
/* insert data */


/*
 Question 6
 
 Write 2 statements to Create two tables that have a way to force uniqueness from row to row ( make sure your table and column names are describe the content of the table)   ( 10 marks )
 
  
 */
 CREATE TABLE student (
  stu_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (stu_id),
  UNIQUE (email)
);
CREATE TABLE course (
  course_id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  instructor VARCHAR(50) NOT NULL,
  PRIMARY KEY (course_id),
  UNIQUE (name)
);



/*
 Question 7
 
	 Write 5 statements to add to the first table you created in question 6   ( 10 marks ) */
	 CREATE TABLE student (
	  stu_id INT NOT NULL,
	  name VARCHAR(50) NOT NULL,
	  email VARCHAR(100) NOT NULL,
	  PRIMARY KEY (stu_id),
	  UNIQUE (email)
	);

	INSERT INTO student (stu_id, name, email)
	VALUES (101, 'Gurpreet Kaur', 'gurpreet@gmail.com');

	INSERT INTO student (stu_id, name, email)
	VALUES (102, 'Jaskaran', 'Jaskaran@gmail.com');

	INSERT INTO student (stu_id, name, email)
	VALUES (103, 'Arunima', 'Arunima@gmail.com');

	INSERT INTO student (stu_id, name, email)
	VALUES (104, 'Chirag', 'Chirag@gmail.com');

	INSERT INTO student (stu_id, name, email)
	VALUES (105, 'Rahul', 'Rahul@gmail.com');

	 
	/*  Write 5 statements to add to the second table you created in question 6  ( 10 marks )
	  
	 */
     INSERT INTO course (course_id, name, instructor)
VALUES (101, 'Introduction to SQL', 'Gurpreet Kaur'),
       (102, 'Advanced SQL', 'Jaskaran'),
       (103, 'Database Design', 'Arunima'),
       (104, 'Data Analysis', 'Chirag'),
       (105, 'Data Visualization', 'Rahul');

	 
