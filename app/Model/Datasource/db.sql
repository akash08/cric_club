--
-- MySQL 5.0.45
-- Tue, 09 Oct 2012 12:35:57 +0000
--

CREATE TABLE `cc_action` (
   `action_id` int(11) not null auto_increment,
   `action_name` text not null,
   `action_point` smallint(6),
   PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_action` is empty]

CREATE TABLE `cc_action_match` (
   `match_id` int(11) not null default '0',
   `player_id` int(11) not null default '0',
   `action_id` int(11) not null default '0',
   `minute_action` smallint(6) not null default '0',
   `comment_action` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_action_match` is empty]

CREATE TABLE `cc_club` (
   `club_id` int(11) not null auto_increment,
   `field_id` int(11) not null default '0',
   `club_name` text not null,
   `club_abbreviation` varchar(10),
   `club_logo` text,
   `club_address` text,
   `club_color` text,
   `club_color_alternative` text,
   `club_telephone` text,
   `club_fax` text,
   `club_email` text,
   `club_url` text,
   `club_creation_year` int(4),
   `club_comment` text,
   PRIMARY KEY (`club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_club` is empty]

CREATE TABLE `cc_competition` (
   `competition_id` int(11) not null auto_increment,
   `season_id` int(11) not null default '0',
   `competition_name` text not null,
   PRIMARY KEY (`competition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_competition` is empty]

CREATE TABLE `cc_country` (
   `country_id` int(11) not null auto_increment,
   `country_name` text not null,
   PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=6;

INSERT INTO `cc_country` (`country_id`, `country_name`) VALUES 
('1', 'France'),
('2', 'Germany'),
('3', 'England'),
('4', 'Spain'),
('5', 'Italy');

CREATE TABLE `cc_field` (
   `field_id` int(11) not null auto_increment,
   `field_name` text not null,
   `field_address` text,
   `field_post_code` text,
   `field_city` text,
   `field_number_seat` int(11),
   `field_size` tinytext,
   `field_photo` tinytext,
   PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_field` is empty]

CREATE TABLE `cc_field_state` (
   `field_state_id` int(11) not null auto_increment,
   `field_state_name` text not null,
   PRIMARY KEY (`field_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_field_state` is empty]

CREATE TABLE `cc_forum` (
   `forum_id` int(11) not null auto_increment,
   `member_id` int(11) not null default '0',
   `forum_idurl` text not null,
   `forum_name` text not null,
   `forum_description` text,
   `forum_order` tinyint(4) not null,
   `forum_nb_topic` int(11) not null default '0',
   `forum_nb_message` int(11) not null default '0',
   `forum_status` int(11),
   `forum_date_add` datetime not null default '0000-00-00 00:00:00',
   PRIMARY KEY (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_forum` is empty]

CREATE TABLE `cc_group` (
   `group_id` int(11) not null auto_increment,
   `group_name` text not null,
   `group_description` text,
   PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

INSERT INTO `cc_group` (`group_id`, `group_name`, `group_description`) VALUES 
('1', 'Visitors', ''),
('2', 'Members', ''),
('3', 'Admin', ''),
('4', 'Super admin', '');

CREATE TABLE `cc_group_right` (
   `group_id` int(11) not null default '0',
   `right_id` varchar(30) not null,
   `value` tinyint(1) not null default '0',
   PRIMARY KEY (`group_id`,`right_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cc_group_right` (`group_id`, `right_id`, `value`) VALUES 
('1', 'action_list', '0'),
('1', 'add_club', '0'),
('1', 'add_competition', '0'),
('1', 'add_field', '0'),
('1', 'add_file', '0'),
('1', 'add_folder', '0'),
('1', 'add_forum', '0'),
('1', 'add_information', '0'),
('1', 'add_match', '0'),
('1', 'add_member', '0'),
('1', 'add_news', '0'),
('1', 'add_team', '0'),
('1', 'admin', '0'),
('1', 'club_list', '1'),
('1', 'competition_list', '1'),
('1', 'configuration', '0'),
('1', 'country_list', '0'),
('1', 'delete_club', '0'),
('1', 'delete_competition', '0'),
('1', 'delete_field', '0'),
('1', 'delete_file', '0'),
('1', 'delete_forum', '0'),
('1', 'delete_information', '0'),
('1', 'delete_match', '0'),
('1', 'delete_member', '0'),
('1', 'delete_message', '0'),
('1', 'delete_news', '0'),
('1', 'delete_team', '0'),
('1', 'edit_club', '0'),
('1', 'edit_competition', '0'),
('1', 'edit_field', '0'),
('1', 'edit_forum', '0'),
('1', 'edit_information', '0'),
('1', 'edit_match', '0'),
('1', 'edit_member', '0'),
('1', 'edit_message', '0'),
('1', 'edit_news', '0'),
('1', 'edit_team', '0'),
('1', 'field_list', '1'),
('1', 'field_state_list', '0'),
('1', 'forgot_pass', '1'),
('1', 'forum_list', '1'),
('1', 'group_list', '0'),
('1', 'home', '0'),
('1', 'home_member', '0'),
('1', 'import_club', '0'),
('1', 'import_match', '0'),
('1', 'import_member', '0'),
('1', 'information_list', '1'),
('1', 'job_list', '0'),
('1', 'level_list', '0'),
('1', 'match_list', '1'),
('1', 'member_job_list', '1'),
('1', 'member_list', '1'),
('1', 'menu_management', '0'),
('1', 'news_list', '1'),
('1', 'period_list', '0'),
('1', 'plugin_management', '0'),
('1', 'position_list', '0'),
('1', 'profile', '0'),
('1', 'referee_list', '1'),
('1', 'registration', '1'),
('1', 'registration_list', '0'),
('1', 'registration_validation', '0'),
('1', 'right_management', '0'),
('1', 'season_list', '0'),
('1', 'sex_list', '0'),
('1', 'standings', '1'),
('1', 'stats_list', '0'),
('1', 'stats_player', '1'),
('1', 'stats_player_list', '0'),
('1', 'team_coach_list', '1'),
('1', 'team_list', '1'),
('1', 'team_name_list', '0'),
('1', 'team_player_list', '1'),
('1', 'view_club', '1'),
('1', 'view_competition', '1'),
('1', 'view_field', '1'),
('1', 'view_information', '1'),
('1', 'view_match', '1'),
('1', 'view_member', '1'),
('1', 'view_news', '1'),
('1', 'view_team', '1'),
('1', 'weather_list', '0'),
('2', 'action_list', '0'),
('2', 'add_club', '0'),
('2', 'add_competition', '0'),
('2', 'add_field', '0'),
('2', 'add_file', '0'),
('2', 'add_folder', '0'),
('2', 'add_forum', '0'),
('2', 'add_information', '0'),
('2', 'add_match', '0'),
('2', 'add_member', '0'),
('2', 'add_news', '0'),
('2', 'add_team', '0'),
('2', 'admin', '0'),
('2', 'club_list', '1'),
('2', 'competition_list', '1'),
('2', 'configuration', '0'),
('2', 'country_list', '0'),
('2', 'delete_club', '0'),
('2', 'delete_competition', '0'),
('2', 'delete_field', '0'),
('2', 'delete_file', '0'),
('2', 'delete_forum', '0'),
('2', 'delete_information', '0'),
('2', 'delete_match', '0'),
('2', 'delete_member', '0'),
('2', 'delete_message', '0'),
('2', 'delete_news', '0'),
('2', 'delete_team', '0'),
('2', 'edit_club', '0'),
('2', 'edit_competition', '0'),
('2', 'edit_field', '0'),
('2', 'edit_forum', '0'),
('2', 'edit_information', '0'),
('2', 'edit_match', '0'),
('2', 'edit_member', '0'),
('2', 'edit_message', '0'),
('2', 'edit_news', '0'),
('2', 'edit_team', '0'),
('2', 'field_list', '1'),
('2', 'field_state_list', '0'),
('2', 'forgot_pass', '0'),
('2', 'forum_list', '1'),
('2', 'group_list', '0'),
('2', 'home', '0'),
('2', 'home_member', '1'),
('2', 'import_club', '0'),
('2', 'import_match', '0'),
('2', 'import_member', '0'),
('2', 'information_list', '1'),
('2', 'job_list', '0'),
('2', 'level_list', '0'),
('2', 'match_list', '1'),
('2', 'member_job_list', '1'),
('2', 'member_list', '1'),
('2', 'menu_management', '0'),
('2', 'news_list', '1'),
('2', 'period_list', '0'),
('2', 'plugin_management', '0'),
('2', 'position_list', '0'),
('2', 'profile', '1'),
('2', 'referee_list', '1'),
('2', 'registration', '0'),
('2', 'registration_list', '0'),
('2', 'registration_validation', '0'),
('2', 'right_management', '0'),
('2', 'season_list', '0'),
('2', 'sex_list', '0'),
('2', 'standings', '1'),
('2', 'stats_list', '0'),
('2', 'stats_player', '1'),
('2', 'stats_player_list', '0'),
('2', 'team_coach_list', '1'),
('2', 'team_list', '1'),
('2', 'team_name_list', '0'),
('2', 'team_player_list', '1'),
('2', 'view_club', '1'),
('2', 'view_competition', '1'),
('2', 'view_field', '1'),
('2', 'view_information', '1'),
('2', 'view_match', '1'),
('2', 'view_member', '1'),
('2', 'view_news', '1'),
('2', 'view_team', '1'),
('2', 'weather_list', '0'),
('3', 'action_list', '0'),
('3', 'add_club', '1'),
('3', 'add_competition', '1'),
('3', 'add_field', '1'),
('3', 'add_file', '1'),
('3', 'add_folder', '1'),
('3', 'add_forum', '1'),
('3', 'add_information', '1'),
('3', 'add_match', '1'),
('3', 'add_member', '1'),
('3', 'add_news', '1'),
('3', 'add_team', '1'),
('3', 'admin', '1'),
('3', 'club_list', '1'),
('3', 'competition_list', '1'),
('3', 'configuration', '0'),
('3', 'country_list', '0'),
('3', 'delete_club', '0'),
('3', 'delete_competition', '0'),
('3', 'delete_field', '0'),
('3', 'delete_file', '0'),
('3', 'delete_forum', '0'),
('3', 'delete_information', '0'),
('3', 'delete_match', '0'),
('3', 'delete_member', '0'),
('3', 'delete_message', '0'),
('3', 'delete_news', '0'),
('3', 'delete_team', '0'),
('3', 'edit_club', '1'),
('3', 'edit_competition', '1'),
('3', 'edit_field', '1'),
('3', 'edit_forum', '1'),
('3', 'edit_information', '1'),
('3', 'edit_match', '1'),
('3', 'edit_member', '1'),
('3', 'edit_message', '1'),
('3', 'edit_news', '1'),
('3', 'edit_team', '1'),
('3', 'field_list', '1'),
('3', 'field_state_list', '0'),
('3', 'forgot_pass', '0'),
('3', 'forum_list', '1'),
('3', 'group_list', '0'),
('3', 'home', '1'),
('3', 'home_member', '1'),
('3', 'import_club', '0'),
('3', 'import_match', '0'),
('3', 'import_member', '0'),
('3', 'information_list', '1'),
('3', 'job_list', '0'),
('3', 'level_list', '0'),
('3', 'match_list', '1'),
('3', 'member_job_list', '1'),
('3', 'member_list', '1'),
('3', 'menu_management', '0'),
('3', 'news_list', '1'),
('3', 'period_list', '0'),
('3', 'plugin_management', '0'),
('3', 'position_list', '0'),
('3', 'profile', '1'),
('3', 'referee_list', '1'),
('3', 'registration', '0'),
('3', 'registration_list', '1'),
('3', 'registration_validation', '1'),
('3', 'right_management', '0'),
('3', 'season_list', '0'),
('3', 'sex_list', '0'),
('3', 'standings', '1'),
('3', 'stats_list', '0'),
('3', 'stats_player', '1'),
('3', 'stats_player_list', '0'),
('3', 'team_coach_list', '1'),
('3', 'team_list', '1'),
('3', 'team_name_list', '0'),
('3', 'team_player_list', '1'),
('3', 'view_club', '1'),
('3', 'view_competition', '1'),
('3', 'view_field', '1'),
('3', 'view_information', '1'),
('3', 'view_match', '1'),
('3', 'view_member', '1'),
('3', 'view_news', '1'),
('3', 'view_team', '1'),
('3', 'weather_list', '0'),
('4', 'action_list', '1'),
('4', 'add_club', '1'),
('4', 'add_competition', '1'),
('4', 'add_field', '1'),
('4', 'add_file', '1'),
('4', 'add_folder', '1'),
('4', 'add_forum', '1'),
('4', 'add_information', '1'),
('4', 'add_match', '1'),
('4', 'add_member', '1'),
('4', 'add_news', '1'),
('4', 'add_team', '1'),
('4', 'admin', '1'),
('4', 'club_list', '1'),
('4', 'competition_list', '1'),
('4', 'configuration', '1'),
('4', 'country_list', '1'),
('4', 'delete_club', '1'),
('4', 'delete_competition', '1'),
('4', 'delete_field', '1'),
('4', 'delete_file', '1'),
('4', 'delete_forum', '1'),
('4', 'delete_information', '1'),
('4', 'delete_match', '1'),
('4', 'delete_member', '1'),
('4', 'delete_message', '1'),
('4', 'delete_news', '1'),
('4', 'delete_team', '1'),
('4', 'edit_club', '1'),
('4', 'edit_competition', '1'),
('4', 'edit_field', '1'),
('4', 'edit_forum', '1'),
('4', 'edit_information', '1'),
('4', 'edit_match', '1'),
('4', 'edit_member', '1'),
('4', 'edit_message', '1'),
('4', 'edit_news', '1'),
('4', 'edit_team', '1'),
('4', 'field_list', '1'),
('4', 'field_state_list', '1'),
('4', 'forgot_pass', '1'),
('4', 'forum_list', '1'),
('4', 'group_list', '1'),
('4', 'home', '1'),
('4', 'home_member', '1'),
('4', 'import_club', '1'),
('4', 'import_match', '1'),
('4', 'import_member', '1'),
('4', 'information_list', '1'),
('4', 'job_list', '1'),
('4', 'level_list', '1'),
('4', 'match_list', '1'),
('4', 'member_job_list', '1'),
('4', 'member_list', '1'),
('4', 'menu_management', '1'),
('4', 'news_list', '1'),
('4', 'period_list', '1'),
('4', 'plugin_management', '1'),
('4', 'position_list', '1'),
('4', 'profile', '1'),
('4', 'referee_list', '1'),
('4', 'registration', '1'),
('4', 'registration_list', '1'),
('4', 'registration_validation', '1'),
('4', 'right_management', '1'),
('4', 'season_list', '1'),
('4', 'sex_list', '1'),
('4', 'standings', '1'),
('4', 'stats_list', '1'),
('4', 'stats_player', '1'),
('4', 'stats_player_list', '1'),
('4', 'team_coach_list', '1'),
('4', 'team_list', '1'),
('4', 'team_name_list', '1'),
('4', 'team_player_list', '1'),
('4', 'view_club', '1'),
('4', 'view_competition', '1'),
('4', 'view_field', '1'),
('4', 'view_information', '1'),
('4', 'view_match', '1'),
('4', 'view_member', '1'),
('4', 'view_news', '1'),
('4', 'view_team', '1'),
('4', 'weather_list', '1');

CREATE TABLE `cc_information` (
   `page_id` int(11) not null auto_increment,
   `page_parent_id` int(11),
   `image_id` int(11),
   `member_add_id` int(11),
   `member_edit_id` int(11) not null default '0',
   `page_parent` int(11) not null default '0',
   `page_idurl` text not null,
   `page_title` text,
   `page_summary` text,
   `page_text` text,
   `page_keyword` text,
   `page_visit` int(11) not null default '0',
   `page_status` int(11),
   `page_order` int(11) not null default '0',
   `page_date_add` datetime,
   `page_date_edit` datetime,
   PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_information` is empty]

CREATE TABLE `cc_job` (
   `job_id` int(11) not null auto_increment,
   `job_name` text not null,
   PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

INSERT INTO `cc_job` (`job_id`, `job_name`) VALUES 
('1', 'President'),
('2', 'Secretary'),
('3', 'Treasurer'),
('4', 'Vice president');

CREATE TABLE `cc_level` (
   `level_id` int(11) not null auto_increment,
   `level_name` text not null,
   PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

INSERT INTO `cc_level` (`level_id`, `level_name`) VALUES 
('1', 'Level 3'),
('2', 'Level 2'),
('3', 'Level 1'),
('4', 'International');

CREATE TABLE `cc_match` (
   `match_id` int(11) not null auto_increment,
   `club_visitor_id` int(11) not null default '0',
   `club_home_id` int(11) not null default '0',
   `team_visitor_id` int(11),
   `team_home_id` int(11),
   `season_id` int(11) not null,
   `competition_id` int(11) not null default '0',
   `round_id` int(11) not null,
   `field_state_id` int(11) not null default '0',
   `field_id` int(11) not null default '0',
   `weather_id` int(11) not null default '0',
   `match_date` datetime not null default '0000-00-00 00:00:00',
   `match_group` text not null,
   `match_day` tinyint(4) not null,
   `match_penality_home` tinyint(4) not null,
   `match_penality_visitor` tinyint(4) not null,
   `match_score_home` mediumint(6),
   `match_score_visitor` mediumint(6),
   `match_spectators` int(11),
   `match_comment` text,
   PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_match` is empty]

CREATE TABLE `cc_match_period` (
   `match_id` int(11) not null default '0',
   `period_id` int(11) not null default '0',
   `score_home` smallint(6),
   `score_visitor` smallint(6),
   PRIMARY KEY (`match_id`,`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_match_period` is empty]

CREATE TABLE `cc_match_player` (
   `match_id` int(11) not null default '0',
   `player_in_id` int(11) not null default '0',
   `player_out_id` int(11) not null default '0',
   `minute_in` tinyint(4) not null default '0',
   `minute_out` tinyint(4) not null default '0',
   PRIMARY KEY (`match_id`,`player_in_id`,`minute_in`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_match_player` is empty]

CREATE TABLE `cc_match_referee` (
   `match_id` int(11) not null default '0',
   `member_id` int(11) not null default '0',
   PRIMARY KEY (`match_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_match_referee` is empty]

CREATE TABLE `cc_match_stats` (
   `match_id` int(11) not null default '0',
   `stats_id` int(11) not null default '0',
   `value_home` int(11) not null default '0',
   `value_visitor` int(11) not null default '0',
   PRIMARY KEY (`match_id`,`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_match_stats` is empty]

CREATE TABLE `cc_match_stats_player` (
   `match_id` int(11) not null default '0',
   `stats_player_id` int(11) not null default '0',
   `member_id` int(11) not null default '0',
   `value` int(11) not null default '0',
   PRIMARY KEY (`match_id`,`stats_player_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_match_stats_player` is empty]

CREATE TABLE `cc_member` (
   `member_id` int(11) not null auto_increment,
   `country_id` int(11) not null default '0',
   `sex_id` int(11) not null default '0',
   `member_lastname` text not null,
   `member_firstname` text not null,
   `member_email` varchar(100),
   `member_date_birth` date,
   `member_place_birth` tinytext,
   `member_size` tinytext,
   `member_weight` tinytext,
   `member_comment` text,
   `member_login` varchar(100),
   `member_pass` varchar(100),
   `member_description` text not null,
   `member_photo` text not null,
   `member_avatar` text not null,
   `member_valid` tinyint(1) not null default '0',
   `member_key` varchar(100) not null,
   `member_status` tinyint(1) not null default '0',
   `member_connection` smallint(6) not null default '0',
   `member_date_connection` datetime not null default '0000-00-00 00:00:00',
   `member_date_registration` datetime not null default '0000-00-00 00:00:00',
   `team_id` varchar(255),
   PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;

INSERT INTO `cc_member` (`member_id`, `country_id`, `sex_id`, `member_lastname`, `member_firstname`, `member_email`, `member_date_birth`, `member_place_birth`, `member_size`, `member_weight`, `member_comment`, `member_login`, `member_pass`, `member_description`, `member_photo`, `member_avatar`, `member_valid`, `member_key`, `member_status`, `member_connection`, `member_date_connection`, `member_date_registration`, `team_id`) VALUES 
('1', '0', '0', 'bhardwaj', 'akash', '', '', '', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '', '1', '', '4', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

CREATE TABLE `cc_member_club` (
   `club_id` int(11) not null default '0',
   `member_id` int(11) not null default '0',
   `season_id` int(11) not null,
   PRIMARY KEY (`club_id`,`member_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_member_club` is empty]

CREATE TABLE `cc_member_job` (
   `job_id` int(11) not null default '0',
   `member_id` int(11) not null default '0',
   `season_id` int(11) not null,
   PRIMARY KEY (`job_id`,`member_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_member_job` is empty]

CREATE TABLE `cc_message` (
   `message_id` int(11) not null auto_increment,
   `member_add_id` int(11),
   `member_edit_id` int(11) not null default '0',
   `message_parent_id` int(11),
   `forum_id` int(11) not null default '0',
   `message_title` text not null,
   `message_text` text not null,
   `message_status` int(11),
   `message_visit` int(11) not null default '0',
   `message_nb_reply` int(11) not null default '0',
   `message_date_add` datetime not null default '0000-00-00 00:00:00',
   `message_last_child` int(11) not null default '0',
   `member_ip` text,
   `message_date_edit` datetime not null default '0000-00-00 00:00:00',
   PRIMARY KEY (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_message` is empty]

CREATE TABLE `cc_news` (
   `news_id` int(11) not null auto_increment,
   `image_id` int(11),
   `member_add_id` int(11),
   `member_edit_id` int(11),
   `news_idurl` text not null,
   `news_subhead` text,
   `news_title` text,
   `news_subtitle` text,
   `news_summary` text,
   `news_text` text,
   `news_ps` text,
   `news_keyword` text,
   `news_release` datetime,
   `news_visit` int(11) not null default '0',
   `news_status` int(11),
   `news_date_add` datetime,
   `news_date_edit` datetime,
   PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_news` is empty]

CREATE TABLE `cc_period` (
   `period_id` int(11) not null auto_increment,
   `period_name` text not null,
   `period_order` tinyint(4),
   `period_length` tinyint(4),
   `period_required` tinyint(1),
   PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_period` is empty]

CREATE TABLE `cc_position` (
   `position_id` int(11) not null auto_increment,
   `position_name` text not null,
   `position_order` tinyint(4) not null,
   PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_position` is empty]

CREATE TABLE `cc_round` (
   `round_id` int(11) not null auto_increment,
   `competition_id` int(11) not null default '0',
   `round_name` text not null,
   `round_order` tinyint(4) not null default '0',
   `round_standings` tinyint(1),
   `point_win_at_home` tinyint(4),
   `point_win_away` tinyint(4),
   `point_tie_at_home` tinyint(4),
   `point_tie_away` tinyint(4),
   `point_defeat_at_home` tinyint(4),
   `point_defeat_away` tinyint(4),
   `order_team` tinyint(4),
   `order_team_egality` tinyint(4),
   `round_group` tinyint(4),
   `round_day` tinyint(4),
   PRIMARY KEY (`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_round` is empty]

CREATE TABLE `cc_season` (
   `season_id` int(11) not null auto_increment,
   `season_name` text not null,
   `season_abbreviation` varchar(10),
   `season_date_start` date,
   `season_date_end` date,
   PRIMARY KEY (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

-- [Table `cc_season` is empty]

CREATE TABLE `cc_sex` (
   `sex_id` int(11) not null auto_increment,
   `sex_name` text not null,
   `sex_abbreviation` text not null,
   PRIMARY KEY (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;

INSERT INTO `cc_sex` (`sex_id`, `sex_name`, `sex_abbreviation`) VALUES 
('1', 'Men', 'M'),
('2', 'Women', 'F');

CREATE TABLE `cc_stats` (
   `stats_id` int(11) not null auto_increment,
   `stats_name` text not null,
   `stats_abbreviation` tinytext not null,
   `stats_code` text not null,
   `stats_formula` text not null,
   `stats_order` tinyint(4) not null default '0',
   PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=11;

INSERT INTO `cc_stats` (`stats_id`, `stats_name`, `stats_abbreviation`, `stats_code`, `stats_formula`, `stats_order`) VALUES 
('1', 'Matches played', 'P', 'P', 'PLAY', '1'),
('2', 'Win', 'W', 'W', 'WIN', '2'),
('3', 'Win percentage', '%W', '%W', '(WIN/PLAY)*100', '3'),
('4', 'Tie', 'T', 'T', 'TIE', '4'),
('5', 'Tie percentage', '%T', '%T', '(TIE/PLAY)*100', '5'),
('6', 'Defeat', 'D', 'D', 'DEFEAT', '6'),
('7', 'Defeat percentage', '%D', '%D', '(DEFEAT/PLAY)*100', '7'),
('8', 'Point for', 'PF', 'PF', 'POINT_FOR', '8'),
('9', 'Point against', 'PA', 'PA', 'POINT_AGAINST', '9'),
('10', 'Goal Average', 'GA', 'GA', 'GOAL_AVERAGE', '10');

CREATE TABLE `cc_stats_player` (
   `stats_player_id` int(11) not null auto_increment,
   `stats_player_name` text not null,
   `stats_player_abbreviation` tinytext not null,
   `stats_player_code` text not null,
   `stats_player_formula` text not null,
   `stats_player_order` tinyint(4) not null default '0',
   PRIMARY KEY (`stats_player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;

INSERT INTO `cc_stats_player` (`stats_player_id`, `stats_player_name`, `stats_player_abbreviation`, `stats_player_code`, `stats_player_formula`, `stats_player_order`) VALUES 
('1', 'Matches played', 'P', 'P', 'PLAY', '1'),
('2', 'Time played', 'TP', 'TP', '', '2');

CREATE TABLE `cc_team` (
   `team_id` int(11) not null auto_increment,
   `club_id` int(11) not null default '0',
   `title` varchar(255),
   `description` varchar(255),
   `image` varchar(255),
   `team_name` varchar(255),
   PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;

INSERT INTO `cc_team` (`team_id`, `club_id`, `title`, `description`, `image`, `team_name`) VALUES 
('1', '123', 'about dale', 'this is good', '', 'English Rockers');

CREATE TABLE `cc_team_coach` (
   `member_id` int(11) not null default '0',
   `team_id` int(11) not null default '0',
   `season_id` int(11) not null,
   PRIMARY KEY (`member_id`,`team_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_team_coach` is empty]

CREATE TABLE `cc_team_name` (
   `team_name_id` int(11) not null auto_increment,
   `team_name_name` text not null,
   `team_name_order` tinyint(4) not null,
   PRIMARY KEY (`team_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=10;

INSERT INTO `cc_team_name` (`team_name_id`, `team_name_name`, `team_name_order`) VALUES 
('1', 'Under 10', '1'),
('2', 'Under 12', '2'),
('3', 'Under 14', '3'),
('5', 'Under 16', '4'),
('6', 'Under 18', '5'),
('7', 'Adult 1', '6'),
('8', 'Adult 2', '7'),
('9', 'Adult 3', '8');

CREATE TABLE `cc_team_photo` (
   `team_id` int(11) not null default '0',
   `season_id` int(11) not null default '0',
   `photo` tinytext not null,
   `description` text,
   PRIMARY KEY (`team_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_team_photo` is empty]

CREATE TABLE `cc_team_player` (
   `position_id` int(11) not null default '0',
   `team_id` int(11) not null default '0',
   `member_id` int(11) not null default '0',
   `season_id` int(11) not null,
   `player_number` smallint(6),
   `player_captain` tinyint(1),
   PRIMARY KEY (`team_id`,`member_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- [Table `cc_team_player` is empty]

CREATE TABLE `cc_weather` (
   `weather_id` int(11) not null auto_increment,
   `weather_name` text not null,
   PRIMARY KEY (`weather_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

INSERT INTO `cc_weather` (`weather_id`, `weather_name`) VALUES 
('1', 'Sunny'),
('2', 'Rain'),
('3', 'Cloudy'),
('4', 'Snow');