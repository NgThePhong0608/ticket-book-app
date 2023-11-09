-- phpMyAdmin SQL Dump

-- version 5.0.2

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Generation Time: Nov 27, 2021 at 06:15 AM

-- Server version: 10.4.14-MariaDB

-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `train`

--

-- --------------------------------------------------------

--

-- Table structure for table `admindatabase`

--

CREATE TABLE `admin` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DoB` date NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

-- Dumping data for table `admindatabase`

--

INSERT INTO
    `admin` (
        `UserID`,
        `Name`,
        `Email`,
        `Gender`,
        `password`,
        `DoB`,
        `Joined_on`
    )
VALUES (
        1,
        'Admin',
        'admin@gmail.com',
        'M',
        '1234567',
        '2000-10-17',
        '2021-08-14 18:30:00'
    );

-- --------------------------------------------------------

--

-- Table structure for table `bustransactions`

--

CREATE TABLE `bustransactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dest` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Bus_No` int(11) NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

-- Dumping data for table `bustransactions`

--

INSERT INTO
    `bustransactions` (
        `T_No.`,
        `email`,
        `source`,
        `dest`,
        `Name`,
        `Bus_No`,
        `NoOfpass`,
        `card_no`,
        `expmonth`,
        `expyear`,
        `cvv`,
        `pin`,
        `Date`,
        `Amt`
    )
VALUES (
        2,
        'phongntgmail.com',
        'Hà Nội',
        'Hải Phòng',
        'PhongNT',
        502,
        2,
        0,
        0,
        0,
        0,
        0,
        '2023-10-27',
        5
    ), (
        9,
        'ducxd@gmail.com',
        'Hà Nội',
        'Ninh Bình',
        'DucXD',
        502,
        1,
        154865168,
        4,
        23,
        743,
        1834,
        '2023-10-29 ',
        5
    ), (
        10,
        'minhta@gmail.com',
        'TP Hồ Chí Minh',
        'Cần Thơ',
        'MinhTA',
        502,
        1,
        2147483647,
        7,
        25,
        427,
        1276,
        '2023-11-02',
        5
    );

-- --------------------------------------------------------

--

-- Table structure for table `price`

--

CREATE TABLE `price` (
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dest` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(50) NOT NULL,
  `Route` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

-- Dumping data for table `price`

--

INSERT INTO
    `price` (
        `source`,
        `dest`,
        `class`,
        `type`,
        `Price`,
        `Route`
    )
VALUES (
        'Hà Nội',
        'Hải Phòng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hải Phòng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        ' -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'Second',
        'Single',
        10,
        ' -'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'First',
        'Single',
        55,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'First',
        'Single',
        140,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'First',
        'Single',
        105,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'First',
        'Single',
        75,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'First',
        'Single',
        55,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'Second',
        'Single',
        15,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'Second',
        'Single',
        15,
        '-'
    ), (
        'Cần Thơ',
        'Nam Định',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'First',
        'Single',
        145,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'First',
        'Single',
        110,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Nam Định',
        'First',
        'Single',
        110,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'First',
        'Single',
        55,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'First',
        'Single',
        55,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Nội',
        'Hải Phòng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'A.C',
        'Single',
        165,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'A.C',
        'Single',
        165,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'A.C',
        'Single',
        175,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'A.C',
        'Single',
        165,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'A.C',
        'Single',
        175,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'A.C',
        'Single',
        170,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'A.C',
        'Single',
        170,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'A.C',
        'Single',
        860,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'A.C',
        'Single',
        860,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'A.C',
        'Single',
        90,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'A.C',
        'Single',
        90,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'A.C',
        'Single',
        165,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'A.C',
        'Single',
        65,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'A.C',
        'Single',
        165,
        '-'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'A.C',
        'Single',
        165,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'A.C',
        'Single',
        125,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'A.C',
        'Single',
        65,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'A.C',
        'Single',
        175,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'A.C',
        'Single',
        175,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'A.C',
        'Single',
        170,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'A.C',
        'Single',
        170,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'A.C',
        'Single',
        130,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Cần Thơ',
        'Nam Định',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'A.C',
        'Single',
        90,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'A.C',
        'Single',
        90,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'A.C',
        'Single',
        65,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'A.C',
        'Single',
        65,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nam Định',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'First',
        'Single',
        155,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nam Định',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'A.C',
        'Single',
        180,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'A.C',
        'Single',
        175,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'First',
        'Single',
        150,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'A.C',
        'Single',
        180,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'First',
        'Single',
        140,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'A.C',
        'Single',
        165,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'First',
        'Single',
        145,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'A.C',
        'Single',
        175,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'A.C',
        'Single',
        175,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'A.C',
        'Single',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '-'
    );

INSERT INTO
    `price` (
        `source`,
        `dest`,
        `class`,
        `type`,
        `Price`,
        `Route`
    )
VALUES (
        'Hà Tĩnh',
        'Nam Định',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Nam Định',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'Second',
        'Single',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'Second',
        'Single',
        15,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'First',
        'Single',
        105,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'First',
        'Single',
        75,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'First',
        'Single',
        110,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'A.C',
        'Single',
        125,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'A.C',
        'Single',
        85,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'A.C',
        'Single',
        130,
        '-'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'First',
        'Single',
        50,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '-'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'Second',
        'Single',
        5,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'Second',
        'Single',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'Second',
        'Single',
        15,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'First',
        'Single',
        105,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'First',
        'Single',
        50,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'First',
        'Single',
        75,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'First',
        'Single',
        110,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'A.C',
        'Single',
        125,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '-'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'A.C',
        'Single',
        60,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'A.C',
        'Single',
        85,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'A.C',
        'Single',
        130,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hải Phòng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hải Phòng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'First',
        'Return',
        110,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'First',
        'Return',
        280,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'First',
        'Return',
        210,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'First',
        'Return',
        150,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'First',
        'Return',
        110,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'Second',
        'Return',
        30,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'Second',
        'Return',
        30,
        '-'
    ), (
        'Cần Thơ',
        'Nam Định',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'First',
        'Return',
        290,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'First',
        'Return',
        220,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Nam Định',
        'First',
        'Return',
        220,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'First',
        'Return',
        110,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'First',
        'Return',
        110,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Nội',
        'Hải Phòng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Nội',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Nội',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Nội',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Nội',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Nội',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Nội',
        'Quảng Ninh',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Huế',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'A.C',
        'Return',
        330,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'A.C',
        'Return',
        330,
        '- Quảng Ninh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'A.C',
        'Return',
        350,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Nội',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hải Phòng',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hải Phòng',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hải Phòng',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hải Phòng',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hải Phòng',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hải Phòng',
        'Quảng Ninh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hải Phòng',
        'Nam Định',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Huế',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'A.C',
        'Return',
        330,
        '- Quảng Ninh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'A.C',
        'Return',
        350,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Nội',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Hải Phòng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Đà Nẵng',
        'Quảng Ninh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'A.C',
        'Return',
        340,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Nội',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Hải Phòng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Sapa',
        'Nam Định',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Huế',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Nghệ An',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'A.C',
        'Return',
        340,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Nội',
        'A.C',
        'Return',
        1720,
        '-'
    ), (
        'Thái Nguyên',
        'Hải Phòng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Nội',
        'A.C',
        'Return',
        1720,
        '-'
    ), (
        'Cát Bà',
        'Hải Phòng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Huế',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Nội',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hạ Long',
        'Hải Phòng',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hạ Long',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Huế',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Quảng Ninh',
        'Hà Nội',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Quảng Ninh',
        'Hải Phòng',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Quảng Ninh',
        'Đà Nẵng',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Sapa',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Nam Định',
        'Hà Nội',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Sapa',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Ninh Bình',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Hà Giang',
        'Hà Nội',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Sapa',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Ninh Bình',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Cần Thơ',
        'A.C',
        'Return',
        180,
        '-'
    ), (
        'Huế',
        'Hà Nội',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hải Phòng',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Sapa',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Quảng Ninh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Ninh Bình',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Cần Thơ',
        'A.C',
        'Return',
        180,
        '-'
    ), (
        'Nghệ An',
        'Hà Nội',
        'A.C',
        'Return',
        330,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Sapa',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Ninh Bình',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Cần Thơ',
        'A.C',
        'Return',
        130,
        '-'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'A.C',
        'Return',
        330,
        '-'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'A.C',
        'Return',
        330,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'A.C',
        'Return',
        250,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '- Quảng Ninh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Ninh Bình',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Ninh Bình',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Ninh Bình',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Ninh Bình',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Ninh Bình',
        'Cần Thơ',
        'A.C',
        'Return',
        130,
        '-'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'A.C',
        'Return',
        350,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'A.C',
        'Return',
        350,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'A.C',
        'Return',
        340,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'A.C',
        'Return',
        340,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'A.C',
        'Return',
        260,
        '- Quảng Ninh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Cần Thơ',
        'Nam Định',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Cần Thơ',
        'Hà Giang',
        'A.C',
        'Return',
        180,
        '-'
    ), (
        'Cần Thơ',
        'Huế',
        'A.C',
        'Return',
        180,
        '-'
    ), (
        'Cần Thơ',
        'Nghệ An',
        'A.C',
        'Return',
        130,
        '-'
    ), (
        'Cần Thơ',
        'Ninh Bình',
        'A.C',
        'Return',
        130,
        '-'
    ), (
        'Hà Nội',
        'Nam Định',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nam Định',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'First',
        'Return',
        310,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nam Định',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Hà Giang',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Huế',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Nghệ An',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Ninh Bình',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Cần Thơ',
        'A.C',
        'Return',
        360,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nam Định',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Huế',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Nghệ An',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Ninh Bình',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Cần Thơ',
        'A.C',
        'Return',
        350,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'First',
        'Return',
        300,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nam Định',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Huế',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Nghệ An',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Ninh Bình',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Cần Thơ',
        'A.C',
        'Return',
        360,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nam Định',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Hà Giang',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Huế',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Nghệ An',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Ninh Bình',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Cần Thơ',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Hà Giang',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Huế',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Nghệ An',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Ninh Bình',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Cần Thơ',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Hà Giang',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Huế',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Nghệ An',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Ninh Bình',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Huế',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Nghệ An',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Ninh Bình',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Huế',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Ninh Bình',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    );

INSERT INTO
    `price` (
        `source`,
        `dest`,
        `class`,
        `type`,
        `Price`,
        `Route`
    )
VALUES (
        'Quảng Ninh',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hà Nội',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hải Phòng',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Đà Nẵng',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Sapa',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hà Nội',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hải Phòng',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Đà Nẵng',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Sapa',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hà Nội',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hải Phòng',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Đà Nẵng',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Sapa',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thái Nguyên',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hà Nội',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hải Phòng',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Đà Nẵng',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Sapa',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thái Nguyên',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Cát Bà',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Hạ Long',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Quảng Ninh',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'First',
        'Return',
        280,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hà Nội',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hải Phòng',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Đà Nẵng',
        'A.C',
        'Return',
        330,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Sapa',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thái Nguyên',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Cát Bà',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Hạ Long',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Quảng Ninh',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'First',
        'Return',
        290,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hà Nội',
        'A.C',
        'Return',
        350,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hải Phòng',
        'A.C',
        'Return',
        350,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Đà Nẵng',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Sapa',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thái Nguyên',
        'A.C',
        'Return',
        340,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Cát Bà',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Hạ Long',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Quảng Ninh',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Nam Định',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Nam Định',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Nội',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Hà Tĩnh',
        'Hải Phòng',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Hà Tĩnh',
        'Đà Nẵng',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Tĩnh',
        'Sapa',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Tĩnh',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Huế',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Nghệ An',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Tĩnh',
        'Ninh Bình',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Hà Tĩnh',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'Second',
        'Return',
        20,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'Second',
        'Return',
        30,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'First',
        'Return',
        210,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'First',
        'Return',
        150,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'First',
        'Return',
        220,
        '-'
    ), (
        'Hà Nội',
        'Hà Tĩnh',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Hải Phòng',
        'Hà Tĩnh',
        'A.C',
        'Return',
        250,
        '-'
    ), (
        'Đà Nẵng',
        'Hà Tĩnh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Sapa',
        'Hà Tĩnh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Thái Nguyên',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Cát Bà',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hạ Long',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Quảng Ninh',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Hà Giang',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Huế',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nghệ An',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Ninh Bình',
        'Hà Tĩnh',
        'A.C',
        'Return',
        170,
        '-'
    ), (
        'Cần Thơ',
        'Hà Tĩnh',
        'A.C',
        'Return',
        260,
        '-'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'First',
        'Return',
        100,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Nội',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hải Phòng',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Đà Nẵng',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Sapa',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Thái Nguyên',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cát Bà',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hạ Long',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Quảng Ninh',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Tĩnh',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Thanh Hoá',
        'Nam Định',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Hà Giang',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Huế',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Nghệ An',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Ninh Bình',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thanh Hoá',
        'Cần Thơ',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '-'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'Second',
        'Return',
        10,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'Second',
        'Return',
        20,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'Second',
        'Return',
        30,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'First',
        'Return',
        210,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'First',
        'Return',
        100,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'First',
        'Return',
        150,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'First',
        'Return',
        220,
        '- Hà Tĩnh -'
    ), (
        'Hà Nội',
        'Thanh Hoá',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    ), (
        'Hải Phòng',
        'Thanh Hoá',
        'A.C',
        'Return',
        250,
        '- Hà Tĩnh -'
    ), (
        'Đà Nẵng',
        'Thanh Hoá',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Sapa',
        'Thanh Hoá',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Thái Nguyên',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Cát Bà',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hạ Long',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Quảng Ninh',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hà Tĩnh',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '-'
    ), (
        'Nam Định',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Hà Giang',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Huế',
        'Thanh Hoá',
        'A.C',
        'Return',
        120,
        '- Hà Tĩnh -'
    ), (
        'Nghệ An',
        'Thanh Hoá',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Ninh Bình',
        'Thanh Hoá',
        'A.C',
        'Return',
        170,
        '- Hà Tĩnh -'
    ), (
        'Cần Thơ',
        'Thanh Hoá',
        'A.C',
        'Return',
        260,
        '- Hà Tĩnh -'
    );

-- --------------------------------------------------------

--

-- Table structure for table `pricebus`

--

CREATE TABLE `pricebus` (
  `No.` int(15) NOT NULL,
  `Bus_No.` int(50) NOT NULL,
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dest` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

-- Dumping data for table `pricebus`

--

INSERT INTO
    `pricebus` (
        `No.`,
        `Bus_No.`,
        `source`,
        `dest`,
        `Price`
    )
VALUES (
        1,
        502,
        'Cần Thơ ',
        'TP Hồ Chí Minh',
        5
    ), (2, 502, 'Cần Thơ ', 'Sapa', 5), (
        3,
        502,
        'Cần Thơ ',
        'Nam Định ',
        5
    ), (
        4,
        502,
        'Cần Thơ ',
        'Thái Nguyên ',
        5
    ), (5, 502, 'Cần Thơ ', 'Cát Bà', 5), (
        6,
        502,
        'Cần Thơ ',
        'Quảng Ninh',
        5
    ), (7, 502, 'Cần Thơ ', 'Hạ Long', 5), (8, 502, 'Cần Thơ ', 'Lào Cai', 5), (9, 502, 'Cần Thơ ', 'Yên Bái', 5), (10, 502, 'Cần Thơ ', 'Ba Vì', 5), (
        11,
        502,
        'Cần Thơ ',
        'An Giang',
        5
    ), (12, 502, 'Cần Thơ ', 'Hà Nội', 5), (
        13,
        502,
        'Cần Thơ ',
        'Đà Nẵng',
        5
    ), (
        14,
        502,
        'Cần Thơ ',
        'Ninh Bình ',
        5
    ), (
        15,
        502,
        'Cần Thơ ',
        'Ninh Bình ',
        10
    ), (16, 502, 'Cần Thơ ', 'Huế', 10), (
        17,
        502,
        'Cần Thơ ',
        'Thanh Hoá',
        10
    ), (
        18,
        502,
        'Cần Thơ ',
        'Nghệ An ',
        10
    ), (
        19,
        502,
        'Cần Thơ ',
        'Nghệ An ',
        10
    ), (
        20,
        502,
        'Nghệ An ',
        'TP Hồ Chí Minh',
        10
    ), (21, 502, 'Nghệ An ', 'Sapa', 10), (
        22,
        502,
        'Nghệ An ',
        'Nam Định ',
        10
    ), (
        23,
        502,
        'Nghệ An ',
        'Thái Nguyên ',
        10
    ), (
        24,
        502,
        'Nghệ An ',
        'Cát Bà',
        10
    ), (
        25,
        502,
        'Nghệ An ',
        'Quảng Ninh',
        10
    ), (
        26,
        502,
        'Nghệ An ',
        'Hạ Long',
        10
    ), (
        27,
        502,
        'Nghệ An ',
        'Lào Cai',
        10
    ), (
        28,
        502,
        'Nghệ An ',
        'Yên Bái',
        10
    ), (29, 502, 'Nghệ An ', 'Ba Vì', 10), (
        30,
        502,
        'Nghệ An ',
        'An Giang',
        10
    ), (
        31,
        502,
        'Nghệ An ',
        'Hà Nội',
        10
    ), (
        32,
        502,
        'Nghệ An ',
        'Đà Nẵng',
        10
    ), (
        33,
        502,
        'Nghệ An ',
        'Ninh Bình ',
        10
    ), (
        34,
        502,
        'Nghệ An ',
        'Ninh Bình ',
        5
    ), (35, 502, 'Nghệ An ', 'Huế', 5), (
        36,
        502,
        'Nghệ An ',
        'Thanh Hoá',
        5
    ), (
        37,
        502,
        'Nghệ An ',
        'Nghệ An ',
        5
    ), (
        38,
        502,
        'Nghệ An ',
        'Cần Thơ ',
        5
    ), (
        39,
        502,
        'Nghệ An ',
        'TP Hồ Chí Minh',
        10
    ), (40, 502, 'Nghệ An ', 'Sapa', 10), (
        41,
        502,
        'Nghệ An ',
        'Nam Định ',
        10
    ), (
        42,
        502,
        'Nghệ An ',
        'Thái Nguyên ',
        10
    ), (
        43,
        502,
        'Nghệ An ',
        'Cát Bà',
        10
    ), (
        44,
        502,
        'Nghệ An ',
        'Quảng Ninh',
        10
    ), (
        45,
        502,
        'Nghệ An ',
        'Hạ Long',
        10
    ), (
        46,
        502,
        'Nghệ An ',
        'Lào Cai',
        10
    ), (
        47,
        502,
        'Nghệ An ',
        'Yên Bái',
        10
    ), (48, 502, 'Nghệ An ', 'Ba Vì', 10), (
        49,
        502,
        'Nghệ An ',
        'An Giang',
        10
    ), (
        50,
        502,
        'Nghệ An ',
        'Hà Nội',
        10
    ), (
        51,
        502,
        'Nghệ An ',
        'Đà Nẵng',
        10
    ), (
        52,
        502,
        'Nghệ An ',
        'Ninh Bình ',
        10
    ), (
        53,
        502,
        'Nghệ An ',
        'Ninh Bình ',
        5
    ), (54, 502, 'Nghệ An ', 'Huế', 5), (
        55,
        502,
        'Nghệ An ',
        'Thanh Hoá',
        5
    ), (
        56,
        502,
        'Nghệ An ',
        'Nghệ An ',
        5
    ), (
        57,
        502,
        'Nghệ An ',
        'Cần Thơ ',
        5
    ), (
        58,
        502,
        'Thanh Hoá',
        'TP Hồ Chí Minh',
        10
    ), (59, 502, 'Thanh Hoá', 'Sapa', 10), (
        60,
        502,
        'Thanh Hoá',
        'Nam Định ',
        10
    ), (
        61,
        502,
        'Thanh Hoá',
        'Thái Nguyên ',
        10
    ), (
        62,
        502,
        'Thanh Hoá',
        'Cát Bà',
        10
    ), (
        63,
        502,
        'Thanh Hoá',
        'Quảng Ninh',
        10
    ), (
        64,
        502,
        'Thanh Hoá',
        'Hạ Long',
        10
    ), (
        65,
        502,
        'Thanh Hoá',
        'Lào Cai',
        10
    ), (
        66,
        502,
        'Thanh Hoá',
        'Yên Bái',
        10
    ), (
        67,
        502,
        'Thanh Hoá',
        'Ba Vì',
        10
    ), (
        68,
        502,
        'Thanh Hoá',
        'An Giang',
        10
    ), (
        69,
        502,
        'Thanh Hoá',
        'Hà Nội',
        10
    ), (
        70,
        502,
        'Thanh Hoá',
        'Đà Nẵng',
        10
    ), (
        71,
        502,
        'Thanh Hoá',
        'Ninh Bình ',
        10
    ), (
        72,
        502,
        'Thanh Hoá',
        'Ninh Bình ',
        5
    ), (73, 502, 'Thanh Hoá', 'Huế', 5), (
        74,
        502,
        'Thanh Hoá',
        'Nghệ An ',
        5
    ), (
        75,
        502,
        'Thanh Hoá',
        'Nghệ An ',
        5
    ), (
        76,
        502,
        'Thanh Hoá',
        'Cần Thơ ',
        5
    ), (
        77,
        502,
        'Huế',
        'TP Hồ Chí Minh',
        10
    ), (78, 502, 'Huế', 'Sapa', 10), (79, 502, 'Huế', 'Nam Định ', 10), (
        80,
        502,
        'Huế',
        'Thái Nguyên ',
        10
    ), (81, 502, 'Huế', 'Cát Bà', 10), (82, 502, 'Huế', 'Quảng Ninh', 10), (83, 502, 'Huế', 'Hạ Long', 10), (84, 502, 'Huế', 'Lào Cai', 10), (85, 502, 'Huế', 'Yên Bái', 10), (86, 502, 'Huế', 'Ba Vì', 10), (87, 502, 'Huế', 'An Giang', 10), (88, 502, 'Huế', 'Hà Nội', 10), (89, 502, 'Huế', 'Đà Nẵng', 10), (90, 502, 'Huế', 'Ninh Bình ', 10), (91, 502, 'Huế', 'Ninh Bình ', 5), (92, 502, 'Huế', 'Thanh Hoá', 5), (93, 502, 'Huế', 'Nghệ An ', 5), (94, 502, 'Huế', 'Nghệ An ', 5), (95, 502, 'Huế', 'Cần Thơ ', 5), (
        96,
        502,
        'Ninh Bình ',
        'TP Hồ Chí Minh',
        10
    ), (
        97,
        502,
        'Ninh Bình ',
        'Sapa',
        10
    ), (
        98,
        502,
        'Đà Nẵng',
        'Ninh Bình ',
        5
    ), (
        99,
        502,
        'Đà Nẵng',
        'Ninh Bình ',
        5
    ), (100, 502, 'Đà Nẵng', 'Huế', 10), (
        101,
        502,
        'Đà Nẵng',
        'Thanh Hoá',
        10
    ), (
        102,
        502,
        'Đà Nẵng',
        'Nghệ An ',
        10
    ), (
        103,
        502,
        'Đà Nẵng',
        'Nghệ An ',
        10
    ), (
        104,
        502,
        'Đà Nẵng',
        'Cần Thơ ',
        10
    ), (
        105,
        502,
        'Hà Nội',
        'TP Hồ Chí Minh',
        5
    ), (106, 502, 'Hà Nội', 'Sapa', 5), (
        107,
        502,
        'Hà Nội',
        'Nam Định ',
        5
    ), (
        108,
        502,
        'Hà Nội',
        'Thái Nguyên ',
        5
    ), (109, 502, 'Hà Nội', 'Cát Bà', 5), (
        110,
        502,
        'Hà Nội',
        'Quảng Ninh',
        5
    ), (111, 502, 'Hà Nội', 'Hạ Long', 5), (112, 502, 'Hà Nội', 'Lào Cai', 5), (113, 502, 'Hà Nội', 'Yên Bái', 5), (114, 502, 'Hà Nội', 'Ba Vì', 5), (
        115,
        502,
        'Hà Nội',
        'An Giang',
        5
    ), (116, 502, 'Hà Nội', 'Đà Nẵng', 5), (
        117,
        502,
        'Hà Nội',
        'Ninh Bình ',
        5
    ), (
        118,
        502,
        'Hà Nội',
        'Ninh Bình ',
        5
    ), (119, 502, 'Hà Nội', 'Huế', 10), (
        120,
        502,
        'Hà Nội',
        'Thanh Hoá',
        10
    ), (
        121,
        502,
        'Hà Nội',
        'Nghệ An ',
        10
    ), (
        122,
        502,
        'Hà Nội',
        'Nghệ An ',
        10
    ), (
        123,
        502,
        'Hà Nội',
        'Cần Thơ ',
        10
    ), (
        124,
        502,
        'An Giang',
        'TP Hồ Chí Minh',
        5
    ), (125, 502, 'An Giang', 'Sapa', 5), (
        126,
        502,
        'An Giang',
        'Nam Định ',
        5
    ), (
        127,
        502,
        'An Giang',
        'Thái Nguyên ',
        5
    ), (
        128,
        502,
        'An Giang',
        'Cát Bà',
        5
    ), (
        129,
        502,
        'An Giang',
        'Quảng Ninh',
        5
    ), (
        130,
        502,
        'An Giang',
        'Hạ Long',
        5
    ), (
        131,
        502,
        'An Giang',
        'Lào Cai',
        5
    ), (
        132,
        502,
        'An Giang',
        'Yên Bái',
        5
    ), (133, 502, 'An Giang', 'Ba Vì', 5), (
        134,
        502,
        'An Giang',
        'Hà Nội',
        5
    ), (
        135,
        502,
        'An Giang',
        'Đà Nẵng',
        5
    ), (
        136,
        502,
        'An Giang',
        'Ninh Bình ',
        5
    ), (
        137,
        502,
        'An Giang',
        'Ninh Bình ',
        5
    ), (138, 502, 'An Giang', 'Huế', 10), (
        139,
        502,
        'An Giang',
        'Thanh Hoá',
        10
    ), (
        140,
        502,
        'An Giang',
        'Nghệ An ',
        10
    ), (
        141,
        502,
        'An Giang',
        'Nghệ An ',
        10
    ), (
        142,
        502,
        'An Giang',
        'Cần Thơ ',
        10
    ), (
        143,
        502,
        'Ba Vì',
        'TP Hồ Chí Minh',
        5
    ), (144, 502, 'Ba Vì', 'Sapa', 5), (
        145,
        502,
        'Ba Vì',
        'Nam Định ',
        5
    ), (
        146,
        502,
        'Ba Vì',
        'Thái Nguyên ',
        5
    ), (147, 502, 'Ba Vì', 'Cát Bà', 5), (
        148,
        502,
        'Ba Vì',
        'Quảng Ninh',
        5
    ), (149, 502, 'Ba Vì', 'Hạ Long', 5), (150, 502, 'Ba Vì', 'Lào Cai', 5), (151, 502, 'Ba Vì', 'Yên Bái', 5), (152, 502, 'Ba Vì', 'An Giang', 5), (153, 502, 'Ba Vì', 'Hà Nội', 5), (154, 502, 'Ba Vì', 'Đà Nẵng', 5), (
        155,
        502,
        'Ba Vì',
        'Ninh Bình ',
        5
    ), (
        156,
        502,
        'Ba Vì',
        'Ninh Bình ',
        5
    ), (157, 502, 'Ba Vì', 'Huế', 10), (
        158,
        502,
        'Ba Vì',
        'Thanh Hoá',
        10
    ), (
        159,
        502,
        'Ba Vì',
        'Nghệ An ',
        10
    ), (
        160,
        502,
        'Ba Vì',
        'Nghệ An ',
        10
    ), (
        161,
        502,
        'Ba Vì',
        'Cần Thơ ',
        10
    ), (162, 502, 'Yên Bái', 'Sapa', 5), (
        163,
        502,
        'Yên Bái',
        'Nam Định ',
        5
    ), (
        164,
        502,
        'Yên Bái',
        'Thái Nguyên ',
        5
    ), (165, 502, 'Yên Bái', 'Cát Bà', 5), (
        166,
        502,
        'Yên Bái',
        'Quảng Ninh',
        5
    ), (
        167,
        502,
        'Yên Bái',
        'Hạ Long',
        5
    ), (
        168,
        502,
        'Yên Bái',
        'Lào Cai',
        5
    ), (169, 502, 'Yên Bái', 'Ba Vì', 5), (
        170,
        502,
        'Yên Bái',
        'An Giang',
        5
    ), (
        171,
        502,
        'Yên Bái',
        'Đà Nẵng',
        5
    ), (
        172,
        502,
        'Yên Bái',
        'Ninh Bình ',
        5
    ), (
        173,
        502,
        'Yên Bái',
        'Ninh Bình ',
        5
    ), (174, 502, 'Yên Bái', 'Huế', 10), (
        175,
        502,
        'Yên Bái',
        'Thanh Hoá',
        10
    ), (
        176,
        502,
        'Yên Bái',
        'Nghệ An ',
        10
    ), (
        177,
        502,
        'Yên Bái',
        'Nghệ An ',
        10
    ), (
        179,
        502,
        'Yên Bái',
        'Cần Thơ ',
        10
    ), (
        180,
        502,
        'Lào Cai',
        'TP Hồ Chí Minh',
        5
    ), (181, 502, 'Lào Cai', 'Sapa', 5), (
        182,
        502,
        'Lào Cai',
        'Nam Định ',
        5
    ), (
        183,
        502,
        'Lào Cai',
        'Thái Nguyên ',
        5
    ), (184, 502, 'Lào Cai', 'Cát Bà', 5), (
        185,
        502,
        'Lào Cai',
        'Quảng Ninh',
        5
    ), (
        186,
        502,
        'Lào Cai',
        'Hạ Long',
        5
    ), (
        187,
        502,
        'Lào Cai',
        'Yên Bái',
        5
    ), (188, 502, 'Lào Cai', 'Ba Vì', 5), (
        189,
        502,
        'Lào Cai',
        'An Giang',
        5
    ), (190, 502, 'Lào Cai', 'Hà Nội', 5), (
        191,
        502,
        'Lào Cai',
        'Đà Nẵng',
        5
    ), (
        192,
        502,
        'Lào Cai',
        'Ninh Bình ',
        5
    ), (
        193,
        502,
        'Lào Cai',
        'Ninh Bình ',
        5
    ), (194, 502, 'Lào Cai', 'Huế', 10), (
        195,
        502,
        'Lào Cai',
        'Thanh Hoá',
        10
    ), (
        196,
        502,
        'Lào Cai',
        'Nghệ An ',
        10
    ), (
        197,
        502,
        'Lào Cai',
        'Nghệ An ',
        10
    ), (
        198,
        502,
        'Lào Cai',
        'Cần Thơ ',
        10
    ), (
        199,
        502,
        'Hạ Long',
        'TP Hồ Chí Minh',
        5
    ), (200, 502, 'Hạ Long', 'Sapa', 5), (
        201,
        502,
        'Hạ Long',
        'Nam Định ',
        5
    ), (
        202,
        502,
        'Hạ Long',
        'Thái Nguyên ',
        5
    ), (203, 502, 'Hạ Long', 'Cát Bà', 5), (
        204,
        502,
        'Hạ Long',
        'Quảng Ninh',
        5
    ), (
        205,
        502,
        'Hạ Long',
        'Lào Cai',
        5
    ), (
        206,
        502,
        'Hạ Long',
        'Yên Bái',
        5
    ), (207, 502, 'Hạ Long', 'Ba Vì', 5), (
        208,
        502,
        'Hạ Long',
        'An Giang',
        5
    ), (209, 502, 'Hạ Long', 'Hà Nội', 5), (
        210,
        502,
        'Hạ Long',
        'Đà Nẵng',
        5
    ), (
        211,
        502,
        'Hạ Long',
        'Ninh Bình ',
        5
    ), (
        212,
        502,
        'Hạ Long',
        'Ninh Bình ',
        5
    ), (213, 502, 'Hạ Long', 'Huế', 10), (
        214,
        502,
        'Hạ Long',
        'Thanh Hoá',
        10
    ), (
        215,
        502,
        'Hạ Long',
        'Nghệ An ',
        10
    ), (
        216,
        502,
        'Hạ Long',
        'Nghệ An ',
        10
    ), (
        217,
        502,
        'Hạ Long',
        'Cần Thơ ',
        10
    ), (
        218,
        502,
        'Vitawa / Parayache Maidan',
        'TP Hồ Chí Minh',
        5
    ), (
        219,
        502,
        'Vitawa / Parayache Maidan',
        'Sapa',
        5
    ), (
        220,
        502,
        'Vitawa / Parayache Maidan',
        'Nam Định ',
        5
    ), (
        221,
        502,
        'Vitawa / Parayache Maidan',
        'Thái Nguyên ',
        5
    ), (
        222,
        502,
        'Vitawa / Parayache Maidan',
        'Cát Bà',
        5
    ), (
        223,
        502,
        'Vitawa / Parayache Maidan',
        'Hạ Long',
        5
    ), (
        224,
        502,
        'Vitawa / Parayache Maidan',
        'Lào Cai',
        5
    ), (
        225,
        502,
        'Vitawa / Parayache Maidan',
        'Yên Bái',
        5
    ), (
        226,
        502,
        'Vitawa / Parayache Maidan',
        'Ba Vì',
        5
    ), (
        227,
        502,
        'Vitawa / Parayache Maidan',
        'An Giang',
        5
    ), (
        228,
        502,
        'Vitawa / Parayache Maidan',
        'Hà Nội',
        5
    ), (
        229,
        502,
        'Vitawa / Parayache Maidan',
        'Đà Nẵng',
        5
    ), (
        230,
        502,
        'Vitawa / Parayache Maidan',
        'Ninh Bình ',
        5
    ), (
        231,
        502,
        'Vitawa / Parayache Maidan',
        'Ninh Bình ',
        5
    ), (
        232,
        502,
        'Vitawa / Parayache Maidan',
        'Huế',
        10
    ), (
        233,
        502,
        'Vitawa / Parayache Maidan',
        'Thanh Hoá',
        10
    ), (
        234,
        502,
        'Vitawa / Parayache Maidan',
        'Nghệ An ',
        10
    ), (
        235,
        502,
        'Vitawa / Parayache Maidan',
        'Nghệ An ',
        10
    ), (
        236,
        502,
        'Vitawa / Parayache Maidan',
        'Cần Thơ ',
        10
    ), (
        237,
        502,
        'Cát Bà',
        'TP Hồ Chí Minh',
        5
    ), (238, 502, 'Cát Bà', 'Sapa', 5), (
        239,
        502,
        'Cát Bà',
        'Nam Định ',
        5
    ), (
        240,
        502,
        'Cát Bà',
        'Thái Nguyên ',
        5
    ), (
        241,
        502,
        'Cát Bà',
        'Vitawa / Parayache Maidan',
        5
    ), (242, 502, 'Cát Bà', 'Hạ Long', 5), (243, 502, 'Cát Bà', 'Lào Cai', 5), (244, 502, 'Cát Bà', 'Yên Bái', 5), (245, 502, 'Cát Bà', 'Ba Vì', 5), (
        246,
        502,
        'Cát Bà',
        'An Giang',
        5
    ), (247, 502, 'Cát Bà', 'Hà Nội', 5), (248, 502, 'Cát Bà', 'Đà Nẵng', 5), (
        249,
        502,
        'Cát Bà',
        'Ninh Bình ',
        5
    ), (
        250,
        502,
        'Cát Bà',
        'Ninh Bình ',
        5
    ), (251, 502, 'Cát Bà', 'Huế', 10), (
        252,
        502,
        'Cát Bà',
        'Thanh Hoá',
        10
    ), (
        253,
        502,
        'Cát Bà',
        'Nghệ An ',
        10
    ), (
        254,
        502,
        'Cát Bà',
        'Nghệ An ',
        10
    ), (
        255,
        502,
        'Cát Bà',
        'Cần Thơ ',
        10
    ), (
        256,
        502,
        'Thái Nguyên ',
        'TP Hồ Chí Minh',
        5
    ), (
        257,
        502,
        'Thái Nguyên ',
        'Sapa',
        5
    ), (
        258,
        502,
        'Thái Nguyên ',
        'Nam Định ',
        5
    ), (
        259,
        502,
        'Thái Nguyên ',
        'Cát Bà',
        5
    ), (
        260,
        502,
        'Thái Nguyên ',
        'Vitawa / Parayache Maidan',
        5
    ), (
        261,
        502,
        'Thái Nguyên ',
        'Hạ Long',
        5
    ), (
        262,
        502,
        'Thái Nguyên ',
        'Lào Cai',
        5
    ), (
        263,
        502,
        'Thái Nguyên ',
        'Yên Bái',
        5
    ), (
        264,
        502,
        'Thái Nguyên ',
        'Ba Vì',
        5
    ), (
        265,
        502,
        'Thái Nguyên ',
        'An Giang',
        5
    ), (
        266,
        502,
        'Thái Nguyên ',
        'Hà Nội',
        5
    ), (
        267,
        502,
        'Thái Nguyên ',
        'Đà Nẵng',
        5
    ), (
        268,
        502,
        'Thái Nguyên ',
        'Ninh Bình ',
        5
    ), (
        269,
        502,
        'Thái Nguyên ',
        'Ninh Bình ',
        5
    ), (
        270,
        502,
        'Thái Nguyên ',
        'Huế',
        10
    ), (
        271,
        502,
        'Thái Nguyên ',
        'Thanh Hoá',
        10
    ), (
        272,
        502,
        'Thái Nguyên ',
        'Nghệ An ',
        10
    ), (
        273,
        502,
        'Thái Nguyên ',
        'Nghệ An ',
        10
    ), (
        274,
        502,
        'Thái Nguyên ',
        'Cần Thơ ',
        10
    ), (
        275,
        502,
        'Nam Định ',
        'TP Hồ Chí Minh',
        5
    ), (276, 502, 'Nam Định ', 'Sapa', 5), (
        277,
        502,
        'Nam Định ',
        'Thái Nguyên ',
        5
    ), (
        278,
        502,
        'Nam Định ',
        'Cát Bà',
        5
    ), (
        279,
        502,
        'Nam Định ',
        'Vitawa / Parayache Maidan',
        5
    ), (
        280,
        502,
        'Nam Định ',
        'Hạ Long',
        5
    ), (
        281,
        502,
        'Nam Định ',
        'Lào Cai',
        5
    ), (
        282,
        502,
        'Nam Định ',
        'Yên Bái',
        5
    ), (
        283,
        502,
        'Nam Định ',
        'Ba Vì',
        5
    ), (
        284,
        502,
        'Nam Định ',
        'An Giang',
        5
    ), (
        285,
        502,
        'Nam Định ',
        'Hà Nội',
        5
    ), (
        286,
        502,
        'Nam Định ',
        'Đà Nẵng',
        5
    ), (
        287,
        502,
        'Nam Định ',
        'Ninh Bình ',
        5
    ), (
        288,
        502,
        'Nam Định ',
        'Ninh Bình ',
        5
    ), (289, 502, 'Nam Định ', 'Huế', 10), (
        290,
        502,
        'Nam Định ',
        'Thanh Hoá',
        10
    ), (
        291,
        502,
        'Nam Định ',
        'Nghệ An ',
        10
    ), (
        292,
        502,
        'Nam Định ',
        'Nghệ An ',
        10
    ), (
        293,
        502,
        'Nam Định ',
        'Cần Thơ ',
        10
    ), (
        294,
        502,
        'Sapa',
        'TP Hồ Chí Minh',
        5
    ), (295, 502, 'Sapa', 'Nam Định ', 5), (
        296,
        502,
        'Sapa',
        'Thái Nguyên ',
        5
    ), (297, 502, 'Sapa', 'Cát Bà', 5), (
        298,
        502,
        'Sapa',
        'Vitawa / Parayache Maidan',
        5
    ), (299, 502, 'Sapa', 'Hạ Long', 5), (300, 502, 'Sapa', 'Lào Cai', 5), (301, 502, 'Sapa', 'Yên Bái', 5), (302, 502, 'Sapa', 'Ba Vì', 5), (303, 502, 'Sapa', 'An Giang', 5), (304, 502, 'Sapa', 'Hà Nội', 5), (305, 502, 'Sapa', 'Đà Nẵng', 5), (
        306,
        502,
        'Sapa',
        'Ninh Bình ',
        5
    ), (
        307,
        502,
        'Sapa',
        'Ninh Bình ',
        5
    ), (308, 502, 'Sapa', 'Huế', 10), (
        309,
        502,
        'Sapa',
        'Thanh Hoá',
        10
    ), (310, 502, 'Sapa', 'Nghệ An ', 10), (311, 502, 'Sapa', 'Nghệ An ', 10), (312, 502, 'Sapa', 'Cần Thơ ', 10), (
        313,
        502,
        'TP Hồ Chí Minh',
        'Sapa',
        5
    ), (
        314,
        502,
        'TP Hồ Chí Minh',
        'Nam Định ',
        5
    ), (
        315,
        502,
        'TP Hồ Chí Minh',
        'Thái Nguyên ',
        5
    ), (
        316,
        502,
        'TP Hồ Chí Minh',
        'Cát Bà',
        5
    ), (
        317,
        502,
        'TP Hồ Chí Minh',
        'Vitawa / Parayache Maidan',
        5
    ), (
        318,
        502,
        'TP Hồ Chí Minh',
        'Hạ Long',
        5
    ), (
        319,
        502,
        'TP Hồ Chí Minh',
        'Lào Cai',
        5
    ), (
        320,
        502,
        'TP Hồ Chí Minh',
        'Yên Bái',
        5
    ), (
        321,
        502,
        'TP Hồ Chí Minh',
        'Ba Vì',
        5
    ), (
        322,
        502,
        'TP Hồ Chí Minh',
        'An Giang',
        5
    ), (
        323,
        502,
        'TP Hồ Chí Minh',
        'Hà Nội',
        5
    ), (
        324,
        502,
        'TP Hồ Chí Minh',
        'Đà Nẵng',
        5
    ), (
        325,
        502,
        'TP Hồ Chí Minh',
        'Ninh Bình ',
        5
    ), (
        326,
        502,
        'TP Hồ Chí Minh',
        'Ninh Bình ',
        5
    ), (
        327,
        502,
        'TP Hồ Chí Minh',
        'Huế',
        10
    ), (
        328,
        502,
        'TP Hồ Chí Minh',
        'Thanh Hoá',
        10
    ), (
        329,
        502,
        'TP Hồ Chí Minh',
        'Nghệ An ',
        10
    ), (
        330,
        502,
        'TP Hồ Chí Minh',
        'Nghệ An ',
        10
    ), (
        331,
        502,
        'TP Hồ Chí Minh',
        'Cần Thơ ',
        10
    );

-- --------------------------------------------------------

--

-- Table structure for table `traintt`

--

CREATE TABLE `traintt` (
  `Hà Nội` varchar(5) DEFAULT NULL,
  `Hải Phòng` varchar(5) DEFAULT NULL,
  `Đà Nẵng` varchar(5) DEFAULT NULL,
  `Sapa` varchar(5) DEFAULT NULL,
  `Thái Nguyên` varchar(5) DEFAULT NULL,
  `Cát Bà` varchar(5) DEFAULT NULL,
  `Hạ Long` varchar(5) DEFAULT NULL,
  `Quảng Ninh` varchar(5) DEFAULT NULL,
  `Nam Định` varchar(5) DEFAULT NULL,
  `Hà Giang` varchar(5) DEFAULT NULL,
  `Huế` varchar(5) DEFAULT NULL,
  `Nghệ An` varchar(5) DEFAULT NULL,
  `Ninh Bình` varchar(5) DEFAULT NULL,
  `Cần Thơ` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--

-- Dumping data for table `traintt`

--

INSERT INTO
    `traintt` (
        `Hà Nội`,
        `Hải Phòng`,
        `Đà Nẵng`,
        `Sapa`,
        `Thái Nguyên`,
        `Cát Bà`,
        `Hạ Long`,
        `Quảng Ninh`,
        `Nam Định`,
        `Hà Giang`,
        `Huế`,
        `Nghệ An`,
        `Ninh Bình`,
        `Cần Thơ`
    )
VALUES (
        '04:33',
        '04:38',
        '04:41',
        '04:44',
        '04:48',
        '04:52',
        '04:56',
        '05:00',
        '05:04',
        '05:08',
        '05:11',
        '05:14',
        '05:17',
        '05:25'
    ), (
        '04:53',
        '04:58',
        '05:01',
        '05:04',
        '05:08',
        '05:12',
        '05:16',
        '05:20',
        '05:24',
        '05:28',
        '05:31',
        '05:34',
        '05:37',
        '05:45'
    ), (
        '05:21',
        '05:26',
        '05:29',
        '05:32',
        '05:36',
        '05:40',
        '05:44',
        '05:48',
        '05:52',
        '05:56',
        '05:59',
        '06:02',
        '06:05',
        '06:13'
    ), (
        '05:44',
        '05:49',
        '05:52',
        '05:55',
        '05:59',
        '06:03',
        '06:07',
        '06:11',
        '06:15',
        '06:19',
        '06:22',
        '06:25',
        '06:28',
        '06:36'
    ), (
        '06:17',
        '06:22',
        '06:25',
        '06:28',
        '06:32',
        '06:36',
        '06:40',
        '06:44',
        '06:48',
        '06:52',
        '06:55',
        '06:58',
        '07:01',
        '07:09'
    ), (
        '06:37',
        '06:42',
        '06:45',
        '06:48',
        '06:52',
        '06:56',
        '07:00',
        '07:04',
        '07:08',
        '07:12',
        '07:15',
        '07:18',
        '07:21',
        '07:29'
    ), (
        '07:01',
        '07:06',
        '07:09',
        '07:12',
        '07:16',
        '07:20',
        '07:24',
        '07:28',
        '07:32',
        '07:36',
        '07:39',
        '07:42',
        '07:45',
        '07:53'
    ), (
        '07:19',
        '07:24',
        '07:27',
        '07:30',
        '07:34',
        '07:38',
        '07:42',
        '07:46',
        '07:50',
        '07:55',
        '07:58',
        '08:01',
        '08:04',
        '08:12'
    ), (
        '07:43',
        '07:48',
        '07:51',
        '07:54',
        '07:58',
        '08:02',
        '08:06',
        '08:11',
        '08:15',
        '08:19',
        '08:22',
        '08:22',
        '08:28',
        '08:36'
    ), (
        '08:04',
        '08:09',
        '08:12',
        '08:15',
        '08:19',
        '08:23',
        '08:27',
        '08:31',
        '08:35',
        '08:39',
        '08:42',
        '08:45',
        '08:48',
        '08:56'
    ), (
        '09:01',
        '09:06',
        '09:09',
        '09:12',
        '09:16',
        '09:20',
        '09:24',
        '09:28',
        '09:32',
        '09:36',
        '09:39',
        '09:42',
        '09:45',
        '09:53'
    ), (
        '09:48',
        '09:53',
        '09:56',
        '09:59',
        '10:03',
        '10:07',
        '10:11',
        '10:15',
        '10:19',
        '10:23',
        '10:26',
        '10:29',
        '10:32',
        '10:40'
    ), (
        '10:41',
        '10:46',
        '10:49',
        '10:52',
        '10:56',
        '11:00',
        '11:04',
        '11:08',
        '11:12',
        '11:16',
        '11:19',
        '11:32',
        '11:25',
        '11:33'
    ), (
        '11:02',
        '11:07',
        '11:10',
        '11:13',
        '11:17',
        '11:21',
        '11:25',
        '11:30',
        '11:34',
        '11:38',
        '11:41',
        '11:44',
        '11:47',
        '11:55'
    ), (
        '12:19',
        '12:24',
        '12:27',
        '12:30',
        '12:34',
        '12:38',
        '12:42',
        '12:46',
        '12:50',
        '12:55',
        '12:58',
        '13:01',
        '13:04',
        '13:12'
    ), (
        '13:04',
        '13:09',
        '13:12',
        '13:15',
        '13:19',
        '13:23',
        '13:27',
        '13:31',
        '13:35',
        '13:39',
        '13:42',
        '13:45',
        '13:48',
        '13:56'
    ), (
        '13:57',
        '14:02',
        '14:05',
        '14:08',
        '14:12',
        '14:16',
        '14:20',
        '14:24',
        '14:28',
        '14:33',
        '14:36',
        '14:39',
        '14:42',
        '14:50'
    ), (
        '14:24',
        '14:29',
        '14:32',
        '14:35',
        '14:39',
        '14:43',
        '14:47',
        '14:51',
        '14:55',
        '14:59',
        '15:02',
        '15:05',
        '15:08',
        '15:16'
    ), (
        '15:04',
        '15:09',
        '15:12',
        '15:15',
        '15:19',
        '15:23',
        '15:27',
        '15:31',
        '15:35',
        '15:39',
        '15:42',
        '15:45',
        '15:48',
        '15:56'
    ), (
        '15:36',
        '15:41',
        '15:44',
        '15:47',
        '15:51',
        '15:55',
        '15:59',
        '16:03',
        '16:07',
        '16:11',
        '16:14',
        '16:17',
        '16:20',
        '16:28'
    ), (
        '15:53',
        '15:58',
        '16:01',
        '16:04',
        '16:08',
        '16:12',
        '16:16',
        '16:20',
        '16:24',
        '16:28',
        '16:31',
        '16:34',
        '16:37',
        '16:45'
    ), (
        '16:14',
        '16:19',
        '16:22',
        '16:25',
        '16:29',
        '16:33',
        '16:37',
        '16:41',
        '16:45',
        '16:51',
        '16:54',
        '16:57',
        '17:00',
        '17:08'
    ), (
        '16:26',
        '16:31',
        '16:34',
        '16:37',
        '16:41',
        '16:45',
        '16:49',
        '16:53',
        '16:57',
        '17:03',
        '17:06',
        '17:09',
        '17:12',
        '17:20'
    ), (
        '17:12',
        '17:17',
        '17:20',
        '17:23',
        '17:27',
        '17:31',
        '17:35',
        '17:39',
        '17:43',
        '17:49',
        '17:52',
        '17:55',
        '17:58',
        '18:06'
    ), (
        '17:37',
        '17:42',
        '17:45',
        '17:48',
        '17:52',
        '17:56',
        '18:00',
        '18:04',
        '18:08',
        '18:12',
        '18:15',
        '18:18',
        '18:21',
        '18:29'
    ), (
        '17:57',
        '18:02',
        '18:05',
        '18:08',
        '18:12',
        '18:16',
        '18:20',
        '18:24',
        '18:28',
        '18:32',
        '18:35',
        '18:38',
        '18:41',
        '18:49'
    ), (
        '18:21',
        '18:26',
        '18:29',
        '18:32',
        '18:36',
        '18:40',
        '18:44',
        '18:48',
        '18:52',
        '18:56',
        '18:59',
        '19:02',
        '19:05',
        '19:13'
    ), (
        '19:01',
        '19:06',
        '19:09',
        '19:12',
        '19:16',
        '19:20',
        '19:24',
        '19:28',
        '19:32',
        '19:36',
        '19:39',
        '19:42',
        '19:45',
        '19:53'
    ), (
        '19:31',
        '19:36',
        '19:39',
        '19:42',
        '19:46',
        '19:50',
        '19:54',
        '19:58',
        '20:02',
        '20:06',
        '20:09',
        '20:12',
        '20:15',
        '20:23'
    ), (
        '20:19',
        '20:24',
        '20:27',
        '20:30',
        '20:34',
        '20:38',
        '20:42',
        '20:46',
        '20:50',
        '20:54',
        '20:57',
        '21:00',
        '21:03',
        '21:11'
    ), (
        '20:52',
        '20:57',
        '21:00',
        '21:03',
        '21:07',
        '21:11',
        '21:16',
        '21:21',
        '21:25',
        '21:29',
        '21:32',
        '21:35',
        '21:38',
        '21:46'
    ), (
        '21:20',
        '21:25',
        '21:28',
        '21:31',
        '21:35',
        '21:39',
        '21:43',
        '21:47',
        '21:51',
        '21:55',
        '21:58',
        '22:01',
        '22:04',
        '22:12'
    ), (
        '22:11',
        '22:16',
        '22:19',
        '22:22',
        '22:26',
        '22:30',
        '22:34',
        '22:38',
        '22:42',
        '22:46',
        '22:49',
        '22:52',
        '22:55',
        '23:03'
    ), (
        '23:18',
        '23:23',
        '23:26',
        '23:29',
        '23:33',
        '23:37',
        '23:41',
        '23:45',
        '23:49',
        '23:53',
        '23:56',
        '23:59',
        '00:02',
        '00:10'
    );

-- --------------------------------------------------------

--

-- Table structure for table `transactions`

--

CREATE TABLE `transactions` (
  `T_No.` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dest` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Class` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoOfpass` int(11) NOT NULL,
  `card_no` int(25) NOT NULL,
  `expmonth` int(2) NOT NULL,
  `expyear` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `Amt` int(10) NOT NULL,
  `Route` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
--

-- Dumping data for table `transactions`

--

INSERT INTO
    `transactions` (
        `T_No.`,
        `email`,
        `source`,
        `dest`,
        `Name`,
        `Class`,
        `Type`,
        `NoOfpass`,
        `card_no`,
        `expmonth`,
        `expyear`,
        `cvv`,
        `pin`,
        `Date`,
        `Amt`,
        `Route`
    )
VALUES (
        54,
        'vydk@gmail.com',
        'Hải Phòng',
        'Thái Nguyên',
        'vydk',
        'Second',
        'Single',
        2,
        5416,
        0,
        0,
        0,
        0,
        '2021-08-23 20:53:06',
        10,
        'Hải Phòng-Thái Nguyên'
    ), (
        55,
        'vydk@gmail.com',
        'Thanh Hoá',
        'Hà Nội',
        'vydk',
        'First',
        'Return',
        5,
        2147483647,
        7,
        25,
        468,
        7613,
        '2021-08-23 20:54:48',
        1050,
        'Thanh Hoá- Hà Tĩnh -Hà Nội'
    );

-- --------------------------------------------------------

--

-- Table structure for table `users`

--

CREATE TABLE `users` (
  `UserID` int(10) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DoB` date NOT NULL,
  `Phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Joined_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

-- Dumping data for table `users`

--

INSERT INTO
    `users` (
        `UserID`,
        `Name`,
        `Email`,
        `Gender`,
        `password`,
        `DoB`,
        `Phone`,
        `Joined_on`
    )
VALUES (
        48,
        'MinhTA',
        'minhta@gmail.com',
        'M',
        '1234',
        '2001-04-11',
        '4578962148',
        '2021-08-23 15:01:08'
    ), (
        49,
        'PhongNT',
        'phongnt@gmail.com',
        'M',
        '45prvydk',
        '2005-05-06',
        '7943258617',
        '2021-08-23 15:02:49'
    ), (
        50,
        'DucDX',
        'ducdx@gmail.com',
        'M',
        'nikhil126',
        '1999-06-09',
        '7718649523',
        '2021-08-23 15:04:02'
    );

--

-- Indexes for dumped tables

--

--

-- Indexes for table `bustransactions`

--

ALTER TABLE `bustransactions` ADD PRIMARY KEY (`T_No.`);

--

-- Indexes for table `transactions`

--

ALTER TABLE `transactions` ADD PRIMARY KEY (`T_No.`);

--

-- Indexes for table `users`

--

ALTER TABLE `users`
ADD PRIMARY KEY (`UserID`),
ADD
    UNIQUE KEY `Email` (`Email`);

--

-- AUTO_INCREMENT for dumped tables

--

--

-- AUTO_INCREMENT for table `bustransactions`

--

ALTER TABLE
    `bustransactions` MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 11;

--

-- AUTO_INCREMENT for table `transactions`

--

ALTER TABLE
    `transactions` MODIFY `T_No.` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 56;

--

-- AUTO_INCREMENT for table `users`

--

ALTER TABLE
    `users` MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 51;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;