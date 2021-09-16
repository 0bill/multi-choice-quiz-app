-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql202.epizy.com
-- Generation Time: Mar 18, 2020 at 07:31 AM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_25187134_db`
--
CREATE DATABASE IF NOT EXISTS `epiz_25187134_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `epiz_25187134_db`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `text`, `correct`, `questionid`) VALUES
(32, 'Private variables only', 0, 13),
(31, 'Public variables only\r\n', 1, 13),
(30, 'Functions only\r\n', 0, 13),
(29, 'Procedures only', 0, 13),
(28, 'False', 0, 12),
(27, 'True', 1, 12),
(26, '4', 1, 10),
(25, '3', 1, 10),
(24, '2', 0, 10),
(23, '1', 0, 10),
(33, 'It is a named procedure in a package which must be invoked by a user before any other part of the package can be invoked.', 0, 14),
(34, 'It is a private function within the package body.', 0, 14),
(35, 'Because it is an anonymous block, it cannot be invoked and therefore will never execute. It is treated as a set of comments.', 0, 14),
(36, 'It is an anonymous block in the package specification.', 0, 14),
(37, 'It is an anonymous block at the end of a package body which executes automatically the first time each user session invokes a subprogram in the package. ', 1, 14),
(38, 'True ', 1, 15),
(39, 'False', 0, 15),
(40, '1 and 2', 0, 16),
(41, '2 and 4', 0, 16),
(42, '2 and 3 ', 1, 16),
(43, '3 and 4', 0, 16),
(44, '1 and 4', 0, 16),
(45, 'The specification must be created before the body.', 0, 17),
(46, 'The body contains the detailed code of the subprograms.', 0, 17),
(47, 'All procedures and functions must be declared in the specification. ', 1, 17),
(48, 'Variables can be declared in the body.', 0, 17),
(49, 'Cursors can be declared in the specification.', 0, 17),
(50, 'A and B', 0, 18),
(51, 'A, B, and D', 1, 18),
(52, 'A, B, and C', 0, 18),
(53, 'A, B, C, and D', 0, 18),
(54, 'A and C', 0, 18),
(55, 'The first line should be:\r\n<code>CREATE OR REPLACE PACKAGE SPECIFICATION mypack IS </code>', 0, 19),
(56, 'You cannot declare constants in the specification.', 0, 19),
(57, 'Nothing is wrong, this code contains no errors.', 0, 19),
(58, 'The keyword PACKAGE is missing.', 1, 19),
(59, 'A package must contain at least one function.', 0, 19),
(60, 'The body can be created first, but only if the package has no specification.', 0, 20),
(61, 'The specification ', 1, 20),
(62, 'It does not matter which is created first.', 0, 20),
(63, 'The body', 0, 20),
(64, 'The specification and body must be created at the same time.', 0, 20),
(65, 'True ', 0, 21),
(66, 'False', 1, 21),
(67, '<code>SELECT text FROM USER_SOURCE\r\nWHERE name = \'DEPTPACK\'\r\nAND type = \'PACKAGE\'\r\nORDER BY line;</code>', 0, 22),
(68, '<code>SELECT text FROM USER_SOURCE\r\nWHERE name = \'DEPTPACK\'\r\nAND type = \'PACKAGE BODY\'\r\nORDER BY line;</code>', 1, 22),
(69, '<code>SELECT text FROM USER_SOURCE\r\nWHERE object_name = \'DEPTPACK\'\r\nAND object_type = \'PACKAGE BODY\'\r\nORDER BY line;</code>', 0, 22),
(70, '<code>SELECT text FROM USER_SOURCE\r\nWHERE name = \'DEPTPACK\'\r\nAND type = \'BODY\'\r\nORDER BY line;</code>', 0, 22),
(71, 'DROP PACKAGE bigpack;', 0, 23),
(72, 'DROP PACKAGE SPECIFICATION bigpack;', 0, 23),
(73, 'DROP PACKAGE bigpack SPECIFICATION;', 0, 23),
(74, 'DROP PACKAGE HEADER bigpack;', 0, 23),
(75, 'None of these. ', 1, 23),
(76, 'DROP PACKAGE co_pack; ', 1, 24),
(77, 'DROP PACKAGE BODY co_pack;', 0, 24),
(78, 'DROP PACKAGE SPECIFICATION co_pack;', 0, 24),
(79, 'DROP BOTH co_pack;', 0, 24),
(80, 'None of these.', 0, 24),
(81, 'Each subprogram is loaded into memory when it is first invoked.', 0, 25),
(82, 'The public subprograms are all loaded into memory at the same time, but the private subprograms are loaded into memory one at a time as they are invoked.', 0, 25),
(83, 'If three users invoke three different subprograms in the package, there will be three copies of the code in memory.', 0, 25),
(84, 'The whole package is loaded into memory when the first call is made to any subprogram in the package. ', 1, 25),
(85, 'True ', 1, 26),
(86, 'False', 0, 26),
(87, '1', 1, 27),
(88, '2', 1, 27),
(89, '3', 1, 27),
(90, '4', 1, 27),
(91, 'The first 5 rows will be fetched three times.', 0, 28),
(92, 'The first 10 rows will be fetched, then the first 5 rows will be fetched again.', 0, 28),
(93, 'An error will occur at line 2.', 0, 28),
(94, 'The first 15 rows will be fetched.', 0, 28),
(95, 'An error will occur at line 4.', 1, 28),
(96, 'True', 0, 29),
(97, 'False', 1, 29),
(98, 'True ', 0, 30),
(99, 'False', 1, 30),
(100, 'True ', 1, 31),
(101, 'False', 0, 31),
(102, '10', 0, 32),
(103, '50', 1, 32),
(104, '25', 0, 32),
(105, 'True ', 1, 33),
(106, 'False', 0, 33),
(107, 'NO_DATA_FOUND', 0, 34),
(108, 'INVALID_PATH ', 1, 34),
(109, 'E_MYEXCEP', 0, 34),
(110, 'READ_ERROR ', 1, 34),
(111, 'VALUE_ERROR', 0, 34),
(112, 'ZERO_DIVIDE', 0, 35),
(113, 'NO_DATA_FOUND ', 1, 35),
(114, 'VALUE_ERROR ', 1, 35),
(115, 'TOO_MANY_ROWS', 0, 35),
(116, 'True ', 1, 36),
(117, 'False', 0, 36),
(118, 'SEND_ATTACH_VARCHAR2', 0, 37),
(119, 'SEND_ATTACH_RAW', 0, 37),
(120, 'All are valid.', 0, 37),
(121, 'SEND_ATTACH_BOOLEAN ', 1, 37),
(122, 'SEND', 0, 37),
(123, 'ZERO_DIVIDE', 0, 38),
(124, 'WRITE_ERROR ', 1, 38),
(125, 'INVALID_OPERATION ', 1, 38),
(126, 'NO_DATA_FOUND', 0, 38),
(127, 'INVALID_PATH ', 1, 38),
(128, 'Because DBMS_OUTPUT should be used only for testing and debugging PL/SQL code ', 1, 39),
(129, 'Because DBMS_OUTPUT cannot be used inside procedures', 0, 39),
(130, 'Because DBMS_OUTPUT can raise a NO_DATA_FOUND exception if used inside a packaged procedure', 0, 39),
(131, 'Because anonymous blocks display messages while the block is executing, while procedures do not display anything until their execution has finished', 0, 39),
(132, 'True ', 1, 40),
(133, 'False', 0, 40),
(134, 'DBMS_OUTPUT.NEW_LINE(\'IF branch was executed\');\r\n', 0, 41),
(135, 'DBMS_OUTPUT.GET_LINE(\'IF branch was executed\');\r\n', 0, 41),
(136, 'DBMS_OUTPUT.PUT(\'IF branch was executed\');', 1, 41),
(137, 'DBMS_OUTPUT.PUT_LINE(\'IF branch was executed\');\r\n', 0, 41),
(138, 'True ', 0, 42),
(139, 'False', 1, 42),
(144, 'True ', 0, 64),
(145, 'False', 1, 64),
(146, 'It is an anonymous block at the end of a package body which executes automatically the first time each user session invokes a subprogram in the package. ', 1, 65),
(147, 'It is a named procedure in a package which must be invoked by a user before any other part of the package can be invoked.', 0, 65),
(148, 'It is an anonymous block in the package specification.', 0, 65),
(149, 'Because it is an anonymous block, it cannot be invoked and therefore will never execute. It is treated as a set of comments.', 0, 65),
(150, 'It is a private function within the package body.', 0, 65),
(151, 'Add a package initialization block to the package body of TAXPACK.', 1, 66),
(152, 'Create a database trigger that includes the following code:\r\nSELECT tax_rate INTO taxpack.g_taxrate FROM taxtab;', 0, 66),
(153, 'Add a private function to the package body of TAXPACK, and invoke the function from the user session.', 0, 66),
(154, 'Declare the global variable as:\r\ng_taxrate NUMBER(2,2) := SELECT tax_rate FROM taxtab;', 0, 66),
(155, 'True ', 1, 67),
(156, 'False', 0, 67),
(157, 'Body ', 1, 68),
(158, 'Both the body and the specification', 0, 68),
(159, 'Neither the body nor the specification', 0, 68),
(160, 'Specification', 0, 68),
(161, 'True ', 1, 69),
(162, 'False', 0, 69),
(163, 'True ', 1, 70),
(164, 'False', 0, 70),
(165, 'A and B', 0, 71),
(166, 'A, B, and D', 1, 71),
(167, 'A, B, C, and D', 0, 71),
(168, 'A and C', 0, 71),
(169, 'A, B, and C', 0, 71),
(170, 'All of these. ', 1, 72),
(171, 'PL/SQL types', 0, 72),
(172, 'procedures', 0, 72),
(173, 'Exceptions', 0, 72),
(174, 'variables', 0, 72),
(175, 'True ', 0, 73),
(176, 'False', 1, 73),
(177, '<code>SELECT text FROM user_source WHERE name = \'EMP_PKG\' AND type = \'PACKAGE BODY\' ORDER BY line; </code>', 1, 74),
(178, '<code>SELECT text FROM user_source WHERE name = \'EMP_PKG\' AND type = \'PACKAGE\' ORDER BY line;</code>', 0, 74),
(179, '<code>SELECT source FROM user_packages WHERE name = \'EMP_PKG\' AND type = \'PACKAGE BODY\' ORDER BY line;</code>', 0, 74),
(180, '<code>SELECT text FROM all_source WHERE name = \'EMP_PKG\' AND type = \'PACKAGE\' ORDER BY line;</code>', 0, 74),
(181, 'The package will not compile because you cannot declare variables in the specification, only procedures and functions. .\r\n', 0, 75),
(182, 'The variable can be modified by:<code>\r\nBEGIN\r\n    mypack.percent_tax := 10;\r\nEND;</code>', 1, 75),
(183, 'The function can be invoked from outside the package.', 0, 75),
(184, 'The procedure can be invoked by:<code>\r\nBEGIN\r\n    mypack.proc1;\r\nEND;</code>', 1, 75),
(185, 'proc1 is a public procedure and func1 is a private function.', 1, 75),
(186, 'The body will be dropped but the specification will be retained.', 0, 76),
(187, 'Both the specification and the body will be dropped.', 1, 76),
(188, 'The statement will fail because you must drop the body before you can drop the specification.', 0, 76),
(189, 'The specification will be dropped but the body will be retained.', 0, 76),
(190, 'True ', 0, 77),
(191, 'False', 1, 77);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `questionID` int(11) NOT NULL,
  `date` date NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `questionID`, `date`, `level`) VALUES
(8, 26, '2020-03-06', 3),
(9, 13, '2020-03-06', 3),
(7, 20, '2020-03-06', 3),
(10, 17, '2020-03-06', 3),
(11, 16, '2020-03-06', 3),
(12, 24, '2020-03-06', 3),
(13, 15, '2020-03-06', 3),
(15, 23, '2020-03-06', 3),
(16, 32, '2020-03-06', 3),
(17, 64, '2020-03-06', 3),
(18, 14, '2020-03-06', 3),
(19, 76, '2020-03-06', 3),
(20, 29, '2020-03-06', 3),
(21, 31, '2020-03-06', 3),
(22, 33, '2020-03-06', 3),
(23, 25, '2020-03-06', 3),
(24, 65, '2020-03-06', 3),
(25, 77, '2020-03-06', 3),
(26, 67, '2020-03-06', 3),
(27, 69, '2020-03-06', 3),
(28, 19, '2020-03-06', 2),
(29, 30, '2020-03-06', 2),
(30, 74, '2020-03-06', 2),
(31, 18, '2020-03-06', 2),
(32, 68, '2020-03-06', 2),
(33, 75, '2020-03-06', 2),
(34, 36, '2020-03-06', 2),
(35, 39, '2020-03-06', 2),
(36, 72, '2020-03-06', 2),
(37, 41, '2020-03-06', 2),
(38, 21, '2020-03-06', 2),
(39, 40, '2020-03-06', 2),
(40, 22, '2020-03-06', 2),
(41, 71, '2020-03-06', 2),
(42, 34, '2020-03-06', 2),
(43, 73, '2020-03-06', 2),
(44, 66, '2020-03-06', 2),
(45, 28, '2020-03-06', 2),
(46, 38, '2020-03-06', 2),
(47, 42, '2020-03-06', 2),
(48, 35, '2020-03-06', 2),
(49, 12, '2020-03-06', 2),
(50, 37, '2020-03-06', 2),
(51, 70, '2020-03-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `text`) VALUES
(14, 'Which of the following best describes a package initialization block?'),
(12, 'We never need to use a forward declaration when invoking a public subprogram. True or False?'),
(13, 'A bodiless package contains what?'),
(15, 'An package initialization block automatically executes once and is used to initialize public and private package variables. True or False?	'),
(16, 'Which two of these functions could not be in the same package?\r\n<code>1. FUNCTION get_emp (p1 DATE) RETURN VARCHAR2;\r\n2. FUNCTION get_emp (p1 DATE, p2 NUMBER) RETURN VARCHAR2;\r\n3. FUNCTION get_emp (p1 DATE, p2 NUMBER) RETURN NUMBER;\r\n4. FUNCTION get_emp (p1 NUMBER, p2 DATE) RETURN VARCHAR2;</code>'),
(17, 'Which of the following statements about packages is NOT true ?	'),
(18, 'Which of the following are good reasons for creating and using Packages?\r\nA.Related procedures, functions, and variables can be grouped together as a single unit\r\nB. We can recompile the package body without having to recompile the specification\r\nC. We can create packages without needing any system privileges\r\nD. The detailed package body code is invisible to the calling environment.'),
(19, 'What is wrong with the following syntax for creating a package specification?\r\n<code>CREATE OR REPLACE mypack IS\r\n    g_constant1 NUMBER(6) := 100;\r\n    PROCEDURE proc1 (p_param1 IN VARCHAR2);\r\n    PROCEDURE proc2;\r\nEND mypack;</code>'),
(20, 'Which part of a package must be created first, the specification or the body?'),
(21, 'Package MYPACK contains procedure MYPROC. You can see which parameters MYPROC uses by executing: DESCRIBE mypack.myproc. True or False?	'),
(22, 'Which of the following will display the detailed code of the subprograms in package DEPTPACK in your schema ?	'),
(23, 'We want to remove the specification (but not the body) of package BIGPACK from the database. Which of the following commands will do this?	'),
(24, 'We want to remove both the specification and the body of package CO_PACK from the database. Which of the following commands will do this?	'),
(25, 'A package contains both public and private subprograms. Which one of the following statements is true?	'),
(26, 'In a package, public components are declared in the specification but private components are not. True or False?	'),
(28, 'Package CURSPACK declares a global cursor in the package specification. The package contains three public procedures: OPENPROC opens the cursor; FETCHPROC fetches 5 rows from the cursor\'s active set; CLOSEPROC closes the cursor.\r\nWhat will happen when a user session executes the following commands in the order shown?\r\n<code>\r\n   curspack.openproc; -- line 1\r\n    curspack.fetchproc; -- line 2\r\n    curspack.fetchproc; -- line 3\r\n    curspack.openproc; -- line 4\r\n    curspack.fetchproc; -- line 5\r\n    curspack.closeproc; -- line 6</code>'),
(29, 'A cursor\'s state is defined only by whether it is open or closed and, if open, how many rows it holds. True or False?'),
(30, 'A cursor is declared in a package specification. User SIOBHAN opens the cursor and fetches the first three rows from the cursor\'s active set, but does not close the cursor.\r\nUser FRED now connects to the database. FRED can immediately fetch the next three rows without opening the cursor. True or False?'),
(31, 'A package\'s state is initialized when the package is first loaded. True or False?	'),
(32, 'Users A and B call the same procedure in a package to initialize a global variable my_pkg.g_var. What will be the value of my_pkg.g_var for User A at Point A? <code>\r\nUser A: my_pkg.g_var is 10\r\nUser B: my_pkg.g_var is 10\r\nUser A: my_pkg.g_var is 50\r\nUser B: my_pkg.g_var is 25\r\nPoint A </code>'),
(33, 'The UTL_MAIL package allows sending email from the Oracle database to remote recipients.	'),
(34, 'Which of the following exceptions can be raised ONLY when using the UTL_FILE package? (Choose two.)'),
(35, 'Which general exceptions may be handled by the UTL_FILE package? (Choose 2)	'),
(36, 'The DBMS_OUTPUT.PUT procedure places text in a buffer but does not display the contents of the buffer. True or False?	'),
(37, 'Which of the following procedures is not valid for the UTL_MAIL package	'),
(38, 'The UTL_FILE package contains several exceptions exclusively used in this package. Which are they? (Choose 3)	'),
(39, 'Why is it better to use DBMS_OUTPUT only in anonymous blocks, not inside stored subprograms such as procedures?	'),
(40, 'The DBMS_OUTPUT gives programmers an easy-to-use interface to see, for instance, the current value of a loop counter, or whether or not a program reaches a particular branch of an IF statement. (True or False?)'),
(41, 'Which DBMS_OUTPUT package subprogram places text into the buffer at Line 1? (Choose one)\r\n<code>\r\n  IF v_bool1 AND NOT v_bool2 AND v_number < 25 THEN\r\n    --Line 1\r\n  ELSE\r\n    ...\r\n  END IF;\r\n  DBMS_OUTPUT.NEW_LINE;</code>'),
(42, 'The UTL_FILE package can be used to create binary files such as JPEGs as well as text files. True or False?	'),
(64, 'A package initialization block is executed automatically every time a user invokes any procedure or function in the package. True or False?	'),
(65, 'Which of the following best describes a package initialization block?	'),
(66, 'Package TAXPACK declares a global variable G_TAXRATE NUMBER(2,2). The value of the tax rate is stored in table TAXTAB in the database. You want to read this value automatically into G_TAXRATE each time a user session makes its first call to TAXPACK. How would you do this?	'),
(67, 'The following example shows a valid record data type and variable. True or False?<code>\r\nTYPE DeptRecTyp\r\n  IS RECORD (deptid NUMBER(4) NOT NULL := 99,\r\n  dname departments.department_name%TYPE,\r\n  loc departments.location_id%TYPE,\r\n  region regions.region_id%TYPE );\r\ndept_rec DeptRecTyp;</code>'),
(68, 'In which component of a package is the full definition of a public procedure written?	'),
(69, 'A number variable declared in a package is initialized to NULL unless assigned another value. True or False?	'),
(70, 'Every subprogram which has been declared in a package specification must also be included in the package body. Triue or False?	'),
(71, 'Which of the following are good reasons for creating and using Packages?\r\nA.Related procedures, functions, and variables can be grouped together as a single unit\r\nB.We can recompile the package body without having to recompile the specification\r\nC.We can create packages without needing any system privileges\r\nD.The detailed package body code is invisible to the calling environment.'),
(72, 'Which of the following can be included in a package?	'),
(73, 'A local variable defined inside a package procedure is visible to the calling environment. True or False?	'),
(74, 'Which one of the following queries would you use to see the detailed code of a package called EMP_PKG?	'),
(75, 'Examine the following package specification:<code>\r\nCREATE OR REPLACE PACKAGE mypack IS\r\n    percent_tax NUMBER := 20;\r\n    PROCEDURE proc1;\r\nEND mypack;</code>\r\n\r\nThe package body of mypack also includes a function called func1. Which of the following statements are true? (Choose three.)'),
(76, 'Package OLDPACK is in your schema. What will happen when the following statement is executed?\r\n<code>DROP PACKAGE oldpack;</code>'),
(77, 'A local variable declared within a procedure in a package can be referenced by any other component of that package. True or False?	');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionid` (`questionid`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
