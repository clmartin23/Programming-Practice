-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2020 at 04:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmartin89`
--

-- --------------------------------------------------------

--
-- Table structure for table `Aircraft`
--

CREATE TABLE `Aircraft` (
  `AircraftID` int(11) NOT NULL,
  `AircraftType` varchar(255) NOT NULL,
  `SeatCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Aircraft`
--

INSERT INTO `Aircraft` (`AircraftID`, `AircraftType`, `SeatCapacity`) VALUES
(1, 'AirbusA350', 325),
(2, 'AirbusA380', 544),
(3, 'Boeing737', 126),
(4, 'Boeing747', 410);

-- --------------------------------------------------------

--
-- Table structure for table `Airport`
--

CREATE TABLE `Airport` (
  `AirportID` int(11) NOT NULL,
  `AirportName` varchar(255) NOT NULL,
  `AirportCode` varchar(255) NOT NULL,
  `AirportAddress` varchar(255) NOT NULL,
  `AirportCity` int(11) NOT NULL,
  `Postcode` varchar(255) NOT NULL,
  `AirportCountry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Airport`
--

INSERT INTO `Airport` (`AirportID`, `AirportName`, `AirportCode`, `AirportAddress`, `AirportCity`, `Postcode`, `AirportCountry`) VALUES
(2, 'BelfastCity', 'BHD', '1 Sydenham Road', 1, 'BT4 3FG', 1),
(3, 'BelfastInternational', 'BFS', '2 NotInBelfast Road', 1, 'BT37 4AS', 1),
(4, 'Heathrow', 'HTH', '24 Heathrow Street', 3, 'LN4 7SG', 12),
(5, 'Gatwick', 'GAT', '34 Gatwick Street', 3, 'LN7 3SH', 1),
(6, 'Luton', 'LTN', '45 Luton Road', 3, 'LN2 8HR', 1),
(7, 'Stansted', 'STN', '65 Stansted Terrace', 3, 'LN8 9IJ', 1),
(8, 'Edinburgh', 'EDN', '48 Edinburgh Place', 4, 'ED8 4JG', 1),
(9, 'Cardiff', 'CDF', '62 Cardiff Road', 5, 'CD45 7NH', 1),
(10, 'AmsterdamCity', 'AMD', '23 Amsterdam Street', 6, 'AM85 7NG', 3),
(11, 'Berlin', 'BER', '45 Berlin Road', 7, 'BR67 8HJ', 4),
(12, 'Madrid', 'MD', '45 Bibliotech Place', 8, 'MD7 8NH', 5),
(13, 'Barcelona', 'BRC', '98 Barce Road', 9, 'BC7 8NJ', 5),
(14, 'Rome', 'ROM', '45 Rome Road', 10, 'RM6 7GH', 6),
(15, 'ParisInternational', 'PAR', '24 Lovers Boulevard', 13, 'PR2 6BH', 9),
(16, 'Auckland', 'AUC', '86 Kiwi Street', 22, 'AU23 9HF', 16),
(17, 'SydneyInternational', 'SYD', '16 Bondi Parade', 17, '2000', 13),
(18, 'MelbourneCity', 'MEL', '97 St Kilda Road', 18, '4000', 13),
(19, 'NewYork', 'NEW', '132 The Bronx', 19, 'NW4 5IH', 14),
(20, 'LAInternational', 'LAX', '95 WestCoast Lane', 20, 'LA3 T23', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Baggage`
--

CREATE TABLE `Baggage` (
  `BaggageID` int(11) NOT NULL,
  `BaggageType` varchar(255) NOT NULL,
  `BaggageCost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Baggage`
--

INSERT INTO `Baggage` (`BaggageID`, `BaggageType`, `BaggageCost`) VALUES
(1, 'CabinBagOnly', 0),
(2, '15kgHoldBag', 17.99),
(3, '23kgHoldBag', 21.49),
(4, '26kgHoldBag', 33.49),
(5, '29kgHoldBag', 45.49),
(6, '32kgHoldBag', 57.49);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `BookingRefNumber` varchar(255) NOT NULL,
  `BookingMadeDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CustomerID` int(11) NOT NULL,
  `TotalBookingPrice` decimal(12,2) DEFAULT NULL,
  `ExchangeRate` int(11) DEFAULT NULL,
  `TotalInChosenCurrency` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `BookingRefNumber`, `BookingMadeDate`, `CustomerID`, `TotalBookingPrice`, `ExchangeRate`, `TotalInChosenCurrency`) VALUES
(3, 'EZJ1001', '2020-12-01 12:50:56', 10, '651.96', 2, '730.20'),
(5, 'EZJ1003', '2020-12-01 12:48:24', 2, NULL, NULL, NULL),
(8, 'EJZ1005', '2020-12-01 12:48:35', 6, NULL, NULL, NULL),
(10, 'EJZ1007', '2020-12-01 12:49:35', 9, NULL, NULL, NULL),
(12, 'EJZ1009', '2020-12-01 12:49:35', 8, NULL, NULL, NULL),
(13, 'EJZ1010', '2020-12-01 12:49:35', 8, NULL, NULL, NULL),
(14, 'EJZ1011', '2020-12-01 12:49:35', 7, NULL, NULL, NULL),
(16, 'EJZ1013', '2020-12-01 12:49:35', 5, NULL, NULL, NULL),
(18, 'EJZ1015', '2020-12-01 12:49:35', 4, NULL, NULL, NULL),
(19, 'EJZ1016', '2020-12-01 12:49:35', 4, NULL, NULL, NULL),
(20, 'EJZ1017', '2020-12-01 12:49:35', 3, NULL, NULL, NULL),
(21, 'EJZ1018', '2020-12-01 12:49:35', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CardTypes`
--

CREATE TABLE `CardTypes` (
  `CardTypeID` int(11) NOT NULL,
  `CardTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CardTypes`
--

INSERT INTO `CardTypes` (`CardTypeID`, `CardTypeName`) VALUES
(1, 'Visa'),
(2, 'VisaDebit'),
(3, 'Mastercard'),
(4, 'AmericanExpress');

-- --------------------------------------------------------

--
-- Table structure for table `City`
--

CREATE TABLE `City` (
  `CityID` int(11) NOT NULL,
  `CityName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `City`
--

INSERT INTO `City` (`CityID`, `CityName`) VALUES
(1, 'Belfast'),
(2, 'Dublin'),
(3, 'London'),
(4, 'Edinburgh'),
(5, 'Cardiff'),
(6, 'Amsterdam'),
(7, 'Berlin'),
(8, 'Madrid'),
(9, 'Barcelona'),
(10, 'Rome'),
(11, 'Budapest'),
(12, 'Athens'),
(13, 'Paris'),
(14, 'Copenhagen'),
(15, 'Bangkok'),
(16, 'Dubai'),
(17, 'Sydney'),
(18, 'Melbourne'),
(19, 'NewYork'),
(20, 'LosAngeles'),
(21, 'RioDeJaneiro'),
(22, 'Auckland'),
(23, 'Wellington'),
(24, 'Toronto'),
(25, 'NewDelhi'),
(26, 'BuenosAires'),
(27, 'Vienna');

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`CountryID`, `CountryName`) VALUES
(1, 'United Kingdom'),
(2, 'Ireland'),
(3, 'Holland'),
(4, 'Germany'),
(5, 'Spain'),
(6, 'Italy'),
(7, 'Hungary'),
(8, 'Greece'),
(9, 'France'),
(10, 'Denmark'),
(11, 'Thailand'),
(12, 'UnitedArabEmirates'),
(13, 'Australia'),
(14, 'USA'),
(15, 'Brazil'),
(16, 'NewZealand'),
(17, 'Canada'),
(18, 'India'),
(19, 'Argentina'),
(20, 'Austria');

-- --------------------------------------------------------

--
-- Table structure for table `CurrencyExchange`
--

CREATE TABLE `CurrencyExchange` (
  `CurrencyExchangeID` int(11) NOT NULL,
  `CurrencyName` varchar(255) NOT NULL,
  `ExchangeRate` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CurrencyExchange`
--

INSERT INTO `CurrencyExchange` (`CurrencyExchangeID`, `CurrencyName`, `ExchangeRate`) VALUES
(1, 'GBP', '1.00'),
(2, 'EUR', '1.12'),
(3, 'USD', '1.34'),
(4, 'AUD', '1.82'),
(5, 'Bitcoin', '0.07');

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerTitle` int(11) NOT NULL,
  `CustomerFirstName` varchar(255) NOT NULL,
  `CustomerSurname` varchar(255) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  `CustomerPhoneNo` varchar(255) NOT NULL,
  `CustomerAddress` varchar(255) NOT NULL,
  `CustomerCity` int(11) NOT NULL,
  `CustomerCountry` int(11) NOT NULL,
  `CustomerPostcode` varchar(255) NOT NULL,
  `EasyJetPlusNumber` int(11) DEFAULT NULL,
  `OffersAndUpdates` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `CustomerTitle`, `CustomerFirstName`, `CustomerSurname`, `CustomerEmail`, `CustomerPhoneNo`, `CustomerAddress`, `CustomerCity`, `CustomerCountry`, `CustomerPostcode`, `EasyJetPlusNumber`, `OffersAndUpdates`) VALUES
(2, 2, 'Rian', 'Watson', 'watsy93@gmail.com', '', '12 Lambeg Road', 1, 1, 'BT43 9FH', 87695, 1),
(3, 4, 'Paul', 'Wilson', 'drbaldwin@doctors.co.uk', '', '56 Kings Road', 3, 1, 'LN42 9AB', NULL, 2),
(4, 2, 'Boris', 'Johnson', 'bjminister@gov.uk', '', '10 Downing Street', 3, 1, 'LN1 1AC', 65984, 1),
(5, 1, 'Siobhan', 'Lindores', 'Shiv@hotmail.com', '', '4 Ards Road', 1, 1, 'BT16 8GP', NULL, 2),
(6, 2, 'Anthony', 'Kiedas', 'rhcp@rock.com', '', '14 Bloodsugar Road', 20, 14, 'LA14 3BE', 45623, 2),
(7, 2, 'TheArtistFormallyKnowAs', 'Prince', 'whendovescry@ymail.com', '', '14 Wannabeyourlover Road', 19, 14, 'NY1 8NH', NULL, 1),
(8, 2, 'Kevin', 'Parker', 'innerspeaker@hotmail.com', '', '19 Perth Road', 17, 13, '2010', NULL, 2),
(9, 3, 'Elizabeth', 'Windsor', 'queeny7@gmail.com', '', 'Buckingham Palace', 3, 1, 'Ln1 1AA', 11111, 1),
(10, 2, 'Andreas', 'Pirlo', 'baller1@hotmail.com', '', '1 Rome Road', 10, 6, 'RM1 4FD', 21486, 2),
(11, 2, 'Diego', 'Maradona', '10Napoli@gmail.com', '', '6 Lanus Place', 26, 19, 'BA1 9PL', 21369, 2),
(12, 2, 'Mitchel', 'Corner', 'BeHardToForget@Vanlife.com', '', '7 FlightoftheConchords Way', 23, 16, 'WEL1 G05', 13713, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Flight`
--

CREATE TABLE `Flight` (
  `FlightID` int(11) NOT NULL,
  `FlightNumber` varchar(255) NOT NULL,
  `Route` int(11) NOT NULL,
  `DepartureDate` date NOT NULL,
  `DepartureTime` time NOT NULL,
  `ArrivalDate` date NOT NULL,
  `ArrivalTime` time NOT NULL,
  `FlightDuration` int(11) NOT NULL,
  `AircraftType` int(11) NOT NULL,
  `Flight Cost` decimal(12,2) NOT NULL,
  `SeatsRemaining` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Flight`
--

INSERT INTO `Flight` (`FlightID`, `FlightNumber`, `Route`, `DepartureDate`, `DepartureTime`, `ArrivalDate`, `ArrivalTime`, `FlightDuration`, `AircraftType`, `Flight Cost`, `SeatsRemaining`) VALUES
(1, 'BELMEL45678', 5, '2020-12-13', '12:00:00', '2020-12-14', '12:00:00', 6, 4, '900.00', 0),
(2, 'MELBEL8754', 6, '2020-12-27', '09:00:00', '2020-12-28', '09:20:00', 6, 4, '950.00', 0),
(3, 'BELED9865', 3, '2020-12-01', '10:00:00', '2020-12-01', '10:30:00', 1, 1, '60.00', 0),
(4, 'EDBEL1235', 4, '2020-12-20', '09:00:00', '2020-12-20', '09:30:00', 1, 1, '40.00', 0),
(5, 'BELAUCK4587', 7, '2021-01-01', '09:00:00', '2021-01-02', '15:00:00', 7, 3, '1200.00', 0),
(6, 'AUCKBEL6598', 8, '2021-01-24', '12:00:00', '2021-01-25', '18:00:00', 7, 3, '1050.00', 0),
(7, 'GATPAR6154', 11, '2021-01-01', '14:00:00', '2021-01-01', '16:00:00', 3, 2, '80.00', 0),
(8, 'PARGAT5184', 12, '2021-01-08', '16:00:00', '2021-01-08', '18:00:00', 3, 2, '90.00', 0),
(9, 'EDROM6594', 15, '2020-12-22', '13:00:00', '2020-12-22', '15:00:00', 3, 2, '70.00', 0),
(10, 'ROMED6251', 16, '2020-12-28', '12:00:00', '2020-12-28', '14:00:00', 3, 2, '80.00', 542),
(11, 'HEABEL6148', 2, '2020-12-31', '18:00:00', '2020-12-31', '19:00:00', 2, 2, '40.00', 0),
(12, 'BELHEA5698', 1, '2021-01-18', '07:00:00', '2021-01-18', '08:00:00', 2, 2, '30.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `FlightBooking`
--

CREATE TABLE `FlightBooking` (
  `FlightBooking` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FlightBooking`
--

INSERT INTO `FlightBooking` (`FlightBooking`, `BookingID`, `FlightID`) VALUES
(1, 3, 10),
(2, 3, 9),
(3, 5, 1),
(4, 5, 2),
(5, 8, 7),
(6, 8, 8),
(7, 10, 11),
(8, 10, 12),
(9, 12, 2),
(10, 12, 1),
(11, 13, 5),
(12, 13, 6),
(13, 14, 7),
(14, 14, 8),
(15, 16, 7),
(16, 16, 8),
(17, 18, 5),
(18, 18, 6),
(19, 19, 11),
(20, 19, 12),
(21, 20, 11),
(22, 20, 12),
(23, 21, 3),
(24, 21, 4);

-- --------------------------------------------------------

--
-- Table structure for table `FlightDuration`
--

CREATE TABLE `FlightDuration` (
  `FlightDurationID` int(11) NOT NULL,
  `FlightDurationTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FlightDuration`
--

INSERT INTO `FlightDuration` (`FlightDurationID`, `FlightDurationTime`) VALUES
(1, '0 Hours 30 Minutes'),
(2, '1 Hour 0 Minutes'),
(3, '2 Hours 0 Minutes'),
(4, '3 Hours 0 Minutes'),
(5, '10 hours 0 Minutes'),
(6, '24 Hours 0 Minutes'),
(7, '30 Hours 0 Minutes');

-- --------------------------------------------------------

--
-- Table structure for table `FoodVoucher`
--

CREATE TABLE `FoodVoucher` (
  `FoodVoucherID` int(11) NOT NULL,
  `FoodVoucherType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FoodVoucher`
--

INSERT INTO `FoodVoucher` (`FoodVoucherID`, `FoodVoucherType`) VALUES
(1, '£5FoodVoucher'),
(2, '£10FoodVoucher'),
(3, '£20FoodVoucher');

-- --------------------------------------------------------

--
-- Table structure for table `LogIn`
--

CREATE TABLE `LogIn` (
  `LogInID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `CustomerUsername` varbinary(255) NOT NULL,
  `CustomerPassword` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LogIn`
--

INSERT INTO `LogIn` (`LogInID`, `CustomerID`, `CustomerUsername`, `CustomerPassword`) VALUES
(6, 2, 0x43b5cc1e0be39d8b6aac8dea69568f01, 0x4a0f09f6bcb6b582bad3bf524903586d),
(7, 3, 0x9378974cf9e61cbc861e94be84b14130, 0x4162d0c2218dabfb48be3df5176128bf),
(8, 4, 0x4406370f5d928442a679ecebb0d0a290, 0x2491b0d34327b59ce4bb1bb212a51f74),
(9, 5, 0x263d8d27e2bba9c19bcb140cc82e1ba0, 0xd81fc163f382fe029e35c66e11fad33d),
(10, 6, 0xf1e867689ea9a432edf0ee7452a9036b, 0x63c812c126643d72189cfd96ab8995f8),
(11, 7, 0xfda4b303071915cdb0ce1d1de99cfb28, 0xfcaf482fa73648741ea42cf1c7669643),
(12, 8, 0xa11c531170afaa8633e44da9692f48a7, 0x9050e45986c58ac9e6099fdd02d586d6),
(13, 9, 0x1c8851261702250d00973e4a5c166a42, 0xe40b8a6e5dcd6d80ff9bbe23dbc42cd9ab766daf9d486817b2c1f8bc3f21ff3a),
(14, 10, 0xad14a066b1e73d80d3bc8651340a26c9, 0x7b5a16a86a8fee57b5149fe104ef163e),
(15, 11, 0x79bd82b712b1a7668cc269a11e010d38, 0x73c9d132a72549977fb46f103c5e90c9),
(16, 12, 0xfef6b78079d824d794b9113ef8df6a26, 0xd007b412be59ca489344577917677eb3);

-- --------------------------------------------------------

--
-- Table structure for table `OffersAndUpdates`
--

CREATE TABLE `OffersAndUpdates` (
  `OffersAndUpdatesID` int(11) NOT NULL,
  `OffersAndUpdatesName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OffersAndUpdates`
--

INSERT INTO `OffersAndUpdates` (`OffersAndUpdatesID`, `OffersAndUpdatesName`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `Passenger`
--

CREATE TABLE `Passenger` (
  `PassengerID` int(11) NOT NULL,
  `PassengerBookingID` int(11) NOT NULL,
  `PassengerFlightID` int(11) NOT NULL,
  `PassengerTitle` int(11) NOT NULL,
  `PassengerFirstName` varchar(255) NOT NULL,
  `PassengerSurname` varchar(255) NOT NULL,
  `PassengerEmail` varchar(255) NOT NULL,
  `PassengerPhoneNo` varchar(255) NOT NULL,
  `PassportID` int(11) NOT NULL,
  `PassengerType` int(11) NOT NULL,
  `PassengerSeatNumber` int(11) DEFAULT NULL,
  `TravelInsurance` int(11) NOT NULL,
  `FoodVoucher` int(11) DEFAULT NULL,
  `PassReasonForTravel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Passenger`
--

INSERT INTO `Passenger` (`PassengerID`, `PassengerBookingID`, `PassengerFlightID`, `PassengerTitle`, `PassengerFirstName`, `PassengerSurname`, `PassengerEmail`, `PassengerPhoneNo`, `PassportID`, `PassengerType`, `PassengerSeatNumber`, `TravelInsurance`, `FoodVoucher`, `PassReasonForTravel`) VALUES
(1, 3, 10, 2, 'Andreas', 'Pirlo', 'baller1@hotmail.com', '', 78956, 1, 2, 1, 3, 2),
(2, 3, 10, 3, 'Susan', 'Pirlo', 'susiep@hotmail.com', '', 61489, 1, 7, 1, 3, 2),
(5, 3, 9, 2, 'Andreas', 'Pirlo', 'baller1@hotmail.com', '', 78956, 1, 2, 1, 3, 2),
(6, 3, 9, 3, 'Susan', 'Pirlo', 'susiep@hotmail.com', '', 61489, 1, 7, 1, 3, 2),
(7, 5, 1, 2, 'Rian', 'Watson', 'watsy93@gmail.com', '', 14785, 1, 5, 2, NULL, 2),
(8, 5, 2, 2, 'Rian', 'Watson', 'watsy93@gmail.com', '', 14785, 1, 6, 2, NULL, 2),
(9, 8, 7, 2, 'Anthony', 'Kiedas', 'rhcp@rock.com', '', 15954, 1, 12, 2, 1, 1),
(10, 8, 7, 2, 'John', 'Frusciante', 'sickriffs@gmail.com', '', 15963, 1, 17, 2, NULL, 1),
(11, 8, 8, 2, 'Anthony', 'Kiedas', 'rhcp@rock.com', '', 15954, 1, 2, 2, 1, 1),
(12, 8, 8, 2, 'John', 'Frusciante', 'sickriffs@gmail.com', '', 15963, 1, 7, 2, NULL, 1),
(13, 10, 11, 3, 'Elizabeth', 'Windsor', 'queeny7@gmail.com', '', 111111, 1, 2, 1, 2, 1),
(14, 10, 11, 2, 'Phillip', 'Windsor', 'philthegreek@ymail.co.uk', '', 1111, 1, 7, 1, 2, 1),
(15, 10, 12, 3, 'Elizabeth', 'Windsor', 'queeny7@gmail.com', '', 111111, 1, 2, 1, 2, 1),
(16, 10, 12, 2, 'Phillip', 'Windsor', 'philthegreek@ymail.co.uk', '', 1111, 1, 7, 1, 2, 1),
(17, 12, 2, 2, 'Kevin', 'Parker', 'innerspeaker@hotmail.com', '', 34659, 1, 3, 2, NULL, 1),
(18, 12, 1, 2, 'Kevin', 'Parker', 'innerspeaker@hotmail.com', '', 34659, 1, 3, 2, NULL, 1),
(19, 13, 5, 2, 'Kevin', 'Parker', 'innerspeaker@hotmail.com', '', 34659, 1, 3, 2, NULL, 1),
(20, 13, 6, 2, 'Kevin', 'Parker', 'innerspeaker@hotmail.com', '', 34659, 1, 3, 2, NULL, 1),
(21, 18, 5, 2, 'Boris', 'Johnson', 'bjminister@gov.uk', '', 78954, 1, 4, 2, NULL, 2),
(22, 18, 5, 1, 'Baby', 'Johnson', 'bjminister@gov.uk', '', 65984, 3, 5, 2, NULL, 2),
(23, 18, 6, 2, 'Boris', 'Johnson', 'bjminister@gov.uk', '', 78954, 1, 4, 2, NULL, 2),
(24, 18, 6, 1, 'Baby', 'Johnson', 'bjminister@gov.uk', '', 65984, 3, 5, 2, NULL, 2),
(25, 19, 11, 2, 'Boris', 'Johnson', 'bjminister@gov.uk', '', 16465, 1, 5, 2, NULL, 1),
(26, 19, 12, 2, 'Boris', 'Johnson', 'bjminister@gov.uk', '', 16465, 1, 5, 2, NULL, 1),
(27, 16, 7, 1, 'Siobhan', 'Lindores', 'Shiv@hotmail.com', '', 65948, 1, 4, 2, NULL, 2),
(28, 16, 7, 5, 'Lola', 'Lindores', 'topdog@gmail.com', '', 65984, 2, 5, 2, 1, 2),
(29, 16, 8, 1, 'Siobhan', 'Lindores', 'Shiv@hotmail.com', '', 65948, 1, 4, 2, NULL, 2),
(30, 16, 8, 5, 'Lola', 'Lindores', 'topdog@gmail.com', '', 65984, 2, 5, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerBaggage`
--

CREATE TABLE `PassengerBaggage` (
  `PassengerBaggageID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `BaggageID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerBaggage`
--

INSERT INTO `PassengerBaggage` (`PassengerBaggageID`, `PassengerID`, `BaggageID`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 5, 2),
(4, 6, 2),
(5, 7, 3),
(6, 7, 3),
(7, 9, 2),
(8, 10, 2),
(9, 11, 2),
(10, 12, 2),
(11, 13, 5),
(12, 14, 5),
(13, 15, 5),
(14, 16, 5),
(15, 20, 2),
(16, 17, 1),
(17, 18, 1),
(18, 19, 2),
(19, 21, 2),
(20, 22, 1),
(21, 23, 2),
(22, 24, 1),
(23, 27, 6),
(24, 28, 2),
(25, 29, 6),
(26, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerSpecialAssistance`
--

CREATE TABLE `PassengerSpecialAssistance` (
  `PassengerSpecialAssistanceID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `SpecialAssistanceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerSpecialAssistance`
--

INSERT INTO `PassengerSpecialAssistance` (`PassengerSpecialAssistanceID`, `PassengerID`, `SpecialAssistanceID`) VALUES
(1, 14, 1),
(2, 16, 1),
(3, 28, 4),
(4, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerSpecialBaggage`
--

CREATE TABLE `PassengerSpecialBaggage` (
  `PassengerSpecialBagID` int(11) NOT NULL,
  `PassengerID` int(11) NOT NULL,
  `SpecialBaggageID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerSpecialBaggage`
--

INSERT INTO `PassengerSpecialBaggage` (`PassengerSpecialBagID`, `PassengerID`, `SpecialBaggageID`) VALUES
(1, 10, 4),
(2, 12, 4),
(5, 27, 2),
(6, 29, 2),
(7, 28, 5),
(8, 30, 5),
(9, 5, 3),
(10, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PassengerType`
--

CREATE TABLE `PassengerType` (
  `PassengerTypeID` int(11) NOT NULL,
  `PassengerType` varchar(255) NOT NULL,
  `Pricing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PassengerType`
--

INSERT INTO `PassengerType` (`PassengerTypeID`, `PassengerType`, `Pricing`) VALUES
(1, 'Adult(16+)', 'Standard Flight Price'),
(2, 'Child(2-15)', '20% Discount'),
(3, 'Infant(<2)', '50% Discount');

-- --------------------------------------------------------

--
-- Table structure for table `PaymentCard`
--

CREATE TABLE `PaymentCard` (
  `PaymentCardID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `CardholderName` varbinary(255) NOT NULL,
  `CardType` int(11) NOT NULL,
  `CardNumber` varbinary(255) NOT NULL,
  `CardSecurityCode` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PaymentCard`
--

INSERT INTO `PaymentCard` (`PaymentCardID`, `CustomerID`, `CardholderName`, `CardType`, `CardNumber`, `CardSecurityCode`) VALUES
(1, 2, 0xd7a60f472f703a9edfe167586dddc39c, 2, 0xdb47e6cea3dd516a5990bcfce6deb419eade3faa6dcd8a9a70fdccbe94368179, 0x11ec300fef59f3ccf6e2e67b8b3981fc),
(2, 3, 0x96170c18fd1cbaf2ac692c464c5e7037, 2, 0xc7d27e08df2cc58ce4a0e5802fa4c547393870bc79bf8c79f121730c6be4f472, 0x0b7f8022b85ae9cc92f654a709246a96),
(3, 4, 0x7b6358cd185cb1bf0a174ee49ff2dffb, 1, 0x4c6b8c2e6f1b96a1cabe0635a9964524393870bc79bf8c79f121730c6be4f472, 0xa8f691afeec35c051b9e938016221020),
(4, 5, 0x8daee56c99770113193867b0d7928600, 1, 0x6cb000ccbae871955a462a8bd41cd48316dc38f92d7b8ff56f5697fdbfd418a8, 0xf007b062a38299db2d4cb78a25550149),
(5, 6, 0xdab9b261a3114d5f6ce3c7fe3186500f, 4, 0x985250336e5605c34f725ef3267c48b8b426ad8c4aa9202cb1570a15cc5ad5cb, 0xafae8ba112dc35b8f140a54dcec59f04),
(6, 7, 0xfda4b303071915cdb0ce1d1de99cfb28, 4, 0x6c3e8861ac5fbe0b1fbfdc61c314ef39ff68eb783b695cc90909f2c16dae46a1, 0x89b30958492ad9a284f1e3d9c3f944f3),
(9, 8, 0xb7e29bb34cbac8ba5b494389f07b1190, 3, 0x665f3cbf73f3537204032e49bdf11ecc8317b272358e6ccd254ddfbeca0c67e5, 0x75b81cd854b470eb3292be4bbc74e063),
(10, 9, 0x38a69f39274461d9392679f58fc9f317, 4, 0x292c5962f2985191fe45d90719fa0a09daf8f1c3dcd2829d2b5b1aed269393d2, 0x1a1df6264dab79b0bbe934e658aaf7aa),
(11, 10, 0xd49b55bdee29e7f59a304f081e1249ba, 1, 0x4c90ee67905db7b16a11cf72d2b21cbb4856953c772b6ed10f576e7ab7c05a12, 0x3bc81519e1696b1f17a60c76cf5c0b63),
(12, 11, 0xfc2905565148ea3ae207bace15ac40af, 4, 0x96b316eb28eb9191999c5d11a6f4bbf34856953c772b6ed10f576e7ab7c05a12, 0x1a1df6264dab79b0bbe934e658aaf7aa);

-- --------------------------------------------------------

--
-- Table structure for table `PriceBreakdown`
--

CREATE TABLE `PriceBreakdown` (
  `PriceBreakdownID` int(11) NOT NULL,
  `BookingID` int(11) NOT NULL,
  `PriceBreakdownName` varchar(255) NOT NULL,
  `PriceBreakdownDesc` text NOT NULL,
  `PriceBreakdownCost` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PriceBreakdown`
--

INSERT INTO `PriceBreakdown` (`PriceBreakdownID`, `BookingID`, `PriceBreakdownName`, `PriceBreakdownDesc`, `PriceBreakdownCost`) VALUES
(1, 3, 'Passenger Andreas Flight ROMED6251', 'Adult flight from Rome to Edinburgh charged at standard rate ', '80.00'),
(2, 3, 'Passenger Susan Flight ROMED6251', 'Adult flight from Rome to Edinburgh charged at standard rate ', '80.00'),
(3, 3, 'Passenger Andreas seat A1 chosen flight ROMED6251', 'Extra leg room ', '20.00'),
(4, 3, 'Passenger Susan seat A2 chosen flight ROMED6251', 'Upfront', '10.00'),
(5, 3, 'Passenger Andreas hold bag chosen flight ROMED6251', '15kg hold bag', '17.99'),
(6, 3, 'Passenger Susan hold bag chosen flight ROMED6251', '15kg hold bag', '17.99'),
(7, 3, 'Passenger Andreas special baggage chosen flight ROMED6251', 'Hold golf bag', '70.00'),
(8, 3, 'Passenger Andreas food voucher chosen flight ROMED6251', '£20 food voucher to be spent on flight ', '20.00'),
(9, 3, 'Passenger Andreas food voucher chosen flight ROMED6251', '£20 food voucher to be spent on flight ', '20.00'),
(10, 3, 'Passenger Andreas Flight EDROM6594', 'Adult flight from Edinburgh to Rome charged at standard rate ', '70.00'),
(11, 3, 'Passenger Susan Flight EDROM6594', 'Adult flight from Edinburgh to Rome charged at standard rate ', '70.00'),
(12, 3, 'Passenger Andreas seat A1 chosen flight EDROM6594', 'Extra leg room ', '20.00'),
(13, 3, 'Passenger Susan seat A2 chosen flight EDROM6594', 'Upfront', '10.00'),
(14, 3, 'Passenger Andreas hold bag chosen flight EDROM6594', '15kg hold bag', '17.99'),
(15, 3, 'Passenger Susan hold bag chosen flight EDROM6594', '15kg hold bag', '17.99'),
(16, 3, 'Passenger Andreas special baggage chosen flight EDROM6594', 'Hold golf bag', '70.00'),
(17, 3, 'Passenger Andreas food voucher chosen flight EDROM6594', '£20 food voucher to be spent on flight ', '20.00'),
(18, 3, 'Passenger Susan food voucher chosen flight EDROM6594', '£20 food voucher to be spent on flight ', '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `ReasonForTravel`
--

CREATE TABLE `ReasonForTravel` (
  `ReasonForTravel` int(11) NOT NULL,
  `ReasonForTravelAnswer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ReasonForTravel`
--

INSERT INTO `ReasonForTravel` (`ReasonForTravel`, `ReasonForTravelAnswer`) VALUES
(1, 'Business'),
(2, 'Pleasure');

-- --------------------------------------------------------

--
-- Table structure for table `Route`
--

CREATE TABLE `Route` (
  `RouteID` int(11) NOT NULL,
  `RouteName` varchar(255) NOT NULL,
  `DepartureAirport` int(11) NOT NULL,
  `ArrivalAirport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Route`
--

INSERT INTO `Route` (`RouteID`, `RouteName`, `DepartureAirport`, `ArrivalAirport`) VALUES
(1, 'BelfastCity to Heathrow', 2, 4),
(2, 'Heathrow to BelfastCity', 4, 2),
(3, 'BelfastCity to Edinburgh', 2, 8),
(4, 'Edinburgh to BelfastCity', 8, 2),
(5, 'BelfastInternational to MelbourneCity', 3, 18),
(6, 'MelbourneCity to BelfastInternational', 18, 3),
(7, 'BelfastInternational to Auckland', 3, 16),
(8, 'Auckland to BelfastInternational', 16, 3),
(9, 'Heathrow to SydneyInternational', 4, 17),
(10, 'SydneyInternational to Heathrow', 17, 4),
(11, 'Gatwick to ParisInternational', 5, 15),
(12, 'ParisInternational to Gatwick', 15, 5),
(13, 'Stansted to Madrid', 7, 12),
(14, 'Madrid to Stansted', 12, 7),
(15, 'Edinburgh to Rome', 8, 14),
(16, 'Rome to Edinburgh', 14, 8),
(17, 'Cardiff to Madrid', 9, 12),
(18, 'Madrid to Cardiff', 12, 9),
(19, 'Heathrow to Berlin', 4, 11),
(20, 'Berlin to Heathrow', 11, 4),
(21, 'BelfastInternational to NewYork', 3, 19),
(22, 'NewYork to BelfastInternational', 19, 3),
(23, 'BelfastInternational to LAInternational', 3, 20),
(24, 'LAInternational to BelfastInternational', 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Seat`
--

CREATE TABLE `Seat` (
  `SeatID` int(11) NOT NULL,
  `SeatNumber` varchar(255) NOT NULL,
  `SeatType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Seat`
--

INSERT INTO `Seat` (`SeatID`, `SeatNumber`, `SeatType`) VALUES
(2, 'A1', 4),
(3, 'B1', 4),
(4, 'C1', 4),
(5, 'D1', 4),
(6, 'E1', 4),
(7, 'A2', 3),
(8, 'B2', 3),
(9, 'C2', 3),
(10, 'D2', 3),
(11, 'E2', 3),
(12, 'A3', 2),
(13, 'B3', 2),
(14, 'C3', 2),
(15, 'D3', 2),
(16, 'E3', 2),
(17, 'A4', 1),
(18, 'B4', 1),
(19, 'C4', 1),
(20, 'D4', 1),
(21, 'E4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SeatType`
--

CREATE TABLE `SeatType` (
  `SeatTypeID` int(11) NOT NULL,
  `SeatType` varchar(255) NOT NULL,
  `SeatPrice` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeatType`
--

INSERT INTO `SeatType` (`SeatTypeID`, `SeatType`, `SeatPrice`) VALUES
(1, 'NoneSelected', '0.00'),
(2, 'Standard', '5.00'),
(3, 'UpFront', '10.00'),
(4, 'ExtraLegRoom', '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `SpecialAssistance`
--

CREATE TABLE `SpecialAssistance` (
  `SpecialAssistanceID` int(11) NOT NULL,
  `SpecialAssistanceType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SpecialAssistance`
--

INSERT INTO `SpecialAssistance` (`SpecialAssistanceID`, `SpecialAssistanceType`) VALUES
(1, 'WheelchairUser'),
(2, 'Blind'),
(3, 'Deaf'),
(4, 'Epileptic');

-- --------------------------------------------------------

--
-- Table structure for table `SpecialBaggage`
--

CREATE TABLE `SpecialBaggage` (
  `SpecialBaggageID` int(11) NOT NULL,
  `SpecialBaggageType` varchar(255) NOT NULL,
  `SpecialBaggageCost` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SpecialBaggage`
--

INSERT INTO `SpecialBaggage` (`SpecialBaggageID`, `SpecialBaggageType`, `SpecialBaggageCost`) VALUES
(1, 'Bicycle', '45.00'),
(2, 'SurfBoard', '60.00'),
(3, 'GolfBag', '70.00'),
(4, 'Guitar', '30.00'),
(5, 'Violin', '20.00'),
(6, 'Skis', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `Title`
--

CREATE TABLE `Title` (
  `TitleID` int(11) NOT NULL,
  `TitleName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Title`
--

INSERT INTO `Title` (`TitleID`, `TitleName`) VALUES
(1, 'Miss'),
(2, 'Mr'),
(3, 'Mrs'),
(4, 'Dr'),
(5, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `TravelInsurance`
--

CREATE TABLE `TravelInsurance` (
  `TravelInsuranceID` int(11) NOT NULL,
  `TravelInsuranceAnswer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TravelInsurance`
--

INSERT INTO `TravelInsurance` (`TravelInsuranceID`, `TravelInsuranceAnswer`) VALUES
(1, 'Yes'),
(2, 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Aircraft`
--
ALTER TABLE `Aircraft`
  ADD PRIMARY KEY (`AircraftID`);

--
-- Indexes for table `Airport`
--
ALTER TABLE `Airport`
  ADD PRIMARY KEY (`AirportID`),
  ADD UNIQUE KEY `AirportName` (`AirportName`,`AirportCode`),
  ADD UNIQUE KEY `Postcode` (`Postcode`),
  ADD KEY `FK_AirportCity` (`AirportCity`),
  ADD KEY `FK_AirportCountry` (`AirportCountry`);

--
-- Indexes for table `Baggage`
--
ALTER TABLE `Baggage`
  ADD PRIMARY KEY (`BaggageID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD UNIQUE KEY `BookingRefNumber` (`BookingRefNumber`),
  ADD KEY `FK_BookingCustomerID` (`CustomerID`),
  ADD KEY `FK_BookingExchangeRate` (`ExchangeRate`);

--
-- Indexes for table `CardTypes`
--
ALTER TABLE `CardTypes`
  ADD PRIMARY KEY (`CardTypeID`);

--
-- Indexes for table `City`
--
ALTER TABLE `City`
  ADD PRIMARY KEY (`CityID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `CurrencyExchange`
--
ALTER TABLE `CurrencyExchange`
  ADD PRIMARY KEY (`CurrencyExchangeID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `CustomerEmail` (`CustomerEmail`),
  ADD KEY `FK_CustomerCity` (`CustomerCity`),
  ADD KEY `FK_CustomerCountry` (`CustomerCountry`),
  ADD KEY `FK_OffersAndUpdates` (`OffersAndUpdates`),
  ADD KEY `FK_CustomerTitle` (`CustomerTitle`);

--
-- Indexes for table `Flight`
--
ALTER TABLE `Flight`
  ADD PRIMARY KEY (`FlightID`),
  ADD UNIQUE KEY `FlightNumber` (`FlightNumber`),
  ADD KEY `FK_RouteID` (`Route`),
  ADD KEY `FK_AircraftTypeID` (`AircraftType`),
  ADD KEY `FK_FlightDurationID` (`FlightDuration`);

--
-- Indexes for table `FlightBooking`
--
ALTER TABLE `FlightBooking`
  ADD PRIMARY KEY (`FlightBooking`),
  ADD KEY `FK_FBBooking` (`BookingID`),
  ADD KEY `FK_FBFlight` (`FlightID`);

--
-- Indexes for table `FlightDuration`
--
ALTER TABLE `FlightDuration`
  ADD PRIMARY KEY (`FlightDurationID`);

--
-- Indexes for table `FoodVoucher`
--
ALTER TABLE `FoodVoucher`
  ADD PRIMARY KEY (`FoodVoucherID`);

--
-- Indexes for table `LogIn`
--
ALTER TABLE `LogIn`
  ADD PRIMARY KEY (`LogInID`),
  ADD KEY `FK_LoginCustomerID` (`CustomerID`);

--
-- Indexes for table `OffersAndUpdates`
--
ALTER TABLE `OffersAndUpdates`
  ADD PRIMARY KEY (`OffersAndUpdatesID`);

--
-- Indexes for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD PRIMARY KEY (`PassengerID`),
  ADD KEY `FK_PassengerTypeID` (`PassengerType`),
  ADD KEY `FK_PassBookingID` (`PassengerBookingID`),
  ADD KEY `FK_PassTitleID` (`PassengerTitle`),
  ADD KEY `FK_PassengerFlightID` (`PassengerFlightID`),
  ADD KEY `FK_PassengerTravelInsurance` (`TravelInsurance`),
  ADD KEY `FK_PassSeatID` (`PassengerSeatNumber`),
  ADD KEY `FK_PassFoodVoucher` (`FoodVoucher`),
  ADD KEY `FK_PassReasonForTravel` (`PassReasonForTravel`);

--
-- Indexes for table `PassengerBaggage`
--
ALTER TABLE `PassengerBaggage`
  ADD PRIMARY KEY (`PassengerBaggageID`),
  ADD KEY `FK_PassengerID` (`PassengerID`),
  ADD KEY `FK_BaggageID` (`BaggageID`);

--
-- Indexes for table `PassengerSpecialAssistance`
--
ALTER TABLE `PassengerSpecialAssistance`
  ADD PRIMARY KEY (`PassengerSpecialAssistanceID`),
  ADD KEY `FK_PSAPassenger` (`PassengerID`),
  ADD KEY `FK_PSASpecialAssistance` (`SpecialAssistanceID`);

--
-- Indexes for table `PassengerSpecialBaggage`
--
ALTER TABLE `PassengerSpecialBaggage`
  ADD PRIMARY KEY (`PassengerSpecialBagID`),
  ADD KEY `FK_PSAPassengerID` (`PassengerID`),
  ADD KEY `FK_PSASpecBaggage` (`SpecialBaggageID`);

--
-- Indexes for table `PassengerType`
--
ALTER TABLE `PassengerType`
  ADD PRIMARY KEY (`PassengerTypeID`);

--
-- Indexes for table `PaymentCard`
--
ALTER TABLE `PaymentCard`
  ADD PRIMARY KEY (`PaymentCardID`),
  ADD KEY `FK_PaymentCardType` (`CardType`),
  ADD KEY `FK_PaymentCardCustID` (`CustomerID`);

--
-- Indexes for table `PriceBreakdown`
--
ALTER TABLE `PriceBreakdown`
  ADD PRIMARY KEY (`PriceBreakdownID`),
  ADD KEY `FK_BookingPriceBreakdownID` (`BookingID`);

--
-- Indexes for table `ReasonForTravel`
--
ALTER TABLE `ReasonForTravel`
  ADD PRIMARY KEY (`ReasonForTravel`);

--
-- Indexes for table `Route`
--
ALTER TABLE `Route`
  ADD PRIMARY KEY (`RouteID`),
  ADD KEY `FK_DepAirport` (`DepartureAirport`),
  ADD KEY `FK_ArrAirport` (`ArrivalAirport`);

--
-- Indexes for table `Seat`
--
ALTER TABLE `Seat`
  ADD PRIMARY KEY (`SeatID`),
  ADD KEY `FK_SeatTypeID` (`SeatType`);

--
-- Indexes for table `SeatType`
--
ALTER TABLE `SeatType`
  ADD PRIMARY KEY (`SeatTypeID`);

--
-- Indexes for table `SpecialAssistance`
--
ALTER TABLE `SpecialAssistance`
  ADD PRIMARY KEY (`SpecialAssistanceID`);

--
-- Indexes for table `SpecialBaggage`
--
ALTER TABLE `SpecialBaggage`
  ADD PRIMARY KEY (`SpecialBaggageID`);

--
-- Indexes for table `Title`
--
ALTER TABLE `Title`
  ADD PRIMARY KEY (`TitleID`);

--
-- Indexes for table `TravelInsurance`
--
ALTER TABLE `TravelInsurance`
  ADD PRIMARY KEY (`TravelInsuranceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Aircraft`
--
ALTER TABLE `Aircraft`
  MODIFY `AircraftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Airport`
--
ALTER TABLE `Airport`
  MODIFY `AirportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Baggage`
--
ALTER TABLE `Baggage`
  MODIFY `BaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `CardTypes`
--
ALTER TABLE `CardTypes`
  MODIFY `CardTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `City`
--
ALTER TABLE `City`
  MODIFY `CityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `CurrencyExchange`
--
ALTER TABLE `CurrencyExchange`
  MODIFY `CurrencyExchangeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Flight`
--
ALTER TABLE `Flight`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `FlightBooking`
--
ALTER TABLE `FlightBooking`
  MODIFY `FlightBooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `FlightDuration`
--
ALTER TABLE `FlightDuration`
  MODIFY `FlightDurationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `FoodVoucher`
--
ALTER TABLE `FoodVoucher`
  MODIFY `FoodVoucherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `LogIn`
--
ALTER TABLE `LogIn`
  MODIFY `LogInID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `OffersAndUpdates`
--
ALTER TABLE `OffersAndUpdates`
  MODIFY `OffersAndUpdatesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Passenger`
--
ALTER TABLE `Passenger`
  MODIFY `PassengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `PassengerBaggage`
--
ALTER TABLE `PassengerBaggage`
  MODIFY `PassengerBaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `PassengerSpecialAssistance`
--
ALTER TABLE `PassengerSpecialAssistance`
  MODIFY `PassengerSpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PassengerSpecialBaggage`
--
ALTER TABLE `PassengerSpecialBaggage`
  MODIFY `PassengerSpecialBagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `PassengerType`
--
ALTER TABLE `PassengerType`
  MODIFY `PassengerTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `PaymentCard`
--
ALTER TABLE `PaymentCard`
  MODIFY `PaymentCardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `PriceBreakdown`
--
ALTER TABLE `PriceBreakdown`
  MODIFY `PriceBreakdownID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ReasonForTravel`
--
ALTER TABLE `ReasonForTravel`
  MODIFY `ReasonForTravel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Route`
--
ALTER TABLE `Route`
  MODIFY `RouteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `Seat`
--
ALTER TABLE `Seat`
  MODIFY `SeatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `SeatType`
--
ALTER TABLE `SeatType`
  MODIFY `SeatTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SpecialAssistance`
--
ALTER TABLE `SpecialAssistance`
  MODIFY `SpecialAssistanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SpecialBaggage`
--
ALTER TABLE `SpecialBaggage`
  MODIFY `SpecialBaggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Title`
--
ALTER TABLE `Title`
  MODIFY `TitleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `TravelInsurance`
--
ALTER TABLE `TravelInsurance`
  MODIFY `TravelInsuranceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Airport`
--
ALTER TABLE `Airport`
  ADD CONSTRAINT `FK_AirportCity` FOREIGN KEY (`AirportCity`) REFERENCES `City` (`CityID`),
  ADD CONSTRAINT `FK_AirportCountry` FOREIGN KEY (`AirportCountry`) REFERENCES `Country` (`CountryID`);

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `FK_BookingCustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  ADD CONSTRAINT `FK_BookingExchangeRate` FOREIGN KEY (`ExchangeRate`) REFERENCES `CurrencyExchange` (`CurrencyExchangeID`);

--
-- Constraints for table `Customer`
--
ALTER TABLE `Customer`
  ADD CONSTRAINT `FK_CustomerCity` FOREIGN KEY (`CustomerCity`) REFERENCES `City` (`CityID`),
  ADD CONSTRAINT `FK_CustomerCountry` FOREIGN KEY (`CustomerCountry`) REFERENCES `Country` (`CountryID`),
  ADD CONSTRAINT `FK_CustomerTitle` FOREIGN KEY (`CustomerTitle`) REFERENCES `Title` (`TitleID`),
  ADD CONSTRAINT `FK_OffersAndUpdates` FOREIGN KEY (`OffersAndUpdates`) REFERENCES `OffersAndUpdates` (`OffersAndUpdatesID`);

--
-- Constraints for table `Flight`
--
ALTER TABLE `Flight`
  ADD CONSTRAINT `FK_AircraftTypeID` FOREIGN KEY (`AircraftType`) REFERENCES `Aircraft` (`AircraftID`),
  ADD CONSTRAINT `FK_FlightDurationID` FOREIGN KEY (`FlightDuration`) REFERENCES `FlightDuration` (`FlightDurationID`),
  ADD CONSTRAINT `FK_RouteID` FOREIGN KEY (`Route`) REFERENCES `Route` (`RouteID`);

--
-- Constraints for table `FlightBooking`
--
ALTER TABLE `FlightBooking`
  ADD CONSTRAINT `FK_FBBooking` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_FBFlight` FOREIGN KEY (`FlightID`) REFERENCES `Flight` (`FlightID`);

--
-- Constraints for table `LogIn`
--
ALTER TABLE `LogIn`
  ADD CONSTRAINT `FK_LoginCustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);

--
-- Constraints for table `Passenger`
--
ALTER TABLE `Passenger`
  ADD CONSTRAINT `FK_PassBookingID` FOREIGN KEY (`PassengerBookingID`) REFERENCES `Booking` (`BookingID`),
  ADD CONSTRAINT `FK_PassFoodVoucher` FOREIGN KEY (`FoodVoucher`) REFERENCES `FoodVoucher` (`FoodVoucherID`),
  ADD CONSTRAINT `FK_PassReasonForTravel` FOREIGN KEY (`PassReasonForTravel`) REFERENCES `ReasonForTravel` (`ReasonForTravel`),
  ADD CONSTRAINT `FK_PassSeatID` FOREIGN KEY (`PassengerSeatNumber`) REFERENCES `Seat` (`SeatID`),
  ADD CONSTRAINT `FK_PassTitleID` FOREIGN KEY (`PassengerTitle`) REFERENCES `Title` (`TitleID`),
  ADD CONSTRAINT `FK_PassengerFlightID` FOREIGN KEY (`PassengerFlightID`) REFERENCES `Flight` (`FlightID`),
  ADD CONSTRAINT `FK_PassengerTravelInsurance` FOREIGN KEY (`TravelInsurance`) REFERENCES `TravelInsurance` (`TravelInsuranceID`),
  ADD CONSTRAINT `FK_PassengerTypeID` FOREIGN KEY (`PassengerType`) REFERENCES `PassengerType` (`PassengerTypeID`);

--
-- Constraints for table `PassengerBaggage`
--
ALTER TABLE `PassengerBaggage`
  ADD CONSTRAINT `FK_BaggageID` FOREIGN KEY (`BaggageID`) REFERENCES `Baggage` (`BaggageID`),
  ADD CONSTRAINT `FK_PassengerID` FOREIGN KEY (`PassengerID`) REFERENCES `Passenger` (`PassengerID`);

--
-- Constraints for table `PassengerSpecialAssistance`
--
ALTER TABLE `PassengerSpecialAssistance`
  ADD CONSTRAINT `FK_PSAPassenger` FOREIGN KEY (`PassengerID`) REFERENCES `Passenger` (`PassengerID`),
  ADD CONSTRAINT `FK_PSASpecialAssistance` FOREIGN KEY (`SpecialAssistanceID`) REFERENCES `SpecialAssistance` (`SpecialAssistanceID`);

--
-- Constraints for table `PassengerSpecialBaggage`
--
ALTER TABLE `PassengerSpecialBaggage`
  ADD CONSTRAINT `FK_PSAPassengerID` FOREIGN KEY (`PassengerID`) REFERENCES `Passenger` (`PassengerID`),
  ADD CONSTRAINT `FK_PSASpecBaggage` FOREIGN KEY (`SpecialBaggageID`) REFERENCES `SpecialBaggage` (`SpecialBaggageID`);

--
-- Constraints for table `PaymentCard`
--
ALTER TABLE `PaymentCard`
  ADD CONSTRAINT `FK_PaymentCardCustID` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`),
  ADD CONSTRAINT `FK_PaymentCardType` FOREIGN KEY (`CardType`) REFERENCES `CardTypes` (`CardTypeID`);

--
-- Constraints for table `PriceBreakdown`
--
ALTER TABLE `PriceBreakdown`
  ADD CONSTRAINT `FK_BookingPriceBreakdownID` FOREIGN KEY (`BookingID`) REFERENCES `Booking` (`BookingID`);

--
-- Constraints for table `Route`
--
ALTER TABLE `Route`
  ADD CONSTRAINT `FK_ArrAirport` FOREIGN KEY (`ArrivalAirport`) REFERENCES `Airport` (`AirportID`),
  ADD CONSTRAINT `FK_DepAirport` FOREIGN KEY (`DepartureAirport`) REFERENCES `Airport` (`AirportID`);

--
-- Constraints for table `Seat`
--
ALTER TABLE `Seat`
  ADD CONSTRAINT `FK_SeatTypeID` FOREIGN KEY (`SeatType`) REFERENCES `SeatType` (`SeatTypeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
