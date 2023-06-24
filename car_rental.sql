
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `cars` (
  `vehicle_number` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `seating_capacity` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `agency`
  ADD PRIMARY KEY (`agency_id`);

ALTER TABLE `cars`
  ADD PRIMARY KEY (`vehicle_number`);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

ALTER TABLE `agency`
  MODIFY `agency_id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
