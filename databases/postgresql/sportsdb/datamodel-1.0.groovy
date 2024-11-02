type Address @pgTable(name: "addresses") {
  building: String
  country: String
  county: String
  district: String
  floor: String
  id: Int! @unique
  language: String
  locality: String
  location: Location! @pgColumn(name: "location_id")
  neighborhood: String
  postalCode: String @pgColumn(name: "postal_code")
  region: String
  street: String
  streetNumber: String @pgColumn(name: "street_number")
  streetPrefix: String @pgColumn(name: "street_prefix")
  streetSuffix: String @pgColumn(name: "street_suffix")
  suite: String
}

type Affiliation @pgTable(name: "affiliations") {
  affiliationKey: String! @pgColumn(name: "affiliation_key")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references AffiliationPhase.ancestorAffiliation.
  # affiliationPhases: [AffiliationPhase] @relation(name: "AffiliationAffiliationPhasesToAffiliationPhaseAncestorAffiliation")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references AffiliationPhase.affiliation.
  # affiliationPhases: [AffiliationPhase] @relation(name: "AffiliationAffiliationPhasesToAffiliationPhaseAffiliation")
  affiliationsDocuments: [AffiliationsDocument]
  affiliationsEvents: [AffiliationsEvent]
  affiliationsMedia: [AffiliationsMedia]
  affiliationType: String @pgColumn(name: "affiliation_type")
  id: Int! @unique
  positions: [Position]
  publisher: Publisher! @pgColumn(name: "publisher_id")
  seasons: [Season]
  standings: [Standing]
  standingSubgroups: [StandingSubgroup]
  teamPhases: [TeamPhase]
}

type AffiliationPhase @pgTable(name: "affiliation_phases") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id") @relation(name: "AffiliationAffiliationPhasesToAffiliationPhaseAffiliation")
  ancestorAffiliation: Affiliation @pgColumn(name: "ancestor_affiliation_id") @relation(name: "AffiliationAffiliationPhasesToAffiliationPhaseAncestorAffiliation")
  endDateTime: DateTime @pgColumn(name: "end_date_time")
  endSeason: Season @pgColumn(name: "end_season_id") @relation(name: "AffiliationPhaseEndSeasonToSeasonAffiliationPhases")
  id: Int! @unique
  startDateTime: DateTime @pgColumn(name: "start_date_time")
  startSeason: Season @pgColumn(name: "start_season_id") @relation(name: "AffiliationPhaseStartSeasonToSeasonAffiliationPhases")
}

type AffiliationsDocument @linkTable @pgTable(name: "affiliations_documents") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  document: Document! @pgColumn(name: "document_id")
}

type AffiliationsEvent @linkTable @pgTable(name: "affiliations_events") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  event: Event! @pgColumn(name: "event_id")
}

type AffiliationsMedia @linkTable @pgTable(name: "affiliations_media") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  media: Media! @pgColumn(name: "media_id")
}

type AmericanFootballActionParticipant @pgTable(name: "american_football_action_participants") {
  americanFootballActionPlay: AmericanFootballActionPlay! @pgColumn(name: "american_football_action_play_id")
  fieldLine: Int @pgColumn(name: "field_line")
  id: Int! @unique
  participantRole: String! @pgColumn(name: "participant_role")
  person: Person! @pgColumn(name: "person_id")
  scoreCredit: Int @pgColumn(name: "score_credit")
  scoreType: String @pgColumn(name: "score_type")
  yardage: Int
  yardsGained: Int @pgColumn(name: "yards_gained")
}

type AmericanFootballActionPlay @pgTable(name: "american_football_action_plays") {
  americanFootballActionParticipants: [AmericanFootballActionParticipant]
  americanFootballEventState: AmericanFootballEventState! @pgColumn(name: "american_football_event_state_id")
  comment: String
  driveResult: String @pgColumn(name: "drive_result")
  id: Int! @unique
  playType: String @pgColumn(name: "play_type")
  points: Int
  scoreAttemptType: String @pgColumn(name: "score_attempt_type")
}

type AmericanFootballDefensiveStat @pgTable(name: "american_football_defensive_stats") {
  id: Int! @unique
  interceptionsAverage: String @pgColumn(name: "interceptions_average")
  interceptionsLongest: String @pgColumn(name: "interceptions_longest")
  interceptionsTotal: String @pgColumn(name: "interceptions_total")
  interceptionsTouchdown: String @pgColumn(name: "interceptions_touchdown")
  interceptionsYards: String @pgColumn(name: "interceptions_yards")
  passesDefensed: String @pgColumn(name: "passes_defensed")
  quarterbackHurries: String @pgColumn(name: "quarterback_hurries")
  sacksTotal: String @pgColumn(name: "sacks_total")
  sacksYards: String @pgColumn(name: "sacks_yards")
  tacklesAssists: String @pgColumn(name: "tackles_assists")
  tacklesSolo: String @pgColumn(name: "tackles_solo")
  tacklesTotal: String @pgColumn(name: "tackles_total")
}

type AmericanFootballDownProgressStat @pgTable(name: "american_football_down_progress_stats") {
  conversionsFourthDown: String @pgColumn(name: "conversions_fourth_down")
  conversionsFourthDownAttempts: String @pgColumn(name: "conversions_fourth_down_attempts")
  conversionsFourthDownPercentage: String @pgColumn(name: "conversions_fourth_down_percentage")
  conversionsThirdDown: String @pgColumn(name: "conversions_third_down")
  conversionsThirdDownAttempts: String @pgColumn(name: "conversions_third_down_attempts")
  conversionsThirdDownPercentage: String @pgColumn(name: "conversions_third_down_percentage")
  firstDownsPass: String @pgColumn(name: "first_downs_pass")
  firstDownsPenalty: String @pgColumn(name: "first_downs_penalty")
  firstDownsRun: String @pgColumn(name: "first_downs_run")
  firstDownsTotal: String @pgColumn(name: "first_downs_total")
  id: Int! @unique
}

type AmericanFootballEventState @pgTable(name: "american_football_event_states") {
  americanFootballActionPlays: [AmericanFootballActionPlay]
  clockState: String @pgColumn(name: "clock_state")
  context: String
  currentState: Int @pgColumn(name: "current_state")
  distanceFor1stDown: Int @pgColumn(name: "distance_for_1st_down")
  down: Int
  event: Event! @pgColumn(name: "event_id")
  fieldLine: Int @pgColumn(name: "field_line")
  fieldSide: String @pgColumn(name: "field_side")
  id: Int! @unique
  periodTimeElapsed: String @pgColumn(name: "period_time_elapsed")
  periodTimeRemaining: String @pgColumn(name: "period_time_remaining")
  periodValue: Int @pgColumn(name: "period_value")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  teamInPossession: Team @pgColumn(name: "team_in_possession_id")
}

type AmericanFootballFumblesStat @pgTable(name: "american_football_fumbles_stats") {
  fumblesCommitted: String @pgColumn(name: "fumbles_committed")
  fumblesForced: String @pgColumn(name: "fumbles_forced")
  fumblesLost: String @pgColumn(name: "fumbles_lost")
  fumblesOpposingCommitted: String @pgColumn(name: "fumbles_opposing_committed")
  fumblesOpposingLost: String @pgColumn(name: "fumbles_opposing_lost")
  fumblesOpposingRecovered: String @pgColumn(name: "fumbles_opposing_recovered")
  fumblesOpposingYardsGained: String @pgColumn(name: "fumbles_opposing_yards_gained")
  fumblesOwnCommitted: String @pgColumn(name: "fumbles_own_committed")
  fumblesOwnLost: String @pgColumn(name: "fumbles_own_lost")
  fumblesOwnRecovered: String @pgColumn(name: "fumbles_own_recovered")
  fumblesOwnYardsGained: String @pgColumn(name: "fumbles_own_yards_gained")
  fumblesRecovered: String @pgColumn(name: "fumbles_recovered")
  fumblesYardsGained: String @pgColumn(name: "fumbles_yards_gained")
  id: Int! @unique
}

type AmericanFootballOffensiveStat @pgTable(name: "american_football_offensive_stats") {
  id: Int! @unique
  offensivePlaysAverageYardsPer: String @pgColumn(name: "offensive_plays_average_yards_per")
  offensivePlaysNumber: String @pgColumn(name: "offensive_plays_number")
  offensivePlaysYards: String @pgColumn(name: "offensive_plays_yards")
  possessionDuration: String @pgColumn(name: "possession_duration")
  turnoversGiveaway: String @pgColumn(name: "turnovers_giveaway")
}

type AmericanFootballPassingStat @pgTable(name: "american_football_passing_stats") {
  id: Int! @unique
  passerRating: String @pgColumn(name: "passer_rating")
  passesAttempts: String @pgColumn(name: "passes_attempts")
  passesAverageYardsPer: String @pgColumn(name: "passes_average_yards_per")
  passesCompletions: String @pgColumn(name: "passes_completions")
  passesInterceptions: String @pgColumn(name: "passes_interceptions")
  passesInterceptionsPercentage: String @pgColumn(name: "passes_interceptions_percentage")
  passesLongest: String @pgColumn(name: "passes_longest")
  passesPercentage: String @pgColumn(name: "passes_percentage")
  passesTouchdowns: String @pgColumn(name: "passes_touchdowns")
  passesTouchdownsPercentage: String @pgColumn(name: "passes_touchdowns_percentage")
  passesYardsGross: String @pgColumn(name: "passes_yards_gross")
  passesYardsLost: String @pgColumn(name: "passes_yards_lost")
  passesYardsNet: String @pgColumn(name: "passes_yards_net")
  receptionsAverageYardsPer: String @pgColumn(name: "receptions_average_yards_per")
  receptionsFirstDown: String @pgColumn(name: "receptions_first_down")
  receptionsLongest: String @pgColumn(name: "receptions_longest")
  receptionsTotal: String @pgColumn(name: "receptions_total")
  receptionsTouchdowns: String @pgColumn(name: "receptions_touchdowns")
  receptionsYards: String @pgColumn(name: "receptions_yards")
}

type AmericanFootballPenaltiesStat @pgTable(name: "american_football_penalties_stats") {
  id: Int! @unique
  penaltiesTotal: String @pgColumn(name: "penalties_total")
  penaltyFirstDowns: String @pgColumn(name: "penalty_first_downs")
  penaltyYards: String @pgColumn(name: "penalty_yards")
}

type AmericanFootballRushingStat @pgTable(name: "american_football_rushing_stats") {
  id: Int! @unique
  rushesAttempts: String @pgColumn(name: "rushes_attempts")
  rushesFirstDown: String @pgColumn(name: "rushes_first_down")
  rushesLongest: String @pgColumn(name: "rushes_longest")
  rushesTouchdowns: String @pgColumn(name: "rushes_touchdowns")
  rushesYards: String @pgColumn(name: "rushes_yards")
  rushingAverageYardsPer: String @pgColumn(name: "rushing_average_yards_per")
}

type AmericanFootballSacksAgainstStat @pgTable(name: "american_football_sacks_against_stats") {
  id: Int! @unique
  sacksAgainstTotal: String @pgColumn(name: "sacks_against_total")
  sacksAgainstYards: String @pgColumn(name: "sacks_against_yards")
}

type AmericanFootballScoringStat @pgTable(name: "american_football_scoring_stats") {
  extraPointsAttempts: String @pgColumn(name: "extra_points_attempts")
  extraPointsBlocked: String @pgColumn(name: "extra_points_blocked")
  extraPointsMade: String @pgColumn(name: "extra_points_made")
  extraPointsMissed: String @pgColumn(name: "extra_points_missed")
  fieldGoalAttempts: String @pgColumn(name: "field_goal_attempts")
  fieldGoalsBlocked: String @pgColumn(name: "field_goals_blocked")
  fieldGoalsMade: String @pgColumn(name: "field_goals_made")
  fieldGoalsMissed: String @pgColumn(name: "field_goals_missed")
  id: Int! @unique
  safetiesAgainst: String @pgColumn(name: "safeties_against")
  touchbacksTotal: String @pgColumn(name: "touchbacks_total")
  touchdownsDefensive: String @pgColumn(name: "touchdowns_defensive")
  touchdownsPassing: String @pgColumn(name: "touchdowns_passing")
  touchdownsRushing: String @pgColumn(name: "touchdowns_rushing")
  touchdownsSpecialTeams: String @pgColumn(name: "touchdowns_special_teams")
  touchdownsTotal: String @pgColumn(name: "touchdowns_total")
  twoPointConversionsAttempts: String @pgColumn(name: "two_point_conversions_attempts")
  twoPointConversionsMade: String @pgColumn(name: "two_point_conversions_made")
}

type AmericanFootballSpecialTeamsStat @pgTable(name: "american_football_special_teams_stats") {
  fairCatches: String @pgColumn(name: "fair_catches")
  id: Int! @unique
  puntsAverage: String @pgColumn(name: "punts_average")
  puntsBlocked: String @pgColumn(name: "punts_blocked")
  puntsInside20: String @pgColumn(name: "punts_inside_20")
  puntsInside20Percentage: String @pgColumn(name: "punts_inside_20_percentage")
  puntsLongest: String @pgColumn(name: "punts_longest")
  puntsTotal: String @pgColumn(name: "punts_total")
  puntsYardsGross: String @pgColumn(name: "punts_yards_gross")
  puntsYardsNet: String @pgColumn(name: "punts_yards_net")
  returnsKickoffAverage: String @pgColumn(name: "returns_kickoff_average")
  returnsKickoffLongest: String @pgColumn(name: "returns_kickoff_longest")
  returnsKickoffTotal: String @pgColumn(name: "returns_kickoff_total")
  returnsKickoffTouchdown: String @pgColumn(name: "returns_kickoff_touchdown")
  returnsKickoffYards: String @pgColumn(name: "returns_kickoff_yards")
  returnsPuntAverage: String @pgColumn(name: "returns_punt_average")
  returnsPuntLongest: String @pgColumn(name: "returns_punt_longest")
  returnsPuntTotal: String @pgColumn(name: "returns_punt_total")
  returnsPuntTouchdown: String @pgColumn(name: "returns_punt_touchdown")
  returnsPuntYards: String @pgColumn(name: "returns_punt_yards")
  returnsTotal: String @pgColumn(name: "returns_total")
  returnsYards: String @pgColumn(name: "returns_yards")
  touchbacksInterceptions: String @pgColumn(name: "touchbacks_interceptions")
  touchbacksInterceptionsPercentage: String @pgColumn(name: "touchbacks_interceptions_percentage")
  touchbacksKickoffs: String @pgColumn(name: "touchbacks_kickoffs")
  touchbacksKickoffsPercentage: String @pgColumn(name: "touchbacks_kickoffs_percentage")
  touchbacksPunts: String @pgColumn(name: "touchbacks_punts")
  touchbacksPuntsPercentage: String @pgColumn(name: "touchbacks_punts_percentage")
  touchbacksTotal: String @pgColumn(name: "touchbacks_total")
  touchbacksTotalPercentage: String @pgColumn(name: "touchbacks_total_percentage")
}

type BaseballActionContactDetail @pgTable(name: "baseball_action_contact_details") {
  baseballActionPitch: BaseballActionPitch! @pgColumn(name: "baseball_action_pitch_id")
  comment: String
  id: Int! @unique
  location: String
  strength: String
  trajectoryCoordinates: String @pgColumn(name: "trajectory_coordinates")
  trajectoryFormula: String @pgColumn(name: "trajectory_formula")
  velocity: Int
}

type BaseballActionPitch @pgTable(name: "baseball_action_pitches") {
  ballType: String @pgColumn(name: "ball_type")
  baseballActionContactDetails: [BaseballActionContactDetail]
  baseballActionPlay: BaseballActionPlay! @pgColumn(name: "baseball_action_play_id")
  baseballDefensiveGroup: BaseballDefensiveGroup @pgColumn(name: "baseball_defensive_group_id")
  comment: String
  id: Int! @unique
  pitchLocation: String @pgColumn(name: "pitch_location")
  pitchType: String @pgColumn(name: "pitch_type")
  pitchVelocity: Int @pgColumn(name: "pitch_velocity")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  strikeType: String @pgColumn(name: "strike_type")
  trajectoryCoordinates: String @pgColumn(name: "trajectory_coordinates")
  trajectoryFormula: String @pgColumn(name: "trajectory_formula")
  umpireCall: String @pgColumn(name: "umpire_call")
}

type BaseballActionPlay @pgTable(name: "baseball_action_plays") {
  baseballActionPitches: [BaseballActionPitch]
  baseballDefensiveGroupId: Int @pgColumn(name: "baseball_defensive_group_id")
  baseballEventState: BaseballEventState! @pgColumn(name: "baseball_event_state_id")
  comment: String
  earnedRunsScored: String @pgColumn(name: "earned_runs_scored")
  id: Int! @unique
  notation: String
  notationYaml: String @pgColumn(name: "notation_yaml")
  outsRecorded: Int @pgColumn(name: "outs_recorded")
  playType: String @pgColumn(name: "play_type")
  rbi: Int
  runnerOnFirstAdvance: Int @pgColumn(name: "runner_on_first_advance")
  runnerOnSecondAdvance: Int @pgColumn(name: "runner_on_second_advance")
  runnerOnThirdAdvance: Int @pgColumn(name: "runner_on_third_advance")
  runsScored: Int @pgColumn(name: "runs_scored")
}

type BaseballActionSubstitution @pgTable(name: "baseball_action_substitutions") {
  baseballEventState: BaseballEventState! @pgColumn(name: "baseball_event_state_id")
  comment: String
  id: Int! @unique
  personOriginal: Person @pgColumn(name: "person_original_id") @relation(name: "BaseballActionSubstitutionPersonOriginalToPersonBaseballActionSubstitutions")
  personOriginalLineupSlot: Int @pgColumn(name: "person_original_lineup_slot")
  personOriginalPosition: Position @pgColumn(name: "person_original_position_id") @relation(name: "BaseballActionSubstitutionPersonOriginalPositionToPositionBaseballActionSubstitutions")
  personReplacing: Person @pgColumn(name: "person_replacing_id") @relation(name: "BaseballActionSubstitutionPersonReplacingToPersonBaseballActionSubstitutions")
  personReplacingLineupSlot: Int @pgColumn(name: "person_replacing_lineup_slot")
  personReplacingPosition: Position @pgColumn(name: "person_replacing_position_id") @relation(name: "BaseballActionSubstitutionPersonReplacingPositionToPositionBaseballActionSubstitutions")
  personType: String @pgColumn(name: "person_type")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  substitutionReason: String @pgColumn(name: "substitution_reason")
}

type BaseballDefensiveGroup @linkTable @pgTable(name: "baseball_defensive_group") {
  baseballActionPitches: [BaseballActionPitch]
  baseballDefensivePlayers: [BaseballDefensivePlayer]
  id: Int! @unique
}

type BaseballDefensivePlayer @pgTable(name: "baseball_defensive_players") {
  baseballDefensiveGroup: BaseballDefensiveGroup! @pgColumn(name: "baseball_defensive_group_id")
  id: Int! @unique
  player: Person! @pgColumn(name: "player_id")
  position: Position! @pgColumn(name: "position_id")
}

type BaseballDefensiveStat @pgTable(name: "baseball_defensive_stats") {
  assists: Int
  defensiveAverage: Float @pgColumn(name: "defensive_average")
  doublePlays: Int @pgColumn(name: "double_plays")
  errors: Int
  errorsCatchersInterference: Int @pgColumn(name: "errors_catchers_interference")
  errorsPassedBall: Int @pgColumn(name: "errors_passed_ball")
  fieldingPercentage: Float @pgColumn(name: "fielding_percentage")
  id: Int! @unique
  putouts: Int
  triplePlays: Int @pgColumn(name: "triple_plays")
}

type BaseballEventState @pgTable(name: "baseball_event_states") {
  atBatNumber: Int @pgColumn(name: "at_bat_number")
  balls: Int
  baseballActionPlays: [BaseballActionPlay]
  baseballActionSubstitutions: [BaseballActionSubstitution]
  batter: Person @pgColumn(name: "batter_id") @relation(name: "BaseballEventStateBatterToPersonBaseballEventStates")
  batterSide: String @pgColumn(name: "batter_side")
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  inningHalf: String @pgColumn(name: "inning_half")
  inningValue: Int @pgColumn(name: "inning_value")
  outs: Int
  pitcher: Person @pgColumn(name: "pitcher_id") @relation(name: "BaseballEventStatePitcherToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  runner_on_first_id: Person @relation(name: "BaseballEventStateRunner_on_first_idToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  runner_on_second_id: Person @relation(name: "BaseballEventStateRunner_on_second_idToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  runner_on_third_id: Person @relation(name: "BaseballEventStateRunner_on_third_idToPersonBaseballEventStates")
  runnerOnFirst: Int @pgColumn(name: "runner_on_first")
  runnerOnSecond: Int @pgColumn(name: "runner_on_second")
  runnerOnThird: Int @pgColumn(name: "runner_on_third")
  runsThisInningHalf: Int @pgColumn(name: "runs_this_inning_half")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  strikes: Int
}

type BaseballOffensiveStat @pgTable(name: "baseball_offensive_stats") {
  atBats: Int @pgColumn(name: "at_bats")
  atBatsPerHomeRun: Float @pgColumn(name: "at_bats_per_home_run")
  atBatsPerRbi: Float @pgColumn(name: "at_bats_per_rbi")
  average: Float
  basesOnBalls: Int @pgColumn(name: "bases_on_balls")
  defensiveInterferanceReaches: Int @pgColumn(name: "defensive_interferance_reaches")
  doubles: Int
  grandSlams: Int @pgColumn(name: "grand_slams")
  groundedIntoDoublePlay: Int @pgColumn(name: "grounded_into_double_play")
  hitByPitch: Int @pgColumn(name: "hit_by_pitch")
  hits: Int
  hitsExtraBase: Int @pgColumn(name: "hits_extra_base")
  homeRuns: Int @pgColumn(name: "home_runs")
  id: Int! @unique
  leftInScoringPosition: Int @pgColumn(name: "left_in_scoring_position")
  leftOnBase: Int @pgColumn(name: "left_on_base")
  movedUp: Int @pgColumn(name: "moved_up")
  onBasePercentage: Float @pgColumn(name: "on_base_percentage")
  onBasePlusSlugging: Float @pgColumn(name: "on_base_plus_slugging")
  plateAppearances: Int @pgColumn(name: "plate_appearances")
  plateAppearancesPerHomeRun: Float @pgColumn(name: "plate_appearances_per_home_run")
  plateAppearancesPerRbi: Float @pgColumn(name: "plate_appearances_per_rbi")
  rbi: Int
  runsScored: Int @pgColumn(name: "runs_scored")
  sacBunts: Int @pgColumn(name: "sac_bunts")
  sacFlies: Int @pgColumn(name: "sac_flies")
  singles: Int
  sluggingPercentage: Float @pgColumn(name: "slugging_percentage")
  stolenBases: Int @pgColumn(name: "stolen_bases")
  stolenBasesAverage: Float @pgColumn(name: "stolen_bases_average")
  stolenBasesCaught: Int @pgColumn(name: "stolen_bases_caught")
  strikeouts: Int
  totalBases: Int @pgColumn(name: "total_bases")
  triples: Int
}

type BaseballPitchingStat @pgTable(name: "baseball_pitching_stats") {
  balks: Int
  basesOnBalls: Int @pgColumn(name: "bases_on_balls")
  basesOnBallsIntentional: Int @pgColumn(name: "bases_on_balls_intentional")
  doublesAllowed: Int @pgColumn(name: "doubles_allowed")
  earnedRuns: Int @pgColumn(name: "earned_runs")
  era: Float
  errorsHitWithPitch: Int @pgColumn(name: "errors_hit_with_pitch")
  errorsWildPitch: Int @pgColumn(name: "errors_wild_pitch")
  eventCredit: String @pgColumn(name: "event_credit")
  gamesComplete: Int @pgColumn(name: "games_complete")
  gamesFinished: Int @pgColumn(name: "games_finished")
  hits: Int
  homeRunsAllowed: Int @pgColumn(name: "home_runs_allowed")
  id: Int! @unique
  inheritedRunnersScored: Int @pgColumn(name: "inherited_runners_scored")
  inningsPitched: String @pgColumn(name: "innings_pitched")
  losses: Int
  numberOfPitches: Int @pgColumn(name: "number_of_pitches")
  pickOffs: Int @pgColumn(name: "pick_offs")
  runsAllowed: Int @pgColumn(name: "runs_allowed")
  saveCredit: String @pgColumn(name: "save_credit")
  saves: Int
  shutouts: Int
  singlesAllowed: Int @pgColumn(name: "singles_allowed")
  strikeouts: Int
  strikeoutToBbRatio: Float @pgColumn(name: "strikeout_to_bb_ratio")
  triplesAllowed: Int @pgColumn(name: "triples_allowed")
  unearnedRuns: Int @pgColumn(name: "unearned_runs")
  winningPercentage: Float @pgColumn(name: "winning_percentage")
  wins: Int
}

type BasketballDefensiveStat @pgTable(name: "basketball_defensive_stats") {
  blocksPerGame: String @pgColumn(name: "blocks_per_game")
  blocksTotal: String @pgColumn(name: "blocks_total")
  id: Int! @unique
  stealsPerGame: String @pgColumn(name: "steals_per_game")
  stealsTotal: String @pgColumn(name: "steals_total")
}

type BasketballEventState @pgTable(name: "basketball_event_states") {
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  periodTimeElapsed: String @pgColumn(name: "period_time_elapsed")
  periodTimeRemaining: String @pgColumn(name: "period_time_remaining")
  periodValue: String @pgColumn(name: "period_value")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
}

type BasketballOffensiveStat @pgTable(name: "basketball_offensive_stats") {
  assistsPerGame: String @pgColumn(name: "assists_per_game")
  assistsTotal: String @pgColumn(name: "assists_total")
  fieldGoalsAttempted: Int @pgColumn(name: "field_goals_attempted")
  fieldGoalsAttemptedPerGame: String @pgColumn(name: "field_goals_attempted_per_game")
  fieldGoalsMade: Int @pgColumn(name: "field_goals_made")
  fieldGoalsPercentage: String @pgColumn(name: "field_goals_percentage")
  fieldGoalsPercentageAdjusted: String @pgColumn(name: "field_goals_percentage_adjusted")
  fieldGoalsPerGame: String @pgColumn(name: "field_goals_per_game")
  freeThrowsAttempted: String @pgColumn(name: "free_throws_attempted")
  freeThrowsAttemptedPerGame: String @pgColumn(name: "free_throws_attempted_per_game")
  freeThrowsMade: String @pgColumn(name: "free_throws_made")
  freeThrowsPercentage: String @pgColumn(name: "free_throws_percentage")
  freeThrowsPerGame: String @pgColumn(name: "free_throws_per_game")
  id: Int! @unique
  pointsScoredInPaint: String @pgColumn(name: "points_scored_in_paint")
  pointsScoredOffTurnovers: String @pgColumn(name: "points_scored_off_turnovers")
  pointsScoredOnFastBreak: String @pgColumn(name: "points_scored_on_fast_break")
  pointsScoredOnSecondChance: String @pgColumn(name: "points_scored_on_second_chance")
  pointsScoredPerGame: String @pgColumn(name: "points_scored_per_game")
  pointsScoredTotal: String @pgColumn(name: "points_scored_total")
  threePointersAttempted: Int @pgColumn(name: "three_pointers_attempted")
  threePointersAttemptedPerGame: String @pgColumn(name: "three_pointers_attempted_per_game")
  threePointersMade: Int @pgColumn(name: "three_pointers_made")
  threePointersPercentage: String @pgColumn(name: "three_pointers_percentage")
  threePointersPerGame: String @pgColumn(name: "three_pointers_per_game")
  turnoversPerGame: String @pgColumn(name: "turnovers_per_game")
  turnoversTotal: String @pgColumn(name: "turnovers_total")
}

type BasketballReboundingStat @pgTable(name: "basketball_rebounding_stats") {
  id: Int! @unique
  reboundsDefensive: String @pgColumn(name: "rebounds_defensive")
  reboundsOffensive: String @pgColumn(name: "rebounds_offensive")
  reboundsPerGame: String @pgColumn(name: "rebounds_per_game")
  reboundsTotal: String @pgColumn(name: "rebounds_total")
  teamReboundsDefensive: String @pgColumn(name: "team_rebounds_defensive")
  teamReboundsOffensive: String @pgColumn(name: "team_rebounds_offensive")
  teamReboundsPerGame: String @pgColumn(name: "team_rebounds_per_game")
  teamReboundsTotal: String @pgColumn(name: "team_rebounds_total")
}

type BasketballTeamStat @pgTable(name: "basketball_team_stats") {
  foulsTotal: String @pgColumn(name: "fouls_total")
  id: Int! @unique
  largestLead: String @pgColumn(name: "largest_lead")
  timeoutsLeft: String @pgColumn(name: "timeouts_left")
  turnoverMargin: String @pgColumn(name: "turnover_margin")
}

type Bookmaker @pgTable(name: "bookmakers") {
  bookmakerKey: String @pgColumn(name: "bookmaker_key")
  id: Int! @unique
  location: Location @pgColumn(name: "location_id")
  publisher: Publisher! @pgColumn(name: "publisher_id")
  wageringMoneylines: [WageringMoneyline]
  wageringOddsLines: [WageringOddsLine]
  wageringRunlines: [WageringRunline]
  wageringStraightSpreadLines: [WageringStraightSpreadLine]
  wageringTotalScoreLines: [WageringTotalScoreLine]
}

type CorePersonStat @pgTable(name: "core_person_stats") {
  eventsPlayed: Int @pgColumn(name: "events_played")
  eventsStarted: Int @pgColumn(name: "events_started")
  id: Int! @unique
  position: Position @pgColumn(name: "position_id")
  timePlayedEvent: String @pgColumn(name: "time_played_event")
  timePlayedEventAverage: String @pgColumn(name: "time_played_event_average")
  timePlayedTotal: String @pgColumn(name: "time_played_total")
}

type CoreStat @pgTable(name: "core_stats") {
  id: Int! @unique
  score: String
  scoreAttempts: String @pgColumn(name: "score_attempts")
  scoreAttemptsOpposing: String @pgColumn(name: "score_attempts_opposing")
  scoreOpposing: String @pgColumn(name: "score_opposing")
  scorePercentage: String @pgColumn(name: "score_percentage")
  scorePercentageOpposing: String @pgColumn(name: "score_percentage_opposing")
}

type DbInfo @pgTable(name: "db_info") {
  version: String! @default(value: "16")
}

type DisplayName @pgTable(name: "display_names") {
  abbreviation: String
  alias: String
  entityId: Int! @pgColumn(name: "entity_id")
  entityType: String! @pgColumn(name: "entity_type")
  firstName: String @pgColumn(name: "first_name")
  fullName: String @pgColumn(name: "full_name")
  id: Int! @unique
  language: String!
  lastName: String @pgColumn(name: "last_name")
  middleName: String @pgColumn(name: "middle_name")
  prefix: String
  shortName: String @pgColumn(name: "short_name")
  suffix: String
}

type Document @pgTable(name: "documents") {
  affiliationsDocuments: [AffiliationsDocument]
  dateTime: DateTime @pgColumn(name: "date_time")
  dbLoadingDateTime: DateTime @pgColumn(name: "db_loading_date_time")
  docId: String! @pgColumn(name: "doc_id")
  documentContents: [DocumentContent]
  documentFixture: DocumentFixture! @pgColumn(name: "document_fixture_id")
  documentFixturesEvents: [DocumentFixturesEvent]
  documentPackageEntry: [DocumentPackageEntry]
  documentsMedia: [DocumentsMedia]
  eventsDocuments: [EventsDocument]
  id: Int! @unique
  language: String
  latestRevisions: [LatestRevision]
  personsDocuments: [PersonsDocument]
  priority: String
  publisher: Publisher! @pgColumn(name: "publisher_id") @relation(name: "DocumentPublisherToPublisherDocuments")
  revisionId: String @pgColumn(name: "revision_id")
  source: Publisher @pgColumn(name: "source_id") @relation(name: "DocumentSourceToPublisherDocuments")
  statsCoverage: String @pgColumn(name: "stats_coverage")
  teamsDocuments: [TeamsDocument]
  title: String
}

type DocumentClass @pgTable(name: "document_classes") {
  documentFixtures: [DocumentFixture]
  id: Int! @unique
  name: String
}

type DocumentContent @pgTable(name: "document_contents") {
  abstract: String
  document: Document! @pgColumn(name: "document_id")
  id: Int! @unique
  sportsml: String
}

type DocumentFixture @pgTable(name: "document_fixtures") {
  documentClass: DocumentClass! @pgColumn(name: "document_class_id")
  documentFixturesEvents: [DocumentFixturesEvent]
  documents: [Document]
  fixtureKey: String @pgColumn(name: "fixture_key")
  id: Int! @unique
  name: String
  publisher: Publisher! @pgColumn(name: "publisher_id")
}

type DocumentFixturesEvent @pgTable(name: "document_fixtures_events") {
  documentFixture: DocumentFixture! @pgColumn(name: "document_fixture_id")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  lastUpdate: DateTime @pgColumn(name: "last_update")
  latestDocument: Document! @pgColumn(name: "latest_document_id")
}

type DocumentPackage @pgTable(name: "document_packages") {
  dateTime: DateTime @pgColumn(name: "date_time")
  documentPackageEntry: [DocumentPackageEntry]
  id: Int! @unique
  packageKey: String @pgColumn(name: "package_key")
  packageName: String @pgColumn(name: "package_name")
}

type DocumentPackageEntry @pgTable(name: "document_package_entry") {
  document: Document! @pgColumn(name: "document_id")
  documentPackage: DocumentPackage! @pgColumn(name: "document_package_id")
  headline: String
  id: Int! @unique
  rank: String
  shortHeadline: String @pgColumn(name: "short_headline")
}

type DocumentsMedia @pgTable(name: "documents_media") {
  document: Document! @pgColumn(name: "document_id")
  id: Int! @unique
  media: Media! @pgColumn(name: "media_id")
  mediaCaption: MediaCaption! @pgColumn(name: "media_caption_id")
}

type Event @pgTable(name: "events") {
  affiliationsEvents: [AffiliationsEvent]
  americanFootballEventStates: [AmericanFootballEventState]
  attendance: String
  baseballEventStates: [BaseballEventState]
  basketballEventStates: [BasketballEventState]
  documentFixturesEvents: [DocumentFixturesEvent]
  duration: String
  eventKey: String! @pgColumn(name: "event_key")
  eventsDocuments: [EventsDocument]
  eventsMedia: [EventsMedia]
  eventsSubSeasons: [EventsSubSeason]
  eventStatus: String @pgColumn(name: "event_status")
  iceHockeyEventStates: [IceHockeyEventState]
  id: Int! @unique
  lastUpdate: DateTime @pgColumn(name: "last_update")
  motorRacingEventStates: [MotorRacingEventState]
  participantsEvents: [ParticipantsEvent]
  personEventMetadata: [PersonEventMetadatum]
  publisher: Publisher! @pgColumn(name: "publisher_id")
  site: Site @pgColumn(name: "site_id")
  siteAlignment: String @pgColumn(name: "site_alignment")
  soccerEventStates: [SoccerEventState]
  startDateTime: DateTime @pgColumn(name: "start_date_time")
  tennisEventStates: [TennisEventState]
  wageringMoneylines: [WageringMoneyline]
  wageringOddsLines: [WageringOddsLine]
  wageringRunlines: [WageringRunline]
  wageringStraightSpreadLines: [WageringStraightSpreadLine]
  wageringTotalScoreLines: [WageringTotalScoreLine]
  weatherConditions: [WeatherCondition]
}

type EventsDocument @linkTable @pgTable(name: "events_documents") {
  document: Document! @pgColumn(name: "document_id")
  event: Event! @pgColumn(name: "event_id")
}

type EventsMedia @linkTable @pgTable(name: "events_media") {
  event: Event! @pgColumn(name: "event_id")
  media: Media! @pgColumn(name: "media_id")
}

type EventsSubSeason @linkTable @pgTable(name: "events_sub_seasons") {
  event: Event! @pgColumn(name: "event_id")
  subSeason: SubSeason! @pgColumn(name: "sub_season_id")
}

type IceHockeyActionParticipant @pgTable(name: "ice_hockey_action_participants") {
  iceHockeyActionPlayId: Int! @pgColumn(name: "ice_hockey_action_play_id")
  id: Int! @unique
  participantRole: String! @pgColumn(name: "participant_role")
  personId: Int! @pgColumn(name: "person_id")
  pointCredit: Int @pgColumn(name: "point_credit")
}

type IceHockeyActionPlay @pgTable(name: "ice_hockey_action_plays") {
  comment: String
  iceHockeyEventStateId: Int! @pgColumn(name: "ice_hockey_event_state_id")
  id: Int! @unique
  playResult: String @pgColumn(name: "play_result")
  playType: String @pgColumn(name: "play_type")
  scoreAttemptType: String @pgColumn(name: "score_attempt_type")
}

type IceHockeyDefensiveStat @pgTable(name: "ice_hockey_defensive_stats") {
  goalsAgainstAverage: String @pgColumn(name: "goals_against_average")
  goalsEmptyNetAllowed: String @pgColumn(name: "goals_empty_net_allowed")
  goalsPenaltyShotAllowed: String @pgColumn(name: "goals_penalty_shot_allowed")
  goalsPowerPlayAllowed: String @pgColumn(name: "goals_power_play_allowed")
  goalsShootoutAllowed: String @pgColumn(name: "goals_shootout_allowed")
  goalsShortHandedAllowed: String @pgColumn(name: "goals_short_handed_allowed")
  hits: String
  id: Int! @unique
  minutesPenaltyKilling: String @pgColumn(name: "minutes_penalty_killing")
  penaltyKillingAmount: String @pgColumn(name: "penalty_killing_amount")
  penaltyKillingPercentage: String @pgColumn(name: "penalty_killing_percentage")
  savePercentage: String @pgColumn(name: "save_percentage")
  saves: String
  shotsBlocked: String @pgColumn(name: "shots_blocked")
  shotsPenaltyShotAllowed: String @pgColumn(name: "shots_penalty_shot_allowed")
  shotsPowerPlayAllowed: String @pgColumn(name: "shots_power_play_allowed")
  shotsShootoutAllowed: String @pgColumn(name: "shots_shootout_allowed")
  shutouts: String
  takeaways: String
}

type IceHockeyEventState @pgTable(name: "ice_hockey_event_states") {
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  periodTimeElapsed: String @pgColumn(name: "period_time_elapsed")
  periodTimeRemaining: String @pgColumn(name: "period_time_remaining")
  periodValue: String @pgColumn(name: "period_value")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
}

type IceHockeyOffensiveStat @pgTable(name: "ice_hockey_offensive_stats") {
  assists: String
  faceoffLosses: String @pgColumn(name: "faceoff_losses")
  faceoffWinPercentage: String @pgColumn(name: "faceoff_win_percentage")
  faceoffWins: String @pgColumn(name: "faceoff_wins")
  giveaways: String
  goalsEmptyNet: String @pgColumn(name: "goals_empty_net")
  goalsEvenStrength: String @pgColumn(name: "goals_even_strength")
  goalsGameTying: String @pgColumn(name: "goals_game_tying")
  goalsGameWinning: String @pgColumn(name: "goals_game_winning")
  goalsOvertime: String @pgColumn(name: "goals_overtime")
  goalsPenaltyShot: String @pgColumn(name: "goals_penalty_shot")
  goalsPowerPlay: String @pgColumn(name: "goals_power_play")
  goalsShootout: String @pgColumn(name: "goals_shootout")
  goalsShortHanded: String @pgColumn(name: "goals_short_handed")
  id: Int! @unique
  minutesPowerPlay: String @pgColumn(name: "minutes_power_play")
  points: String
  powerPlayAmount: String @pgColumn(name: "power_play_amount")
  powerPlayPercentage: String @pgColumn(name: "power_play_percentage")
  scoringChances: String @pgColumn(name: "scoring_chances")
  shotsPenaltyShotMissed: String @pgColumn(name: "shots_penalty_shot_missed")
  shotsPenaltyShotPercentage: String @pgColumn(name: "shots_penalty_shot_percentage")
  shotsPenaltyShotTaken: String @pgColumn(name: "shots_penalty_shot_taken")
}

type IceHockeyPlayerStat @pgTable(name: "ice_hockey_player_stats") {
  id: Int! @unique
  plusMinus: String @pgColumn(name: "plus_minus")
}

type InjuryPhase @pgTable(name: "injury_phases") {
  disabledList: String @pgColumn(name: "disabled_list")
  endDateTime: DateTime @pgColumn(name: "end_date_time")
  id: Int! @unique
  injuryComment: String @pgColumn(name: "injury_comment")
  injurySide: String @pgColumn(name: "injury_side")
  injuryStatus: String @pgColumn(name: "injury_status")
  injuryType: String @pgColumn(name: "injury_type")
  person: Person! @pgColumn(name: "person_id")
  phaseType: String @pgColumn(name: "phase_type")
  season: Season @pgColumn(name: "season_id")
  startDateTime: DateTime @pgColumn(name: "start_date_time")
}

type KeyAlias @pgTable(name: "key_aliases") {
  id: Int! @unique
  keyId: Int! @pgColumn(name: "key_id")
  keyRoot: KeyRoot! @pgColumn(name: "key_root_id")
}

type KeyRoot @pgTable(name: "key_roots") {
  id: Int! @unique
  keyAliases: [KeyAlias]
  keyType: String @pgColumn(name: "key_type")
}

type LatestRevision @pgTable(name: "latest_revisions") {
  id: Int! @unique
  latestDocument: Document! @pgColumn(name: "latest_document_id")
  revisionId: String! @pgColumn(name: "revision_id")
}

type Location @pgTable(name: "locations") {
  addresses: [Address]
  bookmakers: [Bookmaker]
  countryCode: String @pgColumn(name: "country_code")
  id: Int! @unique
  latitude: String
  longitude: String
  media: [Media]
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Person.residenceLocation.
  # persons: [Person] @relation(name: "LocationPersonsToPersonResidenceLocation")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Person.hometownLocation.
  # persons: [Person] @relation(name: "LocationPersonsToPersonHometownLocation")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Person.deathLocation.
  # persons: [Person] @relation(name: "LocationPersonsToPersonDeathLocation")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Person.birthLocation.
  # persons: [Person] @relation(name: "LocationPersonsToPersonBirthLocation")
  sites: [Site]
  timezone: String
}

type Media @pgTable(name: "media") {
  affiliationsMedia: [AffiliationsMedia]
  creationLocation: Location! @pgColumn(name: "creation_location_id")
  credit: Person! @pgColumn(name: "credit_id")
  dateTime: String @pgColumn(name: "date_time")
  dbLoadingDateTime: DateTime @pgColumn(name: "db_loading_date_time")
  documentsMedia: [DocumentsMedia]
  eventsMedia: [EventsMedia]
  id: Int! @unique
  mediaCaptions: [MediaCaption]
  mediaContents: [MediaContent]
  mediaKeywords: [MediaKeyword]
  mediaType: String @pgColumn(name: "media_type")
  objectId: Int @pgColumn(name: "object_id")
  personsMedia: [PersonsMedia]
  publisher: Publisher! @pgColumn(name: "publisher_id")
  revisionId: Int @pgColumn(name: "revision_id")
  sourceId: Int @pgColumn(name: "source_id")
  teamsMedia: [TeamsMedia]
}

type MediaCaption @pgTable(name: "media_captions") {
  caption: String
  captionAuthor: Person! @pgColumn(name: "caption_author_id")
  captionSize: String @pgColumn(name: "caption_size")
  captionType: String @pgColumn(name: "caption_type")
  documentsMedia: [DocumentsMedia]
  id: Int! @unique
  language: String
  media: Media! @pgColumn(name: "media_id")
}

type MediaContent @pgTable(name: "media_contents") {
  duration: String
  fileSize: String @pgColumn(name: "file_size")
  format: String
  height: String
  id: Int! @unique
  media: Media! @pgColumn(name: "media_id")
  mimeType: String @pgColumn(name: "mime_type")
  object: String
  resolution: String
  width: String
}

type MediaKeyword @pgTable(name: "media_keywords") {
  id: Int! @unique
  keyword: String
  media: Media! @pgColumn(name: "media_id")
}

type MotorRacingEventState @pgTable(name: "motor_racing_event_states") {
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  flagState: String @pgColumn(name: "flag_state")
  id: Int! @unique
  lap: String
  lapsRemaining: String @pgColumn(name: "laps_remaining")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  timeElapsed: String @pgColumn(name: "time_elapsed")
}

type MotorRacingQualifyingStat @pgTable(name: "motor_racing_qualifying_stats") {
  grid: String
  id: Int! @unique
  polePosition: String @pgColumn(name: "pole_position")
  poleWins: String @pgColumn(name: "pole_wins")
  qualifyingPosition: String @pgColumn(name: "qualifying_position")
  qualifyingSpeed: String @pgColumn(name: "qualifying_speed")
  qualifyingSpeedUnits: String @pgColumn(name: "qualifying_speed_units")
  qualifyingTime: String @pgColumn(name: "qualifying_time")
}

type MotorRacingRaceStat @pgTable(name: "motor_racing_race_stats") {
  bonus: String
  distanceCompleted: String @pgColumn(name: "distance_completed")
  distanceLeading: String @pgColumn(name: "distance_leading")
  distanceUnits: String @pgColumn(name: "distance_units")
  finishes: String
  finishesTop10: String @pgColumn(name: "finishes_top_10")
  finishesTop5: String @pgColumn(name: "finishes_top_5")
  id: Int! @unique
  lapsAheadFollower: String @pgColumn(name: "laps_ahead_follower")
  lapsBehindLeader: String @pgColumn(name: "laps_behind_leader")
  lapsCompleted: String @pgColumn(name: "laps_completed")
  lapsLeadingTotal: String @pgColumn(name: "laps_leading_total")
  leadsTotal: String @pgColumn(name: "leads_total")
  money: String
  moneyUnits: String @pgColumn(name: "money_units")
  nonFinishes: String @pgColumn(name: "non_finishes")
  points: String
  pointsRookie: String @pgColumn(name: "points_rookie")
  racesLeading: String @pgColumn(name: "races_leading")
  speedAverage: String @pgColumn(name: "speed_average")
  speedUnits: String @pgColumn(name: "speed_units")
  starts: String
  status: String
  time: String
  timeAheadFollower: String @pgColumn(name: "time_ahead_follower")
  timeBehindLeader: String @pgColumn(name: "time_behind_leader")
  wins: String
}

type OutcomeTotal @pgTable(name: "outcome_totals") {
  id: Int! @unique
  losses: String
  outcomeHolderId: Int @pgColumn(name: "outcome_holder_id")
  outcomeHolderType: String @pgColumn(name: "outcome_holder_type")
  pointsDifference: String @pgColumn(name: "points_difference")
  pointsScoredAgainst: String @pgColumn(name: "points_scored_against")
  pointsScoredFor: String @pgColumn(name: "points_scored_for")
  rank: String
  standingPoints: String @pgColumn(name: "standing_points")
  standingSubgroup: StandingSubgroup! @pgColumn(name: "standing_subgroup_id")
  streakDuration: String @pgColumn(name: "streak_duration")
  streakEnd: DateTime @pgColumn(name: "streak_end")
  streakStart: DateTime @pgColumn(name: "streak_start")
  streakTotal: String @pgColumn(name: "streak_total")
  streakType: String @pgColumn(name: "streak_type")
  ties: String
  undecideds: String
  winningPercentage: String @pgColumn(name: "winning_percentage")
  wins: String
}

type ParticipantsEvent @pgTable(name: "participants_events") {
  alignment: String
  event: Event! @pgColumn(name: "event_id")
  eventOutcome: String @pgColumn(name: "event_outcome")
  id: Int! @unique
  participantId: Int! @pgColumn(name: "participant_id")
  participantType: String! @pgColumn(name: "participant_type")
  periods: [Period]
  rank: Int
  score: String
}

type Period @pgTable(name: "periods") {
  id: Int! @unique
  participantEvent: ParticipantsEvent! @pgColumn(name: "participant_event_id")
  periodValue: String @pgColumn(name: "period_value")
  score: String
  subPeriods: [SubPeriod]
}

type Person @pgTable(name: "persons") {
  americanFootballActionParticipants: [AmericanFootballActionParticipant]
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballActionSubstitution.personReplacing.
  # baseballActionSubstitutions: [BaseballActionSubstitution] @relation(name: "BaseballActionSubstitutionPersonReplacingToPersonBaseballActionSubstitutions")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballActionSubstitution.personOriginal.
  # baseballActionSubstitutions: [BaseballActionSubstitution] @relation(name: "BaseballActionSubstitutionPersonOriginalToPersonBaseballActionSubstitutions")
  baseballDefensivePlayers: [BaseballDefensivePlayer]
  # Field name normalization failed because of a conflicting field name.
  baseballEventStates: [BaseballEventState] @relation(name: "BaseballEventStateRunner_on_third_idToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballEventState.runner_on_second_id.
  # baseballEventStates: [BaseballEventState] @relation(name: "BaseballEventStateRunner_on_second_idToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballEventState.runner_on_first_id.
  # baseballEventStates: [BaseballEventState] @relation(name: "BaseballEventStateRunner_on_first_idToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballEventState.pitcher.
  # baseballEventStates: [BaseballEventState] @relation(name: "BaseballEventStatePitcherToPersonBaseballEventStates")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballEventState.batter.
  # baseballEventStates: [BaseballEventState] @relation(name: "BaseballEventStateBatterToPersonBaseballEventStates")
  birthDate: String @pgColumn(name: "birth_date")
  birthLocation: Location @pgColumn(name: "birth_location_id") @relation(name: "LocationPersonsToPersonBirthLocation")
  deathDate: String @pgColumn(name: "death_date")
  deathLocation: Location @pgColumn(name: "death_location_id") @relation(name: "LocationPersonsToPersonDeathLocation")
  gender: String
  hometownLocation: Location @pgColumn(name: "hometown_location_id") @relation(name: "LocationPersonsToPersonHometownLocation")
  id: Int! @unique
  injuryPhases: [InjuryPhase]
  media: [Media]
  mediaCaptions: [MediaCaption]
  personEventMetadata: [PersonEventMetadatum]
  personKey: String! @pgColumn(name: "person_key")
  personPhases: [PersonPhase]
  personsDocuments: [PersonsDocument]
  personsMedia: [PersonsMedia]
  publisher: Publisher! @pgColumn(name: "publisher_id")
  residenceLocation: Location @pgColumn(name: "residence_location_id") @relation(name: "LocationPersonsToPersonResidenceLocation")
}

type PersonEventMetadatum @pgTable(name: "person_event_metadata") {
  event: Event! @pgColumn(name: "event_id")
  health: String
  id: Int! @unique
  lineupSlot: Int @pgColumn(name: "lineup_slot")
  lineupSlotSequence: Int @pgColumn(name: "lineup_slot_sequence")
  person: Person! @pgColumn(name: "person_id")
  position: Position @pgColumn(name: "position_id")
  role: Role @pgColumn(name: "role_id")
  status: String
  team: Team @pgColumn(name: "team_id")
  weight: String
}

type PersonPhase @pgTable(name: "person_phases") {
  endDateTime: DateTime @pgColumn(name: "end_date_time")
  endSeason: Season @pgColumn(name: "end_season_id") @relation(name: "PersonPhaseEndSeasonToSeasonPersonPhases")
  entryReason: String @pgColumn(name: "entry_reason")
  exitReason: String @pgColumn(name: "exit_reason")
  height: String
  id: Int! @unique
  membershipId: Int! @pgColumn(name: "membership_id")
  membershipType: String! @pgColumn(name: "membership_type")
  person: Person! @pgColumn(name: "person_id")
  phaseStatus: String @pgColumn(name: "phase_status")
  regularPosition: Position @pgColumn(name: "regular_position_id")
  regularPositionDepth: String @pgColumn(name: "regular_position_depth")
  role: Role @pgColumn(name: "role_id")
  roleStatus: String @pgColumn(name: "role_status")
  selectionLevel: Int @pgColumn(name: "selection_level")
  selectionOverall: Int @pgColumn(name: "selection_overall")
  selectionSublevel: Int @pgColumn(name: "selection_sublevel")
  startDateTime: DateTime @pgColumn(name: "start_date_time")
  startSeason: Season @pgColumn(name: "start_season_id") @relation(name: "PersonPhaseStartSeasonToSeasonPersonPhases")
  uniformNumber: String @pgColumn(name: "uniform_number")
  weight: String
}

type PersonsDocument @linkTable @pgTable(name: "persons_documents") {
  document: Document! @pgColumn(name: "document_id")
  person: Person! @pgColumn(name: "person_id")
}

type PersonsMedia @linkTable @pgTable(name: "persons_media") {
  media: Media! @pgColumn(name: "media_id")
  person: Person! @pgColumn(name: "person_id")
}

type Position @pgTable(name: "positions") {
  abbreviation: String!
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballActionSubstitution.personReplacingPosition.
  # baseballActionSubstitutions: [BaseballActionSubstitution] @relation(name: "BaseballActionSubstitutionPersonReplacingPositionToPositionBaseballActionSubstitutions")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references BaseballActionSubstitution.personOriginalPosition.
  # baseballActionSubstitutions: [BaseballActionSubstitution] @relation(name: "BaseballActionSubstitutionPersonOriginalPositionToPositionBaseballActionSubstitutions")
  baseballDefensivePlayers: [BaseballDefensivePlayer]
  corePersonStats: [CorePersonStat]
  id: Int! @unique
  personEventMetadata: [PersonEventMetadatum]
  personPhases: [PersonPhase]
}

type Publisher @pgTable(name: "publishers") {
  affiliations: [Affiliation]
  bookmakers: [Bookmaker]
  documentFixtures: [DocumentFixture]
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Document.source.
  # documents: [Document] @relation(name: "DocumentSourceToPublisherDocuments")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references Document.publisher.
  # documents: [Document] @relation(name: "DocumentPublisherToPublisherDocuments")
  events: [Event]
  id: Int! @unique
  media: [Media]
  persons: [Person]
  publisherKey: String! @pgColumn(name: "publisher_key")
  publisherName: String @pgColumn(name: "publisher_name")
  seasons: [Season]
  sites: [Site]
  standings: [Standing]
  teams: [Team]
}

type Role @pgTable(name: "roles") {
  comment: String
  id: Int! @unique
  personEventMetadata: [PersonEventMetadatum]
  personPhases: [PersonPhase]
  roleKey: String! @pgColumn(name: "role_key")
  roleName: String @pgColumn(name: "role_name")
  teamPhases: [TeamPhase]
}

type Season @pgTable(name: "seasons") {
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references AffiliationPhase.startSeason.
  # affiliationPhases: [AffiliationPhase] @relation(name: "AffiliationPhaseStartSeasonToSeasonAffiliationPhases")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references AffiliationPhase.endSeason.
  # affiliationPhases: [AffiliationPhase] @relation(name: "AffiliationPhaseEndSeasonToSeasonAffiliationPhases")
  endDateTime: DateTime @pgColumn(name: "end_date_time")
  id: Int! @unique
  injuryPhases: [InjuryPhase]
  league: Affiliation! @pgColumn(name: "league_id")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references PersonPhase.startSeason.
  # personPhases: [PersonPhase] @relation(name: "PersonPhaseStartSeasonToSeasonPersonPhases")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references PersonPhase.endSeason.
  # personPhases: [PersonPhase] @relation(name: "PersonPhaseEndSeasonToSeasonPersonPhases")
  publisher: Publisher! @pgColumn(name: "publisher_id")
  seasonKey: Int! @pgColumn(name: "season_key")
  startDateTime: DateTime @pgColumn(name: "start_date_time")
  subSeasons: [SubSeason]
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references TeamPhase.startSeason.
  # teamPhases: [TeamPhase] @relation(name: "SeasonTeamPhasesToTeamPhaseStartSeason")
  # Field name normalization failed because of a conflicting field name.
  # Could not auto-generate backwards relation field, field name would be ambiguous.
  # Please specify the name of this field and the name of the relation manually.
  # It references TeamPhase.endSeason.
  # teamPhases: [TeamPhase] @relation(name: "SeasonTeamPhasesToTeamPhaseEndSeason")
}

type Site @pgTable(name: "sites") {
  events: [Event]
  id: Int! @unique
  location: Location @pgColumn(name: "location_id")
  publisher: Publisher! @pgColumn(name: "publisher_id")
  siteKey: Int! @pgColumn(name: "site_key")
  teams: [Team]
}

type SoccerDefensiveStat @pgTable(name: "soccer_defensive_stats") {
  catchesPunches: String @pgColumn(name: "catches_punches")
  goalsAgainstAverage: String @pgColumn(name: "goals_against_average")
  goalsAgainstTotal: String @pgColumn(name: "goals_against_total")
  goalsPenaltyShotAllowed: String @pgColumn(name: "goals_penalty_shot_allowed")
  id: Int! @unique
  savePercentage: String @pgColumn(name: "save_percentage")
  saves: String
  shotsBlocked: String @pgColumn(name: "shots_blocked")
  shotsOnGoalTotal: String @pgColumn(name: "shots_on_goal_total")
  shotsPenaltyShotAllowed: String @pgColumn(name: "shots_penalty_shot_allowed")
  shotsShootoutAllowed: String @pgColumn(name: "shots_shootout_allowed")
  shotsShootoutTotal: String @pgColumn(name: "shots_shootout_total")
  shutouts: String
}

type SoccerEventState @pgTable(name: "soccer_event_states") {
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  minutesElapsed: String @pgColumn(name: "minutes_elapsed")
  periodMinuteElapsed: String @pgColumn(name: "period_minute_elapsed")
  periodTimeElapsed: String @pgColumn(name: "period_time_elapsed")
  periodTimeRemaining: String @pgColumn(name: "period_time_remaining")
  periodValue: String @pgColumn(name: "period_value")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
}

type SoccerFoulStat @pgTable(name: "soccer_foul_stats") {
  cautionPointsPending: String @pgColumn(name: "caution_points_pending")
  cautionPointsTotal: String @pgColumn(name: "caution_points_total")
  cautionsPending: String @pgColumn(name: "cautions_pending")
  cautionsTotal: String @pgColumn(name: "cautions_total")
  ejectionsTotal: String @pgColumn(name: "ejections_total")
  foulsCommited: String @pgColumn(name: "fouls_commited")
  foulsSuffered: String @pgColumn(name: "fouls_suffered")
  id: Int! @unique
}

type SoccerOffensiveStat @pgTable(name: "soccer_offensive_stats") {
  assistsGameTying: String @pgColumn(name: "assists_game_tying")
  assistsGameWinning: String @pgColumn(name: "assists_game_winning")
  assistsOvertime: String @pgColumn(name: "assists_overtime")
  assistsTotal: String @pgColumn(name: "assists_total")
  cornerKicks: String @pgColumn(name: "corner_kicks")
  giveaways: String
  goalsGameTying: String @pgColumn(name: "goals_game_tying")
  goalsGameWinning: String @pgColumn(name: "goals_game_winning")
  goalsOvertime: String @pgColumn(name: "goals_overtime")
  goalsShootout: String @pgColumn(name: "goals_shootout")
  goalsTotal: String @pgColumn(name: "goals_total")
  hatTricks: String @pgColumn(name: "hat_tricks")
  id: Int! @unique
  offsides: String
  points: String
  shotsHitFrame: String @pgColumn(name: "shots_hit_frame")
  shotsOnGoalTotal: String @pgColumn(name: "shots_on_goal_total")
  shotsPenaltyShotMissed: String @pgColumn(name: "shots_penalty_shot_missed")
  shotsPenaltyShotPercentage: String @pgColumn(name: "shots_penalty_shot_percentage")
  shotsPenaltyShotScored: String @pgColumn(name: "shots_penalty_shot_scored")
  shotsPenaltyShotTaken: String @pgColumn(name: "shots_penalty_shot_taken")
  shotsShootoutMissed: String @pgColumn(name: "shots_shootout_missed")
  shotsShootoutPercentage: String @pgColumn(name: "shots_shootout_percentage")
  shotsShootoutScored: String @pgColumn(name: "shots_shootout_scored")
  shotsShootoutTaken: String @pgColumn(name: "shots_shootout_taken")
  shotsTotal: String @pgColumn(name: "shots_total")
}

type Standing @pgTable(name: "standings") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  alignmentScope: String @pgColumn(name: "alignment_scope")
  competitionScope: String @pgColumn(name: "competition_scope")
  competitionScopeId: String @pgColumn(name: "competition_scope_id")
  durationScope: String @pgColumn(name: "duration_scope")
  id: Int! @unique
  lastUpdated: String @pgColumn(name: "last_updated")
  publisher: Publisher! @pgColumn(name: "publisher_id")
  scopingLabel: String @pgColumn(name: "scoping_label")
  siteScope: String @pgColumn(name: "site_scope")
  source: String
  standingSubgroups: [StandingSubgroup]
  standingType: String @pgColumn(name: "standing_type")
  subSeason: SubSeason! @pgColumn(name: "sub_season_id")
}

type StandingSubgroup @pgTable(name: "standing_subgroups") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  id: Int! @unique
  outcomeTotals: [OutcomeTotal]
  standing: Standing! @pgColumn(name: "standing_id")
}

type Stat @pgTable(name: "stats") {
  context: String!
  id: Int! @unique
  statCoverageId: Int @pgColumn(name: "stat_coverage_id")
  statCoverageType: String @pgColumn(name: "stat_coverage_type")
  statHolderId: Int @pgColumn(name: "stat_holder_id")
  statHolderType: String @pgColumn(name: "stat_holder_type")
  statRepositoryId: Int! @pgColumn(name: "stat_repository_id")
  statRepositoryType: String @pgColumn(name: "stat_repository_type")
}

type SubPeriod @pgTable(name: "sub_periods") {
  id: Int! @unique
  period: Period! @pgColumn(name: "period_id")
  score: String
  subPeriodValue: String @pgColumn(name: "sub_period_value")
}

type SubSeason @pgTable(name: "sub_seasons") {
  endDateTime: DateTime @pgColumn(name: "end_date_time")
  eventsSubSeasons: [EventsSubSeason]
  id: Int! @unique
  season: Season! @pgColumn(name: "season_id")
  standings: [Standing]
  startDateTime: DateTime @pgColumn(name: "start_date_time")
  subSeasonKey: String! @pgColumn(name: "sub_season_key")
  subSeasonType: String! @pgColumn(name: "sub_season_type")
}

type Team @pgTable(name: "teams") {
  americanFootballEventStates: [AmericanFootballEventState]
  homeSite: Site @pgColumn(name: "home_site_id")
  id: Int! @unique
  personEventMetadata: [PersonEventMetadatum]
  publisher: Publisher! @pgColumn(name: "publisher_id")
  teamKey: String! @pgColumn(name: "team_key")
  teamPhases: [TeamPhase]
  teamsDocuments: [TeamsDocument]
  teamsMedia: [TeamsMedia]
  wageringMoneylines: [WageringMoneyline]
  wageringOddsLines: [WageringOddsLine]
  wageringRunlines: [WageringRunline]
  wageringStraightSpreadLines: [WageringStraightSpreadLine]
  wageringTotalScoreLines: [WageringTotalScoreLine]
}

type TeamAmericanFootballStat @pgTable(name: "team_american_football_stats") {
  averageStartingPosition: String @pgColumn(name: "average_starting_position")
  id: Int! @unique
  timeOfPossession: String @pgColumn(name: "time_of_possession")
  timeouts: String
  turnoverRatio: String @pgColumn(name: "turnover_ratio")
  yardsPerAttempt: String @pgColumn(name: "yards_per_attempt")
}

type TeamPhase @pgTable(name: "team_phases") {
  affiliation: Affiliation! @pgColumn(name: "affiliation_id")
  endDateTime: String @pgColumn(name: "end_date_time")
  endSeason: Season @pgColumn(name: "end_season_id") @relation(name: "SeasonTeamPhasesToTeamPhaseEndSeason")
  id: Int! @unique
  phaseStatus: String @pgColumn(name: "phase_status")
  role: Role @pgColumn(name: "role_id")
  startDateTime: String @pgColumn(name: "start_date_time")
  startSeason: Season @pgColumn(name: "start_season_id") @relation(name: "SeasonTeamPhasesToTeamPhaseStartSeason")
  team: Team! @pgColumn(name: "team_id")
}

type TeamsDocument @linkTable @pgTable(name: "teams_documents") {
  document: Document! @pgColumn(name: "document_id")
  team: Team! @pgColumn(name: "team_id")
}

type TeamsMedia @linkTable @pgTable(name: "teams_media") {
  media: Media! @pgColumn(name: "media_id")
  team: Team! @pgColumn(name: "team_id")
}

type TennisActionPoint @pgTable(name: "tennis_action_points") {
  id: Int! @unique
  sequenceNumber: String @pgColumn(name: "sequence_number")
  subPeriodId: String @pgColumn(name: "sub_period_id")
  winType: String @pgColumn(name: "win_type")
}

type TennisActionVolley @pgTable(name: "tennis_action_volleys") {
  id: Int! @unique
  landingLocation: String @pgColumn(name: "landing_location")
  result: String
  sequenceNumber: String @pgColumn(name: "sequence_number")
  spinType: String @pgColumn(name: "spin_type")
  swingType: String @pgColumn(name: "swing_type")
  tennisActionPointsId: Int @pgColumn(name: "tennis_action_points_id")
  trajectoryDetails: String @pgColumn(name: "trajectory_details")
}

type TennisEventState @pgTable(name: "tennis_event_states") {
  context: String
  currentState: Int @pgColumn(name: "current_state")
  event: Event! @pgColumn(name: "event_id")
  game: String
  id: Int! @unique
  receiverPersonId: Int @pgColumn(name: "receiver_person_id")
  receiverScore: String @pgColumn(name: "receiver_score")
  sequenceNumber: Int @pgColumn(name: "sequence_number")
  serverPersonId: Int @pgColumn(name: "server_person_id")
  serverScore: String @pgColumn(name: "server_score")
  serviceNumber: String @pgColumn(name: "service_number")
  tennisSet: String @pgColumn(name: "tennis_set")
}

type TennisReturnStat @pgTable(name: "tennis_return_stats") {
  breakPointsConverted: String @pgColumn(name: "break_points_converted")
  breakPointsConvertedPct: String @pgColumn(name: "break_points_converted_pct")
  breakPointsPlayed: String @pgColumn(name: "break_points_played")
  firstServiceReturnPointsWon: String @pgColumn(name: "first_service_return_points_won")
  firstServiceReturnPointsWonPct: String @pgColumn(name: "first_service_return_points_won_pct")
  id: Int! @unique
  matchesPlayed: String @pgColumn(name: "matches_played")
  returnGamesPlayed: String @pgColumn(name: "return_games_played")
  returnGamesWon: String @pgColumn(name: "return_games_won")
  returnGamesWonPct: String @pgColumn(name: "return_games_won_pct")
  returnsPlayed: String @pgColumn(name: "returns_played")
  secondServiceReturnPointsWon: String @pgColumn(name: "second_service_return_points_won")
  secondServiceReturnPointsWonPct: String @pgColumn(name: "second_service_return_points_won_pct")
}

type TennisServiceStat @pgTable(name: "tennis_service_stats") {
  aces: String
  breakPointsPlayed: String @pgColumn(name: "break_points_played")
  breakPointsSaved: String @pgColumn(name: "break_points_saved")
  breakPointsSavedPct: String @pgColumn(name: "break_points_saved_pct")
  firstServicePointsWon: String @pgColumn(name: "first_service_points_won")
  firstServicePointsWonPct: String @pgColumn(name: "first_service_points_won_pct")
  firstServicesGood: String @pgColumn(name: "first_services_good")
  firstServicesGoodPct: String @pgColumn(name: "first_services_good_pct")
  id: Int! @unique
  matchesPlayed: String @pgColumn(name: "matches_played")
  secondServicePointsWon: String @pgColumn(name: "second_service_points_won")
  secondServicePointsWonPct: String @pgColumn(name: "second_service_points_won_pct")
  serviceGamesPlayed: String @pgColumn(name: "service_games_played")
  serviceGamesWon: String @pgColumn(name: "service_games_won")
  serviceGamesWonPct: String @pgColumn(name: "service_games_won_pct")
  servicesPlayed: String @pgColumn(name: "services_played")
}

type WageringMoneyline @pgTable(name: "wagering_moneylines") {
  bookmaker: Bookmaker! @pgColumn(name: "bookmaker_id")
  comment: String
  dateTime: DateTime @pgColumn(name: "date_time")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  line: String
  lineOpening: String @pgColumn(name: "line_opening")
  personId: Int @pgColumn(name: "person_id")
  prediction: String
  rotationKey: String @pgColumn(name: "rotation_key")
  team: Team! @pgColumn(name: "team_id")
  vigorish: String
}

type WageringOddsLine @pgTable(name: "wagering_odds_lines") {
  bookmaker: Bookmaker! @pgColumn(name: "bookmaker_id")
  comment: String
  dateTime: DateTime @pgColumn(name: "date_time")
  denominator: String
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  numerator: String
  payoutAmount: String @pgColumn(name: "payout_amount")
  payoutCalculation: String @pgColumn(name: "payout_calculation")
  personId: Int @pgColumn(name: "person_id")
  prediction: String
  rotationKey: String @pgColumn(name: "rotation_key")
  team: Team! @pgColumn(name: "team_id")
}

type WageringRunline @pgTable(name: "wagering_runlines") {
  bookmaker: Bookmaker! @pgColumn(name: "bookmaker_id")
  comment: String
  dateTime: DateTime @pgColumn(name: "date_time")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  line: String
  lineOpening: String @pgColumn(name: "line_opening")
  lineValue: String @pgColumn(name: "line_value")
  personId: Int @pgColumn(name: "person_id")
  prediction: String
  rotationKey: String @pgColumn(name: "rotation_key")
  team: Team! @pgColumn(name: "team_id")
  vigorish: String
}

type WageringStraightSpreadLine @pgTable(name: "wagering_straight_spread_lines") {
  bookmaker: Bookmaker! @pgColumn(name: "bookmaker_id")
  comment: String
  dateTime: DateTime @pgColumn(name: "date_time")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  lineValue: String @pgColumn(name: "line_value")
  lineValueOpening: String @pgColumn(name: "line_value_opening")
  personId: Int @pgColumn(name: "person_id")
  prediction: String
  rotationKey: String @pgColumn(name: "rotation_key")
  team: Team! @pgColumn(name: "team_id")
  vigorish: String
}

type WageringTotalScoreLine @pgTable(name: "wagering_total_score_lines") {
  bookmaker: Bookmaker! @pgColumn(name: "bookmaker_id")
  comment: String
  dateTime: DateTime @pgColumn(name: "date_time")
  event: Event! @pgColumn(name: "event_id")
  id: Int! @unique
  lineOver: String @pgColumn(name: "line_over")
  lineUnder: String @pgColumn(name: "line_under")
  personId: Int @pgColumn(name: "person_id")
  prediction: String
  rotationKey: String @pgColumn(name: "rotation_key")
  team: Team! @pgColumn(name: "team_id")
  total: String
  totalOpening: String @pgColumn(name: "total_opening")
  vigorish: String
}

type WeatherCondition @pgTable(name: "weather_conditions") {
  clouds: String
  event: Event! @pgColumn(name: "event_id")
  humidity: String
  id: Int! @unique
  temperature: String
  temperatureUnits: String @pgColumn(name: "temperature_units")
  weatherCode: String @pgColumn(name: "weather_code")
  windDirection: String @pgColumn(name: "wind_direction")
  windVelocity: String @pgColumn(name: "wind_velocity")
}
