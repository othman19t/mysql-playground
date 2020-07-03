SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `cities` (
  `city_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `num_of_employees` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cities` (`city_id`, `country_id`, `city_name`, `num_of_employees`) VALUES
(1, 1, 'New York', 50),
(2, 2, 'Vancouver', 50),
(3, 1, 'California', 20),
(4, 2, 'Burnaby', 20),
(5, 2, 'Campbell River', 2),
(6, 2, 'Nanaimo', 8);

CREATE TABLE `countries` (
  `country_id` int(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `num_of_employees` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `countries` (`country_id`, `country_name`, `num_of_employees`) VALUES
(1, 'United State Of America', 200),
(2, 'Canada', 300),
(3, 'China', 26),
(4, 'Turkey', 130),
(5, 'India', 30),
(6, 'Turkey', 45),
(7, 'Albania', 33),
(8, 'Afghanistan', 23),
(9, 'Algeria', 21),
(10, 'Syria', 24),
(11, 'Argentina', 36),
(12, 'Australia', 10),
(13, 'Austria', 13),
(14, 'Azerbaijan', 9),
(15, 'Brazil', 34),
(16, 'Nepal', 70),
(17, 'Namibia', 67),
(18, 'New Zealand', 54),
(19, 'Germany', 36),
(20, 'Chile', 43),
(21, 'Ecuador', 56),
(22, 'Egypt', 23),
(23, 'France', 39);

CREATE TABLE `employees` (
  `employee_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_num` varchar(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `team_id` int(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `hire_date` date NOT NULL,
  `salary` float NOT NULL,
  `current_project` varchar(255) NOT NULL,
  `relationship_status` varchar(255) NOT NULL,
  `children` int(255) NOT NULL,
  `supervisor_id` int(255) NOT NULL,
  `job_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_num`, `country_id`, `city_id`, `team_id`, `department`, `position`, `age`, `hire_date`, `salary`, `current_project`, `relationship_status`, `children`, `supervisor_id`, `job_type`) VALUES
(1, 'othman', 'othman', 'othman19t@gmail.com', '60423809853223', 2, 3, 1, 'IT', 'Web Developer', 25, '2019-08-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(2, 'basil', 'alisaa', 'basil@gmail.com', '60423809853223', 2, 1, 1, 'IT', 'Web Developer', 25, '2019-05-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(3, 'shahla', 'Raza', 'shahla@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-05-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(4, 'ali', 'mohamad', 'ali@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-02-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(5, 'jon', 'smith', 'jon@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-04-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(6, 'jak', 'hood', 'hood@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-06-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(7, 'othman', 'othman', 'othman19t@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-08-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(8, 'basil', 'alisaa', 'basil@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-05-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(9, 'shahla', 'Raza', 'shahla@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-05-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(10, 'ali', 'mohamad', 'ali@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-02-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(11, 'jon', 'smith', 'jon@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-04-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(12, 'jak', 'hood', 'hood@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-06-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(13, 'othman', 'othman', 'othman19t@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-08-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(14, 'basil', 'alisaa', 'basil@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-05-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(15, 'shahla', 'Raza', 'shahla@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-05-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(16, 'ali', 'mohamad', 'ali@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-02-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(17, 'jon', 'smith', 'jon@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-04-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(18, 'jak', 'hood', 'hood@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-06-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(19, 'othman', 'othman', 'othman19t@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-08-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(20, 'basil', 'alisaa', 'basil@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-05-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(21, 'shahla', 'Raza', 'shahla@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web designer', 25, '2018-05-01', 5000, 'management system', 'married', 1, 1, 'full time'),
(22, 'ali', 'mohamad', 'ali@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-02-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(23, 'jon', 'smith', 'jon@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'Web Developer', 25, '2019-04-01', 5000, 'management system', 'single', 0, 1, 'full time'),
(24, 'jak', 'hood', 'hood@gmail.com', '60423809853223', 2, 2, 1, 'IT', 'front-end Web Developer', 25, '2019-05-15', 5000, 'management system', 'single', 1, 1, 'full time'),
(25, 'othman', 'othman', 'othman19t@gmail.com', '60423809853223', 2, 1, 1, 'IT', 'Web Developer', 25, '2019-08-01', 5000, 'management system', 'single', 0, 1, 'full time');

CREATE TABLE `teams` (
  `employee_id` int(255) NOT NULL,
  `country_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `current_project` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `teams` (`employee_id`, `country_id`, `city_id`, `team_name`, `current_project`) VALUES
(1, 2, 2, 'best developers', 'management system');


ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

ALTER TABLE `teams`
  ADD PRIMARY KEY (`employee_id`);


ALTER TABLE `cities`
  MODIFY `city_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `countries`
  MODIFY `country_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `employees`
  MODIFY `employee_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `teams`
  MODIFY `employee_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
