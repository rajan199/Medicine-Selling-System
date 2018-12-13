-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2017 at 12:11 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicine`
--
CREATE DATABASE IF NOT EXISTS `medicine` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `medicine`;

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE IF NOT EXISTS `category_tbl` (
  `category_id` int(5) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `flag` varchar(20) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`category_id`, `category_name`, `flag`) VALUES
(7, 'skin_care', 'available'),
(9, 'baby_care', 'available'),
(10, 'hair_care', 'available'),
(11, 'medicine', 'available'),
(12, 'injection', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `company_tbl`
--

CREATE TABLE IF NOT EXISTS `company_tbl` (
  `company_id` int(10) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` varchar(30) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Dumping data for table `company_tbl`
--

INSERT INTO `company_tbl` (`company_id`, `company_name`, `address`, `contact_number`) VALUES
(6, '4 CURE PHARMA', 'Mohan nagar,Junagadh', '07930481807'),
(7, 'ALEMBIC PHARMACEUTICALS LTD', '304-Spectrum comn.comp,nr.g.p.o,salapose rd,Ahemdabad', '9687808707'),
(8, 'APRICA PHARMACEUTICALS P LTD', 'C-406 Ganesh Meriden,Nr. new.guj.h.court,S.G.H''way,Ahemdabad.', '9427901234'),
(9, 'CADILA PHARMACEUTICALS LTD.', 'Corporate Campus,Sarkhej-Dholkar,Bhat,Ahemdabad.', '9427081502'),
(10, 'ECON HEALTHCARE PVT.LTD.', 'A-1,Aalap flats,Bhaikakanagar,Thaltej,Ahemdabad.', '7573042090'),
(11, 'INTAS PHARMACEUTICAL S LTD.', 'Chinubhai centre,opp.nehru bridge,Ashram Rd,Ahemdabad.', '8401787749'),
(12, 'KIRI LABORATORIES PVT.LTD.', '50-51 Platinum Ind.Park,Nr. Vatva Railway Crossing,Vatva,Ahemdabad.', '9409409303'),
(13, 'LA RENON HEALTHCARE PVT.LTD.', 'C-21,Marutinandan Villa-2,B/h. Arohi Bung.,Bopal,Ahemdabad.', '7041330205'),
(14, 'MANTIC PHARMA', '8-Saket ind.Estate,Nr. Ramdev Masala,Moraiya,Ahemdabad.', '9425008112'),
(15, 'HIMALAYA GLOBAL LTD', 'Makali  Bangalore / Bengaluru	Karnataka , 562123          ', '911204513333'),
(18, 'ZYDUS CADILA HEALTHCARE LTD', 'unichem bhavan,prabhat estates v.road,jogeswariw,mumbai.', '122345612678'),
(19, 'CIPLA LTDNo', '11/b,keshava park co-op ho.scy,premchandnagar,bodakdev,Ahemdabad.', '919824480205'),
(20, 'LUPIN LTD20', 'S-3,khira ind estate,Santracruz West,ahemdabad.', '913824451890'),
(21, 'TROIKAA PHARMACEUTICALS LTD', 'd-302,panchratnaresi,ring rd,vinzol,ahemdabad.', '919016577441'),
(22, 'ZUVENTUS HEALTHCARE LTD', 'v-12,road no.16-z,vagleestate,thane', '9429618520'),
(23, 'NEON LABORATORIES LTD', '100-2.parshottamnagar,nawa wadaj,Ahemdabad.', '9978926130'),
(24, 'BIO VEDA ACTION RESEARCH LTD.', 'Hosiery Complex,D-105/106 Phase II,Noida,201305,India\r\n', '911204299700'),
(25, 'UNISOFT SURGICAL INDUSTRIES', ' 46, Hanumantharayan Koil, Park Town, Park Town, Chennai, Tamil Nadu 600003', '04425331314'),
(26, 'J L MORRISON INDIA LTD', 'No. 79, 1st Floor, Crystal Building, Dr. Annie Besant Road, Worli, Mumbai, Maharashtra 400018', '02224975031'),
(27, 'DABUR INDIA LTD', '10, Rouse Av, Deen Dayal Upadhyaya Marg, ITO, New Delhi, Delhi 110002', '01123253488'),
(28, 'COLGATE PALMOLIVE INDIA LTD', '2nd floor tower 3a DLF corporate park near guru dronacharya metro station m. g. Road, Gurugram, 1220', '01242864000'),
(29, 'UNICHARM INDIA PVT LTD', ' Japanese Investor Zone, 67-70, Majrakath, Rajasthan 301020', '09971988339'),
(30, 'JOHNSON AND JOHNSON PVT LTD', '501 Arena Space Behind Majas Bus Depot\r\nOff,Jogeshwari Vikhroli Link Road,Mumbai 400 060\r\n', '022 66646464'),
(31, 'PROCTER & GAMBLE CO', 'India P&G plaza, Cardinal Gracias Road, Chakala, Andheri (E), Mumbai - 400099', '2228266000'),
(32, 'HINDUSTAN UNILEVER LTD', '22, Oxferd Tower, Gurukul Road, Opposite Gurukul Tower, Gurukul Road, Ahmedabad, Gujarat 380052', '07927414052'),
(33, 'LOTUS HERBALS PVT. LTD.', '43 LAKE AVENUE, NEAR NARMADA HIGH SCHOOL, Kolkata - 700026, West Bengal, India', '07042395900'),
(34, 'MARICO LTD', '7th floor Grand Pladium CST Road	Kalina Santacruz (E)      Mumbai	Maharashtra , 400050', '02266480480'),
(35, 'HIMALAYA DRUG COMPANY', 'Makali, Bengaluru, KA, 562 162, India', '07940073018'),
(36, 'CAVINCARE PVT LTD', 'No. 12, Poonamalee Road,\r\nEkkatuthangal,\r\nChennai - 600 097.', '02522662100'),
(37, ' THEMIS PHARMACEUTICAL LTD', '17, Payal Bunglows, Near Shivranjani Char Rasta, Satellite Road, Satellite Road, Ahmedabad, Gujarat ', '07940040562'),
(38, 'ALEMBIC PHARMACEUTICALS LTD', '304-Spectrum comm.compl,nr.g.p.o.Salaposerd,Ahemdabad.', '123'),
(39, 'AKUMENTIS HEALTHCARE LTD', '108,Himalton,Hiranandaniest,off Ghodbunder road,Thane', '9825910820'),
(40, 'ALKEM LABORATORIES LTD', 'Phoenix House,3462,Senapati Bapat Marg,Lower Parel,Mumbai-13', '9998959060'),
(41, 'ALOFT LIFELINE', '128-Dev Complex,GIDC,Sector-26,gandhinagar', '9723433744'),
(42, 'ASNJ LABORATORY', 'D-203,Dharti-2,Chandlodiya,Ahemdabad.', '9099007095'),
(43, 'AURPHEUS BIOTECH PVT LTD', 'b/45 Shriji Complex,Opp. Vrundavan Township,Harni Rd,vadodra', '7016298990'),
(44, 'CADILA PHARMACEUTICALS LTD', 'Corporate Campus,Sarkhej-Dholka Rd,Bhat,Ahemdabad', '8849958634'),
(45, 'CATAIN HEALTHCARE', '18-Agarwal chambers,Ellisbridge,Ahemdabad', '7202971971'),
(46, 'CIPLA LTD', 'Manibhai & Borsest, sarkhej sanand Cross rd.,opp.Hot.Sukhsagar Ahemdabad', '8849851778'),
(47, 'ERIS LIFESCIENCES PVT.LTD', 'kanchan pharma House,N.H.No.8,Aslali,Ahemdabad', '9726967209'),
(48, 'GLANMOR PHARMACEUTICALS', 'C-105,premier Appt.,Sandesh Press Road,Vastrapur,Ahemdabad', '8889615467'),
(49, 'INTAS PHARMACEUTICALS LTD', 'Chinubhai Centre,opp.Nehru Bridge,AshRam Rd,Ahemdabad', '9925181529'),
(50, 'HETRO HEALTHCARE LTD', 'A-202/B-201 Dipti Calssics.,32/34,W.T. Suren Road,Andherie,Mumbai', '9825734030'),
(51, 'IPCA LABORATORIES LTD.', '48,Kandivliind estateKadivali east Mumbai.', '9879896700'),
(52, 'KONVERGE HEALTHCARE PVT LTD', '601 Gp2,Astro Green Park,regency Kasavanhalli,banglore', '9726298990'),
(53, 'LT & LPHARMA PVT. LTD', '9-gf-rajlaxmi plaza,Hathising ni wadi,Shahibaug,Ahemdabad', '8849851778'),
(54, 'LUPIN LIMITED', '159,cst road,kalna,Santacruz,Mumbai', '9925181529'),
(55, 'MAXWAY PHARMA', 'A-55,Rdraksh  Complex-2,Plot No.1606,vatva GIDC,Phase-3,Ahemdabad', '9638209542'),
(56, 'MEXATO PHARMACEUTICS PVT.lTD.', 'Indian Express Layout,Vidyaranyapur Post,Kodigehali,Bangalore', '9375382121'),
(57, 'MISSION RESEARCH LABORATORY ', '163,Ind.Area,Phase-I,Chandigarh', '7405749716'),
(58, 'RPG LIFE SCIENCES LTD', 'Ceatmahal,463,Dr.A.B.road,Worli,Mumbai', '8128244957'),
(59, 'SPAN LIFESCIENCES', '310-keshav Archade,GandhiNagar-Pethapur highway,gandhinagr', '9106060400'),
(60, 'TRIMS PHARMA PVT. LTD', 'B-201,Arvind Mega Trade,opp.Ashok Mill,Naroda,Ahemdabad', '7016725231'),
(61, 'UNICHEM LABORATORIES LTD', 'Unichem Bhavan,Prabhat Estates.V.Road,Jogeswari ,Mumbai', '7575075657'),
(62, 'VILBIOTEC LIFE SCIENCES', 'A-86-87 Gitanjali,Novino tatsali Road,Vadodara', '9727574300'),
(63, 'VOTARY LABORATORIES LTD', '81/82 markarpura Gidcvadsar Road,Vadodara', '9426662762'),
(64, 'WOCKHARDT LIMITED', 'Wockhardt Towerbandra-kurla complexbandra east,Mumbai', '7600469683'),
(65, 'ZION HEALTHCARE ', 'F-32,Panchratna ComplexModhera Char Rasta Highwaymehsana', '9586734979'),
(66, 'ADROIT BIOMED LTD', '2nd floor,A wing,Balsmruti,Murar road,Mulund west Mumbai', '8460090186'),
(67, 'AIMMAX PHARMA', '6-Rameshwar Soc.ViratnaGar Main rd.,NR.Pipaliya Hall dhebar Road  rajkot', '9825073106'),
(68, 'ARISTO PHARMACEUTICALS PVT LTD', '8th floor,mayur bhavn,Cannaught Circus,New Delhi', '7984618788'),
(69, 'CIPLA LTD', 'Manibhai & Bors est,Sarkhej Sanand Cross Rd.opp.Hotel Sukhsagar,Ahemdabad \r\n', '9979231339'),
(70, 'DIVINE HEALTH LIFE SCIENCE', 'f-7,toral Complex,N/R ice Factory kalol', '7405931309'),
(71, 'EMCURE PHARMACEUTICALS LTD', '392/2 opp.Sandwik Asia ltd. Phugewadi,pune', '7405931309'),
(72, 'FDC LIMITED', '142-48,S.V.road,Jogeswari mumbai', '9687808707'),
(73, 'FENDER FORMULATIONS PVT LTD', '5 Y wing,dadar west Mumbai', '9727739068'),
(74, 'G DEPTHCARE INDIA PRIVATE LTD', '304-Ratnamani Comp,nr nagarsheth Vando,Gheetkanta,Ahemdabad.', '9428420753'),
(75, 'HEGDE & HEGDE PHARMACEUTICA LLP', '301 om chambers,123 August karntimarg,Mumbai', '7069754660'),
(76, 'LA RENON HEALTHCARE PVT LTD', 'C-21,Marutinandan Villa,B/h.Arohi Bung.Bopal,Ahemdabad', '7359743286'),
(77, 'LUPITAS PHARMACEUTICALS PVT LTD', '359/360,multiplaza complex,F-A GIDC,Makarpura Vadodra', '8460679491'),
(78, 'MERCURY LABORATORIES LTD', '2/13,GIDC IND. Estategorwa,Vadodra', '8758096939'),
(79, 'MSN LABORATORIES LTD', 'PLOT NO.42,Anrich IND. Estatebollarammedak', '9099953134'),
(80, 'SANOFI INDIA LTD', '54/A/SIR M.V.  MARG,Andheri,Mumbai', '9377095040'),
(81, 'UNISON PHARMACEUTICLAS', '5222,Phase-4,GIDC Vatva,Ahemdabad', '9409406725'),
(82, 'VIDAKEM LIFESCIENCES PVT LTD', '1300,prop no.2101,10th Mail,Wadki,Tal.haveli-Pune', '9426353417'),
(83, 'VILEBERRY HEALTHCARE PVT LTD', 'Vilberry House,P-64 Milapnagar,Nearaims Hosp.Dombivale', '9428105180'),
(84, 'ZUVENTUS HEALTHCARE LTD', '3101-08,3c,Oberoi Garden estatechadivali,Andheri E mumbai', '9429389792'),
(85, ' SAPAT & CO', 'PLOT NO- 201/202, NIRMAN KENDRA, MAHALAXMI, Mumbai - 400011, Maharashtra, India\r\n', '9033294913'),
(86, 'Genx (Hetero Healthcare Ltd)	Syrup', 'unit no.3/4,corporate parksion trombay road,chemburmumbai-400071', '9687043410'),
(87, 'Lyka Hetero Healthcare Limited', 'c-406 ganesh meridien,Nr. new Gujarat H. Court,s.g.h.way,Ahemdabad.', '9998950767'),
(88, 'Indian Drugs & Pharmaceuticals Ltd.', '117-A,padmavati colony,1st kings Road,Jaipur', '9998959060'),
(89, 'Glenmark Pharmaceuticals Ltd.', 'Ian house,Mahakali Road,Andheri eastmumbai', '7926620776'),
(90, 'DWD Pharmaceuticals Ltd', '73-silver infra hub,opp.Hotel gagan,Changodar,Ahemdabad', '9821169528'),
(91, 'Ciron Drugs  Pvt Ltd', 'b wing,Marwah center,Andheri', '8488950485'),
(92, 'Croford Pharmaceuticals Pvt Ltd.', '20 dr. e moses road,Mumbai', '2228902697'),
(93, 'Albatross Healthcare Pvt Ltd', 'shivalik enclavemanimajara,chandhigarh', '9870623305'),
(94, 'Kaytross Healthcare Limited', 'FF-4,Shrinik Avenue,2,SHrenik Soc. Nr. Naranpura Cross rd,Ahemdabad', '9925138070'),
(95, 'Taurus Laboratories Pvt. Ltd.', '128/1 GIDCANKALESWAR', '8487059316'),
(96, 'Cadila Pharmaceuticals Ltd.', 'Nirmala appartment,Jay Prakash Rd,Andheri W,Mumbai-58', '9898267595'),
(97, 'Zydus Alidac ', 'janssen cilag pharma house,N.H. 8,Aslali,Ahemdabad', '9825616768'),
(98, 'Captab Biotec', 'janssen cilag pharma house,N.H. 8,Aslali,Ahemdabad', '9427106857'),
(99, 'Carminol Laboratories (P) Ltd.', 'B-5,Kanchan Pharma house,N.H. 8,Aslali,Ahemdabad', '9821263036'),
(100, 'Times Drugs & Pharma LTD', '73-silver infra hub,opp.Hotel gagan,Changodar,Ahemdabad', '9426047345'),
(101, 'Micro Organics Pharma  Pvt.Ltd', '601 gp2,astro green park,Regency Kasavanhalli,Banglore', '9824001106'),
(102, 'Mankind Pharmaceuticals Pvt. Ltd.', '128/1 GIDCANKALESWAR', '9979920947'),
(103, 'German Remedies (Zydus Cadila Healthcare Ltd.)', 'FF-4,Shrinik Avenue,2,SHrenik Soc. Nr. Naranpura Cross rd,Ahemdabad', '942750692'),
(104, 'Elder Pharmaceuticals Pvt Ltd', '159,Cst road,kalina,Santacruz ,Mumbai', '9978266227'),
(105, 'Glaxo Smithkline Pharma Ltd.', 'A-177,ROad No. 16-Z,Vagle estate,thane', '9869479712'),
(106, 'Euphoric Pharmaceuticals Pvt.Ltd.', '42,Anrich Ind. estatebollarammedak-502 325 A.p', '9425014737'),
(107, 'East African  Remedies Pvt Ltd', '203,Godrej Colisum,Somaiya Hospital Road,Sion,Mumbai', '9825038949'),
(108, 'Zota Pharma LTD', '20 dr. e moses road,Mumbai', '9825398232'),
(109, 'Allied Chemicals  Pvt.Ltd.', 'b wing,Marwah center,Andheri', '7552745341'),
(110, 'Anglo-French Drugs Ltd', 'B-5,Kanchan Pharma house,N.H. 8,Aslali,Ahemdabad', '9825520504'),
(111, 'Osho Pharma Pvt.Ltd.', 'b/45 shriji complex,opp. vrundavan township,harni rd,vadodra', '9375055544'),
(112, 'Somatico Labs Pvt Ltd', '117-A,Padmavti colony,1st kings Road,Jaipur', '9224128417'),
(113, 'Comed Chemicals Pvt Ltd', 'Ian house,Mahakali road,Andheri eastmumbai', '7926586768'),
(114, 'Pfizer Limited ', '18-Agarwal chambers,ellisbridge,Ahemdabad', '7926586768'),
(115, 'Burgeon Pharmaceuticals Pvt. Ltd.', 'Corporate Campus,Sarkhej-Dholka Rd,Bhat,Ahemdabad\r\n', '8866100687'),
(116, 'Ind-Swift Limited', '18-Agarwal chambers,ellisbridge,Ahemdabad', '9920975444'),
(117, 'Dr Reddy Laboratories Ltd', 'Village Makhnumajra,P.O. Bhud,Nalagarh,Dist.Solan (h.p)', '7925890988'),
(118, 'Union Drug Company Ltd', 'b wing,Marwah center,andheri,Mumbai', '9824480205'),
(119, 'Jagsonpal Pharmaceuticals Ltd', '20 dr. E moses road,Mumbai', '9427454518'),
(120, 'Micro Labs Ltd', 'kanchna pharma house,N.H. No.8,Aslali,Ahemdabd', '9824043498'),
(121, 'Maan Pharmaceutical Ltd.', 'c-105,Premier appt.,Sandesh press road,Vastrapur,Ahemdabad\r\n', '9820743867'),
(122, 'Elysium Pharmaceuticals Ltd', '805,shivalik enclavemanimajara,chandigarh', '2228913403'),
(123, 'EWF Pharmaceuticals Pvt. Ltd. ', '48,kandivli ind estatekadivali eastmumbai', '9428512544'),
(124, 'Laborate Pharmaceuticals India Ltd.', 'nirmala appartment,Jay prakash Rd,Andheri w,Mumbai', '942677648'),
(125, 'Khandelwal Laboratories Pvt Ltd.', 'B-5,kanchan pharma house,N.H.8,Aslali,Ahemdabda', '2774222549'),
(126, 'Consumer Healthcare ltd', '115,Aakash Avenue,Nr. Mithakhali Bridge,Navrangpura,Ahemdabad', '9274953529'),
(127, 'Nicholas Piramal India Ltd.', '2,Attlika warehouse,12th k.m.mysore rd,rvce posr,bangalore', '7049893062'),
(128, 'Geno Pharmaceuticals Ltd.', 'A-177,Road No. 16-z,Vagle estate,Thane', '9327746840'),
(129, 'Alembic Chemical Works Co Ltd', '163,Ind.Area,Phase-1,Chandigarh', '9925138070'),
(130, 'Aglowmed Ltd', '42,Anrich Ind.Comp,Mahakali Caves rd,Andheri', '9819725834'),
(131, 'Wisdom Pharma Pvt. Ltd', 'Damji Shamji Ind. Comp,Mumbai', '92227122451'),
(132, 'Centaur Pharmaceuticals Pvt.Ltd.', 'basement Aishwaria Appt,jalaram Mandir rd,Ahemdabad', '9327386977'),
(133, 'Bal Pharma Limited', 'Godhrej Colisum,Somaiya Hospital Road,Sion,Mumbai', '9327386977'),
(134, 'Maa Formulations Pvt Ltd', '463,Dr. A.B. Road,Worli,Mumbai', '9825647139'),
(135, 'Astra Zeneca Pharma India Limited', '310-keshav arcade,Gandhingr-pethapur highway,gandhinagr', '9173960849'),
(136, 'US Vitamins Ltd', 'Indian Express Layout,Vidyaranyapura Post,kodigehali,banglore', '9427083730'),
(137, 'Universal Drug House Pvt Ltd', 'F.3/10 Samarpan-2 Appt.,under cadilla bridge,Ghodasar,Ahemdabad', '9879454877'),
(138, 'Osper Pharmaceutics Pvt. Ltd.', '705-708 Safal pegasus,Tower-A,Prahalandnagar,Ahemdabad', '9925469733'),
(139, 'Solitair Biotech Pvt. Ltd.', '308,vth,commercial complexshreshtha vihardelhi', '9825030446'),
(140, 'Parex Phamaceuticals Pvt. Ltd.', '45,Ntm sector-26 chandigarh', '9904086800'),
(141, 'Shreya Healthcare P. Ltd.', 'B-201,Arvind mega trade,opp. Ashok Mill,naroda Road,Ahemdabad', '9375049245'),
(142, 'Franklin Laboratories (P) Ltd.', 'Commerce House-1,nr. judges Bunglows,Bodakdev,Ahemdabad', '9377095040'),
(143, 'Lupin Laboratories Ltd', '601/602,Mahakant,opp.V.S. Hospital,Ahemdabad', '9173827474'),
(144, 'Emcure Pharmaceuticals Ltd.', 'Unichem Bhavan,Prabhat estates Road,Jogeswari w,Ahemdabad', '9824040141'),
(145, 'Dazzle Pharma Pvt Ltd', '52,GIDC vatva Ahemdabad', '7574000028'),
(146, 'Cipla Limited', 'viberry house,p-64 milapnagar,Nearaims Hosp. ', '4082099293'),
(147, 'Gopaldas Visram & Co.', 'A-86-87 Gitanjali,Novino Tarsali Road,Vadodara', '7878799204'),
(148, 'Petrosolv India Limited', '81/20 Makarpura GIDC vadsar road', '9974775709'),
(149, 'Technica Labs & Pharma Pvt Ltd', 'B/307-312 Floral Deck plaza,Andheri,Mumbai', '9824000910'),
(150, 'Shreya Life Sciences Pvt. Ltd', '21,sector 19-c,kopri road,vashi,navi Mumbai', '9998535308'),
(151, 'Novaduo Pharma Ltd', 'F-32,Panchratna Complex Modhera Char rasta highway Mehsana', '98240275703'),
(152, 'Eastern Drug Ltd', '3101-08,3c,oberoi gardern estate chandivali,Andheri mumbai', '9823025703'),
(153, 'Pharmatech Healthcare Ltd', '3/4,corporate parksion trombay road,chembur mumbai', '9820248645'),
(154, 'Novagen Pharmaceuticals Ltd', '108,Himalton,Hiranandani est,off ghodbunder road,Thane', '9820248645'),
(155, 'Kavya Healthcare Ltd', '128-dev complex,gidc,sector-26,gandhinagar', '9427388771'),
(156, 'Finecure Pharmaceuticals Ltd', 'c-406 ganesh meridien,Nr. New Gujarat H.Court,s.g.h.way,Ahemdabad', '9427388771'),
(157, 'Mediwin Pharmaceuticals Ltd', 'd-203,dharti-2,chandlodiya,Ahemdabad', '9824021648'),
(158, 'Acron Pharmaceuticals Ltd', 'Mkali,Neelamangala,bangalore', '8980023035'),
(159, 'Tunic Healthcare Ltd', '45,NTm sector-26 chandigarh', '7600014777'),
(160, 'Prism Pharma Ltd', '308,Vth,commercial Complexshreshtha Vihardelhi', '9157363393'),
(161, 'Euphoric Laboratories Ltd', '705-708 Safal Pegasus,Tower-A,Prahalandnagar,Ahemdabad', '9825576846'),
(162, 'G.D. PHARMSCEUTICALS (P) LTD.', 'D.H.Road,Chakbagi,24 pgs(S) W.B. India Reg office 94 Nr Avenue New Alipore Kolkata-53,India.', '3323994011'),
(163, 'SUJANIL CHEMO INDUSTRIES', '158/159 Mukund Nagar,Pune-37', '8866358002'),
(164, 'HSN  international', 'Cipla House,Parninsula Business Park,Ganpatrao Kadam Marg,Lower Parel,Mumbai.', '9033233550'),
(165, 'INDOCO REMEDIES LTD', 'Village katha,Buddi,Tehsil Nalagarh,Dist,Solan,Mumbai', '9429618520'),
(166, 'PANTANJALI AYURVED LTD', 'Unit-I,D-38,Industrial Area,Haridwar-249401,Uttarakhand,India', '9879506991'),
(167, 'SHRI BHUVANESHWARI AUSHANDHI', 'f.3/10 samarpan-2,appt,under cadilla bridge,Ghodasar,Ahemdabad', '8488950485'),
(168, 'ICPA HEALTH PRODUCTS LTD', '286/287,GIDC,Anleshwar 393002', '8347523927'),
(169, 'RECKITT BENCKISER HEALTH', 'Khasra No. 701/534, village-sandholi, P.O.Baddi tehsil-nalagarh, Distt-Solan, Kalka - Baddi Road, Ba', '01795666000'),
(170, 'MCNROE CONSUMER PVT LTD', 'plot   no 44,45,46,58,57,59,Sector 18,Integrated Industrail Estate Ranipur,Haridwar 249403,Uttarakha', '8347523927'),
(171, 'Mylan Products Limited', '142-23,S.v.Road,jogeswari mumbai', '9123456780');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_tbl`
--

CREATE TABLE IF NOT EXISTS `favourite_tbl` (
  `favourite_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_price` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`favourite_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `favourite_tbl`
--

INSERT INTO `favourite_tbl` (`favourite_id`, `product_id`, `product_name`, `product_price`, `email_id`) VALUES
(1, 1, 'abc', 12, 'aa@gmail.com'),
(2, 2, 'abc', 12, 'jjj@gmail.com'),
(3, 1, 'hardi', 21, 'hardi@gmail.com'),
(4, 208, 'METACINE 250GM', 42, 'ranarajan49@gmail.com'),
(5, 200, 'UPSPRING-D3', 139, 'ranarajan49@gmail.com'),
(6, 437, 'Sorex (100 ml)', 100, 'ranarajan49@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE IF NOT EXISTS `feedback_tbl` (
  `email_id` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_tbl`
--

INSERT INTO `feedback_tbl` (`email_id`, `description`) VALUES
('', 'ok done'),
('', 'saasdsd'),
('', 'ha'),
('ranarajan49@gmail.com', 'good website');

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE IF NOT EXISTS `order_tbl` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` varchar(20) NOT NULL,
  `quantity` int(5) NOT NULL,
  `product_id` int(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `product_price` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `total_price` int(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`order_id`, `order_date`, `quantity`, `product_id`, `email_id`, `product_price`, `status`, `total_price`) VALUES
(4, '25/03/17', 4, 208, 'ranarajan49@gmail.com', 42, 'buy', 168),
(5, '25/03/17', 10, 206, 'ranarajan49@gmail.com', 89, 'buy', 890),
(8, '29/03/17', 3, 208, 'ranarajan49@gmail.com', 42, 'buy', 126),
(9, '29/03/17', 1, 205, 'ranarajan49@gmail.com', 129, 'buy', 129),
(16, '29/03/17', 1, 130, 'ranarajan49@gmail.com', 100, 'buy', 100),
(17, '06/04/17', 1, 208, 'ranarajan49@gmail.com', 42, 'buy', 42),
(18, '06/04/17', 1, 208, 'ranarajan49@gmail.com', 42, 'cart', 42),
(19, '22/04/17', 3, 67, 'ranarajan49@gmail.com', 4525, 'cart', 13575);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_tbl`
--

CREATE TABLE IF NOT EXISTS `prescription_tbl` (
  `prescription_id` int(10) NOT NULL AUTO_INCREMENT,
  `prescription_img` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `prescription_tbl`
--

INSERT INTO `prescription_tbl` (`prescription_id`, `prescription_img`, `email_id`) VALUES
(10, '../images/Jellyfish.jpg', 'ranarajan49@gmail.com'),
(11, '../images/29.jpg', 'ranarajan49@gmail.com'),
(12, '../images/29.jpg', 'ranarajan49@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE IF NOT EXISTS `product_tbl` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(80) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `category_id` int(5) NOT NULL,
  `company_id` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=444 ;

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`product_id`, `product_name`, `product_img`, `product_price`, `status`, `category_id`, `company_id`) VALUES
(7, 'A-625', '../images/image.jpg', '140', 'available', 11, 6),
(8, 'ALL CURE', '../images/image.jpg', '100', 'available', 11, 6),
(9, 'AP-425', '../images/image.jpg', '35', 'available', 11, 6),
(10, 'CD-30', '../images/image.jpg', '140', 'available', 11, 6),
(12, 'RA-20', '../images/image.jpg', '40', 'available', 11, 6),
(13, 'AZITHRAL 5D', '../images/image.jpg', '119', 'available', 11, 7),
(14, 'ETERNEXT', '../images/image.jpg', '199', 'available', 11, 7),
(15, 'FREEGO PEG', '../images/image.jpg', '230', 'available', 11, 7),
(16, 'GLZ XR', '../images/image.jpg', '152', 'available', 11, 7),
(17, 'ROSAVE C', '../images/image.jpg', '150', 'available', 11, 7),
(18, 'APRIFLOX-OZ', '../images/image.jpg', '65', 'available', 11, 8),
(19, 'APRIGLIM MV 103', '../images/image.jpg', '125', 'available', 11, 8),
(20, 'BITSTOP-500', '../images/image.jpg', '119', 'available', 11, 8),
(21, 'BTSTOP-MF', '../images/image.jpg', '149', 'available', 11, 8),
(22, 'EPSIPAN-40', '../images/image.jpg', '65', 'available', 11, 8),
(23, 'EPSIPAN-L', '../images/image.jpg', '179', 'available', 11, 8),
(24, 'EPSIPAN-DSR', '../images/image.jpg', '99', 'available', 11, 8),
(25, 'CILEDGE 20', '../images/image.jpg', '99', 'available', 11, 9),
(26, 'CILEDGE CT 12.5', '../images/image.jpg', '84', 'available', 11, 9),
(27, 'CILEDGE CT 6.25', '../images/image.jpg', '64', 'available', 11, 9),
(28, 'CILEDGE OL 20', '../images/image.jpg', '100', 'available', 11, 9),
(29, 'CILEDGE OL 40', '../images/image.jpg', '160', 'available', 11, 9),
(30, 'OLVAS CT 20', '../images/image.jpg', '90', 'available', 11, 9),
(31, 'OLVAS CT 40', '../images/image.jpg', '140', 'available', 11, 9),
(32, 'ACECON SP', '../images/image.jpg', '55', 'available', 11, 10),
(33, 'ECEF-O', '../images/image.jpg', '120', 'available', 11, 10),
(34, 'ECOVOG GM1', '../images/image.jpg', '88', 'available', 11, 10),
(35, 'ECOVOG GM2', '../images/image.jpg', '90', 'available', 11, 10),
(36, 'ECOVOG M 0.2', '../images/image.jpg', '44', 'available', 11, 10),
(37, 'ECOVOG M 0.3', '../images/image.jpg', '52', 'available', 11, 10),
(38, 'AMFY V GL ', '../images/image.jpg', '200', 'available', 11, 11),
(39, 'BROCLEAR', '../images/image.jpg', '139', 'available', 11, 11),
(40, 'FERPILL NEW', '../images/image.jpg', '199', 'available', 11, 11),
(41, 'HIFENAC TH 8 ', '../images/image.jpg', '240', 'available', 11, 11),
(42, 'TENIVA', '../images/image.jpg', '199', 'available', 11, 11),
(43, 'TGLIP NEW', '../images/image.jpg', '199', 'available', 11, 11),
(44, 'ELPIS SYP', '../images/image.jpg', '55', 'available', 11, 12),
(45, 'EMIXOR 250', '../images/image.jpg', '180', 'not available', 11, 12),
(46, 'EMIXOR 500 ', '../images/image.jpg', '320', 'available', 11, 12),
(47, 'ZMYLE SYP', '../images/image.jpg', '48', 'not available', 11, 12),
(48, 'KIRAB GEL', '../images/image.jpg', '68', 'available', 11, 12),
(49, 'APHYREN', '../images/image.jpg', '70', 'available', 11, 13),
(50, 'CIRROSAM', '../images/image.jpg', '740', 'available', 11, 13),
(51, 'FEXANTO', '../images/image.jpg', '104', 'available', 11, 13),
(52, 'NACYRES', '../images/image.jpg', '179', 'available', 11, 13),
(53, 'QUROZYME', '../images/image.jpg', '390', 'available', 11, 13),
(54, 'ANASTOLEA DRY SYP', '../images/image.jpg', '60', 'available', 11, 14),
(55, 'ANASTOLEA-625', '../images/image.jpg', '108', 'available', 11, 4),
(62, 'HIMALAYA BABY CARE GIFT PACK', '../images/himalayagift.jpg', '340', 'available', 9, 15),
(63, 'HIMALAYA BABY LOTION', '../images/h.jpg', '145', 'available', 9, 15),
(64, 'HIMALAYA BABY CREAM ', '../images/babycream.jpg', '70', 'available', 9, 15),
(65, 'HIMALAYA BABY MASSAG', '../images/himalayaoil.jpg', '90', 'available', 9, 15),
(66, 'HIMALAYA BABY POWDER', '../images/babypow.jpg', '80', 'available', 9, 15),
(67, 'MIRENA INJECTION', '../images/injection.jpg', '4525', 'available', 12, 18),
(68, 'PANTODAC INJECTION', '../images/injection.jpg', '43', 'available', 12, 18),
(69, 'ZYTAX 20MG INJECTION', '../images/injection.jpg', ' 2890', 'available', 12, 18),
(70, 'ZYROP 4000IU INJECTION', '../images/injection.jpg', '1256', 'available', 12, 18),
(71, 'ZYTAX 80MG INJECTION', '../images/injection.jpg', '8730', 'available', 12, 18),
(72, 'VORITEK INJECTION', '../images/injection.jpg', '2796', 'available', 12, 19),
(73, 'ESOMAC INJECTION', '../images/injection.jpg', '101', 'available', 12, 19),
(74, 'PANSEC INJECTION', '../images/injection.jpg', '43', 'available', 12, 19),
(75, 'RABICIP INJECTION', '../images/injection.jpg', '88', 'available', 12, 19),
(76, 'ZOLDRIA 4MG INJECTION', '../images/injection.jpg', '2520', 'available', 12, 19),
(77, 'XYLISTIN 1 MIU INJECTION', '../images/injection.jpg', '1007', 'available', 12, 19),
(78, 'VANLID 250MG INJECTION', '../images/injection.jpg', '261', 'available', 12, 19),
(79, 'TICOCIN 400MG INJECTION', '../images/injection.jpg', '1379', 'available', 12, 19),
(80, 'TAZCAN 4.5GM INJECTION', '../images/injection.jpg', ' 261', 'available', 12, 19),
(81, 'P2I INJECTION', '../images/injection.jpg', '43', 'available', 12, 20),
(82, 'UPXIGA INJECTION', '../images/injection.jpg', '2515', 'available', 12, 20),
(83, 'HYALGAN 20MG INJECTION 2ML', '../images/injection.jpg', '1432', 'available', 12, 20),
(84, 'LUPENOX 20MG INJECTION 0.2ML', '../images/injection.jpg', '236', 'available', 12, 20),
(85, 'TIGEZ 50MG INJECTION', '../images/injection.jpg', '2482', 'available', 12, 20),
(86, 'TAZOX 1GM INJECTION', '../images/injection.jpg', '103', 'available', 12, 20),
(87, 'TAZAR 4.5GM INJECTIO', '../images/injection.jpg', '198', 'available', 12, 20),
(88, 'PRUSIDE INJECTION', '../images/injection.jpg', '127', 'available', 12, 21),
(89, 'TROYPERAZONE S 1.5GM', '../images/injection.jpg', '469', 'available', 12, 21),
(90, 'TROYPOFOL INJECTION ', '../images/injection.jpg', '193', 'available', 12, 21),
(91, 'TROYNOXA 40MG INJECTION 0.4ML', '../images/injection.jpg', '379', 'available', 12, 21),
(92, 'MAXILIV INJECTION', '../images/injection.jpg', '1077', 'available', 12, 22),
(93, 'ZUVICIN 50MG INJECTION', '../images/injection.jpg', '2152', 'available', 12, 22),
(94, ' ZUPAXEL 260MG INJECION', '../images/injection.jpg', '9844', 'available', 12, 22),
(95, 'THIOSOL 500MG INJECTION', '../images/injection.jpg', '40', 'available', 12, 23),
(96, 'CLONEON 150MG INJECTION 1ML', '../images/injection.jpg', '46', 'available', 12, 23),
(97, 'Biotique Bio Honey Cream Baby Body Wash 120 ml', '../images/babybody.jpg', '120', 'available', 9, 24),
(98, 'BIOTIQUE BIO GREEN APPLE TEARPROOF BABY SHAMPOO 19', '../images/babybioshampoo.jpg', '140', 'available', 9, 24),
(99, 'Biotique Bio BERRY Baby Body Wash 190 ml', '../images/biotic.jpg', '170', 'available', 9, 24),
(100, 'Biotique APPLE BLOSSOM SHAMPOO 190 ml', '../images/blossom.jpg', '160', 'available', 9, 24),
(101, 'Biotique Bio ALMOND OIL MASSAGE OIL 20O ml', '../images/msag.jpg', '150', 'available', 9, 24),
(102, 'BIOTIQUE BIO GREEN APPLE (BABY PRINCESS) TEARPROOF', '../images/OIL.jpg', '140', 'available', 9, 24),
(103, 'BIOTIQUE BIO BASIL & RED SANDALWOOD (MICKEY) POWDE', '../images/body.jpg', '135', 'available', 9, 24),
(104, 'BIOTIQUE BIO BASIL & RED SANDALWOOD (BABY PRINCESS', '../images/SANDL.jpg', '135', 'available', 9, 24),
(105, 'BIOTIQUE BIO MORNING NECTAR(BABY PRINCESS)NOURISHI', '../images/NAUR.jpg', '200', 'available', 9, 24),
(106, 'UNISOFT BABY MET', '../images/babymet.jpg', '199', 'available', 9, 25),
(107, 'J.L.MORISON BABY COMB', '../images/c.jpg', '15', 'available', 9, 26),
(108, 'DABUR LAL TAIL 100ML', '../images/d1.jpg', '90', 'available', 9, 27),
(109, 'COLGATE SUPAR JUNIOR TOOTH BRUSH', '../images/colgate.jpg', '15', 'available', 9, 28),
(110, 'JOHNSON''S BABY HAIR OIL 200ML', '../images/g1.jpg', '140', 'available', 9, 30),
(112, 'JOHNSON''S BABY OIL WITH VITAMIN-E 200ML', '../images/j3.jpg', ' 100', 'available', 9, 30),
(113, 'JOHNSON''S BABY POWDER BLOSSOMS 50G', '../images/j1.jpg', ' 30', 'available', 9, 30),
(114, 'JOHNSON''S BABY MILK LOTION 200ML', '../images/j2.jpg', '170', 'available', 9, 30),
(115, 'JOHNSON''S BABY SOAP', '../images/j4.jpg', '45', 'available', 9, 30),
(116, 'JOHNSON''S BABY CREAM 100G', '../images/j5.jpg', '130', 'available', 9, 30),
(117, 'JOHNSON''S BUDS 150''S ', '../images/j8.jpg', '70', 'available', 9, 30),
(118, 'JOHNSON''S BUDS 30''S', '../images/j9.jpg', ' 19', 'available', 9, 30),
(119, 'JOHNSON''S BABY SKIN CARE WIPES 20''S', '../images/baby wipes.jpg', '70', 'available', 9, 30),
(120, 'JOHNSON''S BABY CREAM 50G', '../images/j6.jpg', '70', 'available', 9, 30),
(121, 'JOHNSON''S BABY SHAMPOO 200ML', '../images/shampoo.jpg', '156', 'available', 9, 30),
(122, 'JOHNSON''S BABY SHAMPOO 475ML', '../images/shampoo1.jpg', '325', 'available', 9, 30),
(123, 'PAMPERS BABY-DRY(M) 2''S', '../images/p1.jpg', '40', 'available', 9, 31),
(124, 'PAMPERS BABY-DRY PANTS(L) 8''S', '../images/p2.jpg', '120', 'available', 9, 31),
(125, 'Biotique Bio SAFFRON DEW 50G', '../images/50gbio.jpg', '200', 'available', 7, 24),
(126, 'Biotique Bio SANDALWOOD (50 SPF SUNSCREEN) 50G', '../images/biosand50g.jpg', '220', 'available', 7, 24),
(127, 'Biotique Bio ALOE VERA(30 SPF SUNSCREEN) 120 ml', '../images/alovera.jpg', '250', 'available', 7, 24),
(128, 'Biotique Bio WHITE (ADVANCED FAIRNESS TREATMENT)50', '../images/bio50g.jpg', '115', 'available', 7, 24),
(129, 'Biotique Bio NEEM PURIFYING FACE WASH 100 ml', '../images/neem100ml.jpg', '100', 'available', 7, 24),
(130, 'HIMALAYA MOISTURIZING ALOE VERA FACE WASH 100ML', '../images/himalayalero100ml.jpg', '100', 'available', 7, 15),
(131, 'HIMALAYA PURIFYING NEEM FOAMING FACE WASH 150ML', '../images/purifying.jpg', '190', 'available', 7, 15),
(132, 'HIMALAYA HERBALS CLEANSING APRICORT FACE WASH', '../images/himalayaher100ml.jpg', '120', 'available', 7, 15),
(133, 'HIMALYA REVITALIZING NIGHT CREAM 50G', '../images/himani.jpg', '200', 'available', 7, 15),
(134, 'HIMALYA HERBALS SUNSCREEN LOTION SPF15 ', '../images/himalyaher100ml.jpg', ' 200', 'available', 7, 15),
(135, 'LAKME PERFECT RADIANCE INTENSE WHITENING FACE WASH', '../images/Lakme-P50g.jpg', '120', 'available', 7, 32),
(136, 'LAKME YOUTH INFINITY DAY CREME 20G', '../images/lakme20g.jpg', '300', 'available', 7, 32),
(137, 'LAKME MAXIMUM MOISTURISER PEACH MILK 120ML', '../images/la120ml.jpg', '200', 'available', 7, 32),
(138, 'PEARS PURE AND GENTLE SHOWER GEL WITH PURE GLYCERI', '../images/pears.JPG', ' 180', 'available', 7, 32),
(139, 'PEARS FRESH RENEWAL FACEWASH 60G', '../images/pears1.jpg', '96', 'available', 7, 32),
(140, 'PEARS OIL CLEAR GLOW FACEWASH 60G', '../images/oil1.jpg', '80', 'available', 7, 32),
(141, 'CLEAN & CLEAR FAIRNESS CREAM 20G', '../images/cream20g.jpg', '65', 'available', 7, 30),
(142, 'CLEAN & CLEAR PIMPLE CLEARING FACE WASH 80ML', '../images/Clean80ml.jpg', '99', 'available', 7, 30),
(143, 'CLEAN & CLEAR MORNING ENERGY FACE WASH PURIFYING A', '../images/GREEN.jpg', '115', 'available', 7, 30),
(144, 'CLEAN & CLEAR MORNING ENERGY FACE WASH PURIFYING L', '../images/lemon50ml.jpg', '115', 'available', 7, 30),
(145, 'CLEAN & CLEAR MORNING ENERGY FACE WASH PURIFYING B', '../images/berry100ml.jpg', '115', 'available', 7, 30),
(146, 'OLAY REGENERIST ADVANCE ANTI AGEING REVITALISING C', '../images/ol100.jpg', '379', 'available', 7, 31),
(147, 'OLAY AGE PROTECT ANTI-AGEING CREAM 18G', '../images/Olay1.JPG', '160', 'available', 7, 31),
(148, 'OLAY AGE PROTECT 40G', '../images/Olay2.JPG', '290', 'available', 7, 31),
(149, 'OLAY NATURAL WHITE 7 IN ONE (NIGHT) 50G', '../images/OLAY3.JPG', '350', 'available', 7, 31),
(150, 'PONDS', '../images/pond100g.jpg', '140', 'available', 7, 32),
(151, 'DOVE BEAUTY MOISTURE FACEWASH 100G', '../images/dove100g.jpg', '200', 'available', 7, 32),
(152, 'PONDS WHITE BEAUTY BB CREAM 18GM', '../images/PONDS.jpg', '140', 'available', 7, 32),
(153, 'HIMALAYA FAIRNESS KESAR FACE WASH 50ML', '../images/kesar.jpg', '65', 'available', 7, 15),
(154, 'LOTUS HERBALS INTENSIVE SUNBLOCK SPRAY 80ML', '../images/lotus.jpg', '340', 'available', 7, 33),
(155, 'LOTUS HERBALS SAFE SUN(SUNBLOCK CREAM BREEZY BERRY', '../images/SPF.jpg', '250', 'available', 7, 33),
(156, 'LOTUS HERBALS SOYA SMOOTH(SOYA PROTIN CREME DEEP CONDITIONER)150G', '../images/lotus150g.jpg', '200', 'available', 7, 33),
(157, 'DABUR VATIKA ENRICHED COCONUT HAIR OIL WITH HENNA,AMLA & LEMON 150ML', '../images/da1.jpg', '80', 'available', 10, 27),
(158, 'DABUR ALMOND HAIR OIL FOR DAMAGE FREE HAIR 50ML', '../images/abla75ml.jpg', '30', 'available', 10, 27),
(159, 'DABUR VATIKA ENRICHED COCONUT HAIR OIL WITH HIBISCUS 150ML', '../images/dabur75ml.jpg', '42', 'available', 10, 27),
(160, 'HAIR & CARE NON STICKY HAIR OIL 200ML', '../images/hair200ml.jpg', '100', 'available', 10, 34),
(161, 'PARACHUTE COCONUT OIL 250ML', '../images/250mlcco.jpg', '80', 'available', 10, 34),
(162, 'PARACHUTE ADVANSED JASMINE 200ML BOTTLE', '../images/parachute.jpg', '75', 'available', 10, 34),
(163, 'MEDIKER SHAMPOO 50ML', '../images/med2.jpg', '50', 'available', 10, 34),
(164, 'PARACHUTE ADVANCE HAIR OIL 175ML', '../images/175mlpar.jpg', '80', 'available', 10, 34),
(165, 'LIVON HAIR GAIN TONIC 150ML', '../images/Livon.jpg', '800', 'available', 10, 34),
(166, 'SET WET VERTICAL HOLD HAIR GEL 50ML', '../images/SEt.jpg', '60', 'available', 10, 34),
(167, 'BIOTIQUE BIO MOUNTAIN EBONY (VITALIZING SERUM FOR FALLING HAIR) 120ML', '../images/biotiqu120ml.jpg', '180', 'available', 10, 24),
(168, 'BIOTIQUE BIO GREEN APPLE (FRESH DAILY PURIFYING SHAMPOO & CONDITIONER) 400ML', '../images/biotique400ml.jpg', '300', 'available', 10, 24),
(169, 'HIMALAYA ANTI-DANDRUFF HAIR OIL 100ML', '../images/100mlhimal.jpg', '160', 'available', 10, 15),
(170, 'HIMALAYA HERBALS ANTI-HAIR FALL HAIR OIL 200ML', '../images/hairoil.jpg', '180', 'available', 10, 35),
(171, 'HIMALAYA HERBALS GENTLE DAILY CARE PROTEIN CONDITIONER 200ML', '../images/gentle.JPG', '130', 'available', 10, 35),
(172, 'NYLE NATURALS DRYNESS CONTROL SHAMPOO 180ML', '../images/nyle180ml.jpg', ' 200', 'available', 10, 36),
(173, 'NYLE NATURALS HAIRFALL DEFENCE SHAMPOO 175 ML', '../images/ny175.jpg', '140', 'available', 10, 36),
(174, 'DABUR AMLA HAIR OIL 45ML', '../images/da.jpg', '42', 'available', 10, 27),
(175, 'SUNSILK RADIANT SHINE CONDITIONER 80ML', '../images/sun80ml.jpg', '70', 'available', 10, 32),
(176, 'SUNSILK CO CREATION LOCK PERFECT STRAIGHT SHAMPOO  80ML', '../images/sunsilk180ml.jpg', '80', 'available', 10, 32),
(177, 'SUNSILK CO CREATION STUNNING BLACK SHINE SHAMPOO 650ML', '../images/SUNSILK.jpg', '100', 'available', 10, 32),
(178, 'TRESEMME SMOOTH & SHINE CONDITIONER 200ML', '../images/tr200ml.jpg', '140', 'available', 10, 32),
(179, 'TRESEMME KERATIN SMOOTH CONDITIONER 200ML', '../images/tre2.jpg', '200', 'available', 10, 32),
(180, 'TRESEMME HAIR FALL DEFENSE SHAMPOO 200ML', '../images/tre1.png', '140', 'available', 10, 32),
(181, 'TRESEMME IONIC STRENGTH  SHAMPOO 200ML', '../images/tre.jpg', '400', 'available', 10, 32),
(182, 'DOVE SPLIT END RESCUE SHAMPOO 180ML', '../images/dove3.jpg', '140', 'available', 10, 32),
(183, 'DOVE INTENSE REPAIR CONDITIONER 75ML', '../images/dove75ml.jpg', '80', 'available', 10, 32),
(184, 'DOVE DRYNESS CARE SHAMPOO 340ML', '../images/dove6.jpg', '300', 'available', 10, 32),
(185, 'DOVE OXYGEN MOISTURE CONDITIONER 180ML', '../images/dove5.jpg', '200', 'available', 10, 32),
(186, 'DOVE OXYGEN MOISTURE SHAMPOO 180ML', '../images/dove1.jpg', '180', 'available', 10, 32),
(189, 'FZ-XT PLUS', '../images/image.jpg', '80', 'available', 11, 6),
(190, 'IT-100', '../images/image.jpg', '65', 'available', 11, 6),
(191, 'RA-DSR', '../images/image.jpg', '60', 'available', 11, 6),
(192, 'APRIGLIM MV 203', '../images/image.jpg', '139', 'available', 11, 8),
(193, 'CALAZIO-K2', '../images/image.jpg', '145', 'available', 11, 8),
(194, 'CALAZIO-Z', '../images/image.jpg', '169', 'available', 11, 8),
(195, 'CLOMZEE-3', '../images/image.jpg', '169', 'available', 11, 8),
(196, 'DIA-END-200', '../images/image.jpg', '139', 'available', 11, 8),
(197, 'DOBEFLAT-500', '../images/image.jpg', '105', 'available', 11, 8),
(198, 'EPSILAZ-DSR', '../images/image.jpg', '79', 'available', 11, 8),
(199, 'ZAVATRIP-BR', '../images/image.jpg', '149', 'available', 11, 8),
(200, 'UPSPRING-D3', '../images/image.jpg', '139', 'available', 11, 8),
(201, 'GEN-URSO 150', '../images/image.jpg', '108', 'available', 11, 8),
(202, 'LACTUVIA GRANU', '../images/image.jpg', '178', 'available', 11, 8),
(203, 'LACTUVIA SYP', '../images/image.jpg', '199', 'available', 11, 8),
(204, 'MECOBLISS', '../images/image.jpg', '135', 'available', 11, 8),
(205, 'PODOFIRST-200', '../images/image.jpg', '129', 'available', 11, 8),
(206, 'PODOFIRST-100', '../images/image.jpg', '89', 'available', 11, 8),
(208, 'METACINE 250GM', '../images/image.jpg', '42', 'available', 11, 19),
(209, 'AL5ZYME DROP', '../images/image.jpg', '65', 'available', 11, 38),
(210, 'CITANIL O', '../images/image.jpg', '119', 'available', 11, 38),
(211, 'NEW FOLINAL', '../images/image.jpg', '75', 'available', 11, 38),
(212, 'FOLINAL D', '../images/image.jpg', '145', 'available', 11, 38),
(213, 'NEW FOLINAL PLUS', '../images/image.jpg', '99', 'available', 11, 38),
(214, 'TACORYZA 10', '../images/image.jpg', '355', 'available', 11, 38),
(215, 'VITARESP FX 180', '../images/image.jpg', '150', 'available', 11, 38),
(216, 'ZEET 12', '../images/image.jpg', '65', 'available', 11, 38),
(217, 'HYMOS CLEANS LOTION', '../images/image.jpg', '160', 'available', 11, 40),
(218, 'JOYKEM ODT ', '../images/image.jpg', '172', 'available', 11, 40),
(219, 'MELBILD SOLUT', '../images/image.jpg', '1200', 'available', 11, 40),
(220, 'NEW GEMCAL MOM TAB', '../images/image.jpg', '190', 'available', 11, 40),
(221, 'MEROSURE SB INJ', '../images/injection.jpg', '899', 'available', 12, 40),
(222, 'XONE SB INJ', '../images/injection.jpg', '103', 'available', 12, 40),
(223, 'DIREST-P', '../images/image.jpg', '150', 'available', 11, 42),
(224, 'NUROCTIVE', '../images/image.jpg', '550', 'available', 11, 42),
(225, 'OD-FRESH 0.50', '../images/image.jpg', '500', 'available', 11, 42),
(226, 'AURCLAV 625', '../images/image.jpg', '114', 'available', 11, 43),
(227, 'DEBOLA', '../images/image.jpg', '35', 'available', 11, 43),
(228, 'DEBOLA SP', '../images/image.jpg', '65', 'available', 11, 43),
(229, 'PEDIRUB OINT', '../images/image.jpg', '60', 'available', 11, 43),
(230, 'SY AURFE', '../images/image.jpg', '99', 'available', 11, 43),
(231, 'YOGURT R', '../images/image.jpg', '24', 'available', 11, 43),
(232, 'YOGURT Z', '../images/image.jpg', '26', 'available', 11, 43),
(233, 'CADITOR 40', '../images/image.jpg', '220', 'available', 11, 9),
(234, 'MOXIGOODD IV', '../images/image.jpg', '200', 'available', 11, 9),
(235, 'ROSMI 40', '../images/image.jpg', '320', 'available', 11, 9),
(236, 'URSOCAD PLUS', '../images/image.jpg', '249', 'available', 11, 44),
(237, 'CATABATE XT', '../images/image.jpg', '71', 'available', 11, 45),
(238, 'CATACAL CT', '../images/image.jpg', '35', 'available', 11, 45),
(239, 'CATACAL D3', '../images/image.jpg', '48', 'available', 11, 45),
(240, 'ESTOVA 1', '../images/image.jpg', '120', 'available', 11, 46),
(241, 'ESTOVA 2', '../images/image.jpg', '280', 'available', 11, 69),
(242, 'NASOVAC-S', '../images/image.jpg', '800', 'available', 11, 46),
(243, 'NASOWASH SACH START KIT', '../images/image.jpg', '300', 'available', 11, 69),
(244, 'NEVIMUNE XR 400', '../images/image.jpg', '240', 'available', 11, 69),
(245, 'ZOTIDE CARTRIDGE', '../images/image.jpg', '7000', 'available', 11, 69),
(246, 'JUSPANTA 40', '../images/image.jpg', '75', 'available', 11, 47),
(247, 'JUSPANTNA DSR', '../images/image.jpg', '99', 'available', 11, 47),
(248, 'JUSPANTNA PLUS', '../images/image.jpg', '165', 'available', 11, 47),
(249, 'ULPRIDE 25', '../images/image.jpg', '55', 'available', 11, 48),
(250, 'ULPRIDE 40', '../images/image.jpg', '125', 'available', 11, 47),
(251, 'CEFMOR 100 DT', '../images/image.jpg', '75', 'available', 11, 48),
(252, 'CEFMOR 200 DT', '../images/image.jpg', '120', 'available', 11, 48),
(253, 'LANCE SPLU', '../images/image.jpg', '70', 'not available', 11, 48),
(254, 'MOXIMOR C 625', '../images/image.jpg', '114', 'available', 11, 48),
(255, 'PARAMOR M', '../images/image.jpg', '40', 'available', 11, 48),
(256, 'POVISON S', '../images/image.jpg', '49', 'available', 11, 48),
(257, 'RABLAN DSR', '../images/image.jpg', '65', 'available', 11, 48),
(258, 'RADICOLD', '../images/image.jpg', '50', 'available', 11, 48),
(259, 'CLOBA MT 10', '../images/image.jpg', '115', 'available', 11, 49),
(260, 'CLOBA MT 5', '../images/image.jpg', '71', 'available', 11, 49),
(261, 'ITASPOR 200', '../images/image.jpg', '220', 'available', 11, 49),
(262, 'OLMARK CT 20', '../images/image.jpg', '88', 'available', 11, 49),
(263, 'OLMARK CT 40', '../images/image.jpg', '145', 'available', 11, 49),
(264, 'TIGETOP', '../images/image.jpg', '3250', 'available', 11, 49),
(265, 'AQUASURGE EYE DROPS', '../images/image.jpg', '120', 'available', 11, 51),
(266, 'BACSTOL-200', '../images/image.jpg', '95', 'available', 11, 51),
(267, 'BROMVUE EYE DROPS', '../images/image.jpg', '180', 'available', 11, 51),
(268, 'FASTCLAV 125 DT', '../images/image.jpg', '176', 'available', 11, 51),
(269, 'FASTCLAV 250', '../images/image.jpg', '255', 'available', 11, 51),
(270, 'FASTCLAV 500', '../images/image.jpg', '498', 'available', 11, 51),
(271, 'GLYREE MV 1', '../images/image.jpg', '89', 'available', 11, 11),
(272, 'GLYREE MV 2', '../images/image.jpg', '110', 'available', 11, 51),
(273, 'KERABLAK', '../images/image.jpg', '90', 'available', 11, 51),
(274, 'MOXISURGE EYE DROP', '../images/image.jpg', '175', 'available', 11, 51),
(275, 'RAXPLUS WOMEN', '../images/image.jpg', '195', 'available', 11, 51),
(276, 'RIMOFLO-SOFT', '../images/image.jpg', '205', 'available', 11, 51),
(277, 'RIMOFLO-T', '../images/image.jpg', '239', 'available', 11, 51),
(278, 'TOLYDOL', '../images/image.jpg', '40', 'available', 11, 51),
(279, 'VOMIHALT MD 4MG', '../images/image.jpg', '53', 'available', 11, 51),
(280, 'VOMIHAL SYP 30ML', '../images/image.jpg', '34', 'available', 11, 51),
(281, 'GUD-9', '../images/image.jpg', '99', 'available', 11, 52),
(282, 'HEMKLOT MF', '../images/image.jpg', '180', 'available', 11, 52),
(283, 'KONAFLAV', '../images/image.jpg', '95', 'available', 11, 52),
(284, 'KONAFLAV-O', '../images/image.jpg', '125', 'available', 11, 52),
(285, 'KONAMOX-CV 625', '../images/image.jpg', '220', 'available', 11, 52),
(286, 'K-TOR', '../images/image.jpg', '125', 'available', 11, 52),
(287, 'RESTOHEL', '../images/image.jpg', '95', 'available', 11, 52),
(288, 'ACETL-P', '../images/image.jpg', '35', 'available', 11, 53),
(289, 'AZITL 250', '../images/image.jpg', '64', 'available', 11, 53),
(290, 'FEVOREX PLUS', '../images/image.jpg', '29', 'available', 11, 53),
(291, 'FOLTL-XT', '../images/image.jpg', '90', 'available', 11, 53),
(292, 'OCTEL-O', '../images/image.jpg', '86', 'available', 11, 53),
(293, 'RABTL-DSR', '../images/image.jpg', '63', 'available', 11, 53),
(294, 'TLVITA', '../images/image.jpg', '67', 'available', 11, 53),
(295, 'LUPIN SENSIYES EYE DROP', '../images/image.jpg', '295', 'available', 11, 54),
(296, 'MOXIBLU-LP EYE DROP', '../images/image.jpg', '99', 'available', 11, 54),
(297, 'TRANSPACER-VM', '../images/image.jpg', '550', 'available', 11, 54),
(298, 'CEFIMAX-O', '../images/image.jpg', '130', 'available', 11, 54),
(299, 'HISTAMAX', '../images/image.jpg', '40', 'available', 11, 54),
(300, 'MAXCID', '../images/image.jpg', '60', 'available', 11, 54),
(301, 'NEUROWAY', '../images/image.jpg', '90', 'available', 11, 54),
(302, 'GUIDE-3', '../images/image.jpg', '60', 'available', 11, 57),
(303, 'GUIDE-PM-2', '../images/image.jpg', '60', 'available', 11, 57),
(304, 'RPTEL 400MG', '../images/image.jpg', '95', 'available', 11, 58),
(305, 'RPVAS 20MG', '../images/image.jpg', '120', 'available', 11, 58),
(306, 'SEVHOLD 400MG', '../images/image.jpg', '220', 'available', 11, 58),
(307, 'CEFIDOX 200', '../images/image.jpg', '140', 'available', 11, 59),
(308, 'FEROSPAN AN XT', '../images/image.jpg', '69', 'available', 11, 59),
(309, 'PAINDOL SP', '../images/image.jpg', '69', 'available', 11, 59),
(310, 'MOZINE', '../images/image.jpg', '85', 'available', 11, 60),
(311, 'TRIACE-SP', '../images/image.jpg', '50', 'available', 11, 60),
(312, 'TRIBO-DSR', '../images/image.jpg', '80', 'available', 11, 60),
(313, 'TRIZI-500', '../images/image.jpg', '62', 'available', 11, 60),
(314, 'ACNEX 10', '../images/image.jpg', '110', 'available', 11, 29),
(315, 'ADHAIR', '../images/image.jpg', '150', 'available', 11, 61),
(316, 'BIZLO 25', '../images/image.jpg', '198', 'available', 11, 61),
(317, 'BIZLO OD 30', '../images/image.jpg', '230', 'available', 11, 61),
(318, 'TEXXA D', '../images/image.jpg', '135', 'available', 11, 61),
(319, 'TEGTOR 80', '../images/image.jpg', '330', 'available', 11, 61),
(320, 'UCEPROL 200MG', '../images/image.jpg', '199', 'available', 11, 61),
(321, 'CODLAR-M', '../images/image.jpg', '85', 'available', 11, 62),
(322, 'CEFPONICE-100', '../images/image.jpg', '60', 'available', 11, 63),
(323, 'COFVOT', '../images/image.jpg', '50', 'available', 11, 63),
(324, 'COLIGRAM', '../images/image.jpg', '35', 'available', 11, 63),
(325, 'DROTIME-M', '../images/image.jpg', '55', 'available', 11, 63),
(326, 'RABEYOG', '../images/image.jpg', '20', 'available', 11, 63),
(327, 'RIGHTFLAM', '../images/image.jpg', '49', 'available', 11, 63),
(328, 'STONPATH', '../images/image.jpg', '30', 'available', 11, 63),
(329, 'UPLACT', '../images/image.jpg', '40', 'available', 11, 63),
(330, 'VOTCOLD', '../images/image.jpg', '35', 'available', 11, 63),
(331, 'VOTPLEX', '../images/image.jpg', '50', 'available', 11, 63),
(332, 'D3 TOTAL', '../images/image.jpg', '220', 'available', 11, 64),
(333, 'D3 TOTAL SACH', '../images/image.jpg', '26', 'available', 11, 64),
(334, 'ALEON-M', '../images/image.jpg', '49', 'available', 11, 65),
(335, 'ALEON-M KID', '../images/image.jpg', '32', 'available', 11, 65),
(336, 'AZIMATE-100', '../images/image.jpg', '30', 'available', 11, 65),
(337, 'HEMIC-XT', '../images/image.jpg', '65', 'available', 11, 65),
(338, 'ISOLAN-SR', '../images/image.jpg', '55', 'available', 11, 65),
(339, 'MAXION-CV', '../images/image.jpg', '49', 'available', 11, 65),
(340, 'MYCORIL-D', '../images/image.jpg', '54', 'available', 11, 65),
(341, 'MYCORIL-EXP', '../images/image.jpg', '50', 'available', 11, 65),
(342, 'MYCORIL-P', '../images/image.jpg', '45', 'available', 12, 65),
(343, 'PEPRA-DM', '../images/image.jpg', '43', 'available', 11, 65),
(344, 'RBON-20', '../images/image.jpg', '33', 'available', 11, 65),
(345, 'RBON-DSR', '../images/image.jpg', '70', 'available', 11, 65),
(346, 'TREMIC-MF', '../images/image.jpg', '130', 'available', 11, 65),
(347, 'ZIOFLAM-P', '../images/image.jpg', '49', 'available', 11, 65),
(348, 'SAPAT ADULSA PLUS COUGH SYRUP ', '../images/sapt.jpg', '65', 'available', 11, 85),
(349, 'SUTHOL SKIN SHOWER', '../images/suthol.jpg', '50', 'available', 7, 162),
(350, 'Licel 20ml', '../images/licil.jpg', '30', 'available', 10, 163),
(351, 'SOFRAMYCIN', '../images/sofra.jpg', '30', 'available', 7, 80),
(352, 'OKACET COLD', '../images/image.jpg', '40', 'available', 11, 146),
(353, 'MAXTRA SYRUP 60ML', '../images/bottol1.png', '57', 'available', 11, 84),
(354, 'CALPOL-250 MG', '../images/bottol1.png', '43', 'available', 11, 105),
(355, 'IBUGESIC PLUS', '../images/bottol1.png', '20', 'available', 11, 146),
(356, 'CYCLOPAM 30ML SYRUP', '../images/bottol1.png', '35', 'available', 11, 165),
(357, 'NOVOKOF-DX COUGH SYRUP', '../images/bottol1.png', '36', 'available', 11, 21),
(358, 'Altec', '../images/bottol1.png', '33', 'available', 11, 86),
(359, 'GILOY GHANVATI', '../images/bottol1.png', '90', 'available', 11, 166),
(360, 'TRIFALA CHURNA ', '../images/bottol.png', '30', 'available', 11, 167),
(363, 'SAPDRYL COUGH SYRUP', '../images/bottol1.png', '20', 'available', 11, 85),
(364, 'ROSUSON-F 10', '../images/image.jpg', '50', 'available', 11, 81),
(365, 'Altec P', '../images/bottol1.png', '35', 'available', 11, 87),
(366, 'DERMI COOL', '../images/dermi.jpg', '80', 'available', 7, 169),
(367, 'WILD STONE POWDER', '../images/wildstone.jpg', '100', 'available', 7, 170),
(368, 'DETTOL HAND WASH', '../images/DETOLHND.jpg', '40', 'available', 7, 169),
(369, 'CLOHEX PLUS', '../images/bottol1.png', '80', 'available', 11, 117),
(370, ' Altec Syrup', '../images/bottol1.png', '25', 'available', 11, 87),
(371, '  Ascoril -C (100 ml)', '../images/bottol1.png', '67', 'available', 11, 89),
(372, 'Bronolax', '../images/bottol1.png', '15', 'available', 11, 40),
(373, '  C -Kof', '../images/bottol1.png', '20', 'available', 11, 90),
(374, 'Carion', '../images/bottol1.png', '50', 'available', 11, 92),
(375, ' Cirocod Linctus', '../images/bottol1.png', '30', 'available', 11, 91),
(376, 'Co Cof', '../images/bottol1.png', '40', 'available', 11, 93),
(377, 'Cocof Cough Lincutus (100 ml)', '../images/bottol1.png', '90', 'available', 11, 94),
(378, ' Codeb (100 ml)', '../images/bottol1.png', '80', 'available', 11, 95),
(379, ' Codectuss', '../images/bottol1.png', '60', 'available', 11, 44),
(380, '  Codeine -Sulfate (60 ml)', '../images/bottol1.png', '50', 'available', 11, 97),
(381, 'Codifen', '../images/bottol1.png', '40', 'available', 11, 98),
(382, ' Codin Linctus', '../images/bottol1.png', '60', 'available', 11, 97),
(383, 'Codine Sulphate (100 ml)', '../images/bottol1.png', '100', 'available', 11, 97),
(384, 'Codinol Plus', '../images/bottol1.png', '200', 'available', 11, 99),
(385, '  Codirex (100 ml)', '../images/bottol1.png', '50', 'available', 11, 100),
(386, 'codirich(100 ml)', '../images/bottol1.png', '70', 'available', 11, 101),
(387, ' Codistar', '../images/bottol1.png', '80', 'available', 11, 102),
(388, '  Codistar Plus (400 mg)', '../images/bottol1.png', '150', 'available', 11, 102),
(389, '  Codo Q', '../images/bottol1.png', '60', 'available', 11, 168),
(390, 'Codokuff', '../images/bottol1.png', '79', 'available', 11, 97),
(391, '  Codoplus', '../images/bottol1.png', '90', 'available', 11, 104),
(392, 'Codopyrin', '../images/bottol1.png', '60', 'available', 11, 105),
(393, 'Codoric Cough', '../images/bottol1.png', '50', 'available', 11, 106),
(394, 'Codoris', '../images/bottol1.png', '80', 'available', 11, 106),
(395, 'Codriv', '../images/bottol1.png', '60', 'available', 11, 107),
(396, 'Codsy', '../images/bottol1.png', '50', 'available', 11, 108),
(397, 'Codwin', '../images/bottol1.png', '30', 'available', 11, 160),
(398, '  Codyl', '../images/bottol1.png', '60', 'available', 11, 109),
(399, '  Codylex (100 ml)', '../images/bottol1.png', '70', 'available', 11, 110),
(400, ' Codylex Linctus (100 ml)', '../images/bottol1.png', '56', 'available', 11, 110),
(401, 'Codylex Plus', '../images/bottol1.png', '89', 'available', 11, 110),
(402, 'Codzi', '../images/bottol1.png', '60', 'available', 11, 72),
(403, '  Cofcodyl (120 ml)', '../images/bottol1.png', '100', 'available', 11, 111),
(404, 'Cofrex', '../images/bottol1.png', '58', 'available', 11, 159),
(405, ' Cofwin', '../images/bottol1.png', '67', 'available', 11, 157),
(406, ' Combidin', '../images/bottol1.png', '67', 'available', 11, 112),
(407, '  Comtus Lintus', '../images/bottol1.png', '120', 'available', 11, 113),
(408, '  Cophedrin', '../images/bottol1.png', '45', 'available', 11, 158),
(409, 'Corex (100 ml)', '../images/bottol1.png', '100', 'available', 11, 114),
(410, 'Cozin Forte', '../images/bottol1.png', '50', 'available', 11, 112),
(411, '  Cozin Linctus (100 ml)', '../images/bottol1.png', '70', 'available', 11, 112),
(412, 'Cufex Cough', '../images/bottol1.png', '78', 'available', 11, 116),
(413, 'D Cuf', '../images/bottol1.png', '89', 'available', 11, 127),
(414, 'Daslin CD', '../images/bottol1.png', '78', 'available', 11, 116),
(415, 'Dialex DC', '../images/bottol1.png', '80', 'available', 11, 117),
(416, 'Diapyrin', '../images/bottol1.png', '78', 'available', 11, 118),
(417, '  Dicodin', '../images/bottol1.png', '89', 'available', 11, 157),
(418, 'Diphecol -C (100 ml)', '../images/bottol1.png', '67', 'available', 11, 119),
(419, ' Dolokoff', '../images/bottol1.png', '67', 'available', 11, 120),
(420, '  Dristan Expectorant', '../images/bottol1.png', '89', 'available', 11, 121),
(421, '  Ecodil', '../images/bottol1.png', '67', 'available', 11, 121),
(422, '  Elcodin', '../images/bottol1.png', '56', 'available', 11, 122),
(423, ' Eltuss -C', '../images/bottol1.png', '89', 'available', 11, 123),
(424, ' Ephrilime', '../images/bottol1.png', '77', 'available', 11, 118),
(425, '  Ephriline Forte', '../images/bottol1.png', '89', 'available', 11, 118),
(426, '  Eskuf', '../images/bottol1.png', '44', 'available', 11, 124),
(427, ' Eskuf -AL', '../images/bottol1.png', '77', 'available', 11, 124),
(428, 'Exiplon (100 ml)', '../images/bottol1.png', '89', 'available', 11, 125),
(429, ' Faringodyl', '../images/bottol1.png', '56', 'available', 11, 126),
(430, 'Glycodin Cough Syrup', '../images/bottol1.png', '89', 'available', 11, 7),
(431, 'Kofex (50ml)', '../images/bottol1.png', '100', 'available', 11, 133),
(432, '  M Kofdryl (100 ml)', '../images/bottol1.png', '56', 'available', 11, 134),
(433, 'Mits Linctus Codeinae Co (60ml)', '../images/bottol1.png', '66', 'available', 11, 122),
(434, ' Phensedyl Cough (100 ml)', '../images/bottol1.png', '67', 'available', 11, 127),
(435, '  Planokuf Cough (100 ml)', '../images/bottol1.png', '78', 'available', 11, 150),
(436, 'Procodyl (100 ml)', '../images/bottol1.png', '89', 'available', 11, 142),
(437, 'Sorex (100 ml)', '../images/bottol1.png', '100', 'available', 11, 148),
(438, 'CENERC 100MG', '../images/image.jpg', '290', 'available', 11, 66),
(439, 'Brufen 400 mg Tablets', '../images/image.jpg', '260', 'available', 11, 171),
(440, 'Accuretic Film Coated Tablets', '../images/image.jpg', '300', 'available', 11, 114),
(441, 'Abacavir  Film-Coated Tablets', '../images/image.jpg', '400', 'available', 11, 117),
(442, 'Amlodipine 5mg Tablets ', '../images/image.jpg', '300', 'available', 11, 117),
(443, 'Aripiprazole  15 mg Tablets', '../images/image.jpg', '400', 'available', 11, 117);

-- --------------------------------------------------------

--
-- Table structure for table `question_tbl`
--

CREATE TABLE IF NOT EXISTS `question_tbl` (
  `question_id` int(10) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `question_status` varchar(6) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `question_tbl`
--

INSERT INTO `question_tbl` (`question_id`, `question`, `question_status`, `answer`, `email_id`) VALUES
(1, 'wht is this', 'accept', 'fafda ', 'aaa@gmail.com'),
(2, 'whts up', 'reject', 'good', 'mmm@gmail.com'),
(3, 'ok', 'pendin', 'not answer', 'ranarajan49@gmail.com'),
(4, '', 'reject', 'xzmhzj', 'ranarajan49@gmail.com'),
(5, '', 'pendin', 'not answer', 'ranarajan49@gmail.com'),
(6, '', 'pendin', 'not answer', 'ranarajan49@gmail.com'),
(7, 'what is the use of medicine?', 'accept', 'it is for health', 'ranarajan49@gmail.com'),
(8, 'how are you?', 'accept', 'i m fine', 'ranarajan49@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `email_id` varchar(50) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `area` varchar(20) NOT NULL,
  `zipcode` int(6) NOT NULL,
  `mobile_no` varchar(13) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `ship_address` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `link` varchar(100) NOT NULL,
  `join_date` varchar(20) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`email_id`, `user_name`, `password`, `address`, `area`, `zipcode`, `mobile_no`, `gender`, `ship_address`, `type`, `status`, `link`, `join_date`) VALUES
('aaa@gmail.com', 'assss', 'sa', 'asdas', 'Maninagar', 213123, '1231231231', 'F', 'asdasd', 'user', 'true', 'Null', '17/03/17'),
('admin@gmail.com', 'admin', 'admin', 'jay jalaram', 'Kankaria', 1, '1', 'M', 'null', 'admin', 'true', 'null', 'null'),
('dhshd@k.com', 'asd', '21', 'asdasd', 'Kankaria', 212112, '1221121211', 'M', 'asdsad', 'user', 'true', 'Null', '17/03/17'),
('hardi33@gmail.com', 'hardi', 'dddb1b27f1a7d7601a6a0f7e2ca92926', 'vasna', 'Kankaria', 123456, '8238344452', 'F', 'null', 'user', 'false', 'hardi33@gmail.comfede879a16', '22/04/17'),
('mkksdkaasd@jdsjaa.com', 'sdadas', '12', 'sad', 'Kankaria', 123123, '123313123', 'M', 'null', 'user', 'false', 'mkksdkaasd@jdsjaa.comba48bccfc0', '17/03/17'),
('ranarajan49@gmail.com', 'rajan', '827ccb0eea8a706c4c34a16891f84e7b', 'lkklskdkas', 'Kankaria', 213213, '1312312312', 'M', 'lkklskdkas', 'user', 'true', 'ranarajan49@gmail.coma03e5aa252', '25/03/17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
