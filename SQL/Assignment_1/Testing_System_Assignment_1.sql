DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;

USE Testing_System_Assignment_1;

CREATE TABLE Department(
	DepartmentID 		INT,
    DepartmentName		CHAR
);

CREATE TABLE `Position`(
	PositionID 		INT,
	PositionName 	ENUM("Dev", "Test", "Scrm Master", "PM")
    
    );
CREATE TABLE	`Account`(
	AccountID 	INT	PRIMARY KEY	AUTO_INCREMENT ,
    Email 		VARCHAR(50),
    Username	CHAR,
    Fullname 	CHAR,
    DepartmentID INT,
    PositionID	INT,
    CreateDate	DATE
);
CREATE TABLE `Group`(
	GroupID 	INT	PRIMARY KEY	AUTO_INCREMENT,
    GroupName	VARCHAR(50),
    CreatorID	INT,
    CreatorDate	DATE
);
CREATE TABLE GroupAccount(
	GroupID 	INT,
    AccountID 	INT,
    JoinDate	DATE
);
CREATE TABLE TypeQuestion(
	TypeID	INT	PRIMARY KEY	AUTO_INCREMENT,
    TypeName	VARCHAR(50)
);
CREATE TABLE CategoryQuestion(
	CategoryID	INT	PRIMARY KEY	AUTO_INCREMENT,
    CategoryName	VARCHAR(50)
);
CREATE TABLE Question(
	QuestionID	INT	PRIMARY KEY	AUTO_INCREMENT,
    Content		VARCHAR(50),
    CategoryID	INT,
    TypeID	INT,
	CreatorID	INT,
    CreatorDate	DATE
);
CREATE TABLE Answer(
	AnswerID	INT	PRIMARY KEY	AUTO_INCREMENT,
    Content		VARCHAR(50),
    QuestionID	INT,
    isCorrect 	ENUM("Yes", "No")
);
CREATE TABLE Exam(
	ExamID	INT	PRIMARY KEY	AUTO_INCREMENT,
	`Code`	INT,
	Title	VARCHAR(50),
	CategoryID	INT,
    Duration	TIME,
    CreatorID	INT,
    CreatorDate	DATE
);
CREATE TABLE ExamQuestion(
	ExamID	INT,
    QuestionID	INT
);


    