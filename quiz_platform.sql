-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 05:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `general_knowledge_quiz`
--

CREATE TABLE `general_knowledge_quiz` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_knowledge_quiz`
--

INSERT INTO `general_knowledge_quiz` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'Paris'),
(2, 'Who wrote \"Hamlet\"?', 'Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Leo Tolstoy', 'William Shakespeare'),
(3, 'What is the largest ocean on Earth?', 'Indian Ocean', 'Atlantic Ocean', 'Arctic Ocean', 'Pacific Ocean', 'Pacific Ocean'),
(4, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Venus', 'Jupiter', 'Mars'),
(5, 'Who painted the Mona Lisa?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'Leonardo da Vinci'),
(6, 'Which is the longest river in the world?', 'Amazon River', 'Yangtze River', 'Mississippi River', 'Nile River', 'Nile River'),
(7, 'How many continents are there on Earth?', '5', '6', '7', '8', '7'),
(8, 'Which country invented pizza?', 'USA', 'Italy', 'France', 'Germany', 'Italy'),
(9, 'What is the national animal of India?', 'Tiger', 'Lion', 'Elephant', 'Cheetah', 'Tiger'),
(10, 'Which is the smallest country in the world?', 'Monaco', 'Liechtenstein', 'Vatican City', 'San Marino', 'Vatican City'),
(11, 'What does DNA stand for?', 'Deoxyribonucleic Acid', 'Deoxyribonitric Acid', 'Dinitrogen Acid', 'Diphosphoric Acid', 'Deoxyribonucleic Acid'),
(12, 'Which gas do plants absorb from the atmosphere?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'Carbon Dioxide'),
(13, 'Who discovered gravity?', 'Newton', 'Einstein', 'Galileo', 'Tesla', 'Newton'),
(14, 'Which year did World War II end?', '1943', '1945', '1947', '1950', '1945'),
(15, 'What is the largest desert in the world?', 'Sahara', 'Gobi', 'Kalahari', 'Arctic', 'Antarctica'),
(16, 'Who was the first person to step on the moon?', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'Michael Collins', 'Neil Armstrong'),
(17, 'What is the hardest natural substance?', 'Gold', 'Diamond', 'Platinum', 'Quartz', 'Diamond'),
(18, 'Which bird is known as the symbol of peace?', 'Eagle', 'Dove', 'Owl', 'Parrot', 'Dove'),
(19, 'How many bones are in the adult human body?', '200', '206', '212', '215', '206'),
(20, 'What is the capital of Japan?', 'Seoul', 'Beijing', 'Tokyo', 'Bangkok', 'Tokyo'),
(21, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'Paris'),
(22, 'Who wrote \"Hamlet\"?', 'Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Leo Tolstoy', 'William Shakespeare'),
(23, 'What is the largest ocean on Earth?', 'Indian Ocean', 'Atlantic Ocean', 'Arctic Ocean', 'Pacific Ocean', 'Pacific Ocean'),
(24, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Venus', 'Jupiter', 'Mars'),
(25, 'Who painted the Mona Lisa?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'Leonardo da Vinci'),
(26, 'Which is the longest river in the world?', 'Amazon River', 'Yangtze River', 'Mississippi River', 'Nile River', 'Nile River'),
(27, 'How many continents are there on Earth?', '5', '6', '7', '8', '7'),
(28, 'Which country invented pizza?', 'USA', 'Italy', 'France', 'Germany', 'Italy'),
(29, 'What is the national animal of India?', 'Tiger', 'Lion', 'Elephant', 'Cheetah', 'Tiger'),
(30, 'Which is the smallest country in the world?', 'Monaco', 'Liechtenstein', 'Vatican City', 'San Marino', 'Vatican City'),
(31, 'What does DNA stand for?', 'Deoxyribonucleic Acid', 'Deoxyribonitric Acid', 'Dinitrogen Acid', 'Diphosphoric Acid', 'Deoxyribonucleic Acid'),
(32, 'Which gas do plants absorb from the atmosphere?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'Carbon Dioxide'),
(33, 'Who discovered gravity?', 'Newton', 'Einstein', 'Galileo', 'Tesla', 'Newton'),
(34, 'Which year did World War II end?', '1943', '1945', '1947', '1950', '1945'),
(35, 'What is the largest desert in the world?', 'Sahara', 'Gobi', 'Kalahari', 'Arctic', 'Antarctica'),
(36, 'Who was the first person to step on the moon?', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'Michael Collins', 'Neil Armstrong'),
(37, 'What is the hardest natural substance?', 'Gold', 'Diamond', 'Platinum', 'Quartz', 'Diamond'),
(38, 'Which bird is known as the symbol of peace?', 'Eagle', 'Dove', 'Owl', 'Parrot', 'Dove'),
(39, 'How many bones are in the adult human body?', '200', '206', '212', '215', '206'),
(40, 'What is the capital of Japan?', 'Seoul', 'Beijing', 'Tokyo', 'Bangkok', 'Tokyo'),
(41, 'What is the capital of France?', 'Berlin', 'Madrid', 'Paris', 'Rome', 'C'),
(42, 'Who wrote \"Hamlet\"?', 'Charles Dickens', 'William Shakespeare', 'Mark Twain', 'Jane Austen', 'B'),
(43, 'Which planet is known as the Red Planet?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'B'),
(44, 'What is the largest ocean on Earth?', 'Atlantic', 'Indian', 'Arctic', 'Pacific', 'D'),
(45, 'Which country is known as the Land of the Rising Sun?', 'China', 'South Korea', 'Japan', 'Thailand', 'C'),
(46, 'What is the capital of Canada?', 'Toronto', 'Vancouver', 'Ottawa', 'Montreal', 'C'),
(47, 'Which gas do plants absorb from the atmosphere?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'B'),
(48, 'Who painted the Mona Lisa?', 'Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso', 'Claude Monet', 'B'),
(49, 'What is the tallest mountain in the world?', 'Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse', 'A'),
(50, 'Which planet is closest to the Sun?', 'Earth', 'Mars', 'Mercury', 'Venus', 'C'),
(51, 'What is the longest river in the world?', 'Amazon', 'Nile', 'Yangtze', 'Mississippi', 'B'),
(52, 'Who wrote the Harry Potter series?', 'J.R.R. Tolkien', 'J.K. Rowling', 'Stephen King', 'George R.R. Martin', 'B'),
(53, 'Which year did the Titanic sink?', '1910', '1912', '1915', '1920', 'B'),
(54, 'What is the smallest country in the world?', 'Monaco', 'Vatican City', 'Liechtenstein', 'San Marino', 'B'),
(55, 'Who was the first man to walk on the Moon?', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'Michael Collins', 'C'),
(56, 'What is the capital of Japan?', 'Seoul', 'Beijing', 'Tokyo', 'Bangkok', 'C'),
(57, 'Which continent is the largest by area?', 'Africa', 'Asia', 'Europe', 'North America', 'B'),
(58, 'What is the fastest land animal?', 'Cheetah', 'Lion', 'Horse', 'Greyhound', 'A'),
(59, 'What is the hardest natural substance on Earth?', 'Gold', 'Iron', 'Diamond', 'Platinum', 'C'),
(60, 'Which country gifted the Statue of Liberty to the USA?', 'France', 'Germany', 'Italy', 'UK', 'A'),
(61, 'How many bones are there in the human body?', '200', '206', '210', '212', 'B'),
(62, 'What does \"www\" stand for in a website address?', 'World Wide Web', 'Web World Wide', 'Wide Web World', 'Web Wide World', 'A'),
(63, 'Which ocean is the largest?', 'Atlantic', 'Indian', 'Pacific', 'Arctic', 'C'),
(64, 'Which bird is known as the symbol of peace?', 'Sparrow', 'Eagle', 'Dove', 'Pigeon', 'C'),
(65, 'Who invented the light bulb?', 'Nikola Tesla', 'Thomas Edison', 'Alexander Graham Bell', 'Benjamin Franklin', 'B'),
(66, 'What is the capital of Australia?', 'Sydney', 'Melbourne', 'Canberra', 'Perth', 'C'),
(67, 'Which element is represented by the symbol \"O\" on the periodic table?', 'Oxygen', 'Gold', 'Iron', 'Silver', 'A'),
(68, 'Who discovered gravity?', 'Newton', 'Einstein', 'Galileo', 'Tesla', 'A'),
(69, 'What is the national animal of India?', 'Tiger', 'Lion', 'Elephant', 'Leopard', 'A'),
(70, 'Which sport is played at Wimbledon?', 'Football', 'Tennis', 'Cricket', 'Rugby', 'B'),
(71, 'What is the boiling point of water in Celsius?', '90°C', '100°C', '110°C', '120°C', 'B'),
(72, 'How many planets are in our Solar System?', '7', '8', '9', '10', 'B'),
(73, 'Which city is known as the Big Apple?', 'Los Angeles', 'New York', 'Chicago', 'San Francisco', 'B'),
(74, 'Which fruit has its seeds on the outside?', 'Apple', 'Strawberry', 'Orange', 'Banana', 'B'),
(75, 'What is the chemical formula of water?', 'H2O2', 'H2O', 'O2H', 'HO2', 'B'),
(76, 'Which instrument is used to measure earthquakes?', 'Barometer', 'Seismometer', 'Thermometer', 'Anemometer', 'B'),
(77, 'Who was the first female Prime Minister of the UK?', 'Margaret Thatcher', 'Angela Merkel', 'Indira Gandhi', 'Hillary Clinton', 'A'),
(78, 'What does the term \"CPU\" stand for?', 'Central Processing Unit', 'Central Power Unit', 'Computer Processing Unit', 'Core Processing Unit', 'A'),
(79, 'Which desert is the largest in the world?', 'Sahara', 'Gobi', 'Kalahari', 'Antarctic', 'A'),
(80, 'Who is known as the \"Father of Computers\"?', 'Alan Turing', 'Charles Babbage', 'Bill Gates', 'Steve Jobs', 'B'),
(81, 'How many continents are there?', '5', '6', '7', '8', 'C'),
(82, 'Which scientist developed the theory of relativity?', 'Newton', 'Einstein', 'Galileo', 'Curie', 'B'),
(83, 'Which is the only mammal that can fly?', 'Bat', 'Flying Squirrel', 'Owl', 'Pigeon', 'A'),
(84, 'Which gas do we breathe in the most?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'B'),
(85, 'What is the national sport of Canada?', 'Cricket', 'Ice Hockey', 'Basketball', 'Soccer', 'B'),
(86, 'Which number does not have a Roman numeral?', '1000', '50', '0', '500', 'C'),
(87, 'Who is the Greek god of the sea?', 'Zeus', 'Poseidon', 'Hades', 'Hermes', 'B'),
(88, 'Which planet is known as the \"Morning Star\"?', 'Mars', 'Jupiter', 'Venus', 'Saturn', 'C'),
(89, 'What is the process of water turning into vapor called?', 'Evaporation', 'Condensation', 'Precipitation', 'Sublimation', 'A'),
(90, 'Who wrote \"The Odyssey\"?', 'Homer', 'Shakespeare', 'Plato', 'Dante', 'A'),
(91, 'What is the currency of Japan?', 'Yuan', 'Won', 'Yen', 'Dollar', 'C'),
(92, 'Which is the longest railway in the world?', 'Trans-Siberian Railway', 'Indian Railways', 'Canadian Pacific Railway', 'Orient Express', 'A'),
(93, 'What is the largest island in the world?', 'Madagascar', 'Borneo', 'Greenland', 'New Guinea', 'C'),
(94, 'Which famous scientist was born on Pi Day (March 14)?', 'Einstein', 'Newton', 'Darwin', 'Tesla', 'A'),
(95, 'How many degrees are in a right angle?', '45', '90', '180', '360', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `history_quiz`
--

CREATE TABLE `history_quiz` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_quiz`
--

INSERT INTO `history_quiz` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 'Who was the first President of the United States?', 'Abraham Lincoln', 'Thomas Jefferson', 'George Washington', 'John Adams', 'George Washington'),
(2, 'Which year did the Titanic sink?', '1905', '1912', '1920', '1931', '1912'),
(3, 'Who discovered America?', 'Christopher Columbus', 'Vasco da Gama', 'Marco Polo', 'Ferdinand Magellan', 'Christopher Columbus'),
(4, 'When was the Declaration of Independence signed?', '1775', '1776', '1781', '1790', '1776'),
(5, 'Who was the first emperor of China?', 'Sun Yat-sen', 'Mao Zedong', 'Qin Shi Huang', 'Confucius', 'Qin Shi Huang'),
(6, 'Who was the first President of the United States?', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John Adams', 'B'),
(7, 'In which year did World War II end?', '1943', '1944', '1945', '1946', 'C'),
(8, 'Which ancient civilization built the pyramids?', 'Romans', 'Greeks', 'Egyptians', 'Mayans', 'C'),
(9, 'Who discovered America in 1492?', 'Marco Polo', 'Christopher Columbus', 'Vasco da Gama', 'Ferdinand Magellan', 'B'),
(10, 'Which city was the capital of the Roman Empire?', 'Athens', 'Carthage', 'Rome', 'Constantinople', 'C'),
(11, 'Who was the first President of the United States?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 'B'),
(12, 'Which war was fought between the North and South regions of the United States?', 'World War I', 'American Civil War', 'Revolutionary War', 'War of 1812', 'B'),
(13, 'Who discovered America in 1492?', 'Marco Polo', 'Christopher Columbus', 'Ferdinand Magellan', 'James Cook', 'B'),
(14, 'What year did World War II end?', '1943', '1945', '1950', '1939', 'B'),
(15, 'Which ancient civilization built the pyramids?', 'Romans', 'Greeks', 'Egyptians', 'Mayans', 'C'),
(16, 'Who was the first emperor of Rome?', 'Julius Caesar', 'Augustus', 'Nero', 'Constantine', 'B'),
(17, 'The Great Wall of China was built to protect against which invaders?', 'Japanese', 'Mongols', 'Persians', 'Romans', 'B'),
(18, 'What was the main reason for the Cold War?', 'Nuclear weapons', 'Space exploration', 'Political Ideologies', 'Economic growth', 'C'),
(19, 'Which empire was ruled by Alexander the Great?', 'Roman Empire', 'Macedonian Empire', 'Ottoman Empire', 'British Empire', 'B'),
(20, 'Who wrote the Declaration of Independence?', 'George Washington', 'John Adams', 'Thomas Jefferson', 'Benjamin Franklin', 'C'),
(21, 'In which year did India gain independence?', '1945', '1947', '1950', '1937', 'B'),
(22, 'Which country was formerly known as Persia?', 'Iraq', 'Iran', 'Turkey', 'Afghanistan', 'B'),
(23, 'Which treaty ended World War I?', 'Treaty of Versailles', 'Treaty of Paris', 'Treaty of Rome', 'Treaty of Vienna', 'A'),
(24, 'Which ancient city was buried by a volcanic eruption in 79 AD?', 'Pompeii', 'Athens', 'Sparta', 'Babylon', 'A'),
(25, 'Who was the first female Prime Minister of the UK?', 'Margaret Thatcher', 'Queen Elizabeth I', 'Theresa May', 'Angela Merkel', 'A'),
(26, 'Which explorer was the first to sail around the world?', 'Christopher Columbus', 'Ferdinand Magellan', 'Vasco da Gama', 'James Cook', 'B'),
(27, 'What year did the Titanic sink?', '1910', '1912', '1915', '1920', 'B'),
(28, 'Who was the leader of Germany during World War II?', 'Adolf Hitler', 'Joseph Stalin', 'Winston Churchill', 'Benito Mussolini', 'A'),
(29, 'Which battle marked the end of Napoleon’s rule?', 'Battle of Trafalgar', 'Battle of Waterloo', 'Battle of Hastings', 'Battle of Leipzig', 'B'),
(30, 'The Industrial Revolution began in which country?', 'France', 'Germany', 'USA', 'Britain', 'D'),
(31, 'What was the first civilization to develop writing?', 'Egyptians', 'Sumerians', 'Chinese', 'Romans', 'B'),
(32, 'Who was the first person to walk on the moon?', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'Michael Collins', 'C'),
(33, 'The Berlin Wall fell in which year?', '1987', '1989', '1991', '1995', 'B'),
(34, 'Who was the last Tsar of Russia?', 'Nicholas I', 'Alexander II', 'Nicholas II', 'Peter the Great', 'C'),
(35, 'Which country built the first atomic bomb?', 'Germany', 'USA', 'Russia', 'Japan', 'B'),
(36, 'What was the name of the ship that brought the Pilgrims to America?', 'Santa Maria', 'Mayflower', 'Endeavour', 'Beagle', 'B'),
(37, 'Who was known as the Iron Lady?', 'Angela Merkel', 'Margaret Thatcher', 'Hillary Clinton', 'Indira Gandhi', 'B'),
(38, 'Which civilization invented democracy?', 'Romans', 'Greeks', 'Persians', 'Egyptians', 'B'),
(39, 'Who was the first black President of the United States?', 'Barack Obama', 'Martin Luther King Jr.', 'Colin Powell', 'Frederick Douglass', 'A'),
(40, 'Which country was divided into East and West after World War II?', 'Japan', 'Germany', 'Korea', 'Vietnam', 'B'),
(41, 'What year did the French Revolution begin?', '1789', '1812', '1848', '1905', 'A'),
(42, 'Which city was the capital of the Byzantine Empire?', 'Athens', 'Rome', 'Constantinople', 'Alexandria', 'C'),
(43, 'Who wrote \"The Art of War\"?', 'Plato', 'Sun Tzu', 'Julius Caesar', 'Machiavelli', 'B'),
(44, 'Who was the longest-reigning British monarch before Queen Elizabeth II?', 'Queen Victoria', 'King George III', 'Queen Mary', 'Henry VIII', 'A'),
(45, 'Who was assassinated in Sarajevo in 1914, sparking World War I?', 'Archduke Franz Ferdinand', 'Gavrilo Princip', 'Tsar Nicholas II', 'Woodrow Wilson', 'A'),
(46, 'What event led the United States to enter World War II?', 'D-Day', 'Pearl Harbor', 'Hiroshima Bombing', 'Battle of the Bulge', 'B'),
(47, 'Which African country was never colonized?', 'Kenya', 'South Africa', 'Ethiopia', 'Ghana', 'C'),
(48, 'What was the capital of ancient Egypt?', 'Athens', 'Cairo', 'Thebes', 'Memphis', 'C'),
(49, 'Who founded the Mongol Empire?', 'Kublai Khan', 'Genghis Khan', 'Attila the Hun', 'Tamerlane', 'B'),
(50, 'Who wrote the Communist Manifesto?', 'Karl Marx', 'Vladimir Lenin', 'Joseph Stalin', 'Friedrich Nietzsche', 'A'),
(51, 'Who was the leader of the Soviet Union during the Cuban Missile Crisis?', 'Joseph Stalin', 'Leon Trotsky', 'Nikita Khrushchev', 'Mikhail Gorbachev', 'C'),
(52, 'Which country was the first to grant women the right to vote?', 'USA', 'New Zealand', 'France', 'UK', 'B'),
(53, 'Which empire ruled India before British colonization?', 'Ottoman Empire', 'Mughal Empire', 'Roman Empire', 'Byzantine Empire', 'B'),
(54, 'What year was the United Nations founded?', '1919', '1945', '1955', '1960', 'B'),
(55, 'Who was the first President of independent India?', 'Jawaharlal Nehru', 'Sardar Patel', 'Dr. Rajendra Prasad', 'B.R. Ambedkar', 'C'),
(56, 'Which war lasted the longest in history?', 'Hundred Years War', 'Vietnam War', 'World War II', 'Napoleonic Wars', 'A'),
(57, 'What was the name of Hitler’s autobiography?', 'Mein Kampf', 'My Struggle', 'Third Reich', 'The Final Solution', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `mathematics_quiz`
--

CREATE TABLE `mathematics_quiz` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mathematics_quiz`
--

INSERT INTO `mathematics_quiz` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 'What is 10 + 5?', '10', '12', '15', '20', '15'),
(2, 'What is the square root of 64?', '6', '7', '8', '9', '8'),
(3, 'What is 7 × 8?', '49', '54', '56', '64', '56'),
(4, 'What is the value of π (Pi) to two decimal places?', '3.12', '3.14', '3.16', '3.18', '3.14'),
(5, 'If a triangle has angles 60° and 60°, what type of triangle is it?', 'Equilateral', 'Isosceles', 'Scalene', 'Right-Angled', 'Equilateral'),
(6, 'What is 12 × 8?', '90', '96', '98', '102', 'B'),
(7, 'What is the square root of 144?', '10', '11', '12', '13', 'C'),
(8, 'If a triangle has angles 90°, 45°, and 45°, what type of triangle is it?', 'Scalene', 'Equilateral', 'Isosceles', 'Right-angled', 'D'),
(9, 'What is the value of π (pi) rounded to two decimal places?', '3.14', '3.15', '3.16', '3.17', 'A'),
(10, 'What is 25% of 200?', '25', '40', '50', '60', 'C'),
(11, 'What is 12 × 8?', '80', '96', '104', '112', 'B'),
(12, 'What is the square root of 144?', '10', '11', '12', '14', 'C'),
(13, 'Solve: 5 + 7 × 2', '24', '19', '17', '26', 'C'),
(14, 'What is the value of π (pi) rounded to two decimal places?', '3.12', '3.14', '3.16', '3.18', 'B'),
(15, 'Which number is a prime number?', '15', '21', '29', '39', 'C'),
(16, 'If a triangle has angles 90°, 45°, and 45°, what type of triangle is it?', 'Scalene', 'Equilateral', 'Isosceles Right', 'Obtuse', 'C'),
(17, 'What is 25% of 200?', '25', '50', '75', '100', 'B'),
(18, 'What is 7²?', '36', '42', '49', '56', 'C'),
(19, 'Solve for x: 2x + 5 = 15', '5', '6', '7', '8', 'A'),
(20, 'What is the perimeter of a square with a side length of 6 cm?', '12 cm', '18 cm', '24 cm', '36 cm', 'C'),
(21, 'What is the cube root of 27?', '2', '3', '4', '5', 'B'),
(22, 'Solve: (6 + 2) × (5 - 3)', '14', '16', '20', '24', 'B'),
(23, 'What is the area of a rectangle with length 10 cm and width 4 cm?', '30 cm²', '40 cm²', '50 cm²', '60 cm²', 'B'),
(24, 'If a number is divisible by both 2 and 3, it must also be divisible by:', '4', '6', '8', '9', 'B'),
(25, 'What is 9³?', '81', '243', '729', '1024', 'B'),
(26, 'A right-angled triangle has one angle of 30°. What is the other non-right angle?', '30°', '45°', '60°', '90°', 'C'),
(27, 'What is the sum of angles in a quadrilateral?', '180°', '270°', '360°', '450°', 'C'),
(28, 'Solve: 45 ÷ 5 + 3 × 2', '15', '17', '19', '21', 'B'),
(29, 'What is the factorial of 5 (5!)?', '20', '60', '120', '150', 'C'),
(30, 'The value of x in the equation 3x = 12 is:', '2', '3', '4', '5', 'C'),
(31, 'What is the sum of the first 10 natural numbers?', '30', '45', '55', '60', 'C'),
(32, 'If two angles of a triangle are 50° and 60°, what is the third angle?', '50°', '60°', '70°', '80°', 'C'),
(33, 'A square has a diagonal of 10 cm. What is the length of one side?', '5√2 cm', '6 cm', '7 cm', '10 cm', 'A'),
(34, 'What is the remainder when 27 is divided by 4?', '1', '2', '3', '4', 'C'),
(35, 'The sum of opposite angles in a cyclic quadrilateral is:', '90°', '120°', '180°', '360°', 'C'),
(36, 'Which shape has the most sides?', 'Hexagon', 'Octagon', 'Decagon', 'Dodecagon', 'D'),
(37, 'How many faces does a cube have?', '4', '5', '6', '8', 'C'),
(38, 'Solve: 18 ÷ (3 × 2)', '2', '3', '4', '6', 'B'),
(39, 'If x = 4, what is the value of x² - 2x + 1?', '4', '7', '9', '11', 'C'),
(40, 'The Pythagorean theorem states:', 'a² + b² = c²', 'a² - b² = c²', 'a² + b² + c² = 0', 'a + b = c', 'A'),
(41, 'Find the sum of the interior angles of a pentagon.', '360°', '450°', '540°', '600°', 'C'),
(42, 'If a train travels 60 km in 2 hours, what is its speed?', '20 km/h', '30 km/h', '40 km/h', '50 km/h', 'B'),
(43, 'What is 3.5 × 2?', '6', '6.5', '7', '7.5', 'C'),
(44, 'How many prime numbers are there between 1 and 10?', '2', '3', '4', '5', 'C'),
(45, 'If 5x = 20, what is x?', '2', '3', '4', '5', 'C'),
(46, 'What is the sum of 1/3 and 1/6?', '1/6', '1/2', '2/3', '3/4', 'B'),
(47, 'If a clock shows 3:15, what is the angle between the hour and minute hands?', '45°', '60°', '75°', '90°', 'B'),
(48, 'Find the area of a circle with radius 7 cm. (Use π = 3.14)', '144 cm²', '153.86 cm²', '180 cm²', '200 cm²', 'B'),
(49, 'What is 5² + 7²?', '50', '74', '98', '120', 'C'),
(50, 'The sum of two numbers is 36, and their difference is 12. What is the larger number?', '12', '18', '24', '30', 'C'),
(51, 'Which fraction is greater: 3/5 or 4/7?', '3/5', '4/7', 'They are equal', 'Cannot be determined', 'A'),
(52, 'If a number is divisible by 6, it must be divisible by:', '2', '3', 'Both 2 and 3', 'None of these', 'C'),
(53, 'The perimeter of a rectangle is given by:', 'l × b', '2(l + b)', 'l + b', 'l² + b²', 'B'),
(54, 'What is the decimal equivalent of 3/8?', '0.25', '0.375', '0.5', '0.625', 'B'),
(55, 'A shopkeeper gives a 20% discount on a ₹500 item. What is the final price?', '₹350', '₹375', '₹400', '₹450', 'C'),
(56, 'If log₂ 8 = x, what is x?', '2', '3', '4', '5', 'B'),
(57, 'Find the circumference of a circle with a diameter of 14 cm. (Use π = 3.14)', '21.98 cm', '31.42 cm', '43.96 cm', '50 cm', 'B'),
(58, 'What is the missing number in this sequence: 2, 4, 8, 16, __, 64?', '24', '30', '32', '40', 'C'),
(59, 'How many edges does a cube have?', '6', '8', '10', '12', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_option` enum('A','B','C','D') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` enum('easy','medium','hard') NOT NULL,
  `time_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `science_technology`
--

CREATE TABLE `science_technology` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `science_technology`
--

INSERT INTO `science_technology` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
(1, 'hb', 'nb', 'm', 'o', 'i', 'a'),
(2, 'hb', 'nb', 'm', 'o', 'i', 'a'),
(3, 'hb', 'nb', 'm', 'o', 'i', 'a'),
(4, 'hb', 'nb', 'm', 'o', 'i', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `science_technology_quiz`
--

CREATE TABLE `science_technology_quiz` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `science_technology_quiz`
--

INSERT INTO `science_technology_quiz` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Pb', 'Au'),
(2, 'Who invented the telephone?', 'Albert Einstein', 'Alexander Graham Bell', 'Isaac Newton', 'Nikola Tesla', 'Alexander Graham Bell'),
(3, 'What is the powerhouse of the cell?', 'Ribosome', 'Nucleus', 'Mitochondria', 'Golgi Apparatus', 'Mitochondria'),
(4, 'Which planet has the most moons?', 'Mars', 'Jupiter', 'Saturn', 'Neptune', 'Saturn'),
(5, 'What is the speed of light?', '300,000 km/s', '150,000 km/s', '1,000,000 km/s', '500,000 km/s', '300,000 km/s'),
(6, 'What is the main gas found in the Earth\'s atmosphere?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Carbon Dioxide', 'Nitrogen'),
(7, 'What type of energy is derived from the sun?', 'Thermal', 'Solar', 'Wind', 'Hydro', 'Solar'),
(8, 'Which scientist developed the theory of relativity?', 'Isaac Newton', 'Galileo Galilei', 'Albert Einstein', 'Stephen Hawking', 'Albert Einstein'),
(9, 'Which is the strongest muscle in the human body?', 'Heart', 'Jaw', 'Thigh', 'Arm', 'Jaw'),
(10, 'Which programming language is known as the backbone of the web?', 'Python', 'C++', 'JavaScript', 'Ruby', 'JavaScript'),
(11, 'What does CPU stand for?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Personal Unit', 'Central Peripheral Unit', 'Central Processing Unit'),
(12, 'Which gas is used in balloons?', 'Oxygen', 'Helium', 'Nitrogen', 'Carbon Dioxide', 'Helium'),
(13, 'Which planet is known for its rings?', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Saturn'),
(14, 'Which scientist formulated the laws of motion?', 'Galileo Galilei', 'Nikola Tesla', 'Isaac Newton', 'Albert Einstein', 'Isaac Newton'),
(15, 'What is the freezing point of water in Fahrenheit?', '0°F', '32°F', '100°F', '212°F', '32°F'),
(16, 'What is the largest organ in the human body?', 'Heart', 'Liver', 'Skin', 'Brain', 'Skin'),
(17, 'Which type of rock is formed from cooling magma?', 'Sedimentary', 'Metamorphic', 'Igneous', 'Limestone', 'Igneous'),
(18, 'What is H2O?', 'Helium', 'Hydrogen', 'Water', 'Oxygen', 'Water'),
(19, 'Which element is the most abundant in the Earth\'s crust?', 'Oxygen', 'Iron', 'Silicon', 'Aluminum', 'Oxygen'),
(20, 'Which particle carries a positive charge?', 'Electron', 'Proton', 'Neutron', 'Photon', 'Proton'),
(21, 'What is the chemical symbol for Gold?', 'Au', 'Ag', 'Fe', 'Pb', 'A'),
(22, 'What is the speed of light?', '300,000 km/s', '150,000 km/s', '100,000 km/s', '250,000 km/s', 'A'),
(23, 'Who invented the telephone?', 'Alexander Graham Bell', 'Nikola Tesla', 'Thomas Edison', 'Albert Einstein', 'A'),
(24, 'What is the powerhouse of the cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Chloroplast', 'B'),
(25, 'What does \"CPU\" stand for?', 'Central Processing Unit', 'Computer Processing Unit', 'Core Processing Utility', 'Central Power Unit', 'A'),
(26, 'What is the powerhouse of the cell?', 'Nucleus', 'Mitochondria', 'Ribosome', 'Golgi Apparatus', 'B'),
(27, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Pb', 'Fe', 'A'),
(28, 'Which planet is known as the Red Planet?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'B'),
(29, 'Who invented the telephone?', 'Alexander Graham Bell', 'Thomas Edison', 'Nikola Tesla', 'Isaac Newton', 'A'),
(30, 'What is the speed of light in vacuum?', '299,792 km/s', '150,000 km/s', '1,000 km/s', '500,000 km/s', 'A'),
(31, 'Which gas is most abundant in Earth’s atmosphere?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Argon', 'B'),
(32, 'What is H2O commonly known as?', 'Oxygen', 'Hydrogen', 'Water', 'Salt', 'C'),
(33, 'Who developed the theory of general relativity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Marie Curie', 'B'),
(34, 'What is the most abundant element in the universe?', 'Oxygen', 'Carbon', 'Hydrogen', 'Helium', 'C'),
(35, 'Which part of the human brain controls balance?', 'Cerebrum', 'Medulla', 'Cerebellum', 'Thalamus', 'C'),
(36, 'Which metal is liquid at room temperature?', 'Iron', 'Mercury', 'Aluminum', 'Copper', 'B'),
(37, 'Which planet has the largest number of moons?', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'C'),
(38, 'Which part of the human body produces insulin?', 'Liver', 'Heart', 'Pancreas', 'Kidneys', 'C'),
(39, 'What is the smallest unit of an element?', 'Molecule', 'Atom', 'Compound', 'Electron', 'B'),
(40, 'Which organ in the human body is responsible for detoxifying chemicals?', 'Kidney', 'Liver', 'Lungs', 'Heart', 'B'),
(41, 'What is the main function of red blood cells?', 'Carry oxygen', 'Fight infection', 'Digest food', 'Transmit signals', 'A'),
(42, 'Who discovered penicillin?', 'Alexander Fleming', 'Louis Pasteur', 'Marie Curie', 'Joseph Lister', 'A'),
(43, 'Which particle carries a positive charge?', 'Electron', 'Neutron', 'Proton', 'Photon', 'C'),
(44, 'Which gas is used in balloons to make them float?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Helium', 'D'),
(45, 'What is the SI unit of force?', 'Watt', 'Joule', 'Newton', 'Pascal', 'C'),
(46, 'Which vitamin is produced by sunlight in the human body?', 'Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin B12', 'C'),
(47, 'What does DNA stand for?', 'Deoxyribonucleic Acid', 'Dinucleotide Acid', 'Double Helix Acid', 'Deoxysugar Acid', 'A'),
(48, 'Which of the following is a renewable source of energy?', 'Coal', 'Natural Gas', 'Solar Energy', 'Petroleum', 'C'),
(49, 'Which planet is known as the Earth’s twin?', 'Jupiter', 'Venus', 'Mars', 'Neptune', 'B'),
(50, 'What does HTTP stand for?', 'HyperText Transfer Protocol', 'Hyper Transfer Text Program', 'HyperThreaded Text Processing', 'HyperText Transport Protocol', 'A'),
(51, 'Which organ pumps blood through the body?', 'Liver', 'Heart', 'Lungs', 'Brain', 'B'),
(52, 'What is the most commonly used programming language?', 'Python', 'Java', 'C', 'JavaScript', 'D'),
(53, 'Which part of the cell contains genetic material?', 'Ribosome', 'Cytoplasm', 'Nucleus', 'Mitochondria', 'C'),
(54, 'What is the hardest natural substance on Earth?', 'Iron', 'Gold', 'Diamond', 'Quartz', 'C'),
(55, 'Which gas do plants release during photosynthesis?', 'Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Methane', 'B'),
(56, 'What is the process of converting solid directly to gas?', 'Condensation', 'Evaporation', 'Sublimation', 'Freezing', 'C'),
(57, 'Which element is used in nuclear reactors?', 'Iron', 'Uranium', 'Copper', 'Carbon', 'B'),
(58, 'Who is known as the father of modern computing?', 'Alan Turing', 'Steve Jobs', 'Bill Gates', 'Charles Babbage', 'D'),
(59, 'Which organ is responsible for filtering waste from the blood?', 'Lungs', 'Heart', 'Kidneys', 'Liver', 'C'),
(60, 'What is the boiling point of water in Fahrenheit?', '100°F', '200°F', '212°F', '150°F', 'C'),
(61, 'Which gas is responsible for global warming?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'C'),
(62, 'What is the first element on the periodic table?', 'Oxygen', 'Hydrogen', 'Nitrogen', 'Helium', 'B'),
(63, 'What is the heaviest naturally occurring element?', 'Gold', 'Lead', 'Uranium', 'Plutonium', 'C'),
(64, 'Which part of the body helps with balance?', 'Lungs', 'Inner Ear', 'Heart', 'Liver', 'B'),
(65, 'What type of energy is stored in a stretched rubber band?', 'Chemical', 'Potential', 'Kinetic', 'Nuclear', 'B'),
(66, 'Which scientist is known for his laws of motion?', 'Einstein', 'Newton', 'Galileo', 'Curie', 'B'),
(67, 'What is the name of the study of fungi?', 'Botany', 'Zoology', 'Mycology', 'Ecology', 'C'),
(68, 'Which layer of the Earth is the hottest?', 'Crust', 'Mantle', 'Outer Core', 'Inner Core', 'D'),
(69, 'Which force pulls objects towards the Earth?', 'Friction', 'Magnetism', 'Gravity', 'Inertia', 'C'),
(70, 'What is the unit of electrical resistance?', 'Ampere', 'Volt', 'Ohm', 'Watt', 'C'),
(71, 'Which of these planets is known as an \"ice giant\"?', 'Mars', 'Neptune', 'Jupiter', 'Venus', 'B'),
(72, 'Which virus causes COVID-19?', 'Ebola', 'Influenza', 'SARS-CoV-2', 'Zika', 'C'),
(73, 'What is the largest organ in the human body?', 'Liver', 'Skin', 'Heart', 'Lungs', 'B'),
(74, 'What is the term for an organism that can make its own food?', 'Consumer', 'Producer', 'Decomposer', 'Scavenger', 'B'),
(75, 'What is the name of the largest known galaxy?', 'Milky Way', 'Andromeda', 'IC 1101', 'Messier 87', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'aswin1', 'aswin@gmail.com', '$2y$10$f5irk3RGlrhV53gYw4QPQOvqH9U1c4rm4ZyBbtmMbb7HhQTpDh85i', 'user'),
(2, 'admin', 'aswinsreenivas@gmail.com', '$2y$10$XmYDI3JgsACmOvf/sybKZuX3flkfEMyhFtRJzw.u36qJbl.gYrmli', 'user'),
(3, 'aswin', 'aswin1@gmail.com', '$2y$10$HOq5bk/FzDKettVcv5HiAOZwDgYlVUlnrkfvA7qqXZKezZRaR7TSG', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_attempts`
--

CREATE TABLE `user_attempts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `general_knowledge_quiz`
--
ALTER TABLE `general_knowledge_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_quiz`
--
ALTER TABLE `history_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mathematics_quiz`
--
ALTER TABLE `mathematics_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `science_technology`
--
ALTER TABLE `science_technology`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `science_technology_quiz`
--
ALTER TABLE `science_technology_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_attempts`
--
ALTER TABLE `user_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_knowledge_quiz`
--
ALTER TABLE `general_knowledge_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `history_quiz`
--
ALTER TABLE `history_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `mathematics_quiz`
--
ALTER TABLE `mathematics_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `science_technology`
--
ALTER TABLE `science_technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `science_technology_quiz`
--
ALTER TABLE `science_technology_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_attempts`
--
ALTER TABLE `user_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_attempts`
--
ALTER TABLE `user_attempts`
  ADD CONSTRAINT `user_attempts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_attempts_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
