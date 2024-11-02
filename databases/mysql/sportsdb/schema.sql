# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.27-max)
# Database: xtoss
# Generation Time: 2008-03-03 13:46:49 -0800
# ************************************************************

# Dump of table addresses
# ------------------------------------------------------------

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL auto_increment,
  `location_id` int(11) NOT NULL,
  `language` varchar(100) default NULL,
  `suite` varchar(100) default NULL,
  `floor` varchar(100) default NULL,
  `building` varchar(100) default NULL,
  `street_number` varchar(100) default NULL,
  `street_prefix` varchar(100) default NULL,
  `street` varchar(100) default NULL,
  `street_suffix` varchar(100) default NULL,
  `neighborhood` varchar(100) default NULL,
  `district` varchar(100) default NULL,
  `locality` varchar(100) default NULL,
  `county` varchar(100) default NULL,
  `region` varchar(100) default NULL,
  `postal_code` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_addresses_1` (`locality`),
  KEY `IDX_addresses_2` (`region`),
  KEY `IDX_addresses_3` (`postal_code`),
  KEY `IDX_FK_add_loc_id__loc_id` (`location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table affiliation_phases
# ------------------------------------------------------------

CREATE TABLE `affiliation_phases` (
  `id` int(11) NOT NULL auto_increment,
  `affiliation_id` int(11) NOT NULL,
  `ancestor_affiliation_id` int(11) default NULL,
  `start_season_id` int(11) default NULL,
  `start_date_time` datetime default NULL,
  `end_season_id` int(11) default NULL,
  `end_date_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_seasons_affiliation_phases1` (`end_season_id`),
  KEY `FK_seasons_affiliation_phases` (`start_season_id`),
  KEY `FK_affiliations_affiliation_phases1` (`ancestor_affiliation_id`),
  KEY `FK_affiliations_affiliation_phases` (`affiliation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;



# Dump of table affiliations
# ------------------------------------------------------------

CREATE TABLE `affiliations` (
  `id` int(11) NOT NULL auto_increment,
  `affiliation_key` varchar(100) NOT NULL,
  `affiliation_type` varchar(100) default NULL,
  `publisher_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_affiliations_1` (`affiliation_key`),
  KEY `IDX_affiliations_2` (`affiliation_type`),
  KEY `IDX_FK_aff_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;



# Dump of table affiliations_documents
# ------------------------------------------------------------

CREATE TABLE `affiliations_documents` (
  `affiliation_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_aff_doc_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_aff_doc_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table affiliations_events
# ------------------------------------------------------------

CREATE TABLE `affiliations_events` (
  `affiliation_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  KEY `FK_aff_eve_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_aff_eve_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table affiliations_media
# ------------------------------------------------------------

CREATE TABLE `affiliations_media` (
  `affiliation_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_aff_med_med_id__med_id` (`media_id`),
  KEY `FK_aff_med_aff_id__aff_id` (`affiliation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table american_football_action_participants
# ------------------------------------------------------------

CREATE TABLE `american_football_action_participants` (
  `id` int(11) NOT NULL auto_increment,
  `american_football_action_play_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `participant_role` varchar(100) NOT NULL,
  `score_type` varchar(100) default NULL,
  `field_line` int(11) default NULL,
  `yardage` int(11) default NULL,
  `score_credit` int(11) default NULL,
  `yards_gained` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_american_football_action_participants_1` (`participant_role`),
  KEY `IDX_american_football_action_participants_2` (`score_type`),
  KEY `IDX_FK_ame_foo_act_par_ame_foo_act_pla_id__ame_foo_act_pla_id` (`american_football_action_play_id`),
  KEY `IDX_FK_ame_foo_act_par_per_id__per_id` (`person_id`)
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=latin1;



# Dump of table american_football_action_plays
# ------------------------------------------------------------

CREATE TABLE `american_football_action_plays` (
  `id` int(11) NOT NULL auto_increment,
  `american_football_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) default NULL,
  `score_attempt_type` varchar(100) default NULL,
  `drive_result` varchar(100) default NULL,
  `points` int(11) default NULL,
  `comment` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_american_football_action_plays_1` (`play_type`),
  KEY `IDX_american_football_action_plays_2` (`score_attempt_type`),
  KEY `IDX_american_football_action_plays_3` (`drive_result`),
  KEY `IDX_FK_ame_foo_act_pla_ame_foo_eve_sta_id__ame_foo_eve_sta_id` (`american_football_event_state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;



# Dump of table american_football_defensive_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_defensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `tackles_total` varchar(100) default NULL,
  `tackles_solo` varchar(100) default NULL,
  `tackles_assists` varchar(100) default NULL,
  `interceptions_total` varchar(100) default NULL,
  `interceptions_yards` varchar(100) default NULL,
  `interceptions_average` varchar(100) default NULL,
  `interceptions_longest` varchar(100) default NULL,
  `interceptions_touchdown` varchar(100) default NULL,
  `quarterback_hurries` varchar(100) default NULL,
  `sacks_total` varchar(100) default NULL,
  `sacks_yards` varchar(100) default NULL,
  `passes_defensed` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=752 DEFAULT CHARSET=latin1;



# Dump of table american_football_down_progress_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_down_progress_stats` (
  `id` int(11) NOT NULL auto_increment,
  `first_downs_total` varchar(100) default NULL,
  `first_downs_pass` varchar(100) default NULL,
  `first_downs_run` varchar(100) default NULL,
  `first_downs_penalty` varchar(100) default NULL,
  `conversions_third_down` varchar(100) default NULL,
  `conversions_third_down_attempts` varchar(100) default NULL,
  `conversions_third_down_percentage` varchar(100) default NULL,
  `conversions_fourth_down` varchar(100) default NULL,
  `conversions_fourth_down_attempts` varchar(100) default NULL,
  `conversions_fourth_down_percentage` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;



# Dump of table american_football_event_states
# ------------------------------------------------------------

CREATE TABLE `american_football_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` smallint(6) default NULL,
  `sequence_number` int(11) default NULL,
  `period_value` int(11) default NULL,
  `period_time_elapsed` varchar(100) default NULL,
  `period_time_remaining` varchar(100) default NULL,
  `clock_state` varchar(100) default NULL,
  `down` int(11) default NULL,
  `team_in_possession_id` int(11) default NULL,
  `distance_for_1st_down` int(11) default NULL,
  `field_side` varchar(100) default NULL,
  `field_line` int(11) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ame_foo_eve_sta_tea_in_pos_id__tea_id` (`team_in_possession_id`),
  KEY `IDX_american_football_event_states_1` (`current_state`),
  KEY `IDX_FK_ame_foo_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;



# Dump of table american_football_fumbles_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_fumbles_stats` (
  `id` int(11) NOT NULL auto_increment,
  `fumbles_committed` varchar(100) default NULL,
  `fumbles_forced` varchar(100) default NULL,
  `fumbles_recovered` varchar(100) default NULL,
  `fumbles_lost` varchar(100) default NULL,
  `fumbles_yards_gained` varchar(100) default NULL,
  `fumbles_own_committed` varchar(100) default NULL,
  `fumbles_own_recovered` varchar(100) default NULL,
  `fumbles_own_lost` varchar(100) default NULL,
  `fumbles_own_yards_gained` varchar(100) default NULL,
  `fumbles_opposing_committed` varchar(100) default NULL,
  `fumbles_opposing_recovered` varchar(100) default NULL,
  `fumbles_opposing_lost` varchar(100) default NULL,
  `fumbles_opposing_yards_gained` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;



# Dump of table american_football_offensive_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_offensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `offensive_plays_yards` varchar(100) default NULL,
  `offensive_plays_number` varchar(100) default NULL,
  `offensive_plays_average_yards_per` varchar(100) default NULL,
  `possession_duration` varchar(100) default NULL,
  `turnovers_giveaway` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;



# Dump of table american_football_passing_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_passing_stats` (
  `id` int(11) NOT NULL auto_increment,
  `passes_attempts` varchar(100) default NULL,
  `passes_completions` varchar(100) default NULL,
  `passes_percentage` varchar(100) default NULL,
  `passes_yards_gross` varchar(100) default NULL,
  `passes_yards_net` varchar(100) default NULL,
  `passes_yards_lost` varchar(100) default NULL,
  `passes_touchdowns` varchar(100) default NULL,
  `passes_touchdowns_percentage` varchar(100) default NULL,
  `passes_interceptions` varchar(100) default NULL,
  `passes_interceptions_percentage` varchar(100) default NULL,
  `passes_longest` varchar(100) default NULL,
  `passes_average_yards_per` varchar(100) default NULL,
  `passer_rating` varchar(100) default NULL,
  `receptions_total` varchar(100) default NULL,
  `receptions_yards` varchar(100) default NULL,
  `receptions_touchdowns` varchar(100) default NULL,
  `receptions_first_down` varchar(100) default NULL,
  `receptions_longest` varchar(100) default NULL,
  `receptions_average_yards_per` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=latin1;



# Dump of table american_football_penalties_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_penalties_stats` (
  `id` int(11) NOT NULL auto_increment,
  `penalties_total` varchar(100) default NULL,
  `penalty_yards` varchar(100) default NULL,
  `penalty_first_downs` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;



# Dump of table american_football_rushing_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_rushing_stats` (
  `id` int(11) NOT NULL auto_increment,
  `rushes_attempts` varchar(100) default NULL,
  `rushes_yards` varchar(100) default NULL,
  `rushes_touchdowns` varchar(100) default NULL,
  `rushing_average_yards_per` varchar(100) default NULL,
  `rushes_first_down` varchar(100) default NULL,
  `rushes_longest` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;



# Dump of table american_football_sacks_against_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_sacks_against_stats` (
  `id` int(11) NOT NULL auto_increment,
  `sacks_against_yards` varchar(100) default NULL,
  `sacks_against_total` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;



# Dump of table american_football_scoring_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_scoring_stats` (
  `id` int(11) NOT NULL auto_increment,
  `touchdowns_total` varchar(100) default NULL,
  `touchdowns_passing` varchar(100) default NULL,
  `touchdowns_rushing` varchar(100) default NULL,
  `touchdowns_special_teams` varchar(100) default NULL,
  `touchdowns_defensive` varchar(100) default NULL,
  `extra_points_attempts` varchar(100) default NULL,
  `extra_points_made` varchar(100) default NULL,
  `extra_points_missed` varchar(100) default NULL,
  `extra_points_blocked` varchar(100) default NULL,
  `field_goal_attempts` varchar(100) default NULL,
  `field_goals_made` varchar(100) default NULL,
  `field_goals_missed` varchar(100) default NULL,
  `field_goals_blocked` varchar(100) default NULL,
  `safeties_against` varchar(100) default NULL,
  `two_point_conversions_attempts` varchar(100) default NULL,
  `two_point_conversions_made` varchar(100) default NULL,
  `touchbacks_total` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=843 DEFAULT CHARSET=latin1;



# Dump of table american_football_special_teams_stats
# ------------------------------------------------------------

CREATE TABLE `american_football_special_teams_stats` (
  `id` int(11) NOT NULL auto_increment,
  `returns_punt_total` varchar(100) default NULL,
  `returns_punt_yards` varchar(100) default NULL,
  `returns_punt_average` varchar(100) default NULL,
  `returns_punt_longest` varchar(100) default NULL,
  `returns_punt_touchdown` varchar(100) default NULL,
  `returns_kickoff_total` varchar(100) default NULL,
  `returns_kickoff_yards` varchar(100) default NULL,
  `returns_kickoff_average` varchar(100) default NULL,
  `returns_kickoff_longest` varchar(100) default NULL,
  `returns_kickoff_touchdown` varchar(100) default NULL,
  `returns_total` varchar(100) default NULL,
  `returns_yards` varchar(100) default NULL,
  `punts_total` varchar(100) default NULL,
  `punts_yards_gross` varchar(100) default NULL,
  `punts_yards_net` varchar(100) default NULL,
  `punts_longest` varchar(100) default NULL,
  `punts_inside_20` varchar(100) default NULL,
  `punts_inside_20_percentage` varchar(100) default NULL,
  `punts_average` varchar(100) default NULL,
  `punts_blocked` varchar(100) default NULL,
  `touchbacks_total` varchar(100) default NULL,
  `touchbacks_total_percentage` varchar(100) default NULL,
  `touchbacks_kickoffs` varchar(100) default NULL,
  `touchbacks_kickoffs_percentage` varchar(100) default NULL,
  `touchbacks_punts` varchar(100) default NULL,
  `touchbacks_punts_percentage` varchar(100) default NULL,
  `touchbacks_interceptions` varchar(100) default NULL,
  `touchbacks_interceptions_percentage` varchar(100) default NULL,
  `fair_catches` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;



# Dump of table baseball_action_contact_details
# ------------------------------------------------------------

CREATE TABLE `baseball_action_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `baseball_action_pitch_id` int(11) NOT NULL,
  `location` varchar(100) default NULL,
  `strength` varchar(100) default NULL,
  `velocity` int(11) default NULL,
  `comment` text,
  `trajectory_coordinates` varchar(100) default NULL,
  `trajectory_formula` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_bas_act_con_det_bas_act_pit_id__bas_act_pit_id` (`baseball_action_pitch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table baseball_action_pitches
# ------------------------------------------------------------

CREATE TABLE `baseball_action_pitches` (
  `id` int(11) NOT NULL auto_increment,
  `baseball_action_play_id` int(11) NOT NULL,
  `sequence_number` int(11) default NULL,
  `baseball_defensive_group_id` int(11) default NULL,
  `umpire_call` varchar(100) default NULL,
  `pitch_location` varchar(100) default NULL,
  `pitch_type` varchar(100) default NULL,
  `pitch_velocity` int(11) default NULL,
  `comment` text,
  `trajectory_coordinates` varchar(100) default NULL,
  `trajectory_formula` varchar(100) default NULL,
  `ball_type` varchar(40) default NULL,
  `strike_type` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_baseball_action_plays_baseball_action_pitches` (`baseball_action_play_id`),
  KEY `IDX_baseball_action_pitches_1` (`umpire_call`),
  KEY `IDX_baseball_action_pitches_2` (`pitch_type`),
  KEY `IDX_FK_bas_act_pit_bas_def_gro_id__bas_def_gro_id` (`baseball_defensive_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table baseball_action_plays
# ------------------------------------------------------------

CREATE TABLE `baseball_action_plays` (
  `id` int(11) NOT NULL auto_increment,
  `baseball_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) default NULL,
  `notation` varchar(100) default NULL,
  `notation_yaml` text,
  `baseball_defensive_group_id` int(11) default NULL,
  `comment` varchar(255) default NULL,
  `runner_on_first_advance` int(11) default NULL,
  `runner_on_second_advance` int(11) default NULL,
  `runner_on_third_advance` int(11) default NULL,
  `outs_recorded` int(11) default NULL,
  `rbi` int(11) default NULL,
  `runs_scored` int(11) default NULL,
  `earned_runs_scored` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_baseball_action_plays_1` (`play_type`),
  KEY `IDX_FK_bas_act_pla_bas_eve_sta_id__bas_eve_sta_id` (`baseball_event_state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;



# Dump of table baseball_action_substitutions
# ------------------------------------------------------------

CREATE TABLE `baseball_action_substitutions` (
  `id` int(11) NOT NULL auto_increment,
  `baseball_event_state_id` int(11) NOT NULL,
  `sequence_number` int(11) default NULL,
  `person_type` varchar(100) default NULL,
  `person_original_id` int(11) default NULL,
  `person_original_position_id` int(11) default NULL,
  `person_original_lineup_slot` int(11) default NULL,
  `person_replacing_id` int(11) default NULL,
  `person_replacing_position_id` int(11) default NULL,
  `person_replacing_lineup_slot` int(11) default NULL,
  `substitution_reason` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_bas_act_sub_per_rep_pos_id__pos_id` (`person_replacing_position_id`),
  KEY `FK_bas_act_sub_per_ori_pos_id__pos_id` (`person_original_position_id`),
  KEY `FK_bas_act_sub_bas_eve_sta_id__bas_eve_sta_id` (`baseball_event_state_id`),
  KEY `FK_bas_act_sub_per_rep_id__per_id` (`person_replacing_id`),
  KEY `FK_bas_act_sub_per_ori_id__per_id` (`person_original_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table baseball_defensive_group
# ------------------------------------------------------------

CREATE TABLE `baseball_defensive_group` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table baseball_defensive_players
# ------------------------------------------------------------

CREATE TABLE `baseball_defensive_players` (
  `id` int(11) NOT NULL auto_increment,
  `baseball_defensive_group_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_bas_def_pla_bas_def_gro_id__bas_def_gro_id` (`baseball_defensive_group_id`),
  KEY `FK_bas_def_pla_pla_id__per_id` (`player_id`),
  KEY `FK_bas_def_pla_pos_id__pos_id` (`position_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table baseball_defensive_stats
# ------------------------------------------------------------

CREATE TABLE `baseball_defensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `double_plays` int(11) default NULL,
  `triple_plays` int(11) default NULL,
  `putouts` int(11) default NULL,
  `assists` int(11) default NULL,
  `errors` int(11) default NULL,
  `fielding_percentage` float default NULL,
  `defensive_average` float default NULL,
  `errors_passed_ball` int(11) default NULL,
  `errors_catchers_interference` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1725 DEFAULT CHARSET=latin1;



# Dump of table baseball_event_states
# ------------------------------------------------------------

CREATE TABLE `baseball_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` smallint(6) default NULL,
  `sequence_number` int(11) default NULL,
  `at_bat_number` int(11) default NULL,
  `inning_value` int(11) default NULL,
  `inning_half` varchar(100) default NULL,
  `outs` int(11) default NULL,
  `balls` int(11) default NULL,
  `strikes` int(11) default NULL,
  `runner_on_first_id` int(11) default NULL,
  `runner_on_second_id` int(11) default NULL,
  `runner_on_third_id` int(11) default NULL,
  `runner_on_first` smallint(6) default NULL,
  `runner_on_second` smallint(6) default NULL,
  `runner_on_third` smallint(6) default NULL,
  `runs_this_inning_half` int(11) default NULL,
  `pitcher_id` int(11) default NULL,
  `batter_id` int(11) default NULL,
  `batter_side` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_bas_eve_sta_run_on_sec_id__per_id` (`runner_on_second_id`),
  KEY `FK_bas_eve_sta_run_on_thi_id__per_id` (`runner_on_third_id`),
  KEY `FK_bas_eve_sta_run_on_fir_id__per_id` (`runner_on_first_id`),
  KEY `FK_bas_eve_sta_bat_id__per_id` (`batter_id`),
  KEY `FK_bas_eve_sta_pit_id__per_id` (`pitcher_id`),
  KEY `IDX_baseball_event_states_1` (`current_state`),
  KEY `IDX_FK_bas_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;



# Dump of table baseball_offensive_stats
# ------------------------------------------------------------

CREATE TABLE `baseball_offensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `average` float default NULL,
  `runs_scored` int(11) default NULL,
  `at_bats` int(11) default NULL,
  `hits` int(11) default NULL,
  `rbi` int(11) default NULL,
  `total_bases` int(11) default NULL,
  `slugging_percentage` float default NULL,
  `bases_on_balls` int(11) default NULL,
  `strikeouts` int(11) default NULL,
  `left_on_base` int(11) default NULL,
  `left_in_scoring_position` int(11) default NULL,
  `singles` int(11) default NULL,
  `doubles` int(11) default NULL,
  `triples` int(11) default NULL,
  `home_runs` int(11) default NULL,
  `grand_slams` int(11) default NULL,
  `at_bats_per_rbi` float default NULL,
  `plate_appearances_per_rbi` float default NULL,
  `at_bats_per_home_run` float default NULL,
  `plate_appearances_per_home_run` float default NULL,
  `sac_flies` int(11) default NULL,
  `sac_bunts` int(11) default NULL,
  `grounded_into_double_play` int(11) default NULL,
  `moved_up` int(11) default NULL,
  `on_base_percentage` float default NULL,
  `stolen_bases` int(11) default NULL,
  `stolen_bases_caught` int(11) default NULL,
  `stolen_bases_average` float default NULL,
  `hit_by_pitch` int(11) default NULL,
  `defensive_interferance_reaches` int(11) default NULL,
  `on_base_plus_slugging` float default NULL,
  `plate_appearances` int(11) default NULL,
  `hits_extra_base` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1725 DEFAULT CHARSET=latin1;



# Dump of table baseball_pitching_stats
# ------------------------------------------------------------

CREATE TABLE `baseball_pitching_stats` (
  `id` int(11) NOT NULL auto_increment,
  `runs_allowed` int(11) default NULL,
  `singles_allowed` int(11) default NULL,
  `doubles_allowed` int(11) default NULL,
  `triples_allowed` int(11) default NULL,
  `home_runs_allowed` int(11) default NULL,
  `innings_pitched` varchar(20) default NULL,
  `hits` int(11) default NULL,
  `earned_runs` int(11) default NULL,
  `unearned_runs` int(11) default NULL,
  `bases_on_balls` int(11) default NULL,
  `bases_on_balls_intentional` int(11) default NULL,
  `strikeouts` int(11) default NULL,
  `strikeout_to_bb_ratio` float default NULL,
  `number_of_pitches` int(11) default NULL,
  `era` float default NULL,
  `inherited_runners_scored` int(11) default NULL,
  `pick_offs` int(11) default NULL,
  `errors_hit_with_pitch` int(11) default NULL,
  `errors_wild_pitch` int(11) default NULL,
  `balks` int(11) default NULL,
  `wins` int(11) default NULL,
  `losses` int(11) default NULL,
  `saves` int(11) default NULL,
  `shutouts` int(11) default NULL,
  `games_complete` int(11) default NULL,
  `games_finished` int(11) default NULL,
  `winning_percentage` float default NULL,
  `event_credit` varchar(40) default NULL,
  `save_credit` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=853 DEFAULT CHARSET=latin1;



# Dump of table basketball_defensive_stats
# ------------------------------------------------------------

CREATE TABLE `basketball_defensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `steals_total` varchar(100) default NULL,
  `steals_per_game` varchar(100) default NULL,
  `blocks_total` varchar(100) default NULL,
  `blocks_per_game` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;



# Dump of table basketball_event_states
# ------------------------------------------------------------

CREATE TABLE `basketball_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) default NULL,
  `sequence_number` int(11) default NULL,
  `period_value` varchar(100) default NULL,
  `period_time_elapsed` varchar(100) default NULL,
  `period_time_remaining` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_events_basketball_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table basketball_offensive_stats
# ------------------------------------------------------------

CREATE TABLE `basketball_offensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `field_goals_made` int(11) default NULL,
  `field_goals_attempted` int(11) default NULL,
  `field_goals_percentage` varchar(100) default NULL,
  `field_goals_per_game` varchar(100) default NULL,
  `field_goals_attempted_per_game` varchar(100) default NULL,
  `field_goals_percentage_adjusted` varchar(100) default NULL,
  `three_pointers_made` int(11) default NULL,
  `three_pointers_attempted` int(11) default NULL,
  `three_pointers_percentage` varchar(100) default NULL,
  `three_pointers_per_game` varchar(100) default NULL,
  `three_pointers_attempted_per_game` varchar(100) default NULL,
  `free_throws_made` varchar(100) default NULL,
  `free_throws_attempted` varchar(100) default NULL,
  `free_throws_percentage` varchar(100) default NULL,
  `free_throws_per_game` varchar(100) default NULL,
  `free_throws_attempted_per_game` varchar(100) default NULL,
  `points_scored_total` varchar(100) default NULL,
  `points_scored_per_game` varchar(100) default NULL,
  `assists_total` varchar(100) default NULL,
  `assists_per_game` varchar(100) default NULL,
  `turnovers_total` varchar(100) default NULL,
  `turnovers_per_game` varchar(100) default NULL,
  `points_scored_off_turnovers` varchar(100) default NULL,
  `points_scored_in_paint` varchar(100) default NULL,
  `points_scored_on_second_chance` varchar(100) default NULL,
  `points_scored_on_fast_break` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;



# Dump of table basketball_rebounding_stats
# ------------------------------------------------------------

CREATE TABLE `basketball_rebounding_stats` (
  `id` int(11) NOT NULL auto_increment,
  `rebounds_total` varchar(100) default NULL,
  `rebounds_per_game` varchar(100) default NULL,
  `rebounds_defensive` varchar(100) default NULL,
  `rebounds_offensive` varchar(100) default NULL,
  `team_rebounds_total` varchar(100) default NULL,
  `team_rebounds_per_game` varchar(100) default NULL,
  `team_rebounds_defensive` varchar(100) default NULL,
  `team_rebounds_offensive` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;



# Dump of table basketball_team_stats
# ------------------------------------------------------------

CREATE TABLE `basketball_team_stats` (
  `id` int(11) NOT NULL auto_increment,
  `timeouts_left` varchar(100) default NULL,
  `largest_lead` varchar(100) default NULL,
  `fouls_total` varchar(100) default NULL,
  `turnover_margin` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table bookmakers
# ------------------------------------------------------------

CREATE TABLE `bookmakers` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_key` varchar(100) default NULL,
  `publisher_id` int(11) NOT NULL,
  `location_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_boo_loc_id__loc_id` (`location_id`),
  KEY `FK_boo_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table core_person_stats
# ------------------------------------------------------------

CREATE TABLE `core_person_stats` (
  `id` int(11) NOT NULL auto_increment,
  `time_played_event` varchar(40) default NULL,
  `time_played_total` varchar(40) default NULL,
  `time_played_event_average` varchar(40) default NULL,
  `events_played` int(11) default NULL,
  `events_started` int(11) default NULL,
  `position_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_cor_per_sta_pos_id__pos_id` (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2589 DEFAULT CHARSET=latin1;



# Dump of table core_stats
# ------------------------------------------------------------

CREATE TABLE `core_stats` (
  `id` int(11) NOT NULL auto_increment,
  `score` varchar(100) default NULL,
  `score_opposing` varchar(100) default NULL,
  `score_attempts` varchar(100) default NULL,
  `score_attempts_opposing` varchar(100) default NULL,
  `score_percentage` varchar(100) default NULL,
  `score_percentage_opposing` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table db_info
# ------------------------------------------------------------

CREATE TABLE `db_info` (
  `version` varchar(100) NOT NULL default '16',
  KEY `IDX_db_info_1` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table display_names
# ------------------------------------------------------------

CREATE TABLE `display_names` (
  `id` int(11) NOT NULL auto_increment,
  `language` varchar(100) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `full_name` varchar(100) default NULL,
  `first_name` varchar(100) default NULL,
  `middle_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `alias` varchar(100) default NULL,
  `abbreviation` varchar(100) default NULL,
  `short_name` varchar(100) default NULL,
  `prefix` varchar(20) default NULL,
  `suffix` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3959 DEFAULT CHARSET=latin1;



# Dump of table document_classes
# ------------------------------------------------------------

CREATE TABLE `document_classes` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_document_classes_1` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Dump of table document_contents
# ------------------------------------------------------------

CREATE TABLE `document_contents` (
  `id` int(11) NOT NULL auto_increment,
  `document_id` int(11) NOT NULL,
  `sportsml` varchar(200) default NULL,
  `abstract` text,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_doc_con_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;



# Dump of table document_fixtures
# ------------------------------------------------------------

CREATE TABLE `document_fixtures` (
  `id` int(11) NOT NULL auto_increment,
  `fixture_key` varchar(100) default NULL,
  `publisher_id` int(11) NOT NULL,
  `name` varchar(100) default NULL,
  `document_class_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_document_fixtures_1` (`fixture_key`),
  KEY `IDX_FK_doc_fix_doc_cla_id__doc_cla_id` (`document_class_id`),
  KEY `IDX_FK_doc_fix_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



# Dump of table document_fixtures_events
# ------------------------------------------------------------

CREATE TABLE `document_fixtures_events` (
  `id` int(11) NOT NULL auto_increment,
  `document_fixture_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `latest_document_id` int(11) NOT NULL,
  `last_update` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_doc_fix_eve_doc_fix_id__doc_fix_id` (`document_fixture_id`),
  KEY `IDX_FK_doc_fix_eve_eve_id__eve_id` (`event_id`),
  KEY `IDX_FK_doc_fix_eve_lat_doc_id__doc_id` (`latest_document_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7916 DEFAULT CHARSET=latin1;



# Dump of table document_package_entry
# ------------------------------------------------------------

CREATE TABLE `document_package_entry` (
  `id` int(11) NOT NULL auto_increment,
  `document_package_id` int(11) NOT NULL,
  `rank` varchar(100) default NULL,
  `document_id` int(11) NOT NULL,
  `headline` varchar(100) default NULL,
  `short_headline` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_doc_pac_ent_doc_pac_id__doc_pac_id` (`document_package_id`),
  KEY `FK_doc_pac_ent_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table document_packages
# ------------------------------------------------------------

CREATE TABLE `document_packages` (
  `id` int(11) NOT NULL auto_increment,
  `package_key` varchar(100) default NULL,
  `package_name` varchar(100) default NULL,
  `date_time` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table documents
# ------------------------------------------------------------

CREATE TABLE `documents` (
  `id` int(11) NOT NULL auto_increment,
  `doc_id` varchar(75) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `title` varchar(255) default NULL,
  `language` varchar(100) default NULL,
  `priority` varchar(100) default NULL,
  `revision_id` varchar(75) default NULL,
  `stats_coverage` varchar(100) default NULL,
  `document_fixture_id` int(11) NOT NULL,
  `source_id` int(11) default NULL,
  `db_loading_date_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_documents_1` (`doc_id`),
  KEY `IDX_documents_3` (`date_time`),
  KEY `IDX_documents_4` (`priority`),
  KEY `IDX_documents_5` (`revision_id`),
  KEY `IDX_FK_doc_doc_fix_id__doc_fix_id` (`document_fixture_id`),
  KEY `IDX_FK_doc_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_FK_doc_sou_id__pub_id` (`source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=415 DEFAULT CHARSET=latin1;



# Dump of table documents_media
# ------------------------------------------------------------

CREATE TABLE `documents_media` (
  `id` int(11) NOT NULL auto_increment,
  `document_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `media_caption_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_doc_med_med_cap_id__med_cap_id` (`media_caption_id`),
  KEY `FK_doc_med_med_id__med_id` (`media_id`),
  KEY `FK_doc_med_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table events
# ------------------------------------------------------------

CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `event_key` varchar(100) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `start_date_time` datetime default NULL,
  `site_id` int(11) default NULL,
  `site_alignment` varchar(100) default NULL,
  `event_status` varchar(100) default NULL,
  `duration` varchar(100) default NULL,
  `attendance` varchar(100) default NULL,
  `last_update` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_events_1` (`event_key`),
  KEY `IDX_FK_eve_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_FK_eve_sit_id__sit_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4351 DEFAULT CHARSET=latin1;



# Dump of table events_documents
# ------------------------------------------------------------

CREATE TABLE `events_documents` (
  `event_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_eve_doc_doc_id__doc_id` (`document_id`),
  KEY `FK_eve_doc_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table events_media
# ------------------------------------------------------------

CREATE TABLE `events_media` (
  `event_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_eve_med_med_id__med_id` (`media_id`),
  KEY `FK_eve_med_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table events_sub_seasons
# ------------------------------------------------------------

CREATE TABLE `events_sub_seasons` (
  `event_id` int(11) NOT NULL,
  `sub_season_id` int(11) NOT NULL,
  KEY `FK_eve_sub_sea_sub_sea_id__sub_sea_id` (`sub_season_id`),
  KEY `FK_eve_sub_sea_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_action_participants
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_action_participants` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `ice_hockey_action_play_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `participant_role` varchar(100) NOT NULL,
  `point_credit` int(11) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_action_plays
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_action_plays` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `ice_hockey_event_state_id` int(11) NOT NULL,
  `play_type` varchar(100) default NULL,
  `score_attempt_type` varchar(100) default NULL,
  `play_result` varchar(100) default NULL,
  `comment` varchar(255) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_defensive_stats
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_defensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `shots_power_play_allowed` varchar(100) default NULL,
  `shots_penalty_shot_allowed` varchar(100) default NULL,
  `goals_power_play_allowed` varchar(100) default NULL,
  `goals_penalty_shot_allowed` varchar(100) default NULL,
  `goals_against_average` varchar(100) default NULL,
  `saves` varchar(100) default NULL,
  `save_percentage` varchar(100) default NULL,
  `penalty_killing_amount` varchar(100) default NULL,
  `penalty_killing_percentage` varchar(100) default NULL,
  `shots_blocked` varchar(100) default NULL,
  `takeaways` varchar(100) default NULL,
  `shutouts` varchar(100) default NULL,
  `minutes_penalty_killing` varchar(100) default NULL,
  `hits` varchar(100) default NULL,
  `goals_empty_net_allowed` varchar(100) default NULL,
  `goals_short_handed_allowed` varchar(100) default NULL,
  `goals_shootout_allowed` varchar(100) default NULL,
  `shots_shootout_allowed` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_event_states
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) default NULL,
  `sequence_number` int(11) default NULL,
  `period_value` varchar(100) default NULL,
  `period_time_elapsed` varchar(100) default NULL,
  `period_time_remaining` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ice_hoc_eve_sta_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_offensive_stats
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_offensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `goals_game_winning` varchar(100) default NULL,
  `goals_game_tying` varchar(100) default NULL,
  `goals_power_play` varchar(100) default NULL,
  `goals_short_handed` varchar(100) default NULL,
  `goals_even_strength` varchar(100) default NULL,
  `goals_empty_net` varchar(100) default NULL,
  `goals_overtime` varchar(100) default NULL,
  `goals_shootout` varchar(100) default NULL,
  `goals_penalty_shot` varchar(100) default NULL,
  `assists` varchar(100) default NULL,
  `points` varchar(100) default NULL,
  `power_play_amount` varchar(100) default NULL,
  `power_play_percentage` varchar(100) default NULL,
  `shots_penalty_shot_taken` varchar(100) default NULL,
  `shots_penalty_shot_missed` varchar(100) default NULL,
  `shots_penalty_shot_percentage` varchar(100) default NULL,
  `giveaways` varchar(100) default NULL,
  `minutes_power_play` varchar(100) default NULL,
  `faceoff_wins` varchar(100) default NULL,
  `faceoff_losses` varchar(100) default NULL,
  `faceoff_win_percentage` varchar(100) default NULL,
  `scoring_chances` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1113 DEFAULT CHARSET=latin1;



# Dump of table ice_hockey_player_stats
# ------------------------------------------------------------

CREATE TABLE `ice_hockey_player_stats` (
  `id` int(11) NOT NULL auto_increment,
  `plus_minus` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1073 DEFAULT CHARSET=latin1;



# Dump of table injury_phases
# ------------------------------------------------------------

CREATE TABLE `injury_phases` (
  `id` int(11) NOT NULL auto_increment,
  `person_id` int(11) NOT NULL,
  `injury_status` varchar(100) default NULL,
  `injury_type` varchar(100) default NULL,
  `injury_comment` varchar(100) default NULL,
  `disabled_list` varchar(100) default NULL,
  `start_date_time` datetime default NULL,
  `end_date_time` datetime default NULL,
  `season_id` int(11) default NULL,
  `phase_type` varchar(100) default NULL,
  `injury_side` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_inj_pha_per_id__per_id` (`person_id`),
  KEY `IDX_FK_inj_pha_sea_id__sea_id` (`season_id`),
  KEY `IDX_injury_phases_2` (`injury_status`),
  KEY `IDX_injury_phases_3` (`start_date_time`),
  KEY `IDX_injury_phases_4` (`end_date_time`)
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=latin1;



# Dump of table key_aliases
# ------------------------------------------------------------

CREATE TABLE `key_aliases` (
  `id` int(11) NOT NULL auto_increment,
  `key_id` int(11) NOT NULL,
  `key_root_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_key_roots_key_aliases` (`key_root_id`),
  KEY `IDX_key_aliases_2` (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table key_roots
# ------------------------------------------------------------

CREATE TABLE `key_roots` (
  `id` int(11) NOT NULL auto_increment,
  `key_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_key_aliases_1` (`key_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table latest_revisions
# ------------------------------------------------------------

CREATE TABLE `latest_revisions` (
  `id` int(11) NOT NULL auto_increment,
  `revision_id` varchar(75) NOT NULL,
  `latest_document_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_lat_rev_lat_doc_id__doc_id` (`latest_document_id`),
  KEY `IDX_latest_revisions_1` (`revision_id`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;



# Dump of table locations
# ------------------------------------------------------------

CREATE TABLE `locations` (
  `id` int(11) NOT NULL auto_increment,
  `timezone` varchar(100) default NULL,
  `latitude` varchar(100) default NULL,
  `longitude` varchar(100) default NULL,
  `country_code` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_locations_1` (`country_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table media
# ------------------------------------------------------------

CREATE TABLE `media` (
  `id` int(11) NOT NULL auto_increment,
  `object_id` int(11) default NULL,
  `source_id` int(11) default NULL,
  `revision_id` int(11) default NULL,
  `media_type` varchar(100) default NULL,
  `publisher_id` int(11) NOT NULL,
  `date_time` varchar(100) default NULL,
  `credit_id` int(11) NOT NULL,
  `db_loading_date_time` datetime default NULL,
  `creation_location_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_med_cre_id__per_id` (`credit_id`),
  KEY `FK_med_pub_id__pub_id` (`publisher_id`),
  KEY `FK_med_cre_loc_id__loc_id` (`creation_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table media_captions
# ------------------------------------------------------------

CREATE TABLE `media_captions` (
  `id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL,
  `caption_type` varchar(100) default NULL,
  `caption` varchar(100) default NULL,
  `caption_author_id` int(11) NOT NULL,
  `language` varchar(100) default NULL,
  `caption_size` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_med_cap_med_id__med_id` (`media_id`),
  KEY `FK_med_cap_cap_aut_id__per_id` (`caption_author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table media_contents
# ------------------------------------------------------------

CREATE TABLE `media_contents` (
  `id` int(11) NOT NULL auto_increment,
  `media_id` int(11) NOT NULL,
  `object` varchar(100) default NULL,
  `format` varchar(100) default NULL,
  `mime_type` varchar(100) default NULL,
  `height` varchar(100) default NULL,
  `width` varchar(100) default NULL,
  `duration` varchar(100) default NULL,
  `file_size` varchar(100) default NULL,
  `resolution` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_med_con_med_id__med_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table media_keywords
# ------------------------------------------------------------

CREATE TABLE `media_keywords` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` varchar(100) default NULL,
  `media_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_med_key_med_id__med_id` (`media_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table motor_racing_event_states
# ------------------------------------------------------------

CREATE TABLE `motor_racing_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) default NULL,
  `sequence_number` int(11) default NULL,
  `lap` varchar(100) default NULL,
  `laps_remaining` varchar(100) default NULL,
  `time_elapsed` varchar(100) default NULL,
  `flag_state` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_events_motor_racing_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table motor_racing_qualifying_stats
# ------------------------------------------------------------

CREATE TABLE `motor_racing_qualifying_stats` (
  `id` int(11) NOT NULL auto_increment,
  `grid` varchar(100) default NULL,
  `pole_position` varchar(100) default NULL,
  `pole_wins` varchar(100) default NULL,
  `qualifying_speed` varchar(100) default NULL,
  `qualifying_speed_units` varchar(100) default NULL,
  `qualifying_time` varchar(100) default NULL,
  `qualifying_position` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table motor_racing_race_stats
# ------------------------------------------------------------

CREATE TABLE `motor_racing_race_stats` (
  `id` int(11) NOT NULL auto_increment,
  `time_behind_leader` varchar(100) default NULL,
  `laps_behind_leader` varchar(100) default NULL,
  `time_ahead_follower` varchar(100) default NULL,
  `laps_ahead_follower` varchar(100) default NULL,
  `time` varchar(100) default NULL,
  `points` varchar(100) default NULL,
  `points_rookie` varchar(100) default NULL,
  `bonus` varchar(100) default NULL,
  `laps_completed` varchar(100) default NULL,
  `laps_leading_total` varchar(100) default NULL,
  `distance_leading` varchar(100) default NULL,
  `distance_completed` varchar(100) default NULL,
  `distance_units` varchar(40) default NULL,
  `speed_average` varchar(40) default NULL,
  `speed_units` varchar(40) default NULL,
  `status` varchar(40) default NULL,
  `finishes_top_5` varchar(40) default NULL,
  `finishes_top_10` varchar(40) default NULL,
  `starts` varchar(40) default NULL,
  `finishes` varchar(40) default NULL,
  `non_finishes` varchar(40) default NULL,
  `wins` varchar(40) default NULL,
  `races_leading` varchar(40) default NULL,
  `money` varchar(40) default NULL,
  `money_units` varchar(40) default NULL,
  `leads_total` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table outcome_totals
# ------------------------------------------------------------

CREATE TABLE `outcome_totals` (
  `id` int(11) NOT NULL auto_increment,
  `standing_subgroup_id` int(11) NOT NULL,
  `outcome_holder_type` varchar(100) default NULL,
  `outcome_holder_id` int(11) default NULL,
  `rank` varchar(100) default NULL,
  `wins` varchar(100) default NULL,
  `losses` varchar(100) default NULL,
  `ties` varchar(100) default NULL,
  `undecideds` varchar(100) default NULL,
  `winning_percentage` varchar(100) default NULL,
  `points_scored_for` varchar(100) default NULL,
  `points_scored_against` varchar(100) default NULL,
  `points_difference` varchar(100) default NULL,
  `standing_points` varchar(100) default NULL,
  `streak_type` varchar(100) default NULL,
  `streak_duration` varchar(100) default NULL,
  `streak_total` varchar(100) default NULL,
  `streak_start` date default NULL,
  `streak_end` date default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_out_tot_sta_sub_id__sta_sub_id` (`standing_subgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table participants_events
# ------------------------------------------------------------

CREATE TABLE `participants_events` (
  `id` int(11) NOT NULL auto_increment,
  `participant_type` varchar(100) NOT NULL,
  `participant_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `alignment` varchar(100) default NULL,
  `score` varchar(100) default NULL,
  `event_outcome` varchar(100) default NULL,
  `rank` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_par_eve_eve_id__eve_id` (`event_id`),
  KEY `IDX_participants_events_1` (`participant_type`),
  KEY `IDX_participants_events_2` (`participant_id`),
  KEY `IDX_participants_events_3` (`alignment`),
  KEY `IDX_participants_events_4` (`event_outcome`)
) ENGINE=MyISAM AUTO_INCREMENT=8701 DEFAULT CHARSET=latin1;



# Dump of table periods
# ------------------------------------------------------------

CREATE TABLE `periods` (
  `id` int(11) NOT NULL auto_increment,
  `participant_event_id` int(11) NOT NULL,
  `period_value` varchar(100) default NULL,
  `score` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_per_par_eve_id__par_eve_id` (`participant_event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=549 DEFAULT CHARSET=latin1;



# Dump of table person_event_metadata
# ------------------------------------------------------------

CREATE TABLE `person_event_metadata` (
  `id` int(11) NOT NULL auto_increment,
  `person_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` varchar(100) default NULL,
  `health` varchar(100) default NULL,
  `weight` varchar(100) default NULL,
  `role_id` int(11) default NULL,
  `position_id` int(11) default NULL,
  `team_id` int(11) default NULL,
  `lineup_slot` int(11) default NULL,
  `lineup_slot_sequence` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_per_eve_met_eve_id__eve_id` (`event_id`),
  KEY `IDX_FK_per_eve_met_per_id__per_id` (`person_id`),
  KEY `IDX_FK_per_eve_met_pos_id__pos_id` (`position_id`),
  KEY `IDX_FK_per_eve_met_rol_id__rol_id` (`role_id`),
  KEY `IDX_FK_teams_person_event_metadata` (`team_id`),
  KEY `IDX_person_event_metadata_1` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4003 DEFAULT CHARSET=latin1;



# Dump of table person_phases
# ------------------------------------------------------------

CREATE TABLE `person_phases` (
  `id` int(11) NOT NULL auto_increment,
  `person_id` int(11) NOT NULL,
  `membership_type` varchar(40) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `role_id` int(11) default NULL,
  `role_status` varchar(40) default NULL,
  `phase_status` varchar(40) default NULL,
  `uniform_number` varchar(20) default NULL,
  `regular_position_id` int(11) default NULL,
  `regular_position_depth` varchar(40) default NULL,
  `height` varchar(100) default NULL,
  `weight` varchar(100) default NULL,
  `start_date_time` datetime default NULL,
  `start_season_id` int(11) default NULL,
  `end_date_time` datetime default NULL,
  `end_season_id` int(11) default NULL,
  `entry_reason` varchar(40) default NULL,
  `exit_reason` varchar(40) default NULL,
  `selection_level` int(11) default NULL,
  `selection_sublevel` int(11) default NULL,
  `selection_overall` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_per_pha_rol_id__rol_id` (`role_id`),
  KEY `FK_per_pha_sta_sea_id__sea_id` (`start_season_id`),
  KEY `FK_per_pha_end_sea_id__sea_id` (`end_season_id`),
  KEY `IDX_FK_per_pha_per_id__per_id` (`person_id`),
  KEY `IDX_FK_per_pha_reg_pos_id__pos_id` (`regular_position_id`),
  KEY `IDX_person_phases_1` (`membership_type`),
  KEY `IDX_person_phases_2` (`membership_id`),
  KEY `IDX_person_phases_3` (`phase_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table persons
# ------------------------------------------------------------

CREATE TABLE `persons` (
  `id` int(11) NOT NULL auto_increment,
  `person_key` varchar(100) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `gender` varchar(20) default NULL,
  `birth_date` varchar(30) default NULL,
  `death_date` varchar(30) default NULL,
  `birth_location_id` int(11) default NULL,
  `hometown_location_id` int(11) default NULL,
  `residence_location_id` int(11) default NULL,
  `death_location_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_per_bir_loc_id__loc_id` (`birth_location_id`),
  KEY `FK_per_dea_loc_id__loc_id` (`death_location_id`),
  KEY `FK_per_res_loc_id__loc_id` (`residence_location_id`),
  KEY `FK_per_hom_loc_id__loc_id` (`hometown_location_id`),
  KEY `IDX_FK_per_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_persons_1` (`person_key`)
) ENGINE=MyISAM AUTO_INCREMENT=3938 DEFAULT CHARSET=latin1;



# Dump of table persons_documents
# ------------------------------------------------------------

CREATE TABLE `persons_documents` (
  `person_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_per_doc_per_id__per_id` (`person_id`),
  KEY `FK_per_doc_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table persons_media
# ------------------------------------------------------------

CREATE TABLE `persons_media` (
  `person_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_per_med_med_id__med_id` (`media_id`),
  KEY `FK_per_med_per_id__per_id` (`person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table positions
# ------------------------------------------------------------

CREATE TABLE `positions` (
  `id` int(11) NOT NULL auto_increment,
  `affiliation_id` int(11) NOT NULL,
  `abbreviation` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_pos_aff_id__aff_id` (`affiliation_id`),
  KEY `IDX_positions_1` (`abbreviation`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;



# Dump of table publishers
# ------------------------------------------------------------

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL auto_increment,
  `publisher_key` varchar(100) NOT NULL,
  `publisher_name` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_publishers_1` (`publisher_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Dump of table roles
# ------------------------------------------------------------

CREATE TABLE `roles` (
  `id` int(11) NOT NULL auto_increment,
  `role_key` varchar(100) NOT NULL,
  `role_name` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_roles_1` (`role_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table seasons
# ------------------------------------------------------------

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL auto_increment,
  `season_key` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `start_date_time` datetime default NULL,
  `end_date_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_sea_lea_id__aff_id` (`league_id`),
  KEY `IDX_FK_sea_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_seasons_1` (`season_key`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Dump of table sites
# ------------------------------------------------------------

CREATE TABLE `sites` (
  `id` int(11) NOT NULL auto_increment,
  `site_key` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `location_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_sit_loc_id__loc_id` (`location_id`),
  KEY `IDX_FK_sit_pub_id__pub_id` (`publisher_id`),
  KEY `IDX_sites_1` (`site_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table soccer_defensive_stats
# ------------------------------------------------------------

CREATE TABLE `soccer_defensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `shots_penalty_shot_allowed` varchar(100) default NULL,
  `goals_penalty_shot_allowed` varchar(100) default NULL,
  `goals_against_average` varchar(100) default NULL,
  `goals_against_total` varchar(100) default NULL,
  `saves` varchar(100) default NULL,
  `save_percentage` varchar(100) default NULL,
  `catches_punches` varchar(100) default NULL,
  `shots_on_goal_total` varchar(100) default NULL,
  `shots_shootout_total` varchar(100) default NULL,
  `shots_shootout_allowed` varchar(100) default NULL,
  `shots_blocked` varchar(100) default NULL,
  `shutouts` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table soccer_event_states
# ------------------------------------------------------------

CREATE TABLE `soccer_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) default NULL,
  `sequence_number` int(11) default NULL,
  `period_value` varchar(100) default NULL,
  `period_time_elapsed` varchar(100) default NULL,
  `period_time_remaining` varchar(100) default NULL,
  `minutes_elapsed` varchar(100) default NULL,
  `period_minute_elapsed` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_events_soccer_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table soccer_foul_stats
# ------------------------------------------------------------

CREATE TABLE `soccer_foul_stats` (
  `id` int(11) NOT NULL auto_increment,
  `fouls_suffered` varchar(100) default NULL,
  `fouls_commited` varchar(100) default NULL,
  `cautions_total` varchar(100) default NULL,
  `cautions_pending` varchar(100) default NULL,
  `caution_points_total` varchar(100) default NULL,
  `caution_points_pending` varchar(100) default NULL,
  `ejections_total` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table soccer_offensive_stats
# ------------------------------------------------------------

CREATE TABLE `soccer_offensive_stats` (
  `id` int(11) NOT NULL auto_increment,
  `goals_game_winning` varchar(100) default NULL,
  `goals_game_tying` varchar(100) default NULL,
  `goals_overtime` varchar(100) default NULL,
  `goals_shootout` varchar(100) default NULL,
  `goals_total` varchar(100) default NULL,
  `assists_game_winning` varchar(100) default NULL,
  `assists_game_tying` varchar(100) default NULL,
  `assists_overtime` varchar(100) default NULL,
  `assists_total` varchar(100) default NULL,
  `points` varchar(100) default NULL,
  `shots_total` varchar(100) default NULL,
  `shots_on_goal_total` varchar(100) default NULL,
  `shots_hit_frame` varchar(100) default NULL,
  `shots_penalty_shot_taken` varchar(100) default NULL,
  `shots_penalty_shot_scored` varchar(100) default NULL,
  `shots_penalty_shot_missed` varchar(40) default NULL,
  `shots_penalty_shot_percentage` varchar(40) default NULL,
  `shots_shootout_taken` varchar(40) default NULL,
  `shots_shootout_scored` varchar(40) default NULL,
  `shots_shootout_missed` varchar(40) default NULL,
  `shots_shootout_percentage` varchar(40) default NULL,
  `giveaways` varchar(40) default NULL,
  `offsides` varchar(40) default NULL,
  `corner_kicks` varchar(40) default NULL,
  `hat_tricks` varchar(40) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table standing_subgroups
# ------------------------------------------------------------

CREATE TABLE `standing_subgroups` (
  `id` int(11) NOT NULL auto_increment,
  `standing_id` int(11) NOT NULL,
  `affiliation_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_sta_sub_sta_id__sta_id` (`standing_id`),
  KEY `FK_sta_sub_aff_id__aff_id` (`affiliation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table standings
# ------------------------------------------------------------

CREATE TABLE `standings` (
  `id` int(11) NOT NULL auto_increment,
  `affiliation_id` int(11) NOT NULL,
  `standing_type` varchar(100) default NULL,
  `sub_season_id` int(11) NOT NULL,
  `last_updated` varchar(100) default NULL,
  `duration_scope` varchar(100) default NULL,
  `competition_scope` varchar(100) default NULL,
  `competition_scope_id` varchar(100) default NULL,
  `alignment_scope` varchar(100) default NULL,
  `site_scope` varchar(100) default NULL,
  `scoping_label` varchar(100) default NULL,
  `publisher_id` int(11) NOT NULL,
  `source` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_sta_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_sta_sub_sea_id__sub_sea_id` (`sub_season_id`),
  KEY `FK_sta_pub_id__pub_id` (`publisher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table stats
# ------------------------------------------------------------

CREATE TABLE `stats` (
  `id` int(11) NOT NULL auto_increment,
  `stat_repository_type` varchar(100) default NULL,
  `stat_repository_id` int(11) NOT NULL,
  `stat_holder_type` varchar(100) default NULL,
  `stat_holder_id` int(11) default NULL,
  `stat_coverage_type` varchar(100) default NULL,
  `stat_coverage_id` int(11) default NULL,
  `context` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_stats_1` (`stat_repository_type`),
  KEY `IDX_stats_2` (`stat_repository_id`),
  KEY `IDX_stats_3` (`stat_holder_type`),
  KEY `IDX_stats_4` (`stat_holder_id`),
  KEY `IDX_stats_5` (`stat_coverage_type`),
  KEY `IDX_stats_6` (`stat_coverage_id`),
  KEY `IDX_stats_7` (`context`)
) ENGINE=MyISAM AUTO_INCREMENT=12212 DEFAULT CHARSET=latin1;



# Dump of table sub_periods
# ------------------------------------------------------------

CREATE TABLE `sub_periods` (
  `id` int(11) NOT NULL auto_increment,
  `period_id` int(11) NOT NULL,
  `sub_period_value` varchar(100) default NULL,
  `score` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_sub_per_per_id__per_id` (`period_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table sub_seasons
# ------------------------------------------------------------

CREATE TABLE `sub_seasons` (
  `id` int(11) NOT NULL auto_increment,
  `sub_season_key` varchar(100) NOT NULL,
  `season_id` int(11) NOT NULL,
  `sub_season_type` varchar(100) NOT NULL,
  `start_date_time` datetime default NULL,
  `end_date_time` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_sub_sea_sea_id__sea_id` (`season_id`),
  KEY `IDX_sub_seasons_1` (`sub_season_key`),
  KEY `IDX_sub_seasons_2` (`sub_season_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Dump of table team_american_football_stats
# ------------------------------------------------------------

CREATE TABLE `team_american_football_stats` (
  `id` int(11) NOT NULL auto_increment,
  `yards_per_attempt` varchar(100) default NULL,
  `average_starting_position` varchar(100) default NULL,
  `timeouts` varchar(100) default NULL,
  `time_of_possession` varchar(100) default NULL,
  `turnover_ratio` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;



# Dump of table team_phases
# ------------------------------------------------------------

CREATE TABLE `team_phases` (
  `id` int(11) NOT NULL auto_increment,
  `team_id` int(11) NOT NULL,
  `start_season_id` int(11) default NULL,
  `end_season_id` int(11) default NULL,
  `affiliation_id` int(11) NOT NULL,
  `start_date_time` varchar(100) default NULL,
  `end_date_time` varchar(100) default NULL,
  `phase_status` varchar(40) default NULL,
  `role_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tea_aff_pha_rol_id__rol_id` (`role_id`),
  KEY `FK_tea_aff_pha_end_sea_id__sea_id` (`end_season_id`),
  KEY `FK_tea_aff_pha_sta_sea_id__sea_id` (`start_season_id`),
  KEY `FK_tea_aff_pha_aff_id__aff_id` (`affiliation_id`),
  KEY `FK_tea_aff_pha_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM AUTO_INCREMENT=369 DEFAULT CHARSET=latin1;



# Dump of table teams
# ------------------------------------------------------------

CREATE TABLE `teams` (
  `id` int(11) NOT NULL auto_increment,
  `team_key` varchar(100) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `home_site_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tea_pub_id__pub_id` (`publisher_id`),
  KEY `FK_tea_hom_sit_id__sit_id` (`home_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;



# Dump of table teams_documents
# ------------------------------------------------------------

CREATE TABLE `teams_documents` (
  `team_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  KEY `FK_tea_doc_tea_id__tea_id` (`team_id`),
  KEY `FK_tea_doc_doc_id__doc_id` (`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table teams_media
# ------------------------------------------------------------

CREATE TABLE `teams_media` (
  `team_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  KEY `FK_tea_med_med_id__med_id` (`media_id`),
  KEY `FK_tea_med_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tennis_action_points
# ------------------------------------------------------------

CREATE TABLE `tennis_action_points` (
  `id` int(11) NOT NULL auto_increment,
  `sub_period_id` varchar(100) default NULL,
  `sequence_number` varchar(100) default NULL,
  `win_type` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tennis_action_volleys
# ------------------------------------------------------------

CREATE TABLE `tennis_action_volleys` (
  `id` int(11) NOT NULL auto_increment,
  `sequence_number` varchar(100) default NULL,
  `tennis_action_points_id` int(11) default NULL,
  `landing_location` varchar(100) default NULL,
  `swing_type` varchar(100) default NULL,
  `result` varchar(100) default NULL,
  `spin_type` varchar(100) default NULL,
  `trajectory_details` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tennis_event_states
# ------------------------------------------------------------

CREATE TABLE `tennis_event_states` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `current_state` tinyint(4) default NULL,
  `sequence_number` int(11) default NULL,
  `tennis_set` varchar(100) default NULL,
  `game` varchar(100) default NULL,
  `server_person_id` int(11) default NULL,
  `server_score` varchar(100) default NULL,
  `receiver_person_id` int(11) default NULL,
  `receiver_score` varchar(100) default NULL,
  `service_number` varchar(100) default NULL,
  `context` varchar(40) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_events_tennis_event_states` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tennis_return_stats
# ------------------------------------------------------------

CREATE TABLE `tennis_return_stats` (
  `id` int(11) NOT NULL auto_increment,
  `returns_played` varchar(100) default NULL,
  `matches_played` varchar(100) default NULL,
  `first_service_return_points_won` varchar(100) default NULL,
  `first_service_return_points_won_pct` varchar(100) default NULL,
  `second_service_return_points_won` varchar(100) default NULL,
  `second_service_return_points_won_pct` varchar(100) default NULL,
  `return_games_played` varchar(100) default NULL,
  `return_games_won` varchar(100) default NULL,
  `return_games_won_pct` varchar(100) default NULL,
  `break_points_played` varchar(100) default NULL,
  `break_points_converted` varchar(100) default NULL,
  `break_points_converted_pct` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tennis_service_stats
# ------------------------------------------------------------

CREATE TABLE `tennis_service_stats` (
  `id` int(11) NOT NULL auto_increment,
  `services_played` varchar(100) default NULL,
  `matches_played` varchar(100) default NULL,
  `aces` varchar(100) default NULL,
  `first_services_good` varchar(100) default NULL,
  `first_services_good_pct` varchar(100) default NULL,
  `first_service_points_won` varchar(100) default NULL,
  `first_service_points_won_pct` varchar(100) default NULL,
  `second_service_points_won` varchar(100) default NULL,
  `second_service_points_won_pct` varchar(100) default NULL,
  `service_games_played` varchar(100) default NULL,
  `service_games_won` varchar(100) default NULL,
  `service_games_won_pct` varchar(100) default NULL,
  `break_points_played` varchar(100) default NULL,
  `break_points_saved` varchar(100) default NULL,
  `break_points_saved_pct` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table wagering_moneylines
# ------------------------------------------------------------

CREATE TABLE `wagering_moneylines` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) default NULL,
  `rotation_key` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `vigorish` varchar(100) default NULL,
  `line` varchar(100) default NULL,
  `line_opening` varchar(100) default NULL,
  `prediction` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wag_mon_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_mon_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_mon_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table wagering_odds_lines
# ------------------------------------------------------------

CREATE TABLE `wagering_odds_lines` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) default NULL,
  `rotation_key` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `numerator` varchar(100) default NULL,
  `denominator` varchar(100) default NULL,
  `prediction` varchar(100) default NULL,
  `payout_calculation` varchar(100) default NULL,
  `payout_amount` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wag_odd_lin_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_odd_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_odd_lin_boo_id__boo_id` (`bookmaker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table wagering_runlines
# ------------------------------------------------------------

CREATE TABLE `wagering_runlines` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) default NULL,
  `rotation_key` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `vigorish` varchar(100) default NULL,
  `line` varchar(100) default NULL,
  `line_opening` varchar(100) default NULL,
  `line_value` varchar(100) default NULL,
  `prediction` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wag_run_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_run_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_run_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table wagering_straight_spread_lines
# ------------------------------------------------------------

CREATE TABLE `wagering_straight_spread_lines` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) default NULL,
  `rotation_key` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `vigorish` varchar(100) default NULL,
  `line_value` varchar(100) default NULL,
  `line_value_opening` varchar(100) default NULL,
  `prediction` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wag_str_spr_lin_tea_id__tea_id` (`team_id`),
  KEY `FK_wag_str_spr_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_str_spr_lin_boo_id__boo_id` (`bookmaker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table wagering_total_score_lines
# ------------------------------------------------------------

CREATE TABLE `wagering_total_score_lines` (
  `id` int(11) NOT NULL auto_increment,
  `bookmaker_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `team_id` int(11) NOT NULL,
  `person_id` int(11) default NULL,
  `rotation_key` varchar(100) default NULL,
  `comment` varchar(100) default NULL,
  `vigorish` varchar(100) default NULL,
  `line_over` varchar(100) default NULL,
  `line_under` varchar(100) default NULL,
  `total` varchar(100) default NULL,
  `total_opening` varchar(100) default NULL,
  `prediction` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_wag_tot_sco_lin_boo_id__boo_id` (`bookmaker_id`),
  KEY `FK_wag_tot_sco_lin_eve_id__eve_id` (`event_id`),
  KEY `FK_wag_tot_sco_lin_tea_id__tea_id` (`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table weather_conditions
# ------------------------------------------------------------

CREATE TABLE `weather_conditions` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) NOT NULL,
  `temperature` varchar(100) default NULL,
  `temperature_units` varchar(40) default NULL,
  `humidity` varchar(100) default NULL,
  `clouds` varchar(100) default NULL,
  `wind_direction` varchar(100) default NULL,
  `wind_velocity` varchar(100) default NULL,
  `weather_code` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `IDX_FK_wea_con_eve_id__eve_id` (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



