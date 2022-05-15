/*****************PAYMENT SERVICE***********/
/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS payments;
/*CREATE TABLE FOR PAYMENTS*/
CREATE TABLE payments (
ID integer auto_increment primary key,
account varchar(10),
bill_no varchar(200),
name varchar(100),
amount_required decimal(10,2),
amount_paying decimal(10,2),
amount_due decimal(10,2),
date TIMESTAMP DEFAULT now()
);
/*INSERT INTO TABLE PAYMENTS*/
insert into payments values (0, '20228450', '200009', 'P.M. Mendis', 2500.00, 2000.00, 500.00, now());
insert into payments values (0, '20228451', '2000010','R.A. Perera', '1500.00', '1500.00', '0.00', now());
insert into payments values (0, '20228452', '2000011','N.M. Silva', '3000.00', '2800.00', '200.00', now());
insert into payments values (0, '20228453', '2000012','H.S. Costa', '3500.00', '3000.00', '500.00', now());

/*****************PAYMENT METHOD SERVICE*********/
/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS paymentMethod;
/*CREATE TABLE FOR PAYMENTS METHODS*/
CREATE TABLE paymentMethod (
ID integer auto_increment primary key,
EaccontNo varchar(10),
cardHolderName varchar(200),
paymentType varchar(100),
nameOnCard varchar(45),
cardNumber varchar(16),
expDate varchar(45),
cvv varchar(45)
);
/*INSERT INTO TABLE PAYMENT METHOD TABLE*/
insert into payment.paymentMethod values (0, '20228450', 'P.M. Mendis', 'Credit Card', 'BOC', '4562789547852365', '05/24', '123');
insert into payment.paymentMethod values (0, '20228451', 'R.A. Perera', 'Debit Card', 'Commercial', '4562788654852365', '06/23', '456');
insert into payment.paymentMethod values (0, '20228452', 'N.M. Silva', 'Credit Card', 'NSB', '4562789541452365', '07/25', '789');
insert into payment.paymentMethod values (0, '20228453', 'H.S. Costa', 'Debit Card', 'HNB', '4562789789542365', '08/23', '159');


--
-- Table structure for table `consumer_details`
--

/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS consumer_details;

/*CREATE TABLE FOR consumer_details*/
CREATE TABLE consumer_details (
  account_no int NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  address varchar(45) DEFAULT NULL,
  phone varchar(10) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
  username varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  PRIMARY KEY (account_no)
)AUTO_INCREMENT=20228539;

/*INSERT INTO `consumer_details` TABLE */
insert into consumer_details  values (0,'R.M.Rajapaksha','Battaramulla','0754862591','nethma@gmail.com','IT0310','Nethma@99');
insert into consumer_details  values (0,'N.S.Senarathne','Koswatta','0786745345','navodya@gmail.com','DS0309','Navodya@94');
insert into consumer_details  values (0,'W.D.Withanage','Kadhana','0767890246','udeshi@gmail.com','SE0405','Udeshi@96');
insert into consumer_details  values (0,'P.W.Perera','Battaramulla','0754862591','saduni@gmail.com','IT1012','Saduni@20');


--
-- Table structure for table `login`
--

/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS login;

/*CREATE TABLE FOR login*/
CREATE TABLE login (
  account_no int NOT NULL,
  username varchar(45) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  email varchar(45) DEFAULT NULL,
  PRIMARY KEY (account_no)
);

/*INSERT INTO login TABLE*/
INSERT INTO login VALUES (20228540,'IT0310','Nethma@99','nethma@gmail.com');
INSERT INTO login VALUES (20228541,'DS0309','Navodya@94','navodya@gmail.com');
INSERT INTO login VALUES (20228542,'SE0405','Udeshi@96','udeshi@gmail.com');
INSERT INTO login VALUES (20228543,'IT1012','Saduni@20','saduni@gmail.com');

/*****************POWER MANAGEMENT SERVICE***********/
/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS BILL;
/*CREATE TABLE FOR BILL*/
CREATE TABLE bill (
billNo integer auto_increment primary key,
accountNo integer,
name varchar(45),
address varchar(45),
month varchar(10),
current_reading integer,
previuos_reading integer,
consumed_units integer,
total decimal(10,2),
due decimal(10,2),
status varchar(45)
);

/*INSERT INTO TABLE BILL*/
insert into bill values (0, '20228450','P.M. Mendis', 'Malabe','May', 456789,456759,30,235.50,235.50,'unpaid');
insert into bill values (0, '20228451','R.A. Perera', 'Gampaha', 'June',234567,234498,69,658.35,658.35,'unpaid');
insert into bill values (0, '20228452','N.M. Silva', 'Urapola', 'June', '200.00',234567,234500,628.35,628.35,'unpaid');
insert into bill values (0, '20228453','H.S. Costa', 'Walpola', 'May',456362,456293,69,658.35,658,35,'unpaid');

/*****************UNIT MANAGEMENT SERVICE*********/

/*DROP TABLE IF EXISTS*/
DROP TABLE IF EXISTS unit_managemnt;
/*CREATE TABLE FOR UNIT MANAGEMENT*/
CREATE TABLE unit_management (
Unit_Record_Id integer auto_increment primary key,
Tariff_Block varchar(30),
Charge_per_Unit decimal(5,2),
Type varchar(45)
);

/*INSERT INTO TABLE UNIT MANAGEMENT */

insert into power.unit_management values(0,'0-31',7.85, 'General Purpose');
insert into power.unit_management values(0,'32-62',10.00, 'General Purpose');
insert into power.unit_management values(0,'63-92',15.85, 'General Purpose');
insert into power.unit_management values(0,'92-102',27.00, 'General Purpose');


  
  /*Customer service management service*/
DROP TABLE IF EXISTS customer;
CREATE TABLE `world`.`customer` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Issue` VARCHAR(45) NULL,
  `TelNo` VARCHAR(45) NULL,
  `Status` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`));
  
  insert into customer values(0,"Kishan", "Batticaloa", "Meter was not working for few days","0769386347","Not repaired");
  insert into customer values(0,"Heisho", "Malabe", "Meter was damaged", "0759485968", "Not repaired");
  insert into customer values(0,"Udeshi", "Kaduwela", "Meter has measuring problems", "0779685986", "Not Repaired");
  
/*Feedback Service*/  
DROP TABLE IF EXISTS feedback;
CREATE TABLE `world`.`feedback` (
  `FeedId` INT NOT NULL AUTO_INCREMENT,
  `RepairId` VARCHAR(45) NULL,
  `Rate` VARCHAR(45) NULL,
  `Feedback` VARCHAR(45) NULL,
  PRIMARY KEY (`FeedId`));
  
  insert into feedback values(0, "2", "Good", "The service was good");
  insert into feedback values(0, "3", "Excellenct", "I am satisfied by your service");
  insert into feedback values(0, "1", "Average", "Your service was better but you could improve your timing");



/***************** SERVICE *********/
/*Staff management service*/
DROP TABLE IF EXISTS staff;
CREATE TABLE `world`.`staff` (
  `StaffId` INT NOT NULL AUTO_INCREMENT,
  `StaffName` CHAR(30) NULL,
  `JobTitle` CHAR(30) NULL,
  `StaffMail` VARCHAR(100) NULL,
  `StaffContact` integer(11) NULL,
  `StaffGender` CHAR(6) NULL,
  `Salary` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffId`));
  
  insert into staff values(0,"Heisapirashoban", "Chief Manager", "heisapirashoban@gmail.com","0776112233","Male","100000");
  insert into staff values(0,"Heisho", "Clerk", "heisho123@gmail.com", "0776112233", "Male", "50000");
  insert into staff values(0,"Kishan", "Manager", "kishan@gmail.com", "0765645623", "Male", "75000");
  
/*Staff login Service*/  
DROP TABLE IF EXISTS stafflogin;
CREATE TABLE `world`.`feedback` (
  `StaffID` INT NOT NULL AUTO_INCREMENT,
  `StaffMail` VARCHAR(45) NULL,
  `Pasword` VARCHAR(45) NULL,
  PRIMARY KEY (`StaffID`));
  
  insert into stafflogin values(0, "heisapirashoban@gmail.com", "heisapirashoban");
  insert into stafflogin values(0, "heisho123@gmail.com", "heisho123");
  insert into stafflogin values(0, "kishan@gmail.com", "kishan");
  
  
  
  


