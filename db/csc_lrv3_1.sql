-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2015 at 07:42 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csc_lrv3.1`
CREATE DATABASE IF NOT EXISTS csc_lrv3.1;
USE DATABASE csc_lrv3.1;
--

-- --------------------------------------------------------

--
-- Table structure for table `account_master`
--

CREATE TABLE IF NOT EXISTS `account_master` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `account_master`
--

INSERT INTO `account_master` (`id`, `name`) VALUES
(16, 'CTO');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE IF NOT EXISTS `category_master` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `name`) VALUES
(16, 'Generic - All'),
(21, 'ECM technology'),
(22, 'Apps'),
(23, 'open source'),
(24, 'SM'),
(25, 'Devops');

-- --------------------------------------------------------

--
-- Table structure for table `csc_lr_experiment_req`
--

CREATE TABLE IF NOT EXISTS `csc_lr_experiment_req` (
  `request_num` bigint(15) NOT NULL AUTO_INCREMENT,
  `request_theme` int(2) NOT NULL,
  `idea_category` varchar(50) NOT NULL,
  `expt_shortname` varchar(50) NOT NULL,
  `overview` text NOT NULL,
  `problem_statement` text NOT NULL,
  `customer_segment` int(2) NOT NULL,
  `unique_value_proposition` text NOT NULL,
  `solution_brief` text NOT NULL,
  `solution_features` text NOT NULL,
  `key_metric_1` varchar(50) NOT NULL,
  `key_metric_1_measure` varchar(20) NOT NULL,
  `key_metric_2` varchar(50) NOT NULL,
  `key_metric_2_measure` varchar(20) NOT NULL,
  `key_metric_3` varchar(50) NOT NULL,
  `key_metric_3_measure` varchar(20) NOT NULL,
  `primary_metrics_matters` int(2) NOT NULL,
  `channels` text NOT NULL,
  `cost_structure` varchar(100) NOT NULL,
  `revenue_stream` varchar(100) NOT NULL,
  `revenue_stream_assumptions` varchar(100) NOT NULL,
  `unfair_advantage` text NOT NULL,
  `funding_by_business` text NOT NULL,
  `bu_sponsor` varchar(50) NOT NULL,
  `key_characteristics` int(2) NOT NULL,
  `owner_email_id` varchar(50) NOT NULL,
  `AoD_reference` text NOT NULL,
  `Comments` text NOT NULL,
  `experiment_current_snapshot` int(2) NOT NULL,
  `experiment_current_status` int(2) NOT NULL,
  `mentor_email_id` varchar(50) NOT NULL,
  `document_link` text NOT NULL,
  `pursue_idea_imme` text NOT NULL,
  `region_id` int(2) NOT NULL,
  `report` text NOT NULL,
  `link` text NOT NULL,
  `cookbook` text NOT NULL,
  PRIMARY KEY (`request_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `csc_lr_experiment_req`
--

INSERT INTO `csc_lr_experiment_req` (`request_num`, `request_theme`, `idea_category`, `expt_shortname`, `overview`, `problem_statement`, `customer_segment`, `unique_value_proposition`, `solution_brief`, `solution_features`, `key_metric_1`, `key_metric_1_measure`, `key_metric_2`, `key_metric_2_measure`, `key_metric_3`, `key_metric_3_measure`, `primary_metrics_matters`, `channels`, `cost_structure`, `revenue_stream`, `revenue_stream_assumptions`, `unfair_advantage`, `funding_by_business`, `bu_sponsor`, `key_characteristics`, `owner_email_id`, `AoD_reference`, `Comments`, `experiment_current_snapshot`, `experiment_current_status`, `mentor_email_id`, `document_link`, `pursue_idea_imme`, `region_id`, `report`, `link`, `cookbook`) VALUES
(1, 9, 'ongoing', 'Bare-metal Provisioning', 'Software defined policy driven OS provisioning and node control for cloud infrastructure', 'Software defined policy driven OS provisioning and node control for cloud infrastructure', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24', 'Offerings:\r\n1. CSC Open Source Initiative\r\n2. Next Gen Data Center', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(3, 4, 'ongoing', 'UT Automation', 'Code Coverage & Unit testing automation leveraging appropriate Tools & Framework in improving the Developer Productivity by cutting waste.', 'Code Coverage & Unit testing automation leveraging appropriate Tools & Framework in improving the Developer Productivity by cutting waste.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'veedara@csc.com;bnambiar@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-36', 'a. Spock framework was implemented for Microsoft Azure and vcloudDirector adapters (Completed)\r\nb. Using in two more adaptors, SoftLayer and vCloudAir (vCA) - In Progress', 351, 1, 'veedara@csc.com;bnambiar@csc.com', '', '', 0, '', '', ''),
(4, 8, 'ongoing', 'Continuous Delivery', 'Improve application delivery cycle time and application quality with complete automation leveraging cloud based platform services', 'Improve application delivery cycle time and application quality with complete automation leveraging cloud based platform services', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'svema@csc.com', '', '1. PoC to support Software GDN delivery needs\r\n2. Being leveraged by EM Product development team', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(5, 8, 'ongoing', 'Async SM Cloud Adaptors', 'Building Async Adaptors for VC & Azure', 'Building Async Adaptors for VC & Azure', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'veedara@csc.com;vkrishnasamy@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-36', 'a. Completed development for both adapters - Azure and vcloudDirector (Development Completed)\r\nb. Testing is in progress for both Azure and vCloud Director adapters', 331, 1, 'veedara@csc.com;vkrishnasamy@csc.com', '', '', 0, '', '', ''),
(6, 7, 'ongoing', 'Hybrid Mobile Apps for AppModernization', 'A hybrid mobile application model to transform an existing site (mobile) portal into a mobile app', 'A hybrid mobile application model to transform an existing site (mobile) portal into a mobile app', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'svema@csc.com', '', '1. Being leveraged by EM product development team', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(11, 8, 'ongoing', 'Java Virtualization', 'Evaluation of Waratek Cloud VM (JVM Hypervisor)', 'Evaluation of Waratek Cloud VM (JVM Hypervisor)', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-20', 'Tech Evaluation Complete and report published.\r\n\r\nAs a next step we are taking it to Offering Lines for further Collaboration. Awaiting Customer 0', 400, 1, 'svema@csc.com', '', '', 0, 'https://c3.csc.com/groups/cloud-jvm/blog/2013/12/15/evaluation-of-waratek-as-next-generation-java-platform', '', ''),
(12, 4, 'ongoing', 'DevOps-Inception', 'DevOps-Inception, Platform and Deployment Automation', 'DevOps-Inception, Platform and Deployment Automation', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'vkrishnasamy@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-18', 'Moving to offering line', 400, 1, 'vkrishnasamy@csc.com', '', '', 0, 'https://c3.csc.com/docs/DOC-600032', '', ''),
(13, 4, 'ongoing', 'Modern Dev Tool Chain', 'Evaluation of modern tool chain, hosting options and recommendations.', 'Evaluation of modern tool chain, hosting options and recommendations.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0', '0', '', 0, 'rnadar@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-19', 'Adopted by Software GDN, BigData, GBS Consulting, Catalyst, LEF', 400, 1, 'rnadar@csc.com', '', '', 0, 'https://c3.csc.com/projects/devops--modern-devtool-chain/blog/2014/01/28/devtool-chain--atlassian-vs-github-or-ondemand-vs-enterprise-hosting', '', 'https://c3.csc.com/projects/devops--modern-devtool-chain/blog/2014/01/22/cookbook-for-atlassian-standard-devtool-chain'),
(29, 5, 'ongoing', 'Convenient Customer Experience with Proximity base', 'Geo proximity services to improve customer experience in areas where customer needs quick information based on the store interactions (retail) and for areas where customer waiting time in queue is cri', 'Geo proximity services to improve customer experience in areas where customer needs quick information based on the store interactions (retail) and for areas where customer waiting time in queue is cri', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24?jql', 'Potential New Offering', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(30, 8, 'ongoing', 'Drug Composition Analysis', 'Mobile App to process images (using applied Machine Learning) of medicines and apply analytics to determine presence of dangerous / banned / allergic substances.', 'Mobile App to process images (using applied Machine Learning) of medicines and apply analytics to determine presence of dangerous / banned / allergic substances.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com;sbodduluri2@csc.com', '', '1. Inputs from Enterprise Management - IS&S Healthcare\r\n\r\n2. App development in progress. Currently team is working on Image pre-processing refinement', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(31, 5, 'ongoing', 'NFC based patient tags', 'NFC based patient tags to facilitate faster extraction and communication of patient information from any tablet', 'NFC based patient tags to facilitate faster extraction and communication of patient information from any tablet', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24?jql', 'GBS Apps', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(32, 7, 'ongoing', 'Form factor neutral mobile apps', 'A generic mobile application architecture which can cater to any form factor and mobile OS', 'A generic mobile application architecture which can cater to any form factor and mobile OS', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24?jql', 'GBS Apps', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(33, 4, 'ongoing', 'Asset Migration from Razor to Hanlon', 'Solution to migration provisioned node information from Razor to Hanlon which can help improve adaption of CSC opensource tool Hanlon', 'Solution to migration provisioned node information from Razor to Hanlon which can help improve adaption of CSC opensource tool Hanlon', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24?jql', 'Open Source NextGen DC', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(34, 4, 'ongoing', 'Continuous Delivery for Hanlon', 'CD model which can help dev, test, release cycles of Hanlon', 'CD model which can help dev, test, release cycles of Hanlon', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-24?jql', 'Open Source NextGen DC', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(35, 8, 'ongoing', 'Medchart - Blueprinting CSC IP on Agility Store', 'Blueprinting of Medhcart CSC Healthcare IP. Agility store deployed on CSC Bbizcloud has been used for provisioning the two tier EC2 instances on AWS.', 'Blueprinting of Medhcart CSC Healthcare IP. Agility store deployed on CSC Bbizcloud has been used for provisioning the two tier EC2 instances on AWS.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'isinha2@csc.com;skurur@csc.com', '', '1. First CSC Healthcare IP leveraging Agility platform', 400, 1, 'isinha2@csc.com;skurur@csc.com', '', '', 0, 'https://cscnextdev.atlassian.net/browse/ATD-39?jql=project%20%3D%20ATD', '', ''),
(94, 5, 'ongoing', 'Outpatient Experience Solution in Healthcare', 'A solution making best use of the advanced technology concepts like Internet of Things IoT, NFC and mobile technologies which provides a new patient downloading mobile app and registering his details,', 'A solution making best use of the advanced technology concepts like Internet of Things IoT, NFC and mobile technologies which provides a new patient downloading mobile app and registering his details,', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', '', 'Potential New offering', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(95, 13, 'ongoing', 'Complex Log Analysis', 'Complex pattern analysis with Artificial Neural Networks is a ANN based pattern recognition algorithms which is specially designed and trained for scenarios where segregation of true, false positive f', 'Complex pattern analysis with Artificial Neural Networks is a ANN based pattern recognition algorithms which is specially designed and trained for scenarios where segregation of true, false positive f', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', '', 'Offerings: 1.Potential New Offering, with applications to areas like a. DDoS Attack detection, b. Fraud detection,c. Preventive Maintenance', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(96, 5, 'ongoing', 'Online Experience at Store', 'A solution making best use of the advanced technology concepts like Internet of Things IoT, NFC and mobile technologies which provides Customer a new experience od retail shopping with proximity based', 'A solution making best use of the advanced technology concepts like Internet of Things IoT, NFC and mobile technologies which provides Customer a new experience od retail shopping with proximity based', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/i#browse/ATD-24?i', 'Potential New offering', 331, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(97, 5, 'ongoing', 'NextGen patienct care using ALTBeacon', 'Providing proximity aware services to patients in Healthcare.', 'Providing proximity aware services to patients in Healthcare.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com;drasamsetti@csc.com', '', '', 331, 1, 'svema@csc.com;drasamsetti@csc.com', '', '', 0, '', '', ''),
(98, 5, 'ongoing', 'NextGen customer shopping using ALTBeacon', 'Re-engaging Customers shopping experience with Proximity based services  during retail shopping.', 'Re-engaging Customers shopping experience with Proximity based services  during retail shopping.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com;drasamsetti@csc.com', '', '', 331, 1, 'svema@csc.com;drasamsetti@csc.com', '', '', 0, '', '', ''),
(99, 6, 'ongoing', 'Prediction of Flight delays among given Airports', 'Working on a PoC to predict flight delays at specific airports to help customers to choose the closest airports with minimal delays.', 'Working on a PoC to predict flight delays at specific airports to help customers to choose the closest airports with minimal delays.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com;abarbi@csc.com', '', 'PoC in progress', 331, 1, 'svema@csc.com;abarbi@csc.com', '', '', 0, '', '', ''),
(100, 0, 'ongoing', 'PoC for call center optimal size and delay calcula', 'Working on two PoC to predict the optimal call center (helpdesk) size for a certain hour of day, and the expected delay at a certain hour.', 'Working on two PoC to predict the optimal call center (helpdesk) size for a certain hour of day, and the expected delay at a certain hour.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'skuppuswamy4@csc.com', '', 'PoC in progress', 331, 1, 'skuppuswamy4@csc.com', '', '', 0, '', '', ''),
(101, 6, 'ongoing', 'Applied Machine Learning: PoC for detection and di', 'Used Azure ML to take around 8 features as input and compute the exposure to cancer. Based on extent of exposure, tool recommends further tests.', 'Used Azure ML to take around 8 features as input and compute the exposure to cancer. Based on extent of exposure, tool recommends further tests.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'abarbi@csc.com', '', 'PoC in progress', 331, 1, 'abarbi@csc.com', '', '', 0, '', '', ''),
(102, 5, 'ongoing', 'Gesture & Voice recognition', 'PoC  to build an android app for gesture & voice recognition, to be used in any app as required.', 'PoC  to build an android app for gesture & voice recognition, to be used in any app as required.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'pvenkatara21@csc.com', '', 'PoC in progress', 331, 1, 'pvenkatara21@csc.com', '', '', 0, '', '', ''),
(103, 5, 'ongoing', 'Streaming Data analysis (PoC)', 'PoC in progress - using Kafka / Storm to capture and process streaming data.', 'PoC in progress - using Kafka / Storm to capture and process streaming data.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'ajain275@csc.com;sswarnkar4@csc.com', '', 'PoC in progress', 331, 1, 'ajain275@csc.com;sswarnkar4@csc.com', '', '', 0, '', '', ''),
(104, 8, 'ongoing', 'HortonWorks data platform', 'Understanding the HortonWorks sandbox and its features for futher assessment and use in applications.', 'Understanding the HortonWorks sandbox and its features for futher assessment and use in applications.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'sgovind4@csc.com', '', 'Analysis in progress', 331, 1, 'sgovind4@csc.com', '', '', 0, '', '', ''),
(105, 6, 'ongoing', 'Credit Score Calculator (PoC)', 'Building a credit score predictor (PoC) which can be used in Insurance Policy Underwriting / Claims analysis and other relevant business areas.', 'Building a credit score predictor (PoC) which can be used in Insurance Policy Underwriting / Claims analysis and other relevant business areas.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'skuppuswamy4@csc.com', '', 'PoC in progress', 331, 1, 'skuppuswamy4@csc.com', '', '', 0, '', '', ''),
(106, 6, 'ongoing', 'Claims Fraud Analyzer (PoC)', 'Build a predictive claims fraud analyzer model (PoC) that can be used in Claims Adjudications.', 'Build a predictive claims fraud analyzer model (PoC) that can be used in Claims Adjudications.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'skuppuswamy4@csc.com', '', 'PoC in progress', 331, 1, 'skuppuswamy4@csc.com', '', '', 0, '', '', ''),
(107, 4, 'ongoing', 'DevOps - Modern DevTool Chain', 'Incorporate both private and public accounts along with subnet details (future) within the GUI.', 'Incorporate both private and public accounts along with subnet details (future) within the GUI.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'bnambiar@csc.com', '', 'Simplified the processing model.', 400, 1, 'bnambiar@csc.com', '', '', 0, '', '', ''),
(109, 5, 'ongoing', 'NFC based in patient monitored', 'NFC based patient tags to facilitate faster extraction and communication of patient information from any handheld device.', 'NFC based patient tags to facilitate faster extraction and communication of patient information from any handheld device.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', '', '1. Inputs from Enterprise Management - IS&S Healthcare.2. App development complete. PoC demonstrated to TechnoBrain.For more details, please refer to document report.', 400, 1, 'svema@csc.com', '', '', 0, 'https://drive.google.com/?utm_source=en&utm_medium=button&utm_campaign=web&utm_content=gotodrive&usp=gtd&ltmpl=drive&pli=1#folders/0B9gh8nV1U7FvUzZFQ2d0bk9oTGc', 'https://github.com/sanjaykumarswarnkar/InnovationRoom/tree/NFCDemo/RestWebServ', ''),
(110, 5, 'ongoing', 'Image Processing based out patient monitoring', 'Application to enable health care provider to read outpatient data on his portable device, based on an image of the patients ID.', 'Application to enable health care provider to read outpatient data on his portable device, based on an image of the patients ID.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', '', '1. Inputs from Enterprise Management - IS&S Healthcare.2. App development complete. PoC demonstrated to TechnoBrain.For more details, please refer to document report.', 400, 1, 'svema@csc.com', '', '', 0, 'https://drive.google.com/?utm_source=en&utm_medium=button&utm_campaign=web&utm_content=gotodrive&usp=gtd&ltmpl=drive&pli=1#folders/0B9gh8nV1U7FvUzZFQ2d0bk9oTGc', 'https://github.com/Prathibha-mv/InnovationRoom.git', ''),
(111, 4, 'ongoing', 'Continuous Delivery', 'Tools & Platform Evaluation for Dev project around Continuous Delivery and Productivity Improvement.', 'Tools & Platform Evaluation for Dev project around Continuous Delivery and Productivity Improvement.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'pananthasubr@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-37', 'Break Silos, Fail Fast, cut waste', 300, 1, 'pananthasubr@csc.com', '', '', 0, '', '', ''),
(112, 4, 'ongoing', 'CSC Lab Registry', 'Create a framework and prototype for provisioning On Demand Lab on Hybrid / Multi cloud by leveraging open source packaging and DevOps tools.', 'Create a framework and prototype for provisioning On Demand Lab on Hybrid / Multi cloud by leveraging open source packaging and DevOps tools.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'rnadar@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-31', 'Why CSC Lab Registry?, Scenario outline, FaQ?. Offerings: CSC all BUs', 300, 1, 'rnadar@csc.com', '', '', 0, '', '', ''),
(113, 4, 'ongoing', 'Continuous Testing', 'Collaborating with Selcukes (Testing Framework) in improvising with POC', 'Collaborating with Selcukes (Testing Framework) in improvising with POC', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'pananthasubr@csc.com;rnadar@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-38', '', 300, 1, 'pananthasubr@csc.com;rnadar@csc.com', '', '', 0, '', '', ''),
(114, 8, 'ongoing', 'Enterprise App Store', 'Evaluating partners & tools', 'Evaluating partners & tools', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'isinha2@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-21', 'Ongoing evaluation of partner products such as Microsoft, SCCM 2012, BMC, Relution, App47 and build  Sandbox environment wherever possible. Offerings: CSC BT', 311, 1, 'isinha2@csc.com', '', '', 0, '', '', ''),
(115, 8, 'ongoing', 'Middleware PaaS Bundle (using Next Gen ESB)', 'Evaluate the Next Generation ESBs on the Enterprise Integration perspective, to improve on the performance and efficiency of the Enterprise Solution. Prototype with the current leader in this space.', 'Evaluate the Next Generation ESBs on the Enterprise Integration perspective, to improve on the performance and efficiency of the Enterprise Solution. Prototype with the current leader in this space.', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'jjanarthanan@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-34', 'Offerings: Cross offerings In combination with Project (4) below, a Middleware PaaS Bundle creation has been started for use by projects/Offerings while migrating to Cloud Environments. Project 4 (Jav', 311, 1, 'jjanarthanan@csc.com', '', '', 0, '', '', ''),
(116, 8, 'ongoing', 'Java Virtualization', 'Continue to explore opportunities for Waratek based Cloud JVM / Java PaaS', 'Continue to explore opportunities for Waratek based Cloud JVM / Java PaaS', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'jjanarthanan@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-20', 'Tech Evaluation Completed and Report published as part of Sprint-1. Offerings: Cross offerings', 311, 1, 'jjanarthanan@csc.com', '', '', 0, '', '', ''),
(117, 14, 'ongoing', 'AR Glass Application', 'Context sensitive information search and presentation on AR devices (Google Glasses) to improve information accessibility', 'Context sensitive information search and presentation on AR devices (Google Glasses) to improve information accessibility', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-30?fil', 'Offerings: Cross offerings (Mining, Manufacturing)', 311, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(118, 8, 'ongoing', 'Modern  Messaging Tools', 'Evaluation of Solace Messaging Platform', 'Evaluation of Solace Messaging Platform', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'jjanarthanan@csc.com', 'https://cscnextdev.atlassian.net/browse/ATD-23', '', 300, 1, 'jjanarthanan@csc.com', '', '', 0, '', '', ''),
(119, 5, 'ongoing', 'Location aware customer experience model', 'Provide location aware customer services with automatic data exchange using IoT to improve customer experience', 'Provide location aware customer services with automatic data exchange using IoT to improve customer experience', 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'svema@csc.com', '', 'Being leveraged by EM product development team', 300, 1, 'svema@csc.com', '', '', 0, '', '', ''),
(121, 11, 'output of ingenuity worx', 'Adaptive Sourcing', 'What are the visionary and \r\nbest practices for allowing governments \r\nto benefit from the power and flexibility of the cloud?', '', 0, '', 'What are the visionary and \r\nbest practices for allowing governments \r\nto benefit from the power and', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'tfusting@csc.com', '', '', 1, 0, '', 'files/WinningIdea_tfusting@csc.com_AdaptiveSourcing.pptx', 'No', 0, '', '', ''),
(122, 12, 'output of ingenuity worx', 'Healthcare Data Exchange', 'How can we design a standard data exchange between the public and private sectors that will improve healthcare management?', '', 0, '', 'How can we design a standard data exchange between the public and private sectors that will improve ', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', 0, 'nlagerweij@csc.com', '', '', 0, 0, '', 'files/WinningIdea_nlagerweij@csc.com_HealthCareDataExchange.pptx', 'No', 0, '', '', ''),
(124, 6, 'ongoing', 'Insurance Score Calculator', 'Building an insurance score predictor (PoC) which can be used in Insurance Policy Underwriting.', 'Insurance scores are used by underwriters / actuaries to determine insurance premium', 0, 'This PoC aims to reduce the cost of obtaining insurance scores from third parties.', 'Build and train a regression model using sample data for PoC. Test using offering data (as applicable)', 'Will use AzureML to build the regression model. The PoC will be demonstrated in excel, with addins to Azure ML.', '3', '', '-1', '', '-1', '', 1, '', '', '', '', 'No', '', '', 1, 'skuppuswamy4@csc.com', '', '', 331, 0, 'skuppuswamy4@csc.com', '', '', -1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `csc_lr_metadata`
--

CREATE TABLE IF NOT EXISTS `csc_lr_metadata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `meta_name` varchar(50) DEFAULT NULL,
  `meta_type` varchar(50) DEFAULT NULL,
  `meta_code` int(11) DEFAULT NULL,
  `meta_text` varchar(250) DEFAULT NULL,
  `meta_desc` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_time` varchar(50) DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=243 ;

--
-- Dumping data for table `csc_lr_metadata`
--

INSERT INTO `csc_lr_metadata` (`id`, `meta_name`, `meta_type`, `meta_code`, `meta_text`, `meta_desc`, `created_by`, `created_time`, `modified_by`, `modified_time`) VALUES
(1, 'CTO', 'metadata', 1, 'Request Theme', '', NULL, NULL, NULL, NULL),
(2, 'CTO', 'metadata', 2, 'Customer Segment', '', NULL, NULL, NULL, NULL),
(3, 'CTO', 'metadata', 3, 'Key Characteristics', '', NULL, NULL, NULL, NULL),
(4, 'CTO', 'metadata', 4, 'Primary Metric', '', NULL, NULL, NULL, NULL),
(5, 'CTO', 'metadata', 5, 'Experiment Current Snapshot', '', NULL, NULL, NULL, NULL),
(6, 'CTO', 'metadata', 6, 'Experiment Current Status', '', NULL, NULL, NULL, NULL),
(7, 'CTO', 'experiment_status', 1, 'Approved', '', NULL, NULL, NULL, NULL),
(8, 'CTO', 'experiment_status', 2, 'Rejected', '', NULL, NULL, NULL, NULL),
(9, 'CTO', 'experiment_status', 3, 'On Hold', '', NULL, NULL, NULL, NULL),
(10, 'CTO', 'experiment_status', 4, 'Initiate Later', '', NULL, NULL, NULL, NULL),
(11, 'CTO', 'customer_segment', 0, 'Customer Zero', '', NULL, NULL, NULL, NULL),
(12, 'CTO', 'request_theme', 1, 'Analytics', '', NULL, NULL, NULL, NULL),
(13, 'CTO', 'request_theme', 2, 'Cloud', '', NULL, NULL, NULL, NULL),
(14, 'CTO', 'request_theme', 3, 'Cyber-Security', '', NULL, NULL, NULL, NULL),
(15, 'CTO', 'request_theme', 4, 'DevOps', '', NULL, NULL, NULL, NULL),
(16, 'CTO', 'request_theme', 5, 'IoT', '', NULL, NULL, NULL, NULL),
(17, 'CTO', 'primary_metric', 1, 'Key Metric 1', '', NULL, NULL, NULL, NULL),
(18, 'CTO', 'primary_metric', 2, 'Key Metric 2', '', NULL, NULL, NULL, NULL),
(19, 'CTO', 'primary_metric', 3, 'Key Metric 3', '', NULL, NULL, NULL, NULL),
(20, 'CTO', 'key_characteristics', 1, 'Technologies for Rapid Acceleration', '', NULL, NULL, NULL, NULL),
(21, 'CTO', 'key_characteristics', 2, 'Be the first mover', '', NULL, NULL, NULL, NULL),
(22, 'CTO', 'key_characteristics', 3, 'Test and prove our capability in a particular space', '', NULL, NULL, NULL, NULL),
(23, 'CTO', 'key_characteristics', 4, 'Technology Assessments', '', NULL, NULL, NULL, NULL),
(24, 'CTO', 'key_characteristics', 5, 'Embracing opensource', '', NULL, NULL, NULL, NULL),
(25, 'CTO', 'key_characteristics', 6, 'Enabling POCs & Pilots', '', NULL, NULL, NULL, NULL),
(26, 'CTO', 'key_characteristics', 7, 'Enabling Customers (internal and external)', '', NULL, NULL, NULL, NULL),
(27, 'CTO', 'key_characteristics', 8, 'Cutting across incubators', '', NULL, NULL, NULL, NULL),
(28, 'CTO', 'key_characteristics', 9, 'Engaging niche partners', '', NULL, NULL, NULL, NULL),
(29, 'CTO', 'key_characteristics', 10, 'Partner products and tools assessments', '', NULL, NULL, NULL, NULL),
(30, 'CTO', 'key_characteristics', 11, 'Leveraging partner investments', '', NULL, NULL, NULL, NULL),
(31, 'CTO', 'key_characteristics', 12, 'Enabling Differentiation in portfolio', '', NULL, NULL, NULL, NULL),
(32, 'CTO', 'key_characteristics', 13, 'Enabling Industry Admiration', '', NULL, NULL, NULL, NULL),
(33, 'CTO', 'key_characteristics', 14, 'Engaging and Enabling Technology Community (int/ext)', '', NULL, NULL, NULL, NULL),
(52, 'CTO', 'user_type', 1, 'Administrator', '', NULL, NULL, NULL, NULL),
(53, 'CTO', 'user_type', 2, 'General User', '', NULL, NULL, NULL, NULL),
(54, 'CTO', 'user_role', 1, 'Requestor', '', NULL, NULL, NULL, NULL),
(55, 'CTO', 'user_role', 2, 'Challenger', '', NULL, NULL, NULL, NULL),
(56, 'CTO', 'user_role', 3, 'OCTO', '', NULL, NULL, NULL, NULL),
(57, 'CTO', 'user_role', 4, 'TDC', '', NULL, NULL, NULL, NULL),
(58, 'CTO', 'user_role', 5, 'IRB', '', NULL, NULL, NULL, NULL),
(59, 'CTO', 'user_role', 6, 'BU Sponsor', '', NULL, NULL, NULL, NULL),
(60, 'CTO', 'user_role', 7, 'Development Team', '', NULL, NULL, NULL, NULL),
(61, 'CTO', 'metadata', 7, 'Challenge Type', '', NULL, NULL, NULL, NULL),
(62, 'CTO', 'challenge_type', 1, 'Agenda Challenge', '', NULL, NULL, NULL, NULL),
(63, 'CTO', 'challenge_type', 2, 'Paper Challenge', '', NULL, NULL, NULL, NULL),
(64, 'CTO', 'challenge_type', 3, 'Prototype Challenge', '', NULL, NULL, NULL, NULL),
(65, 'CTO', 'challenge_type', 4, 'Ongoing Challenge', '', NULL, NULL, NULL, NULL),
(66, 'CTO', 'request_theme', 6, 'Machine Learning', '', NULL, NULL, NULL, NULL),
(67, 'CTO', 'request_theme', 7, 'Mobility', '', NULL, NULL, NULL, NULL),
(68, 'CTO', 'request_theme', 8, 'Modern Apps Paradigm', '', NULL, NULL, NULL, NULL),
(69, 'CTO', 'request_theme', 9, 'SDx', '', NULL, NULL, NULL, NULL),
(70, 'CTO', 'request_theme', 10, 'Social', '', NULL, NULL, NULL, NULL),
(128, 'CTO', 'metadata', 8, 'Key Metric', NULL, NULL, NULL, NULL, NULL),
(129, 'CTO', 'key_metric', 1, 'Performance Improvement', NULL, NULL, NULL, NULL, NULL),
(130, 'CTO', 'key_metric', 2, 'Security Compliance', NULL, NULL, NULL, NULL, NULL),
(131, 'CTO', 'key_metric', 3, 'Cost reduction', NULL, NULL, NULL, NULL, NULL),
(132, 'CTO', 'key_metric', 4, 'SLA Improvement', NULL, NULL, NULL, NULL, NULL),
(133, 'CTO', 'key_metric', 5, 'Reduced Downtime', NULL, NULL, NULL, NULL, NULL),
(134, 'CTO', 'request_theme', 11, 'Adaptive Sourcing', NULL, NULL, NULL, NULL, NULL),
(135, 'CTO', 'request_theme', 12, 'Healthcare Data Exchange', NULL, NULL, NULL, NULL, NULL),
(194, 'CTO', 'metadata', 9, 'Region', NULL, NULL, NULL, NULL, NULL),
(195, 'CTO', 'region', 1, 'AMEA', NULL, NULL, NULL, NULL, NULL),
(196, 'CTO', 'region', 2, 'Australia', NULL, NULL, NULL, NULL, NULL),
(197, 'CTO', 'region', 3, 'Brazil', NULL, NULL, NULL, NULL, NULL),
(198, 'CTO', 'region', 4, 'Central & Eastern Europe', NULL, NULL, NULL, NULL, NULL),
(199, 'CTO', 'region', 5, 'South & West Europe', NULL, NULL, NULL, NULL, NULL),
(200, 'CTO', 'region', 6, 'India', NULL, NULL, NULL, NULL, NULL),
(201, 'CTO', 'region', 7, 'Nordics', NULL, NULL, NULL, NULL, NULL),
(202, 'CTO', 'region', 8, 'North American Public Sector', NULL, NULL, NULL, NULL, NULL),
(203, 'CTO', 'experiment_snapshot', 0, 'Idea captured', 'Idea captured', NULL, NULL, NULL, NULL),
(204, 'CTO', 'experiment_snapshot', 1, 'Idea Winner notified', 'Idea Winner notified', NULL, NULL, NULL, NULL),
(205, 'CTO', 'experiment_snapshot', 51, 'Ongoing Idea Submitted', 'Ongoing Idea Submitted', NULL, NULL, NULL, NULL),
(206, 'CTO', 'experiment_snapshot', 61, 'Under Regional CTO/ TDC Review', 'Under Regional CTO/ TDC Review', NULL, NULL, NULL, NULL),
(207, 'CTO', 'experiment_snapshot', 71, 'Account/ BU Funded - No', 'Rejected by Regional CTO/ TDC', NULL, NULL, NULL, NULL),
(208, 'CTO', 'experiment_snapshot', 81, 'Idea Rejected by Regional CTO/ TDC', 'Rejected by Regional CTO/ TDC', NULL, NULL, NULL, NULL),
(209, 'CTO', 'experiment_snapshot', 91, 'Idea Approved by Regional CTO/ TDC', 'Idea can be Implemented', NULL, NULL, NULL, NULL),
(210, 'CTO', 'experiment_snapshot', 96, 'Voting Response Tied', 'Idea marked for Operations Override', NULL, NULL, NULL, NULL),
(211, 'CTO', 'experiment_snapshot', 97, 'Idea Approved - Override Option', 'Submitted to ATD', NULL, NULL, NULL, NULL),
(212, 'CTO', 'experiment_snapshot', 98, 'Idea Declined - Override Option', 'Rejected by Operations', NULL, NULL, NULL, NULL),
(213, 'CTO', 'experiment_snapshot', 100, 'Start Response', 'Idea Response submission in progress', NULL, NULL, NULL, NULL),
(214, 'CTO', 'experiment_snapshot', 111, 'Executive Summary Uploaded', 'Executive Summary Uploaded', NULL, NULL, NULL, NULL),
(215, 'CTO', 'experiment_snapshot', 121, 'Offering Description Uploaded', 'Offering Description Uploaded', NULL, NULL, NULL, NULL),
(216, 'CTO', 'experiment_snapshot', 131, 'Market Assessment Uploaded', 'Market Assessment Uploaded', NULL, NULL, NULL, NULL),
(217, 'CTO', 'experiment_snapshot', 141, 'Financial Projections Uploaded', 'Financial Projections Uploaded', NULL, NULL, NULL, NULL),
(218, 'CTO', 'experiment_snapshot', 151, 'IRB Offering Business Plan Uploaded', 'IRB Offering Business Plan Uploaded', NULL, NULL, NULL, NULL),
(219, 'CTO', 'experiment_snapshot', 161, 'IRB Business Plan Financial Uploaded', 'IRB Business Plan Financial Uploaded', NULL, NULL, NULL, NULL),
(220, 'CTO', 'experiment_snapshot', 171, 'Submitted for IRB Review', 'Submitted for IRB Review', NULL, NULL, NULL, NULL),
(221, 'CTO', 'experiment_snapshot', 200, 'Under IRB Review', 'Under IRB Review', NULL, NULL, NULL, NULL),
(222, 'CTO', 'experiment_snapshot', 211, 'Submission Details incomplete', 'Idea Response submission in progress', NULL, NULL, NULL, NULL),
(223, 'CTO', 'experiment_snapshot', 221, 'Submission being reviewed', 'Submission being reviewed', NULL, NULL, NULL, NULL),
(224, 'CTO', 'experiment_snapshot', 231, 'BU Funded - Yes', 'Idea can be Implemented', NULL, NULL, NULL, NULL),
(225, 'CTO', 'experiment_snapshot', 241, 'Under IRB Review', 'IRB Decision - Pending', NULL, NULL, NULL, NULL),
(226, 'CTO', 'experiment_snapshot', 251, 'IRB Decision Pending ?', 'TS: (Remains in this stage till the total vote count is tallied)', NULL, NULL, NULL, NULL),
(227, 'CTO', 'experiment_snapshot', 261, 'Rejected by IRB', 'Rejected by IRB', NULL, NULL, NULL, NULL),
(228, 'CTO', 'experiment_snapshot', 271, 'On Hold by IRB', 'On Hold by IRB', NULL, NULL, NULL, NULL),
(229, 'CTO', 'experiment_snapshot', 281, 'Approved by IRB', 'Approved by IRB', NULL, NULL, NULL, NULL),
(230, 'CTO', 'experiment_snapshot', 300, 'With ATD', 'Submitted to ATD', NULL, NULL, NULL, NULL),
(231, 'CTO', 'experiment_snapshot', 311, 'Project Initiated', 'Project Initiated', NULL, NULL, NULL, NULL),
(232, 'CTO', 'experiment_snapshot', 321, 'Attach Jira ATD Link', 'Attach Jira ATD Link', NULL, NULL, NULL, NULL),
(233, 'CTO', 'experiment_snapshot', 331, 'Experiment in Progress', 'POC Development in Progress', NULL, NULL, NULL, NULL),
(234, 'CTO', 'experiment_snapshot', 341, 'Experiment Complete', 'TS:Experiment Complete', NULL, NULL, NULL, NULL),
(235, 'CTO', 'experiment_snapshot', 351, 'POC Development Complete', 'POC Development Completed', NULL, NULL, NULL, NULL),
(236, 'CTO', 'experiment_snapshot', 400, 'POC Ready for Consumption', 'POC Ready for Consumption', NULL, NULL, NULL, NULL),
(237, 'CTO', 'experiment_snapshot', 800, 'Idea Rejected', 'Idea Rejected', NULL, NULL, NULL, NULL),
(238, 'CTO', 'request_theme', 13, 'Artificial Neural Networks', NULL, NULL, NULL, NULL, NULL),
(239, 'CTO', 'request_theme', 14, 'Augmented Reality', NULL, NULL, NULL, NULL, NULL),
(240, 'CTO', 'experiment_snapshot', 501, 'Idea captured', 'Idea captured', NULL, NULL, NULL, NULL),
(241, 'CTO', 'experiment_snapshot', 511, 'Idea Winner notified', 'Idea Winner notified', NULL, NULL, NULL, NULL),
(242, 'CTO', 'experiment_snapshot', 521, 'Idea Rejected', 'Idea Rejected', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dep_stake_risk_miti`
--

CREATE TABLE IF NOT EXISTS `dep_stake_risk_miti` (
  `dep_business` text NOT NULL,
  `dep_partners` text NOT NULL,
  `dep_other_stakeholders` text NOT NULL,
  `risk_strategic` text NOT NULL,
  `risk_technical` text NOT NULL,
  `risk_capabilities` text NOT NULL,
  `risk_execution` text NOT NULL,
  `mitigation_strategic` text NOT NULL,
  `mitigation_technical` text NOT NULL,
  `mitigation_capabilities` text NOT NULL,
  `mitigation_execution` text NOT NULL,
  `dep_stake_risk_miti_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(14) NOT NULL,
  PRIMARY KEY (`req_no`),
  UNIQUE KEY `dep_stake_risk_miti_id` (`dep_stake_risk_miti_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `emp_master`
--

CREATE TABLE IF NOT EXISTS `emp_master` (
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `legacy` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `hiring_status` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `base_loc` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `vertical` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `new_ser` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `dept` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `project_id` int(1) NOT NULL DEFAULT '0',
  `short_id` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mgr_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mgr_sid` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `bu_head_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `bu_head_sid` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `grade` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `category` int(2) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `account` int(2) NOT NULL DEFAULT '0',
  `role` int(2) NOT NULL DEFAULT '0',
  `QID` tinyint(3) NOT NULL,
  `secanswer` varchar(25) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`short_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `emp_master`
--

INSERT INTO `emp_master` (`name`, `legacy`, `hiring_status`, `base_loc`, `vertical`, `new_ser`, `dept`, `project_id`, `short_id`, `mgr_name`, `mgr_sid`, `bu_head_name`, `bu_head_sid`, `grade`, `category`, `password`, `account`, `role`, `QID`, `secanswer`) VALUES
('Kalpik Nigam', '', '', '', '', '', '', 0, 'knigam@csc.com', 'Maninder Singh', 'murmaljitsin@csc.com', '', '', '', 0, '40be4e59b9a2a2b5dffb918c0e86b3d7', 15, 1, 0, ''),
('Shyam Motiyani', '', '', '', '', '', '', 0, 'smotiyani@csc.com', 'svema', 'svema@csc.com', '', '', '', 16, 'bc03eb056588323bf087dd9df946f559', 16, 7, 1, 'Shyam'),
('Sankar', '', '', '', '', '', '', 0, 'svema@csc.com', 'svema', 'svema@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 3, 0, ''),
('Rajakumar', '', '', '', '', '', '', 0, 'rnadar@csc.com', 'gswaminatha2', 'gswaminatha2@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 3, 0, ''),
('baskar', '', '', '', '', '', '', 0, 'bvenugopala2@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 3, 0, ''),
('D Subbu', '', '', '', '', '', '', 0, 'dsubbu@csc.com', 'ganesh', 'gswaminatha2@csc.com', '', '', '', 21, '556261e6ac1c685fa4ac502447f8b739', 16, 2, 1, 'Subbu'),
('Venkata', '', '', '', '', '', '', 0, 'veedara@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 0, ''),
('Vittal', '', '', '', '', '', '', 0, 'vkrishnasamy@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 8, 0, ''),
('Kirti', '', '', '', '', '', '', 0, 'kjain7@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 0, ''),
('Jaishankar', '', '', '', '', '', '', 0, 'jjanarthanan@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 3, 1, 'Jai'),
('Indranil', '', '', '', '', '', '', 0, 'isinha2@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 0, ''),
('Krishnasamy Boovaragan', '', '', '', '', '', '', 0, 'kboovaragan@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '64659883b9106cd2254dd92216c16b6f', 16, 5, 1, 'Krishna'),
('Shivakumar Anandan', '', '', '', '', '', '', 0, 'sanandan5@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, 'Shiva'),
('Savita Mehta', '', '', '', '', '', '', 0, 'smehta35@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 8, 1, 'Savita'),
('IdeaGen Admin', '', '', '', '', '', '', 0, 'ideagenadmin@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 1, 0, ''),
('Vairamani Chockalingam', '', '', '', '', '', '', 0, 'vchockalinga@csc.com', 'Krishnasamy B', 'kboovaragan@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 5, 1, 'Vairamani'),
('Bindu', '', '', '', '', '', '', 0, 'bnambiar@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Sudev', '', '', '', '', '', '', 0, 'skurur@csc.com', 'Indranil', 'isinha2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Tom Fusting', '', '', '', '', '', '', 0, 'tfusting@csc.com', 'Brian Fitzpatrick', 'bfitzpatric3@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, 'Tom'),
('Niels Lagerweij', '', '', '', '', '', '', 0, 'nlagerweij@csc.com', 'Max Hemingway', 'mhemingway@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, 'Niels'),
('Regional CTO', '', '', '', '', '', '', 0, 'regionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 11, 1, ''),
('Operations', '', '', '', '', '', '', 0, 'operations@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 2, 1, ''),
('User', '', '', '', '', '', '', 0, 'user@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('IRB One', '', '', '', '', '', '', 0, 'irbone@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 9, 1, ''),
('IRB Two', '', '', '', '', '', '', 0, 'irbtwo@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 9, 1, ''),
('TDC', '', '', '', '', '', '', 0, 'tdc@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 7, 1, ''),
('ATD', '', '', '', '', '', '', 0, 'atd@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 5, 1, ''),
('IRB Three', '', '', '', '', '', '', 0, 'irbthree@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 9, 1, ''),
('AMEA Regional CTO', '', '', '', '', '', '', 0, 'amearegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 11, 1, ''),
('Australia Regional CTO', '', '', '', '', '', '', 0, 'australiaregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 12, 1, ''),
('Brazil Regional CTO', '', '', '', '', '', '', 0, 'brazilregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 13, 1, ''),
('Central & Eastern Europe Regional CTO', '', '', '', '', '', '', 0, 'centraleasterneuroperegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 14, 1, ''),
('South & West Europe Regional CTO', '', '', '', '', '', '', 0, 'southwesteuroperegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 15, 1, ''),
('India Regional CTO', '', '', '', '', '', '', 0, 'indiaregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 16, 1, ''),
('Nordics Regional CTO', '', '', '', '', '', '', 0, 'nordicsregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 17, 1, ''),
('North American Public Sector Regional CTO', '', '', '', '', '', '', 0, 'northamericanpublicsectorregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 18, 1, ''),
('Srihareendra Bodduluri', '', '', '', '', '', '', 0, 'sbodduluri2@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Durga Prasad', '', '', '', '', '', '', 0, 'drasamsetti@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Ankita Barbi', '', '', '', '', '', '', 0, 'abarbi@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Sukanya Kuppuswamy', '', '', '', '', '', '', 0, 'skuppuswamy4@csc.com', 'Baskar', 'bvenugopala2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Prathibha V', '', '', '', '', '', '', 0, 'pvenkatara21@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Arpit Jain', '', '', '', '', '', '', 0, 'ajain275@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Sanjay Kumar S', '', '', '', '', '', '', 0, 'sswarnkar4@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Sreehari Govind', '', '', '', '', '', '', 0, 'sgovind4@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Paniraj Ananthasubramanya', '', '', '', '', '', '', 0, 'pananthasubr@csc.com', 'Ganesh', 'gswaminatha2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 4, 1, ''),
('Ingenuity Worx', '', '', '', '', '', '', 0, 'ingenuityworx@csc.com', 'Ingenuity Worx', 'ingenuityworx@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 19, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_trans`
--

CREATE TABLE IF NOT EXISTS `emp_trans` (
  `trans_num` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  `contributor_name` varchar(50) NOT NULL,
  `contributor_email` varchar(50) NOT NULL,
  `comments` varchar(100) NOT NULL,
  PRIMARY KEY (`trans_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `emp_trans`
--

INSERT INTO `emp_trans` (`trans_num`, `req_no`, `contributor_name`, `contributor_email`, `comments`) VALUES
(74, 121, 'Tom Fusting', 'tfusting@csc.com', ''),
(75, 122, 'Niels Lagerweij', 'nlagerweij@csc.com', ''),
(76, 122, 'Hans van der Graaf', 'hvandergraaf@csc.com', ''),
(77, 122, 'Andre van Cleeff', 'acleeff@csc.com', ''),
(78, 122, 'Frank van Grinsven', 'fvangrinsven@csc.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `executive_summary`
--

CREATE TABLE IF NOT EXISTS `executive_summary` (
  `business_area` varchar(200) NOT NULL,
  `offering` varchar(200) NOT NULL,
  `bu_sponsor` varchar(100) NOT NULL,
  `manager` varchar(100) NOT NULL,
  `offering_desc_brief` text NOT NULL,
  `market_assessment` text NOT NULL,
  `key_dep` text NOT NULL,
  `key_risk_miti` text NOT NULL,
  `financial_projections` text NOT NULL,
  `exec_summary_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  PRIMARY KEY (`req_no`),
  UNIQUE KEY `exec_summary_id` (`exec_summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `financial_proj`
--

CREATE TABLE IF NOT EXISTS `financial_proj` (
  `quarter` int(2) NOT NULL,
  `plan_quarter` int(2) NOT NULL,
  `r&d_amortized` int(11) NOT NULL,
  `capex` int(11) NOT NULL,
  `other_investments` int(11) NOT NULL,
  `captial_investments` int(11) NOT NULL,
  `rec_revenue` int(11) NOT NULL,
  `non_rec_revenue` int(11) NOT NULL,
  `revenue` int(11) NOT NULL,
  `dir_cost` int(11) NOT NULL,
  `indir_cost` int(11) NOT NULL,
  `depr` int(11) NOT NULL,
  `other_invest_not_capital` int(11) NOT NULL,
  `operating_cost` int(11) NOT NULL,
  `operating_income` int(11) NOT NULL,
  `other_investments_neg` int(11) NOT NULL,
  `operating_cashflow` int(11) NOT NULL,
  `net_discounted_cashflow` int(11) NOT NULL,
  `cum_present_value` int(11) NOT NULL,
  `total_csc_invest` int(11) NOT NULL,
  `partner_client_coinvest` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `finan_proj_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  PRIMARY KEY (`quarter`,`req_no`),
  UNIQUE KEY `finan_proj_id` (`finan_proj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `market_strategy`
--

CREATE TABLE IF NOT EXISTS `market_strategy` (
  `geography` text NOT NULL,
  `industry` text NOT NULL,
  `competitors` text NOT NULL,
  `customers` text NOT NULL,
  `total_add_market` text NOT NULL,
  `expected_market_opportunity` text NOT NULL,
  `estimated_market_growth` text NOT NULL,
  `window_of_opportunity` text NOT NULL,
  `revenue_board` text NOT NULL,
  `sales_plan` text NOT NULL,
  `partner_leverage` text NOT NULL,
  `cosell_other_part_csc` text NOT NULL,
  `market_strategy_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  PRIMARY KEY (`req_no`),
  UNIQUE KEY `market_strategy_id` (`market_strategy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `off_description`
--

CREATE TABLE IF NOT EXISTS `off_description` (
  `fundamental_problems` text NOT NULL,
  `barrier_limit_solutions` text NOT NULL,
  `solution_do_customer_consider` text NOT NULL,
  `opportunities_exists_for_innovative_solutions` text NOT NULL,
  `target_customers` text NOT NULL,
  `current_alternatives` text NOT NULL,
  `new_improved_service_offering` text NOT NULL,
  `key_problem_solving_capabilities` text NOT NULL,
  `offering_alternative` text NOT NULL,
  `csc_strategy_alignment` text NOT NULL,
  `communication_channel_with_customer` text NOT NULL,
  `key_activities` text NOT NULL,
  `key_resources` text NOT NULL,
  `key_partners` text NOT NULL,
  `off_desc_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(20) NOT NULL,
  PRIMARY KEY (`req_no`),
  UNIQUE KEY `off_desc_id` (`off_desc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `project_master`
--

CREATE TABLE IF NOT EXISTS `project_master` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL DEFAULT '0',
  `name` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `project_master`
--

INSERT INTO `project_master` (`project_id`, `account`, `name`) VALUES
(11, 12, 'Generic - All'),
(16, 14, 'Production Support'),
(17, 16, 'ATD');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE IF NOT EXISTS `role_master` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `region_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`id`, `role_name`, `region_id`) VALUES
(1, 'admin', 0),
(2, 'OPS reviewer', 0),
(3, 'Challenger', 0),
(4, 'user', 0),
(5, 'ATD', 0),
(7, 'TDC', 0),
(8, 'BU Sponsor', 0),
(9, 'IRB', 0),
(11, 'AMEA Regional CTO', 1),
(12, 'Australia Regional CTO', 2),
(13, 'Brazil Regional CTO', 3),
(14, 'Central & Eastern Europe Regional CTO', 4),
(15, 'South & West Europe Regional CTO', 5),
(16, 'India Regional CTO', 6),
(17, 'Nordics Regional CTO', 7),
(18, 'North American Public Sector Regional CTO', 8),
(19, 'Ingenuity Worx', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_trans`
--

CREATE TABLE IF NOT EXISTS `role_trans` (
  `role_trans_num` int(11) NOT NULL AUTO_INCREMENT,
  `emp_short_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(2) NOT NULL,
  `role_id` int(2) NOT NULL,
  PRIMARY KEY (`role_trans_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Transaction table to capture multiple role for the employee' AUTO_INCREMENT=282 ;

--
-- Dumping data for table `role_trans`
--

INSERT INTO `role_trans` (`role_trans_num`, `emp_short_id`, `name`, `category_id`, `role_id`) VALUES
(131, 'knigam@csc.com', 'Kalpik Nigam', 0, 1),
(178, 'smotiyani@csc.com', 'Shyam Motiyani', 16, 7),
(179, 'svema@csc.com', 'Sankar', 16, 3),
(180, 'rnadar@csc.com', 'Rajakumar', 16, 3),
(181, 'bvenugopala2@csc.com', 'baskar', 16, 3),
(182, 'dsubbu@csc.com', 'D Subbu', 16, 2),
(183, 'veedara@csc.com', 'Venkata', 16, 4),
(184, 'vkrishnasamy@csc.com', 'Vittal', 16, 8),
(185, 'kjain7@csc.com', 'Kirti', 16, 4),
(186, 'jjanarthanan@csc.com', 'Jaishankar', 16, 3),
(187, 'isinha2@csc.com', 'Indranil', 16, 4),
(188, 'kboovaragan@csc.com', 'Krishnasamy Boovaragan', 16, 5),
(189, 'sanandan5@csc.com', 'Shivakumar Anandan', 16, 4),
(190, 'smehta35@csc.com', 'Savita Mehta', 16, 8),
(191, 'ideagenadmin@csc.com', 'IdeaGen Admin', 16, 1),
(192, 'vchockalinga@csc.com', 'Vairamani Chockalingam', 16, 5),
(193, 'bnambiar@csc.com', 'Bindu', 16, 4),
(194, 'skurur@csc.com', 'Sudev', 16, 4),
(195, 'tfusting@csc.com', 'Tom Fusting', 16, 4),
(196, 'nlagerweij@csc.com', 'Niels Lagerweij', 16, 4),
(197, 'regionalcto@csc.com', 'Regional CTO', 16, 7),
(198, 'operations@csc.com', 'Operations', 16, 2),
(199, 'user@csc.com', 'User', 16, 4),
(200, 'irbone@csc.com', 'IRB One', 16, 9),
(201, 'irbtwo@csc.com', 'IRB Two', 16, 9),
(202, 'tdc@csc.com', 'TDC', 16, 7),
(203, 'atd@csc.com', 'ATD', 16, 5),
(204, 'irbthree@csc.com', 'IRB Three', 16, 9),
(256, 'kboovaragan@csc.com', 'Krishnasamy Boovaragan', 16, 4),
(264, 'amearegionalcto@csc.com', 'AMEA Regional CTO', 16, 11),
(265, 'australiaregionalcto@csc.com', 'Australia Regional CTO', 16, 12),
(266, 'brazilregionalcto@csc.com', 'Brazil Regional CTO', 16, 13),
(267, 'centraleasterneuroperegionalcto@csc.com', 'Central & Eastern Europe Regional CTO', 16, 14),
(268, 'southwesteuroperegionalcto@csc.com', 'South & West Europe Regional CTO', 16, 15),
(269, 'indiaregionalcto@csc.com', 'India Regional CTO', 16, 16),
(270, 'nordicsregionalcto@csc.com', 'Nordics Regional CTO', 16, 17),
(271, 'northamericanpublicsectorregionalcto@csc.com', 'North American Public Sector Regional CTO', 16, 18),
(272, 'sbodduluri2@csc.com', 'Srihareendra Bodduluri', 16, 4),
(273, 'drasamsetti@csc.com', 'Durga Prasad', 16, 4),
(274, 'abarbi@csc.com', 'Ankita Barbi', 16, 4),
(275, 'skuppuswamy4@csc.com', 'Sukanya Kuppuswamy', 16, 4),
(276, 'pvenkatara21@csc.com', 'Prathibha V', 16, 4),
(277, 'ajain275@csc.com', 'Arpit Jain', 16, 4),
(278, 'sswarnkar4@csc.com', 'Sanjay Kumar S', 16, 4),
(279, 'sgovind4@csc.com', 'Sreehari Govind', 16, 4),
(280, 'pananthasubr@csc.com', 'Paniraj Ananthasubramanya', 16, 4),
(281, 'ingenuityworx@csc.com', 'Ingenuity Worx', 16, 19);

-- --------------------------------------------------------

--
-- Table structure for table `secquestion`
--

CREATE TABLE IF NOT EXISTS `secquestion` (
  `QID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Question Identifier',
  `Question` varchar(75) NOT NULL COMMENT 'Secret Question',
  PRIMARY KEY (`QID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `secquestion`
--

INSERT INTO `secquestion` (`QID`, `Question`) VALUES
(1, 'My Nick Name?'),
(2, 'My Date of Birth(MM/DD/YYYY)?'),
(3, 'My Favorite Teachers Name?'),
(4, 'My Mother Maiden Name?'),
(5, 'My Favourite place?');

-- --------------------------------------------------------

--
-- Table structure for table `temp_user`
--

CREATE TABLE IF NOT EXISTS `temp_user` (
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `legacy` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `hiring_status` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `base_loc` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `vertical` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `new_ser` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `dept` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `project_id` int(1) NOT NULL DEFAULT '0',
  `short_id` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mgr_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `mgr_sid` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `bu_head_name` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `bu_head_sid` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `grade` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `category` int(2) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `account` int(2) NOT NULL DEFAULT '0',
  `role` int(2) NOT NULL DEFAULT '0',
  `approving_admin` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `status` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `comments` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `QID` tinyint(3) NOT NULL,
  `secanswer` varchar(25) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`short_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `temp_user`
--

INSERT INTO `temp_user` (`name`, `legacy`, `hiring_status`, `base_loc`, `vertical`, `new_ser`, `dept`, `project_id`, `short_id`, `mgr_name`, `mgr_sid`, `bu_head_name`, `bu_head_sid`, `grade`, `category`, `password`, `account`, `role`, `approving_admin`, `status`, `comments`, `QID`, `secanswer`) VALUES
('Shyam Motiyani', '', '', '', '', '', '', 0, 'smotiyani@csc.com', 'svema', 'svema@csc.com', '', '', '', 16, 'bc03eb056588323bf087dd9df946f559', 16, 0, '', 'approved', '', 0, ''),
('Sankar', '', '', '', '', '', '', 0, 'svema@csc.com', 'svema', 'svema@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Rajakumar', '', '', '', '', '', '', 0, 'rnadar@csc.com', 'gswaminatha2', 'gswaminatha2@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('baskar', '', '', '', '', '', '', 0, 'bvenugopala2@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Devarayan', '', '', '', '', '', '', 0, 'dsubbu@csc.com', 'ganesh', 'gswaminatha2@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Venkata', '', '', '', '', '', '', 0, 'veedara@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Vittal', '', '', '', '', '', '', 0, 'vkrishnasamy@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Kirti', '', '', '', '', '', '', 0, 'kjain7@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Jaishankar', '', '', '', '', '', '', 0, 'jjanarthanan@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Indranil', '', '', '', '', '', '', 0, 'isinha2@csc.com', 'ganesh', 'ganesh@csc.com', '', '', '', 16, '201f00b5ca5d65a1c118e5e32431514c', 16, 0, 'smotiyani@csc.com', 'approved', '', 0, ''),
('Krishnasamy Boovaragan', '', '', '', '', '', '', 0, 'kboovaragan@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'smotiyani@csc.com', 'approved', 'Need to check how to make as account admin', 0, ''),
('Shivakumar Anandan', '', '', '', '', '', '', 0, 'sanandan5@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'kboovaragan@csc.com', 'approved', 'Approved', 0, ''),
('Savita Mehta', '', '', '', '', '', '', 0, 'smehta35@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'kboovaragan@csc.com', 'approved', 'Have to make her as TDC', 0, ''),
('IdeaGen Admin', '', '', '', '', '', '', 0, 'ideagenadmin@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'smehta35@csc.com', 'approved', 'Need to make this user as Admin', 0, ''),
('Vairamani Chockalingam', '', '', '', '', '', '', 0, 'vchockalinga@csc.com', 'Krishnasamy B', 'kboovaragan@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Need to make Him as ATD Role', 0, ''),
('Bindu', '', '', '', '', '', '', 0, 'bnambiar@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved, role can be changed, if needed at later point.', 1, 'Bindu'),
('Sudev', '', '', '', '', '', '', 0, 'skurur@csc.com', 'Indranil', 'isinha2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved, role can be changed, if needed at later point.', 1, 'Sudev'),
('Tom Fusting', '', '', '', '', '', '', 0, 'tfusting@csc.com', 'Brian Fitzpatrick', 'bfitzpatric3@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Winning Idea User', 1, 'Tom'),
('Niels Lagerweij', '', '', '', '', '', '', 0, 'nlagerweij@csc.com', 'Max Hemingway', 'mhemingway@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Winning Idea User', 1, 'Niels'),
('Regional CTO', '', '', '', '', '', '', 0, 'regionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Has to be moved to Regional CTO Role', 1, 'RCTO'),
('Operations', '', '', '', '', '', '', 0, 'operations@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'ops'),
('User', '', '', '', '', '', '', 0, 'user@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'user'),
('IRB One', '', '', '', '', '', '', 0, 'irbone@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'irb'),
('IRB Two', '', '', '', '', '', '', 0, 'irbtwo@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'irb'),
('IRB Three', '', '', '', '', '', '', 0, 'irbthree@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'irb'),
('TDC', '', '', '', '', '', '', 0, 'tdc@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'tdc'),
('ATD', '', '', '', '', '', '', 0, 'atd@csc.com', 'D Subbu', 'dsubbu@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Approved', 1, 'atd'),
('AMEA Regional CTO', '', '', '', '', '', '', 0, 'amearegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'AMEA CTO', 1, 'amea'),
('Australia Regional CTO', '', '', '', '', '', '', 0, 'australiaregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'australia'),
('Brazil Regional CTO', '', '', '', '', '', '', 0, 'brazilregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'brazil'),
('Central & Eastern Europe Regional CTO', '', '', '', '', '', '', 0, 'centraleasterneuroperegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'cee'),
('South & West Europe Regional CTO', '', '', '', '', '', '', 0, 'southwesteuroperegionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'swe'),
('India Regional CTO', '', '', '', '', '', '', 0, 'indiaregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'india'),
('Nordics Regional CTO', '', '', '', '', '', '', 0, 'nordicsregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'nordics'),
('North American Public Sector Regional CTO', '', '', '', '', '', '', 0, 'northamericanpublicsectorregionalcto@csc.com', 'Global CTO', 'globalcto@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'Regional CTO login id', 1, 'naps'),
('Srihareendra Bodduluri', '', '', '', '', '', '', 0, 'sbodduluri2@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'sri'),
('Durga Prasad', '', '', '', '', '', '', 0, 'drasamsetti@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Durga'),
('Ankita Barbi', '', '', '', '', '', '', 0, 'abarbi@csc.com', 'Sankar Vema', 'svema@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Ankita'),
('Sukanya Kuppuswamy', '', '', '', '', '', '', 0, 'skuppuswamy4@csc.com', 'Baskar', 'bvenugopala2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Sukanya'),
('Prathibha V', '', '', '', '', '', '', 0, 'pvenkatara21@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Prathibha'),
('Arpit Jain', '', '', '', '', '', '', 0, 'ajain275@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Arpit'),
('Sanjay Kumar S', '', '', '', '', '', '', 0, 'sswarnkar4@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Sanjay'),
('Sreehari Govind', '', '', '', '', '', '', 0, 'sgovind4@csc.com', 'Venkata', 'veedara@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Sreehari'),
('Paniraj Ananthasubramanya', '', '', '', '', '', '', 0, 'pananthasubr@csc.com', 'Ganesh', 'gswaminatha2@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'modify later, if needed additional roles', 1, 'Pani'),
('Ingenuity Worx', '', '', '', '', '', '', 0, 'ingenuityworx@csc.com', 'Ingenuity Worx', 'ingenuityworx@csc.com', '', '', '', 16, '556261e6ac1c685fa4ac502447f8b739', 16, 0, 'ideagenadmin@csc.com', 'approved', 'For Ingenuity worx', 1, 'iw');

-- --------------------------------------------------------

--
-- Table structure for table `timelines_keymile`
--

CREATE TABLE IF NOT EXISTS `timelines_keymile` (
  `month` int(2) NOT NULL,
  `key_milestones` text NOT NULL,
  `key_meetings` text NOT NULL,
  `irb_review` text NOT NULL,
  `concept_act-1` text NOT NULL,
  `concept_act-2` text NOT NULL,
  `concept_act-3` text NOT NULL,
  `concept_act-4` text NOT NULL,
  `concept_remarks` text NOT NULL,
  `incubate_act-1` text NOT NULL,
  `incubate_act-2` text NOT NULL,
  `incubate_act-3` text NOT NULL,
  `incubate_act-4` text NOT NULL,
  `incubate_remarks` text NOT NULL,
  `launch_scale_act-1` text NOT NULL,
  `launch_scale_act-2` text NOT NULL,
  `launch_scale_act-3` text NOT NULL,
  `launch_scale_act-4` text NOT NULL,
  `launch_remarks` text NOT NULL,
  `time_mile_id` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  PRIMARY KEY (`month`,`req_no`),
  UNIQUE KEY `time_mile_id` (`time_mile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trans_master`
--

CREATE TABLE IF NOT EXISTS `trans_master` (
  `trans_num` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` bigint(15) NOT NULL,
  `reviewer_type` int(2) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `action_taken` text NOT NULL,
  `voting_option` text NOT NULL,
  `trans_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`trans_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Transaction Table used for Approval Workflow of this application' AUTO_INCREMENT=127 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
