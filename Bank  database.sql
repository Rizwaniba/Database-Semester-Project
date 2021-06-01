

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: ` bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--
Create database bank;
use bank;
CREATE TABLE `cards` (
  `AccountNumber` varchar(13) NOT NULL,
  `DebitCardNo` varchar(12) NOT NULL,
  `DebitCardType` varchar(30) NOT NULL,
  `DebitCardCVV` varchar(4) NOT NULL,
  `DebitIssuedDate` varchar(20) NOT NULL,
  `DebitCardExpiry` varchar(20) NOT NULL,
  `CreditCardNumber` varchar(12) NOT NULL,
  `CreditCardCVV` varchar(3) NOT NULL,
  `CreditCardType` varchar(30) NOT NULL,
  `CreditCardIssued` varchar(30) NOT NULL,
  `CreditCardExpiry` varchar(30) NOT NULL,
  `CreditCardPin` varchar(4) NOT NULL,
  `CreditCardBalance` varchar(60) NOT NULL,
  `CreditCardInterestRate` varchar(6) NOT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `First_Name` varchar(60) NOT NULL,
  `Last_Name` varchar(60) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Mobile_Number` varchar(11) NOT NULL,
  `Pan_Number` varchar(10) NOT NULL,
  `Account_Number` varchar(13) NOT NULL,
  `Account_Type` varchar(30) NOT NULL,
  `Adhar_Number` varchar(12) NOT NULL,
  `Debit_Card_Number` varchar(12) NOT NULL,
  `Pin_Number` varchar(4) NOT NULL,
  `Balance` varchar(1000) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Account_Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logindetail`
--

CREATE TABLE `logindetail` (
  `AccountNumber` varchar(12) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `Date` varchar(20) NOT NULL,
  `AccountNumber` varchar(13) NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `CreditDebit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`AccountNumber`),
  ADD UNIQUE KEY `AccountNumber` (`AccountNumber`),
  ADD UNIQUE KEY `DebitCardNo` (`DebitCardNo`),
  ADD UNIQUE KEY `CreditCardNumber` (`CreditCardNumber`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`Account_Number`),
  ADD UNIQUE KEY `Account_Number` (`Account_Number`),
  ADD UNIQUE KEY `Debit_Card_Number` (`Debit_Card_Number`),
  ADD UNIQUE KEY `Adhar_Number` (`Adhar_Number`),
  ADD UNIQUE KEY `Mobile_Number` (`Mobile_Number`),
  ADD UNIQUE KEY `Pan_Number` (`Pan_Number`);

--
-- Indexes for table `logindetail`
--
ALTER TABLE `logindetail`
  ADD PRIMARY KEY (`AccountNumber`),
  ADD UNIQUE KEY `AccountNumber` (`AccountNumber`),
  ADD UNIQUE KEY `Username` (`Username`);
COMMIT;
