-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 25, 2019 lúc 10:04 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asean`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` bigint(33) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_group`) VALUES
(1, 'Education', 'News'),
(1547243429033, ' Life', 'Living'),
(1547630095488, 'Business', 'News'),
(1547652342300, 'Car++', 'Living');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `contact_id` bigint(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_question`) VALUES
(1574063087347, 'toandz', 'daicatoanmasao@gmail.com', '123', 'very good'),
(1576115243141, 'toan vui hiih', 'thichlamgi@gmail.com', '113', 'very good'),
(1576115261134, 'Leonard', '', '', ''),
(1576115262287, 'Leonard', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `category_id`, `news_title`, `news_image`, `news_content`) VALUES
(2, 2, 'New4', 'images/ivanka.jpg', 'New4'),
(5, 1, 'Third Level: Graduate in Pursuit of a Doctorate Degree', 'upload/ArticleImage-027-en_3.jpg', 'Many graduate schools consider the attainment of a master’s degree the first step towards earning a PhD (doctorate). But at other schools, students may prepare directly for a doctorate without also earning a master’s degree. It may take three years or more to earn a PhD degree. For international students, it may take as long as five or six years.  For the first two years of the program most doctoral candidates enroll in classes and seminars. At least another year is spent conducting firsthand research and writing a thesis or dissertation. This paper must contain views, designs, or research that have not been previously published.'),
(1547231624787, 1, 'Understanding the American Education System', 'upload/cdn_j-l3zfYkmXyb-Qr0Udz87610ZK8EXNvA.jpg', 'The American education system offers a rich field of choices for international students. There is such an array of schools, programs and locations that the choices may overwhelm students, even those from the U.S. As you begin your school search, it’s important to familiarize yourself with the American education system. Understanding the system will help you narrow your choices and develop your education plan'),
(1547630686749, 1547243429033, 'LIFE IN INDIA', 'upload/life-in-india.jpg', 'A country that is bold and unabashed, life in India greets its visitors with a barrage of unique cultural and social elements. Though it goes without saying that the beauty of traveling is experiencing a vastly different culture and society from your own, India can be challenging to the unknowing. And what kind of guidance would we be giving if we didn’t touch on the difficulties – and a few hard truths – about life in India.  For many tourists, traveling internationally can be a relaxing, carefree experience with the biggest hitch being a baggage delay. But if you’re reading this site, it’s likely you agree that the magic of life only starts when you step out of your comfort zone – and India will push you out of yours. It’s impossible to truly experience a new country and culture without being faced with new realities and ideas that challenge your norms.'),
(1547663975965, 3, 'Fox Sports: Vietnam goalkeeper one to watch at Asian Cup', 'images/mere.jpg', 'Fox Sports experts think Dang Van Lam is one of the goalkeepers to look out for in football’s Asian Cup starting this week.\r\nThey said his importance should not be underestimated to the Vietnamese team though they have other stars like strikers Nguyen Quang Hai and Phan Van Duc.\r\nFox Sports said, \"For the first time in a long while the Moscow-born custodian has provided Vietnam with an authoritative presence between the sticks and, while not one to try anything fancy, Van Lam does the basics well and will get an even bigger stage to shine on at the Asian Cup.\"\r\n'),
(1547664009022, 3, 'Proposed Hanoi sports complex will pose traffic problems, warn experts', 'images/mere.jpg', 'The proposal to rebuild the Hang Day sports complex in Hanoi is causing concern about inevitable traffic congestion.\r\nEarlier this month city authorities outlined the plan to upgrade the stadium on Trinh Hoai Duc Street into an international sports complex for the Southeast Asian Games (2021 SEA Games).\r\nThe new stadium will have a capacity of 20,000 people, the same as the old one, but accommodate  additional facilities like cinemas, event centers, parking space, and convenience stores.'),
(1547664093336, 1547630095488, 'Mark Zuckerberg', 'upload/facebook-mark-zuckerberg-tape-on-webcam-facebook-mark-zuckerberg-ceo-mark-zuckerberg-spy-on-people-mark-zuckerberg-privacy-mark-682196-1521335585-width590height350.jpg', 'Mark Elliot Zuckerberg (/?z?k?rb??r?/; born May 14, 1984) is an American internet entrepreneur and philanthropist. Zuckerberg is known for co-founding and leading Facebook, Inc. and its namesake social networking website as its chairman and chief executive officer.[3][4] He also co-founded and is a board member of the solar sail spacecraft development project Breakthrough Starshot.[5]  Born in White Plains, New York, Zuckerberg attended Harvard University, where he launched Facebook from his dormitory room on February 4, 2004, with college roommates Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes.[6] Originally launched to select college campuses, the site expanded rapidly and eventually beyond colleges, reaching one billion users by 2012. Zuckerberg took the company public in May 2012 with majority shares. His net worth is estimated to be $74 billion as of December 2019, increasing over the past year with Facebook stock as a whole.[7] In 2007, at age 23, he became the world\'s youngest self-made billionaire. As of 2019, he is the only person under 50 in the Forbes ten richest people list, and the only one under 40 in the Top 20 Billionaires list.'),
(1547664160460, 1547630095488, '15 super Singapore start-ups to watch in 2018', 'upload/singapore_shutterstock-718x523.jpg', 'Singapore is the gateway to Asia’s bustling technology and financial scene, and home to a diverse and ambitious entrepreneurial community.  Singapore is Asia. The island city-state that occupies a strategic point in the Straits between India and Hong Kong was founded as a colonial settlement by Stamford Raffles in 1819. Today, it is a fusion of the rich diversity of cultures from all across Asia.  It captures the essence of Asia in terms of trade and culture while at the same time standing as a bastion to the high-tech future. In many ways, it is the future.  Singapore is something of an economic miracle. After gaining independence from Malaysia in 1965, the city-state was divided and race riots ensued. However, under the leadership of Lee Kuan Yew, Singapore decided to put differences aside, embrace tolerance and concentrate on growth. In a single generation, it jumped from a developing economy to a port of affluence.'),
(1547664196750, 1547630095488, 'Tran Xuan Bach  successful young CEO', 'upload/Screen Shot 2019-12-10 at 2.30.42 PM.png', 'The CEO of Snapchat dropped out of college and was already a successful CEO by the age of 23. How well is he doing financially? Well, he recently rejected a $3 billion buyout offer from Facebook, so business isn\'t too shabby for the frat dude turned businessman.'),
(1547664237845, 1547243429033, 'BOT 830 “Encouragement for school in 2019”: Supporting poor students overcome difficulties.', 'upload/photo1521121924722-1521121924722772512007.png', 'This activity is considered as being associated with the image of Company BOT 830 Ltd. during the past time to support and encourage and studying spirit for pupils at Huu Thanh Primary School in Long An province. Most of the students awarded scholarships are in difficult circumstances but have known to overcome adversity, hard to go to school to strive to rise. Through the program “Encouragement for school”, BOT 830 Co., Ltd. hopes that this will be an encouragement for the students to continue to strive to continue and strive to achieve more success in school.'),
(1547664267202, 1547652342300, 'DUCATI PANIGALE V2 (2020-on) Review', 'upload/oto2.jpg', 'Not only does the new Ducati Panigale V2 now look as mean and purposeful as its pricier V4 siblings, it’s a more well-rounded machine than ever - faster, lighter, more agile and involving.  Related: Ducati Panigale V2 - the story Sure, you might be able to go quicker on a superbike for a lap or two, if you’ve got the talent, strength, fitness and fresh rubber, but you’ll be quicker for longer, with less effort and a bigger smile on your face riding the Panigale V2. No current sportsbike offers such a blissful blend of power and handling or goes to such lengths to flatter its rider.'),
(1547664317714, 1547652342300, 'Rolls-Royce Says Current-Gen Ghost Production Is Coming To An End', 'upload/oto1.jpg', 'The demise of the Rolls-Royce Ghost is no surprise. Not only hav our eagled-eye spy photographers captured disguised versions of the next-gen Ghost, but the Ghost has also been around for a decade. It first debuted at the 2009 Frankfurt Motor Show. A long-wheelbase version followed in 2011 with an updated Ghost Series II debuting in Geneva in 2014. So, it\'s time for a new model; however, Rolls-Royce isn\'t letting the current Ghost disappear quietly into the night.    To commemorate the Ghost\'s last decade, Rolls is introducing the Ghost Black Badge edition, which was on display this past weekend at the 2019 NEC Classic Motor Show. Rolls-Royce finished the exterior in Dark Emerald and Black diamond with a Seashell and black interior. Even the iconic Spirit of Ecstasy got redone in dark chrome'),
(1577261060658, 1547652342300, 'CEO Tran Xuan Bach: ', 'upload/Mojave.heic.jpg', 'wwwww'),
(1577261288073, 0, 'bach bu loz', 'upload/hello-kitty-cafe-website-grand-cafe-H-B-1.jpg', ' DCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_pass`, `user_name`, `user_role`) VALUES
(1576036952035, 'hihi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'toan', b'0'),
(3, 'bach@gmail.com', 'e10adc3949ba59abbe56e057f20f883e\r\n', 'bach', b'1'),
(1576052371991, 'toandz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'mactoan', b'0'),
(5, 'macvantoan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'toan', b'1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1576115262288;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
