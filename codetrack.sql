-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2018 at 12:10 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codetrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `codingresult`
--

CREATE TABLE `codingresult` (
  `sno` int(11) NOT NULL,
  `mobileno` varchar(1000) NOT NULL,
  `questionno` varchar(1000) NOT NULL,
  `filepath` varchar(1000) NOT NULL,
  `output` varchar(1000) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codingresult`
--

INSERT INTO `codingresult` (`sno`, `mobileno`, `questionno`, `filepath`, `output`, `name`, `email`) VALUES
(1, '9791329930', '7', 'Temp/9791329930_7.java', '', 'Aswin', 'user'),
(2, '9791329930', '9', 'Temp/9791329930_9.java', '', 'Aswin', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `sno` int(11) NOT NULL,
  `collegeid` varchar(1000) NOT NULL,
  `collegename` varchar(1000) NOT NULL,
  `interviewdate` date NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Y',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`sno`, `collegeid`, `collegename`, `interviewdate`, `status`, `createdby`, `createdon`) VALUES
(12, '2734', 'SNS  College Of Engineering', '2018-12-28', 'Y', '', '2018-12-27 09:00:12'),
(23, '2506', 'ACE', '2018-12-27', 'Y', 'admin', '2018-12-27 11:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `sno` int(11) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `department` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Y',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`sno`, `course`, `department`, `status`, `createdby`, `createdon`) VALUES
(1, 'BE', 'Computer Science and Engineering', 'Y', '', '2018-12-18 08:56:51'),
(2, 'BE', 'Information Technology', 'Y', 'rajeshjas20296@gmail.com', '2018-12-18 11:49:24'),
(3, 'BE', 'ECE', 'Y', '', '2018-12-27 14:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sno` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `mobileno` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL DEFAULT 'user',
  `gender` varchar(1000) NOT NULL,
  `dob` varchar(1000) NOT NULL,
  `collegeid` varchar(1000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `department` varchar(1000) NOT NULL,
  `tenth_percentage` varchar(1000) NOT NULL,
  `twelth_percentage` varchar(1000) NOT NULL,
  `ug_cgpa` varchar(1000) NOT NULL,
  `pg_cgpa` varchar(1000) NOT NULL,
  `yearofpass` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'N',
  `teststatus` varchar(1000) NOT NULL DEFAULT 'Apptitude',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `collegeright` varchar(100) NOT NULL DEFAULT 'N',
  `courseright` varchar(100) NOT NULL DEFAULT 'N',
  `userright` varchar(100) NOT NULL DEFAULT 'N',
  `questionright` varchar(100) NOT NULL DEFAULT 'N',
  `testtimeright` varchar(100) NOT NULL DEFAULT 'N',
  `usercreationright` varchar(100) NOT NULL DEFAULT 'N',
  `resultright` varchar(100) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sno`, `name`, `mobileno`, `email`, `password`, `role`, `gender`, `dob`, `collegeid`, `course`, `department`, `tenth_percentage`, `twelth_percentage`, `ug_cgpa`, `pg_cgpa`, `yearofpass`, `status`, `teststatus`, `createdby`, `createdon`, `collegeright`, `courseright`, `userright`, `questionright`, `testtimeright`, `usercreationright`, `resultright`) VALUES
(1, 'Rajesh', '9791329930', 'admin', 'admin', 'Admin', 'Male', '20-02-1996', '2506', 'BE', 'CSE', '97', '95', '7.0', '-', '2017', 'Y', 'Apptitude', 'Admin', '2018-12-15 05:28:40', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(2, 'Aswin', '9791329930', 'user', 'user', 'user', 'Male', '2018-12-21', '2506', 'BE', 'CSE', '99', '97', '8.0', '-', '2017', 'Y', 'Coding', 'Admin', '2018-12-18 10:15:42', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(3, 'Aswin', '9792091029', 'aswinnsh@gmail.com', '54kvWcQX', 'user', 'Male', '20-02-1996', '2506', 'BE', 'Computer Science and Engineering', '99', '95', '7', '7', '7', 'Y', 'Coding', 'admin', '2018-12-20 11:23:51', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(4, 'Selvam', '9442603558', 'selvam03558@gmail.com', 'C7BbpESM', 'user', 'Male', '1985-08-30', '2506', 'BE', 'Computer Science and Engineering', '63', '-', '93', '-', '2011', 'Y', 'Apptitude', '', '2018-12-22 09:20:09', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(5, 'ram', '9876543211', 'ram@gmail.com', '96gXOxjH', 'user', 'Male', '2018-12-21', '2506', 'BE', 'Computer Science and Engineering', '90', '90', '90', '90', '2018-12-25', 'Y', 'Apptitude', '', '2018-12-24 05:12:08', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(6, '1', '1', '1', 'KY2xs0p7', 'user', '1', '1', '2506', 'BE', 'Computer Science and Engineering', '1', '1', '1', '1', '1', 'Y', 'Apptitude', 'admin', '2018-12-24 10:22:43', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(7, 'Sonu', '9597993063', 'chandrakala@prematix.com', 'u7YaJGCZ', 'user', 'Female', '20-02-1996', '2506', 'BE', 'Computer Science and Engineering', '99', '95', '7', '7', '7', 'Y', 'Apptitude', 'admin', '2018-12-24 10:24:21', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(8, 'Johnu', '9876543219', 'ckala5005@gmail.com', 'sgVA9fTt', 'user', 'Female', '20-02-1996', '2506', 'BE', 'Computer Science and Engineering', '99', '95', '7', '7', '7', 'Y', 'Apptitude', 'admin', '2018-12-24 10:24:21', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(9, 'Sharvin', '8765432109', 'prematix.rajesh@gmail.com', 'yPulbcst', 'user', 'Male', '20-02-1996', '2506', 'BE', 'Computer Science and Engineering', '99', '95', '7', '7', '7', 'Y', 'Coding', 'admin', '2018-12-24 10:24:21', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(10, 'Dhanusha', '9087654321', 'prematix_rajesh@hotmail.com', 'wEu8Jcrj', 'user', 'Female', '20-02-1996', '2506', 'BE', 'Computer Science and Engineering', '99', '95', '7', '7', '7', 'Y', 'Apptitude', 'admin', '2018-12-24 10:24:22', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(11, 'Rajalakshmi', '9876543210', 'rajeshjas20296@gmail.com', 'BJKewNbO', 'user', 'Female', '2018-12-27', '2506', 'BE', 'Computer Science and Engineering', '80', '90', '9', '9', '2018-12-27', 'Y', 'Coding', 'admin', '2018-12-24 11:08:01', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(12, 'Veeramani', '9089000000', 'prematix.veeramani@gmail.com', 'uCZwBOKV', 'user', 'Male', '20-02-1996', '2506', 'BE', 'Information Technology', '99', '95', '7', '7', '7', 'Y', 'Apptitude', 'admin', '2018-12-24 11:11:44', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(13, 'rajesh', '', '', 'rajesh', 'Admin', '', '', '', '', '', '', '', '', '', '', 'Y', 'Apptitude', 'admin', '2018-12-26 14:00:40', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(14, 'Preethi', '9998876345', 'prematix_preethi@hotmail.com', '', 'user', 'Female', '2018-12-13', '2506', 'BE', 'Information Technology', '90', '90', '9', '9', '2019', 'N', 'Apptitude', 'admin', '2018-12-27 07:16:43', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(15, 'Keerthana Ganesan', '7402072300', 'keerthanagcs08@gmail.com', 'Ab6PQX5X', 'user', 'Female', '34923', '2506', 'BE', 'Information Technology', '74', '0', '2017', '2017', '2017', 'Y', 'Coding', 'admin', '2018-12-27 11:19:51', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(16, 'ram', '9876543210', 'prematix.veeramani@gmail.com', 'BJKewNbO', 'user', 'Female', '34923', '2506', 'BE', 'Computer Science and Engineering', '74', '0', '79', '', '2019', 'Y', 'Coding', 'admin', '2018-12-27 11:24:37', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(17, 'shruthi', '9865986598', 'mshruthimr5@gmail.com', 'UnhGMDWx', 'user', 'Female', '2018-12-18', '2506', 'BE', 'Computer Science and Engineering', '50', '50', '50', '50', '2017', 'Y', 'Coding', 'admin', '2018-12-27 11:28:40', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
(18, '', '', 'prematix.keerthana@gmail.com', 'u7YaJGCZ', 'Technical', '', '', '', '', '', '', '', '', '', '', 'Y', 'Apptitude', 'admin', '2018-12-27 12:35:52', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `sno` int(11) NOT NULL,
  `problem` text NOT NULL,
  `description` text NOT NULL,
  `inputformat` text NOT NULL,
  `constraints` text NOT NULL,
  `outputformat` text NOT NULL,
  `sampleinput` text NOT NULL,
  `sampleoutput` text NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Y',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`sno`, `problem`, `description`, `inputformat`, `constraints`, `outputformat`, `sampleinput`, `sampleoutput`, `status`, `createdby`, `createdon`) VALUES
(6, 'Greatest Of 3', 'You just need to take three number as input from stdin and you need to find greatest of them. ', 'You will be taking three numbers as an input from stdin one on each line respectively', '-100000 <= N <= 100000', 'You need to print the greatest of the three numbers to the stdout.', '902\r\n100\r\n666\r\n', '902', 'Y', 'admin', '2018-12-27 10:43:09'),
(7, 'Generate Prime Numbers in an Interval ', 'You just need to take two number as input from stdin and you need to find prime numbers between those two numbers and print them. ', 'You will be taking two numbers as an input from stdin one on each line respectively.', '1 <= N <= 10000', 'You need to print the prime numbers one on each line to the stdout.', '900\r\n1000', '907\r\n911\r\n919\r\n929\r\n937\r\n941\r\n947\r\n953\r\n967\r\n971\r\n', 'Y', 'admin', '2018-12-27 10:44:32'),
(8, 'Play with Fibonacci sequence', 'You just need to take a number as input from stdin which will tell how many terms of the Fibonacci needs to be printed. ', 'You will be taking a number as an input from stdin.', '1 <= N <= 10000', 'You need to print the Fibonacci series separated by space to the stdout.', '10', '0 1 1 2 3 5 8 13 21 34', 'Y', 'admin', '2018-12-27 10:56:04'),
(9, 'Find Reverse of Number', 'To find reverse of a number in python, you have to ask from user to enter a number and then reverse that number to print the reversed number as output as shown here in the program given below.', 'You will be taking three digit number as an input from user ', '1 <= N <= 10000', 'You need to print the output of the reverse of number', '123', '321', 'Y', 'admin', '2018-12-27 11:00:47'),
(10, 'Swap Two Numbers', 'To swap two numbers in python, you have to ask from user to enter value of two numbers to swap those two numbers using the third variable. Swapping of two number means placing the value of first variable to second variable and the value of second variable to the first variable just by using another temporary variable.', 'You will be taking two numbers as an input from user one on each line respectively.', '1 <= N <= 10000', 'You need to swap value and display it ', 'Enter First number : 10\r\nEnter Second Number : 20', 'First Number : 20\r\nSecond Number : 10', 'Y', 'admin', '2018-12-27 11:07:10'),
(11, 'Design Simple Calculator', 'To make simple calculator in python to perform basic mathematical operations such as add, subtract, multiply, and divide two numbers entered by the user. To make calculator in python, first provide 5 options to the user, the fifth option for exit. After providing all the five options to the user, ask from user to enter his/her choice and perform the desired operation as shown in the program given below.', 'You will be  ask to enter his/her choice to perform and show the desired result as output', '-100000 <= N <= 100000', 'output giving users, some number of choices (5 choices) to choose any one from all these 5 choices.', '1. Addition\r\n2. Subtraction\r\n3. Multiplication\r\n4. Division\r\n5. Exit\r\nEnter you choice: 1\r\nEnter two numbers :\r\n1\r\n2', 'result : 3', 'Y', 'admin', '2018-12-27 11:13:40'),
(12, 'Print Multiplication Table', 'To print multiplication table of any number in python, you have to first ask from user to enter the number and start calculating its table to print the multiplication table of the given number as shown in the program given below.', 'You will be taking input from user to enter a number and prints multiplication table of that number', '1 <= N <= 100', 'You need to print the multiplication table for the user entered number', 'Enter a number : 2', '2 * 1 = 2\r\n2 * 2 = 4\r\n2 * 3 = 6\r\n2 * 4= 8\r\n2 * 5= 10\r\n2 * 6= 12\r\n2 * 7 = 14\r\n2 * 8 = 16\r\n2 * 9 = 18\r\n2 * 10 = 20', 'Y', 'admin', '2018-12-27 11:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `sno` int(11) NOT NULL,
  `testtype` varchar(1000) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `optiona` varchar(1000) NOT NULL,
  `optionb` varchar(1000) NOT NULL,
  `optionc` varchar(1000) NOT NULL,
  `optiond` varchar(1000) NOT NULL,
  `optione` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Y',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`sno`, `testtype`, `question`, `optiona`, `optionb`, `optionc`, `optiond`, `optione`, `answer`, `status`, `createdby`, `createdon`) VALUES
(1, 'Apptitude', 'Which of the following step / assumption in regression modeling impacts the trade-off between under-fitting and over-fitting the most.', 'The polynomial degree', 'Whether we learn the weights by matrix inversion or gradient descent', 'The use of a constant-term', '', '', 'A', 'Y', '', '2018-12-27 09:09:59'),
(2, 'Apptitude', 'Which of the following is/ are true about  â€œMaximum Likelihood estimate (MLE)â€?\r\n1.	MLE may not always exist\r\n2.	MLE always exists\r\n3.	If MLE exist, it (they) may not be unique\r\n4.	If MLE exist, it (they) must be unique\r\n', '1 and 4', '2 and 3', '1 and 3', '2 and 4', '', 'C', 'Y', '', '2018-12-27 09:11:46'),
(3, 'Apptitude', 'Letâ€™s say, a â€œLinear regressionâ€ model perfectly fits the training data (train error is zero). Now, Which of the following statement is true?', 'You will always have test error zero', 'You can not have test error zero', 'None of the above', '', '', 'C', 'Y', '', '2018-12-27 09:13:05'),
(4, 'Apptitude', 'In a linear regression problem, we are using â€œR-squaredâ€ to measure goodness-of-fit. We add a feature in linear regression model and retrain the same model.\r\nWhich of the following option is true?\r\n', 'If R Squared increases, this variable is significant.', 'If R Squared decreases, this variable is not significant.', 'Individually R squared cannot tell about variable importance. We canâ€™t say anything about it right now.', 'None of these.', '', 'C', 'Y', '', '2018-12-27 09:14:04'),
(5, 'Apptitude', 'Which of the following indicates a fairly strong relationship between X and Y?', 'Correlation coefficient = 0.9', 'The p-value for the null hypothesis Beta coefficient =0 is 0.0001', 'The t-statistic for the null hypothesis Beta coefficient=0 is 30', 'None of these', '', 'A', 'Y', '', '2018-12-27 09:15:03'),
(6, 'Apptitude', 'To test linear relationship of y(dependent) and x(independent) continuous variables, which of the following plot best suited?', 'Scatter plot', 'Barchart', 'Histograms', 'None of these', '', 'A', 'Y', '', '2018-12-27 09:15:57'),
(7, 'Apptitude', 'Which of the following is true about â€œRidgeâ€ or â€œLassoâ€ regression methods in case of feature selection?', 'Ridge regression uses subset selection of features', 'Lasso regression uses subset selection of features', 'Both use subset selection of features', 'None of above', '', 'B', 'Y', '', '2018-12-27 09:18:13'),
(8, 'Apptitude', 'How many coefficients do you need to estimate in a simple linear regression model (One independent variable)?', '1', '2', 'Canâ€™t Say', '5', '', 'B', 'Y', '', '2018-12-27 09:19:16'),
(9, 'Apptitude', 'If two variables are correlated, is it necessary that they have a linear relationship?', 'Yes', 'No', 'Cant Say', '', '', 'B', 'Y', 'admin', '2018-12-27 09:29:36'),
(70, 'Apptitude', 'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?', '120 metres', ' 180 metres', '324 metres', '150 metresÂ ', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(71, 'Apptitude', ' A sum fetched a total simple interest of Rs. 4016.25 at the rate of 9 p.c.p.a. in 5 years. What is the sum?', 'Rs. 4462.50', 'Rs. 8032.50', 'Rs. 8900', 'Rs. 8925', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(72, 'Apptitude', 'A hall is 15 m long and 12 m broad. If the sum of the areas of the floor and the ceiling is equal to the sum of the areas of four walls, the volume of the hall is:', '700', '900', '1200', '1800', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(73, 'Apptitude', 'Synonym of CORPULENT is:', 'Lean', 'gaunt', 'Emaciated', 'Obese', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(74, 'Apptitude', 'Select the pair which has the same relationship.  \nDIVA: OPERA\n', 'producer:theatre', 'director:drama', 'conductor:bus', 'thespian:play', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(75, 'Apptitude', 'The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:', '276', '299', '322', '345', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(76, 'Apptitude', '39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work?', '10', '13', '14', '15', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(77, 'Apptitude', 'A boatman goes 2 km against the current of the stream in 1 hour and goes 1 km along the current in 10 minutes. How long will it take to go 5 km in stationary water?', '40 minutes', '1 hour', '1 hr 15 min', '1 hr 30 min', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(78, 'Apptitude', 'Fill the next number in the series: 396, 462, 572, 427, 671, 264,â€¦', '396', '427', '671', '264', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(79, 'Apptitude', 'The sum of ages of 5 children born at the intervals of 3 years each is 50 years. What is the age of the youngest child?', '4 years', '8 years', '10 years', 'None of these', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(80, 'Apptitude', 'Find a positive number which when increased by 17 is equal to 60 times the reciprocal of the number.', '3', '10', '17', '20', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(81, 'Apptitude', 'Two, trains, one from Howrah to Patna and the other from Patna to Howrah, start simultaneously. After they meet, the trains reach their destinations after 9 hours and 16 hours respectively. The ratio of their speeds is:', '0.085416666666667', '0.16875', '0.25486111111111', '0.38611111111111', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(82, 'Apptitude', 'Two ships are sailing in the sea on the two sides of a lighthouse. The angle of elevation of the top of the lighthouse is observed from the ships are 30Â° and 45Â° respectively. If the lighthouse is 100 m high, the distance between the two ships is:', '173 m', '200 m', '273 m', '300 m', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(83, 'Apptitude', 'A person borrows Rs. 5000 for 2 years at 4% p.a. simple interest. He immediately lends it to another person at 6 p.a for 2 years. Find his gain in the transaction per year.', 'Rs. 112.50', 'Rs. 125', 'Rs. 150', 'Rs. 167.50', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(84, 'Apptitude', 'Synonym of INEBRIATE is:', 'Dreamy', 'Stupefied', ' Unsteady', 'Drunken', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(85, 'Apptitude', 'Select the pair which has the same relationship.  \nARMY:LOGISTICS\n', 'business:strategy', 'soldier:students', 'war:logic', 'team:individual', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(86, 'Apptitude', 'The study of ancient societies', 'Anthropology', 'Archaeology', 'History', 'Ethnology', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(87, 'Apptitude', 'Sam purchased 20 dozens of toys at the rate of Rs. 375 per dozen. He sold each one of them at the rate of Rs. 33. What was his percentage profit?', '3.5', '4.5', '5.6', '6.5', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(88, 'Apptitude', 'It was Sunday on Jan 1, 2006. What was the day of the week Jan 1, 2010?', 'Sunday', 'Saturday', 'Friday', 'Wednesday', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(89, 'Apptitude', '50 men took a dip in a water tank 40 m long and 20 m broad on a religious day. If the average displacement of water by a man is 4 m3, then the rise in the water level in the tank will be:', '20 cm', '25 cm', '35 cm', '50 cm', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(90, 'Apptitude', 'It is being given that (232 + 1) is completely divisible by a whole number. Which of the following numbers is completely divisible by this number?', '(216Â + 1)', '(216Â - 1)', '(7 x 223)', '(296Â + 1)', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(91, 'Apptitude', 'In a dairy farm, 40 cows eat 40 bags of husk in 40 days. In how many days one cow will eat one bag of husk?', '1', '20', '40', '80', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(92, 'Apptitude', 'If log 27 = 1.431, then the value of log 9 is:', '0.934', '0.945', '0.954', '0.958', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(93, 'Apptitude', 'Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) \'None of these\' will be the answer.\nTo beg the question\n', 'To refer to', 'To take for granted', 'To be discussed', 'None of these', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(94, 'Apptitude', 'Introducing a boy, a girl said, \"He is the son of the daughter of the father of my uncle.\" How is the boy related to the girl?', 'Brother', 'Nephew', 'Uncle', 'Son-in-law', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(95, 'Apptitude', 'The angle of elevation of a ladder leaning against a wall is 60Â° and the foot of the ladder is 4.6 m away from the wall. The length of the ladder is:', '2.3 m', '4.6 m', '7.8 m', '9.2 m', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(96, 'Apptitude', 'If selling price is doubled, the profit triples. Find the profit percent.', '66(2/3) ', '100', '105(1/3) ', '120', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(97, 'Apptitude', 'Synonym of VENUE is:', 'Place', 'Agenda', 'Time', 'Duration', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(98, 'Apptitude', 'Select the pair which has the same relationship.  \nPAIN: SEDATIVE\n', 'comfort:stimulant', 'grief:consolation ', 'trance:narcotic ', 'ache:extraction', '', 'B', 'Y', 'admin', '2018-12-27 09:45:17'),
(99, 'Apptitude', 'If A is the brother of B; B is the sister of C; and C is the father of D, how D is related to A?', 'Brother', 'Sister', 'Nephew', 'Cannot be determined', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(100, 'Apptitude', 'If A = x% of y and B = y% of x, then which of the following is true?', 'A is smaller than B', 'A is greater than B', 'Relationship between A and B cannot be determined', 'None of these', '', 'D', 'Y', 'admin', '2018-12-27 09:45:17'),
(101, 'Apptitude', 'The last day of a century cannot be', 'Monday', 'Friday', 'Tuesday', 'Wednesday', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(102, 'Apptitude', 'A grocer has a sale of Rs. 6435, Rs. 6927, Rs. 6855, Rs. 7230 and Rs. 6562 for 5 consecutive months. How much sale must he have in the sixth month so that he gets an average sale of Rs. 6500?', 'Rs. 4991', 'Rs. 5991', 'Rs. 6001', 'Rs. 6991', '', 'A', 'Y', 'admin', '2018-12-27 09:45:17'),
(103, 'Apptitude', 'How many bricks, each measuring 25 cm x 11.25 cm x 6 cm, will be needed to build a wall of 8 m x 6 m x 22.5 cm?', '5600', '6000', '6400', '7200', '', 'C', 'Y', 'admin', '2018-12-27 09:45:17'),
(104, 'Apptitude', '(112 + 122 + 132 + ... + 202) = ?', '385', '2485', '2870', '3255', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(105, 'Apptitude', 'David gets on the elevator at the 11th floor of a building and rides up at the rate of 57 floors per minute. At the same time, Albert gets on an elevator at the 51st floor of the same building and rides down at the rate of 63 floors per minute. If they continue travelling at these rates, then at which floor will their paths cross?', '19', '28', '30', '37', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(106, 'Apptitude', 'Choose the correct meaning of proverb/idiom, If there is no correct meaning given, E (i.e.) \'None of these\' will be the answer.\nTo drive home\n', 'To find one\'s roots', 'Back to original position', 'To emphasise', 'None of these', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(107, 'Apptitude', 'Pointing a photograph X said to his friend Y, \"She is the only daughter of the father of my mother.\" How X is related to the person of photograph?', 'Daughter', 'Son', 'Nephew', 'Cannot be decided', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(108, 'Apptitude', 'Sakshi invests a part of Rs. 12,000 in 12% stock at Rs. 120 and the remainder in 15% stock at Rs. 125. If his total dividend per annum is Rs. 1360, how much does he invest in 12% stock at Rs. 120?', 'Rs. 4000', 'Rs. 4500', 'Rs. 5500', 'Rs. 6000', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(109, 'Apptitude', 'Odd man Out:2, 5, 10, 17, 26, 37, 50, 64', '50', '26', '37', '64', '', 'D', 'Y', 'admin', '2018-12-27 09:45:18'),
(110, 'Apptitude', 'In a flight of 600 km, an aircraft was slowed down due to bad weather. Its average speed for the trip was reduced by 200 km/hr and the time of flight increased by 30 minutes. The duration of the flight is:', '1 hour', '2 hours', '3 hours', '4 hours', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(111, 'Apptitude', 'Antonym of EXODUS is:', 'Influx', 'Home-coming', ' Return', 'Restoration', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(112, 'Apptitude', 'Select the pair which has the same relationship.  \nINDIGENT: WEALTHY \n', 'angry:rich', 'native:affluent', 'gauche:graceful', 'scholarly:erudite', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(113, 'Apptitude', 'Veena who is the sister-in-law of Ashok, is the daughter-in-law of Kalyani. Dheeraj is the father of Sudeep who is the only brother of Ashok. How Kalyani is related to Ashok?', 'Mother-in-law', 'Aunt', 'Wife', 'None of these', '', 'D', 'Y', 'admin', '2018-12-27 09:45:18'),
(114, 'Apptitude', 'A clock is started at noon. By 10 minutes past 5, the hour hand has turned through:', '145Â°', '150Â°', '155Â°', '160Â°', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(115, 'Apptitude', 'From a group of 7 men and 6 women, five persons are to be selected to form a committee so that at least 3 men are there on the committee. In how many ways can it be done?', '564', '645', '735', '756', '', 'D', 'Y', 'admin', '2018-12-27 09:45:18'),
(116, 'Apptitude', 'How many of the following numbers are divisible by 132 ?\n264, 396, 462, 792, 968, 2178, 5184, 6336\n', '4', '5', '6', '7', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(117, 'Apptitude', 'Pick out the most effective word(s) from the given words to fill in the blank to make the sentence meaningfully complete.\nFate smiles ...... those who untiringly grapple with stark realities of life.\n', 'with', 'over', 'on', 'round', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(118, 'Apptitude', 'Which of the following statements is not correct? ', 'log10 10 = 1', 'log (2 + 3) = log (2 x 3)', 'log10 1 = 0', 'log (1 + 2 + 3) = log 1 + log 2 + log 3', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(119, 'Apptitude', 'The price of 10 chairs is equal to that of 4 tables. The price of 15 chairs and 2 tables together is Rs. 4000. The total price of 12 chairs and 3 tables is:', 'Rs. 3500', 'Rs. 3750', 'Rs. 3840', 'Rs. 3900', '', 'D', 'Y', 'admin', '2018-12-27 09:45:18'),
(120, 'Apptitude', 'One-third of Rahul\'s savings in National Savings Certificate is equal to one-half of his savings in Public Provident Fund. If he has Rs. 1,50,000 as total savings, how much has he saved in Public Provident Fund ?', 'Rs. 30,000', 'Rs. 50,000', 'Rs. 60,000', 'Rs. 90,000', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(121, 'Apptitude', 'To fill a tank, 25 buckets of water is required. How many buckets of water will be required to fill the same tank if the capacity of the bucket is reduced to two-fifth of its present ?', '10', '35', '62.5', 'None of these', '', 'C', 'Y', 'admin', '2018-12-27 09:45:18'),
(122, 'Apptitude', 'The angle of elevation of the sun, when the length of the shadow of a tree 3 times the height of the tree, is:', '30Â°', '45Â°', '60Â°', '90Â°', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(123, 'Apptitude', 'Antonym of MORTAL is:', 'Divine', 'Immortal', 'Spiritual', 'Eternal', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(124, 'Apptitude', 'A hollow iron pipe is 21 cm long and its external diameter is 8 cm. If the thickness of the pipe is 1 cm and iron weighs 8 g/cm3, then the weight of the pipe is:', '3.6 kg', '3.696 kg', '36 kg', '36.9 kg', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(125, 'Apptitude', 'If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?', '48 paise', '54 paise', '56 paise', '72 paise', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(126, 'Apptitude', '(17)3.5 x (17)? = 178 ', '2.29', '2.75', '4.25', '4.5', '', 'D', 'Y', 'admin', '2018-12-27 09:45:18'),
(127, 'Apptitude', 'Find the Odd Man Out: 331, 482, 551, 263, 383, 362, 284', '263', '383', '331', '551', '', 'B', 'Y', 'admin', '2018-12-27 09:45:18'),
(128, 'Apptitude', 'Spot the Error in the given part of the sentence', 'We discussed about the problem so thoroughly', 'on the eve of the examination', 'that I found it very easy to work it out.', 'No error.', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(129, 'Apptitude', 'Which word does NOT belong with the others?', 'rye', 'sourdough', 'pumpernickel', 'loaf', '', 'A', 'Y', 'admin', '2018-12-27 09:45:18'),
(190, 'Technical', 'Point out the correct statement:', 'Blocks are evaluated until a new line is entered after the closing brace', 'Single statements are evaluated when a new line is typed at the start of the syntactically complete statement', 'The if/else statement conditionally evaluates two statements', 'All of the mentioned', '', 'C', 'Y', 'admin', '2018-12-27 10:39:49'),
(191, 'Technical', 'The __________ function returns a list of all the formal arguments of a function', 'formals()', 'funct()', 'formal()', 'All of the mentioned', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(192, 'Technical', 'How many methods exist for normalizing the data?', 'one', 'two', 'three', 'profiler', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(193, 'Technical', 'What will be the output of following code snippet?\npaste(\"a\", \"b\", se = \":\")\n', 'â€œa+bâ€', 'â€œa=bâ€', 'â€œa b:â€', 'None of the mentioned', '', 'D', 'Y', 'admin', '2018-12-27 10:39:49'),
(194, 'Technical', 'You can check to see whether an R object is NULL with the _________ function.', 'is.null()', 'is.nullobj()', 'null()', 'All of the mentioned', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(195, 'Technical', 'How can you access the state of a component from inside of a member function?', 'this.getState()', 'this.prototype.stateValue', 'this. state', 'this.values', '', 'D', 'Y', 'admin', '2018-12-27 10:39:49'),
(196, 'Technical', 'Which of the following API is a MUST for every ReactJS component?', 'getInitialState', 'render', 'renderComponent', 'None', '', 'C', 'Y', 'admin', '2018-12-27 10:39:49'),
(197, 'Technical', 'At the highest level, React components have lifecycle events that fall into', 'Initialization', 'State/Property Updates', 'Destruction', 'All of these', '', 'D', 'Y', 'admin', '2018-12-27 10:39:49'),
(198, 'Technical', 'Which of the following is true about ng-init directive?', 'ng-init directive initializes an AngularJS Application data', ' ng-init directive is used to put values to the variables to be used in the application', 'Both of the above', 'None of the above', '', 'C', 'Y', 'admin', '2018-12-27 10:39:49'),
(199, 'Technical', 'How does Angular 4 improved error handling, when an error is caused by something in a template?', 'By enabling TypeScript\'s StrictNullChecks', 'By creating flattened versions of Angular modules', 'By generating source maps in terms of original template', 'None of the above', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(200, 'Technical', 'How would you display a list of Employees on a webpage along with where they were in the list?', 'Loop through and print the index', 'Loop through and print the employees', 'Loop through and print the index and the employee', 'Pass both the index and the employee to a web service', '', 'C', 'Y', 'admin', '2018-12-27 10:39:49'),
(201, 'Technical', 'How would you retrieve a list of items from a server\'s URL?', 'Create a URL transaction', 'Use the HTTP get method', 'Create a get SQL statement', 'Use an HTTP package', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(202, 'Technical', 'Which of the following is not built-in pipe in Angular?', 'DatePipe', 'CurrencyPipe', 'DataPipe', 'PercentPipe', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(203, 'Technical', 'Observables help you manage . . . . . . . . data.', 'synchronous', 'asynchronous', 'Both asynchronous & synchronous', 'None of above', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(204, 'Technical', 'What is inheritance?', 'It is the process where one object acquires the properties of another.', ' Inheritance is the ability of an object to take on many forms.', ' Inheritance is a technique to define different methods of same type.', 'None of above', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(205, 'Technical', 'Point out the correct statement:', 'In R, a function is an object which has the mode function.  ', ' R interpreter is able to pass control to the function, along with arguments that may be necessary for the function to accomplish the actions that are desired.', ' Functions are also often written when code must be shared with others or the public.', 'All of the mentioned', '', 'D', 'Y', 'admin', '2018-12-27 10:39:49'),
(206, 'Technical', 'Which of the following code will print NULL?', 'args(paste)', 'arg(paste)', 'args(pastebin)', 'All of the mentioned', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(207, 'Technical', 'Which of the following may be used for linear regression?', 'X %*% Y', 'solve (A) ', 'solve (A, B) ', 'All of the mentioned', '', 'C', 'Y', 'admin', '2018-12-27 10:39:49'),
(208, 'Technical', 'Which of the following statement changes column name to h and f?', 'colnames(m) <- c(\"h\", \"f\")', 'columnnames(m) <- c(\"h\", \"f\")', 'rownames(m) <- c(\"h\", \"f\")', 'None of the mentioned', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(209, 'Technical', 'What would be the output of the following code?\nx - c(\"a\", \"b\", \"c\", \"c\", \"d\", \"a\")\nx[c(1, 3, 4)]\n', 'â€œaâ€ â€œbâ€ â€œcâ€', 'â€œaâ€ â€œcâ€ â€œcâ€', 'â€œaâ€ â€œcâ€ â€œbâ€', 'All of the mentioned', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(210, 'Technical', 'What does the â€œwebpackâ€ command do?', 'Transpiles all the Javascript down into one file', 'Runs react local development server', 'Both A and B', 'None', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(211, 'Technical', 'In which directory React Components are saved?', 'Inside js/components/', 'Inside vendor/components/', 'Inside external/components/', 'Inside external/components/', '', 'A', 'Y', 'admin', '2018-12-27 10:39:49'),
(212, 'Technical', 'What port is the default where the webpack-dev-server will run?', '3000', '8080', '3306', '5040', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(213, 'Technical', 'In a web Application how would you pass data into the @Input Decorator?', 'With the java API', 'Through the tag', 'From the root module', 'From a database call', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(214, 'Technical', 'Why would you need to create and use a custom attribute directive?', 'To augment existing directives', 'To build directives from scratch', 'To extend Components', 'To bypass module logic', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(215, 'Technical', 'Which file contains the bootstrapping logic for an Angular Application?', 'node.js', 'gitignore', 'bootstrap.exe', 'main.ts', '', 'B', 'Y', 'admin', '2018-12-27 10:39:49'),
(216, 'Technical', 'Where would you place a code to inform a user that an input is invalid?', 'In a <DIV> tag in a template', 'In a popup window', 'Through a browser refresh', 'Create another Angular component', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(217, 'Technical', 'Which tool you must use to install the animations package?', 'NPM', 'Windows', 'Safari', 'Eclipse', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(218, 'Technical', 'How can you build a template to display a form?', 'In a separate HTML file', 'With JavaScript', 'With an inline template', 'Both (A) & (B)', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(219, 'Technical', 'What will be the output of the program?\nclass BitShift \n{\npublic static void main(String [] args) \n{\nint x = 0x80000000;\nSystem.out.print(x + \" and  \");\nx = x >>> 31;\nSystem.out.println(x);\n}\n}\n', '-2147483648 and 1', '0x80000000 and 0x00000001', '-2147483648 and -1', '1 and -2147483648', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(220, 'Technical', 'Point out the correct statement: What would be the output of the following code?\np - as.POSIXlt(x)\nnames(unclass(p))\np$wday\n', '1', '2', '3', 'NULL', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(221, 'Technical', 'Point out the wrong statement:', '$ operator semantics are similar to that of [[', 'The [[ operator can take an integer sequence if you want to extract a nested element of a list', 'The $ operator can be used to extract multiple elements from a list', 'All of the mentioned', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(222, 'Technical', 'Columns can be arranged in descending order too by using the special ____ operator.', 'asc()', 'desc()', 'descending()', 'subset', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(223, 'Technical', 'Which of the following is multivariate version of lapply?', 'apply()', 'lapply()', 'sapply()', 'mapply()', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(224, 'Technical', '________ provides needed string operators in R.', 'str', 'forecast', 'stringr', 'All of the mentioned', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(225, 'Technical', 'ReactJS focuses on which of the following part when considering MVC?', 'M (Model)', 'V (View)', 'C (Controller)', 'None', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(226, 'Technical', '_________ can be done while more than one element needs to be returned from a component.', 'Abstraction', 'Packing', 'Insulation', 'Wrapping', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(227, 'Technical', 'What is link function is used for in angular js?', ' It is used for registering DOM listeners as well as instance DOM manipulation', 'It is used to retrieve object instances as defined by provider', 'It is used for template DOM Manipulation and collects all of the directives', 'The method traverses the DOM and matches the directives', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(228, 'Technical', 'What does the $dirty flag indicates in angular js?', 'It indicates the value cannot be changed', 'It indicates the form has invalid data', 'It indicates that value has been changed', 'None of the above', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(229, 'Technical', 'AngularJS applications are a mix of . . . . . .', 'HTML and PHP', 'HTML and CrossScript', 'HTML and AngularScript', 'HTML and JavaScript', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(230, 'Technical', 'The . . . . . . directive is one of the most fundamental directives in AngujarJS. The . . . . . directive inserts the result of an expression into the HTML template ', 'Debug', 'Interpolation', 'Matching', 'Controller', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(231, 'Technical', 'What will be the output of the program?\ntry { \nint x = 0; \nint y = 5 / x;  } \ncatch (Exception e) {\nSystem.out.println(\"Exception\"); \n} \ncatch (ArithmeticException ae) {\nSystem.out.println(\" Arithmetic Exception\"); \n} \nSystem.out.println(\"finished\");\n', 'finished', 'Exception', 'Compilation fails.', 'Arithmetic Exception', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(232, 'Technical', 'The default value of a static integer variable of a class in Java is,', '0', '1', 'Garbage value', 'NULL', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(233, 'Technical', 'To prevent any method from overriding, we declare the method as,', 'static', 'const', 'final', 'abstract', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(234, 'Technical', 'Which of the following is true?', 'A finally block is executed before the catch block but after the try block', 'A finally block is executed, only after the catch block is executed', 'A finally block is executed whether an exception is thrown or not', 'A finally block is executed, only if an exception occurs', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(235, 'Technical', 'Which of the following variable declaration would NOT compile in a java program?', 'int var;', 'int VAR;', 'int var1;', 'int 1_var;.', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(236, 'Technical', 'Which of the following is not a component of Java Integrated Development Environment (IDE)?', 'Net Beans', 'Borlandâ€™s Jbuilder', 'Symantecâ€™s Visual CafÃ© tringr', 'Microsoft Visual Fox Pro', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(237, 'Technical', 'Members of a class specified as â€¦â€¦â€¦â€¦â€¦â€¦.. are accessible only to methods of that class.', 'Protected', 'Final', 'Public', 'Private', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(238, 'Technical', 'Which cookie it is valid for single session only and it is removed each time when the user closes the browser?', 'Persistent cookie', 'Non-persistent cookie', 'All the above', 'None of the above', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(239, 'Technical', 'Which configuration files are used in Struts?', 'ApplcationResources.properties', 'struts-config.xml', 'All the above', 'None of the above', '', 'D', 'Y', 'admin', '2018-12-27 10:39:50'),
(240, 'Technical', 'A session bean represents a multiple clients inside the Application Server', '1', '', '', '', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(241, 'Technical', 'What invokes immediately after the start() method and also any time the applet needs to repaint itself in the browser?', 'stop()', 'init()', 'paint()', 'destroy()', '', 'C', 'Y', 'admin', '2018-12-27 10:39:50'),
(242, 'Technical', 'Which method can set or change the text in a Label?', 'setText()', 'getText()', 'All the above', 'None of the above', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(243, 'Technical', 'What is stored in the object obj in following lines of code?\nbox obj;\n', 'Memory address of allocated memory of object', 'NULL', 'Any arbitrary pointer', 'Garbage', '', 'B', 'Y', 'admin', '2018-12-27 10:39:50'),
(244, 'Technical', 'Can return statement in python used to return multiple values?', 'yes', 'no', '', '', '', 'A', 'Y', 'admin', '2018-12-27 10:39:50'),
(245, 'Technical', 'Out if list and tuples which are mutable?', 'tuples', 'list', 'both are mutable', '', '', 'B', 'Y', 'admin', '2018-12-27 10:39:51'),
(246, 'Technical', 'Let a = [ 1,2,3,4,5 ] then which of the following is correct ?', 'print(a[:]) => [1,2,3,4]', 'print(a[0:]) => [2,3,4,5]', 'print(a[:100]) => [1,2,3,4,5]', 'print(a[-1:]) => [1,2]', '', 'C', 'Y', 'admin', '2018-12-27 10:39:51'),
(247, 'Technical', 'Which of the following keyword is a valid placeholder for body of the function?', 'break', 'continue', 'body', 'pass', '', 'D', 'Y', 'admin', '2018-12-27 10:39:51'),
(248, 'Technical', 'In python which keyword is used to start function?', 'function', 'def', 'try', 'import', '', 'B', 'Y', 'admin', '2018-12-27 10:39:51'),
(249, 'Technical', 'Which function is used to open the file for reading in python ?', 'fopen(filename, mode)', 'open(filename, mode)', 'openfile(filename, mode)', 'open_file(filename, mode)', '', 'B', 'Y', 'admin', '2018-12-27 10:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `sno` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `mobileno` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `collegeid` varchar(1000) NOT NULL,
  `course` varchar(1000) NOT NULL,
  `department` varchar(1000) NOT NULL,
  `testtype` varchar(1000) NOT NULL,
  `questions` int(11) NOT NULL,
  `attend` int(11) NOT NULL,
  `notattend` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `cutoff` int(11) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codingstatus` varchar(1000) NOT NULL DEFAULT 'N',
  `gdstatus` varchar(1000) NOT NULL DEFAULT 'N',
  `gdcomments` varchar(1000) NOT NULL,
  `hrstatus` varchar(1000) NOT NULL DEFAULT 'N',
  `hrcomments` varchar(1000) NOT NULL,
  `selectedstatus` varchar(1000) NOT NULL DEFAULT 'N',
  `termscondition` varchar(1000) NOT NULL DEFAULT 'N',
  `salary` varchar(1000) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`sno`, `name`, `mobileno`, `email`, `collegeid`, `course`, `department`, `testtype`, `questions`, `attend`, `notattend`, `result`, `cutoff`, `createdon`, `codingstatus`, `gdstatus`, `gdcomments`, `hrstatus`, `hrcomments`, `selectedstatus`, `termscondition`, `salary`) VALUES
(1, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6107', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 10, 0, 1, 7, '2018-12-11 04:56:28', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(2, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 1, 9, 0, 7, '2018-12-24 05:58:48', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(3, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Technical', 10, 0, 10, 0, 7, '2018-12-24 05:59:02', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(4, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 0, 10, 0, 7, '2018-12-24 06:12:30', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(5, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Technical', 10, 0, 10, 0, 7, '2018-12-24 06:18:20', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(6, 'Sharvin', '8765432109', 'prematix.rajesh@gmail.com', '123', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 9, 1, 1, 5, '2018-12-24 10:37:55', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(7, 'Sharvin', '8765432109', 'prematix.rajesh@gmail.com', '123', 'BE', 'Computer Science and Engineering', 'Technical', 15, 15, 0, 5, 7, '2018-12-24 10:38:32', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(8, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 0, 10, 0, 5, '2018-12-24 10:49:05', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(9, 'Aswin', '9791329930', 'aswinnsh@gmail.com', '6772', 'BE', 'Computer Science and Engineering', 'Technical', 15, 0, 15, 0, 7, '2018-12-24 10:49:11', 'Y', 'Y', 'Selected', 'Y', 'Selected', 'Y', 'Y', 'Y'),
(10, 'Sonu', '9597993063', 'chandrakala@prematix.com', '123', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 10, 0, 4, 5, '2018-12-24 11:18:26', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(11, 'Sonu', '9597993063', 'chandrakala@prematix.com', '123', 'BE', 'Computer Science and Engineering', 'Technical', 15, 15, 0, 1, 7, '2018-12-24 11:19:47', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(12, 'Rajalakshmi', '9876543210', 'rajalakshmi@prematix.com', '123', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 7, 3, 2, 5, '2018-12-24 12:15:15', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(13, 'Rajalakshmi', '9876543210', 'rajalakshmi@prematix.com', '123', 'BE', 'Computer Science and Engineering', 'Technical', 15, 6, 9, 2, 7, '2018-12-24 12:17:20', 'Y', 'N', '', 'N', '', '', 'N', 'N'),
(14, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Apptitude', 10, 0, 10, 0, 5, '2018-12-26 10:58:41', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(15, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Technical', 15, 0, 15, 0, 7, '2018-12-26 10:58:45', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(16, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Apptitude', 10, 0, 10, 0, 5, '2018-12-26 14:15:06', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(17, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Technical', 15, 0, 15, 0, 7, '2018-12-26 14:15:11', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(18, 'Keerthana Ganesan', '7402072300', 'keerthanagcs08@gmail.com', '2506', 'BE', 'Information Technology', 'Apptitude', 10, 10, 0, 0, 5, '2018-12-27 11:32:14', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(19, 'Divya', '9789636854', 'divyaprematix@gmail.com', '2506', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 10, 0, 6, 5, '2018-12-27 11:32:42', 'Y', 'Y', '', 'N', '', 'N', 'N', 'N'),
(20, 'shruthi', '9865986598', 'mshruthimr5@gmail.com', '2506', 'BE', 'Computer Science and Engineering', 'Apptitude', 10, 10, 0, 4, 5, '2018-12-27 11:33:17', 'Y', 'Y', '', 'N', '', 'N', 'N', 'N'),
(21, 'Keerthana Ganesan', '7402072300', 'keerthanagcs08@gmail.com', '2506', 'BE', 'Information Technology', 'Technical', 15, 15, 0, 4, 7, '2018-12-27 11:33:38', 'Y', 'N', '', 'N', '', 'N', 'N', 'N'),
(22, 'shruthi', '9865986598', 'mshruthimr5@gmail.com', '2506', 'BE', 'Computer Science and Engineering', 'Technical', 15, 15, 0, 6, 7, '2018-12-27 11:34:12', 'N', 'Y', '', 'N', '', 'N', 'N', 'N'),
(23, 'Divya', '9789636854', 'divyaprematix@gmail.com', '2506', 'BE', 'Computer Science and Engineering', 'Technical', 15, 15, 0, 7, 7, '2018-12-27 11:34:44', 'N', 'Y', '', 'N', '', 'N', 'N', 'N'),
(24, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Apptitude', 10, 0, 10, 0, 5, '2018-12-27 11:47:45', 'N', 'N', '', 'N', '', 'N', 'N', 'N'),
(25, 'Aswin', '9791329930', 'user', '6772', 'BE', 'CSE', 'Technical', 15, 0, 15, 0, 7, '2018-12-27 11:47:53', 'N', 'N', '', 'N', '', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `testtime`
--

CREATE TABLE `testtime` (
  `sno` int(11) NOT NULL,
  `testtype` varchar(1000) NOT NULL,
  `questions` varchar(100) NOT NULL,
  `cutoff` varchar(1000) NOT NULL,
  `time` varchar(1000) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Y',
  `createdby` varchar(1000) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testtime`
--

INSERT INTO `testtime` (`sno`, `testtype`, `questions`, `cutoff`, `time`, `status`, `createdby`, `createdon`) VALUES
(1, 'Apptitude', '10', '5', '10', 'Y', 'admin', '2018-12-19 11:43:48'),
(2, 'Technical', '15', '7', '30', 'Y', 'admin', '2018-12-20 06:42:35'),
(3, 'Coding', '2', '15', '30', 'Y', '', '2018-12-25 10:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `userrights`
--

CREATE TABLE `userrights` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `college` varchar(2) NOT NULL DEFAULT 'N',
  `course` varchar(2) NOT NULL DEFAULT 'N',
  `users` varchar(2) NOT NULL DEFAULT 'N',
  `questions` varchar(2) NOT NULL DEFAULT 'N',
  `testtiming` varchar(2) NOT NULL DEFAULT 'N',
  `userrights` varchar(2) NOT NULL DEFAULT 'N',
  `results` varchar(2) NOT NULL DEFAULT 'N',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrights`
--

INSERT INTO `userrights` (`userid`, `username`, `password`, `role`, `college`, `course`, `users`, `questions`, `testtiming`, `userrights`, `results`, `createdAt`, `updatedAt`, `createdBy`) VALUES
(1, 'rajesh', 'rajesh', 'Admin', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '2018-12-26 14:00:39', '2018-12-26 19:30:39', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `codingresult`
--
ALTER TABLE `codingresult`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `testtime`
--
ALTER TABLE `testtime`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `userrights`
--
ALTER TABLE `userrights`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `codingresult`
--
ALTER TABLE `codingresult`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `testtime`
--
ALTER TABLE `testtime`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userrights`
--
ALTER TABLE `userrights`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
