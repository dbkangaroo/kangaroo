model Address {
  id: Int @id @pg.serial("addresses_id_seq") @unique
  building: String? 
  country: String? 
  county: String? 
  district: String? 
  floor: String? 
  language: String? 
  locality: String? 
  location: Location 
  neighborhood: String? 
  postalCode: String? 
  region: String? 
  street: String? 
  streetNumber: String? 
  streetPrefix: String? 
  streetSuffix: String? 
  suite: String? 
}

model Affiliation {
  id: Int @id @pg.serial("affiliations_id_seq") @unique
  affiliationKey: String 
  affiliationPhases: AffiliationPhase[] 
  affiliationPhases: AffiliationPhase[]? 
  affiliationsDocuments: AffiliationsDocument[] 
  affiliationsEvents: AffiliationsEvent[] 
  affiliationsMedia: AffiliationsMedia[] 
  affiliationType: String? 
  positions: Position[] 
  publisher: Publisher 
  seasons: Season[] 
  standings: Standing[] 
  standingSubgroups: StandingSubgroup[] 
  teamPhases: TeamPhase[] 
}

model AffiliationPhase {
  id: Int @id @pg.serial("affiliation_phases_id_seq") @unique
  affiliation: Affiliation 
  ancestorAffiliation: Affiliation? 
  endDateTime: DateTime? 
  endSeason: Season? 
  startDateTime: DateTime? 
  startSeason: Season? 
}

model AffiliationDocument {
  affiliation: Affiliation 
  document: Document 
}

model AffiliationEvent {
  affiliation: Affiliation 
  event: Event 
}

model AffiliationMedia {
  affiliation: Affiliation 
  media: Media 
}

model AmericanFootballActionParticipant {
  id: Int @id @pg.serial("american_football_action_participants_id_seq") @unique
  americanFootballActionPlay: AmericanFootballActionPlay 
  fieldLine: Int? 
  participantRole: String 
  person: Person 
  scoreCredit: Int? 
  scoreType: String? 
  yardage: Int? 
  yardsGained: Int? 
}

model AmericanFootballActionPlay {
  id: Int @id @pg.serial("american_football_action_plays_id_seq") @unique
  americanFootballActionParticipants: AmericanFootballActionParticipant[] 
  americanFootballEventState: AmericanFootballEventState 
  comment: String? 
  driveResult: String? 
  playType: String? 
  points: Int? 
  scoreAttemptType: String? 
}

model AmericanFootballDefensiveStat {
  id: Int @id @pg.serial("american_football_defensive_stats_id_seq") @unique
  interceptionsAverage: String? 
  interceptionsLongest: String? 
  interceptionsTotal: String? 
  interceptionsTouchdown: String? 
  interceptionsYards: String? 
  passesDefensed: String? 
  quarterbackHurries: String? 
  sacksTotal: String? 
  sacksYards: String? 
  tacklesAssists: String? 
  tacklesSolo: String? 
  tacklesTotal: String? 
}

model AmericanFootballDownProgressStat {
  id: Int @id @pg.serial("american_football_down_progress_stats_id_seq") @unique
  conversionsFourthDown: String? 
  conversionsFourthDownAttempts: String? 
  conversionsFourthDownPercentage: String? 
  conversionsThirdDown: String? 
  conversionsThirdDownAttempts: String? 
  conversionsThirdDownPercentage: String? 
  firstDownsPass: String? 
  firstDownsPenalty: String? 
  firstDownsRun: String? 
  firstDownsTotal: String? 
}

model AmericanFootballEventState {
  id: Int @id @pg.serial("american_football_event_states_id_seq") @unique
  americanFootballActionPlays: AmericanFootballActionPlay[] 
  clockState: String? 
  context: String? 
  currentState: Int? 
  distanceFor1stDown: Int? 
  down: Int? 
  event: Event 
  fieldLine: Int? 
  fieldSide: String? 
  periodTimeElapsed: String? 
  periodTimeRemaining: String? 
  periodValue: Int? 
  sequenceNumber: Int? 
  teamInPossession: Team? 
}

model AmericanFootballFumbleStat {
  id: Int @id @pg.serial("american_football_fumbles_stats_id_seq") @unique
  fumblesCommitted: String? 
  fumblesForced: String? 
  fumblesLost: String? 
  fumblesOpposingCommitted: String? 
  fumblesOpposingLost: String? 
  fumblesOpposingRecovered: String? 
  fumblesOpposingYardsGained: String? 
  fumblesOwnCommitted: String? 
  fumblesOwnLost: String? 
  fumblesOwnRecovered: String? 
  fumblesOwnYardsGained: String? 
  fumblesRecovered: String? 
  fumblesYardsGained: String? 
}

model AmericanFootballOffensiveStat {
  id: Int @id @pg.serial("american_football_offensive_stats_id_seq") @unique
  offensivePlaysAverageYardsPer: String? 
  offensivePlaysNumber: String? 
  offensivePlaysYards: String? 
  possessionDuration: String? 
  turnoversGiveaway: String? 
}

model AmericanFootballPassingStat {
  id: Int @id @pg.serial("american_football_passing_stats_id_seq") @unique
  passerRating: String? 
  passesAttempts: String? 
  passesAverageYardsPer: String? 
  passesCompletions: String? 
  passesInterceptions: String? 
  passesInterceptionsPercentage: String? 
  passesLongest: String? 
  passesPercentage: String? 
  passesTouchdowns: String? 
  passesTouchdownsPercentage: String? 
  passesYardsGross: String? 
  passesYardsLost: String? 
  passesYardsNet: String? 
  receptionsAverageYardsPer: String? 
  receptionsFirstDown: String? 
  receptionsLongest: String? 
  receptionsTotal: String? 
  receptionsTouchdowns: String? 
  receptionsYards: String? 
}

model AmericanFootballPenaltyStat {
  id: Int @id @pg.serial("american_football_penalties_stats_id_seq") @unique
  penaltiesTotal: String? 
  penaltyFirstDowns: String? 
  penaltyYards: String? 
}

model AmericanFootballRushingStat {
  id: Int @id @pg.serial("american_football_rushing_stats_id_seq") @unique
  rushesAttempts: String? 
  rushesFirstDown: String? 
  rushesLongest: String? 
  rushesTouchdowns: String? 
  rushesYards: String? 
  rushingAverageYardsPer: String? 
}

model AmericanFootballSackAgainstStat {
  id: Int @id @pg.serial("american_football_sacks_against_stats_id_seq") @unique
  sacksAgainstTotal: String? 
  sacksAgainstYards: String? 
}

model AmericanFootballScoringStat {
  id: Int @id @pg.serial("american_football_scoring_stats_id_seq") @unique
  extraPointsAttempts: String? 
  extraPointsBlocked: String? 
  extraPointsMade: String? 
  extraPointsMissed: String? 
  fieldGoalAttempts: String? 
  fieldGoalsBlocked: String? 
  fieldGoalsMade: String? 
  fieldGoalsMissed: String? 
  safetiesAgainst: String? 
  touchbacksTotal: String? 
  touchdownsDefensive: String? 
  touchdownsPassing: String? 
  touchdownsRushing: String? 
  touchdownsSpecialTeams: String? 
  touchdownsTotal: String? 
  twoPointConversionsAttempts: String? 
  twoPointConversionsMade: String? 
}

model AmericanFootballSpecialTeamStat {
  id: Int @id @pg.serial("american_football_special_teams_stats_id_seq") @unique
  fairCatches: String? 
  puntsAverage: String? 
  puntsBlocked: String? 
  puntsInside20: String? 
  puntsInside20Percentage: String? 
  puntsLongest: String? 
  puntsTotal: String? 
  puntsYardsGross: String? 
  puntsYardsNet: String? 
  returnsKickoffAverage: String? 
  returnsKickoffLongest: String? 
  returnsKickoffTotal: String? 
  returnsKickoffTouchdown: String? 
  returnsKickoffYards: String? 
  returnsPuntAverage: String? 
  returnsPuntLongest: String? 
  returnsPuntTotal: String? 
  returnsPuntTouchdown: String? 
  returnsPuntYards: String? 
  returnsTotal: String? 
  returnsYards: String? 
  touchbacksInterceptions: String? 
  touchbacksInterceptionsPercentage: String? 
  touchbacksKickoffs: String? 
  touchbacksKickoffsPercentage: String? 
  touchbacksPunts: String? 
  touchbacksPuntsPercentage: String? 
  touchbacksTotal: String? 
  touchbacksTotalPercentage: String? 
}

model BaseballActionContactDetail {
  id: Int @id @pg.serial("baseball_action_contact_details_id_seq") @unique
  baseballActionPitch: BaseballActionPitch 
  comment: String? 
  location: String? 
  strength: String? 
  trajectoryCoordinates: String? 
  trajectoryFormula: String? 
  velocity: Int? 
}

model BaseballActionPitch {
  id: Int @id @pg.serial("baseball_action_pitches_id_seq") @unique
  ballType: String? 
  baseballActionContactDetails: BaseballActionContactDetail[] 
  baseballActionPlay: BaseballActionPlay 
  baseballDefensiveGroup: BaseballDefensiveGroup? 
  comment: String? 
  pitchLocation: String? 
  pitchType: String? 
  pitchVelocity: Int? 
  sequenceNumber: Int? 
  strikeType: String? 
  trajectoryCoordinates: String? 
  trajectoryFormula: String? 
  umpireCall: String? 
}

model BaseballActionPlay {
  id: Int @id @pg.serial("baseball_action_plays_id_seq") @unique
  baseballActionPitches: BaseballActionPitch[] 
  baseballDefensiveGroupId: Int? 
  baseballEventState: BaseballEventState 
  comment: String? 
  earnedRunsScored: String? 
  notation: String? 
  notationYaml: String? 
  outsRecorded: Int? 
  playType: String? 
  rbi: Int? 
  runnerOnFirstAdvance: Int? 
  runnerOnSecondAdvance: Int? 
  runnerOnThirdAdvance: Int? 
  runsScored: Int? 
}

model BaseballActionSubstitution {
  id: Int @id @pg.serial("baseball_action_substitutions_id_seq") @unique
  baseballEventState: BaseballEventState 
  comment: String? 
  personOriginal: Person? 
  personOriginalLineupSlot: Int? 
  personOriginalPosition: Position? 
  personReplacing: Person? 
  personReplacingLineupSlot: Int? 
  personReplacingPosition: Position? 
  personType: String? 
  sequenceNumber: Int? 
  substitutionReason: String? 
}

model BaseballDefensiveGroup {
  id: Int @id @pg.serial("baseball_defensive_group_id_seq") @unique
  baseballActionPitches: BaseballActionPitch[]? 
  baseballDefensivePlayers: BaseballDefensivePlayer[] 
}

model BaseballDefensivePlayer {
  id: Int @id @pg.serial("baseball_defensive_players_id_seq") @unique
  baseballDefensiveGroup: BaseballDefensiveGroup 
  player: Person 
  position: Position 
}

model BaseballDefensiveStat {
  id: Int @id @pg.serial("baseball_defensive_stats_id_seq") @unique
  assists: Int? 
  defensiveAverage: Float? 
  doublePlays: Int? 
  errors: Int? 
  errorsCatchersInterference: Int? 
  errorsPassedBall: Int? 
  fieldingPercentage: Float? 
  putouts: Int? 
  triplePlays: Int? 
}

model BaseballEventState {
  id: Int @id @pg.serial("baseball_event_states_id_seq") @unique
  atBatNumber: Int? 
  balls: Int? 
  baseballActionPlays: BaseballActionPlay[] 
  baseballActionSubstitutions: BaseballActionSubstitution[] 
  batter: Person? 
  batterSide: String? 
  context: String? 
  currentState: Int? 
  event: Event 
  inningHalf: String? 
  inningValue: Int? 
  outs: Int? 
  pitcher: Person? 
  runnerOnFirstId: Person? 
  runnerOnSecondId: Person? 
  runnerOnThirdId: Person? 
  runnerOnFirst: Int? 
  runnerOnSecond: Int? 
  runnerOnThird: Int? 
  runsThisInningHalf: Int? 
  sequenceNumber: Int? 
  strikes: Int? 
}

model BaseballOffensiveStat {
  id: Int @id @pg.serial("baseball_offensive_stats_id_seq") @unique
  atBats: Int? 
  atBatsPerHomeRun: Float? 
  atBatsPerRbi: Float? 
  average: Float? 
  basesOnBalls: Int? 
  defensiveInterferanceReaches: Int? 
  doubles: Int? 
  grandSlams: Int? 
  groundedIntoDoublePlay: Int? 
  hitByPitch: Int? 
  hits: Int? 
  hitsExtraBase: Int? 
  homeRuns: Int? 
  leftInScoringPosition: Int? 
  leftOnBase: Int? 
  movedUp: Int? 
  onBasePercentage: Float? 
  onBasePlusSlugging: Float? 
  plateAppearances: Int? 
  plateAppearancesPerHomeRun: Float? 
  plateAppearancesPerRbi: Float? 
  rbi: Int? 
  runsScored: Int? 
  sacBunts: Int? 
  sacFlies: Int? 
  singles: Int? 
  sluggingPercentage: Float? 
  stolenBases: Int? 
  stolenBasesAverage: Float? 
  stolenBasesCaught: Int? 
  strikeouts: Int? 
  totalBases: Int? 
  triples: Int? 
}

model BaseballPitchingStat {
  id: Int @id @pg.serial("baseball_pitching_stats_id_seq") @unique
  balks: Int? 
  basesOnBalls: Int? 
  basesOnBallsIntentional: Int? 
  doublesAllowed: Int? 
  earnedRuns: Int? 
  era: Float? 
  errorsHitWithPitch: Int? 
  errorsWildPitch: Int? 
  eventCredit: String? 
  gamesComplete: Int? 
  gamesFinished: Int? 
  hits: Int? 
  homeRunsAllowed: Int? 
  inheritedRunnersScored: Int? 
  inningsPitched: String? 
  losses: Int? 
  numberOfPitches: Int? 
  pickOffs: Int? 
  runsAllowed: Int? 
  saveCredit: String? 
  saves: Int? 
  shutouts: Int? 
  singlesAllowed: Int? 
  strikeouts: Int? 
  strikeoutToBbRatio: Float? 
  triplesAllowed: Int? 
  unearnedRuns: Int? 
  winningPercentage: Float? 
  wins: Int? 
}

model BasketballDefensiveStat {
  id: Int @id @pg.serial("basketball_defensive_stats_id_seq") @unique
  blocksPerGame: String? 
  blocksTotal: String? 
  stealsPerGame: String? 
  stealsTotal: String? 
}

model BasketballEventState {
  id: Int @id @pg.serial("basketball_event_states_id_seq") @unique
  context: String? 
  currentState: Int? 
  event: Event 
  periodTimeElapsed: String? 
  periodTimeRemaining: String? 
  periodValue: String? 
  sequenceNumber: Int? 
}

model BasketballOffensiveStat {
  id: Int @id @pg.serial("basketball_offensive_stats_id_seq") @unique
  assistsPerGame: String? 
  assistsTotal: String? 
  fieldGoalsAttempted: Int? 
  fieldGoalsAttemptedPerGame: String? 
  fieldGoalsMade: Int? 
  fieldGoalsPercentage: String? 
  fieldGoalsPercentageAdjusted: String? 
  fieldGoalsPerGame: String? 
  freeThrowsAttempted: String? 
  freeThrowsAttemptedPerGame: String? 
  freeThrowsMade: String? 
  freeThrowsPercentage: String? 
  freeThrowsPerGame: String? 
  pointsScoredInPaint: String? 
  pointsScoredOffTurnovers: String? 
  pointsScoredOnFastBreak: String? 
  pointsScoredOnSecondChance: String? 
  pointsScoredPerGame: String? 
  pointsScoredTotal: String? 
  threePointersAttempted: Int? 
  threePointersAttemptedPerGame: String? 
  threePointersMade: Int? 
  threePointersPercentage: String? 
  threePointersPerGame: String? 
  turnoversPerGame: String? 
  turnoversTotal: String? 
}

model BasketballReboundingStat {
  id: Int @id @pg.serial("basketball_rebounding_stats_id_seq") @unique
  reboundsDefensive: String? 
  reboundsOffensive: String? 
  reboundsPerGame: String? 
  reboundsTotal: String? 
  teamReboundsDefensive: String? 
  teamReboundsOffensive: String? 
  teamReboundsPerGame: String? 
  teamReboundsTotal: String? 
}

model BasketballTeamStat {
  id: Int @id @pg.serial("basketball_team_stats_id_seq") @unique
  foulsTotal: String? 
  largestLead: String? 
  timeoutsLeft: String? 
  turnoverMargin: String? 
}

model Bookmaker {
  id: Int @id @pg.serial("bookmakers_id_seq") @unique
  bookmakerKey: String? 
  location: Location? 
  publisher: Publisher 
  wageringMoneylines: WageringMoneyline[] 
  wageringOddsLines: WageringOddsLine[] 
  wageringRunlines: WageringRunline[] 
  wageringStraightSpreadLines: WageringStraightSpreadLine[] 
  wageringTotalScoreLines: WageringTotalScoreLine[] 
}

model CorePersonStat {
  id: Int @id @pg.serial("core_person_stats_id_seq") @unique
  eventsPlayed: Int? 
  eventsStarted: Int? 
  position: Position? 
  timePlayedEvent: String? 
  timePlayedEventAverage: String? 
  timePlayedTotal: String? 
}

model CoreStat {
  id: Int @id @pg.serial("core_stats_id_seq") @unique
  score: String? 
  scoreAttempts: String? 
  scoreAttemptsOpposing: String? 
  scoreOpposing: String? 
  scorePercentage: String? 
  scorePercentageOpposing: String? 
}

model DbInfo {
  version: String @default("16")
}

model DisplayName {
  id: Int @id @pg.serial("display_names_id_seq") @unique
  abbreviation: String? 
  alias: String? 
  entityId: Int 
  entityType: String 
  firstName: String? 
  fullName: String? 
  language: String 
  lastName: String? 
  middleName: String? 
  prefix: String? 
  shortName: String? 
  suffix: String? 
}

model Document {
  id: Int @id @pg.serial("documents_id_seq") @unique
  affiliationsDocuments: AffiliationsDocument[] 
  dateTime: DateTime? 
  dbLoadingDateTime: DateTime? 
  docId: String 
  documentContents: DocumentContent[] 
  documentFixture: DocumentFixture 
  documentFixturesEvents: DocumentFixturesEvent[] 
  documentPackageEntry: DocumentPackageEntry[] 
  documentsMedia: DocumentsMedia[] 
  eventsDocuments: EventsDocument[] 
  language: String? 
  latestRevisions: LatestRevision[] 
  personsDocuments: PersonsDocument[] 
  priority: String? 
  publisher: Publisher 
  revisionId: String? 
  source: Publisher? 
  statsCoverage: String? 
  teamsDocuments: TeamsDocument[] 
  title: String? 
}

model DocumentClass {
  id: Int @id @pg.serial("document_classes_id_seq") @unique
  documentFixtures: DocumentFixture[] 
  name: String? 
}

model DocumentContent {
  id: Int @id @pg.serial("document_contents_id_seq") @unique
  abstract: String? 
  document: Document 
  sportsml: String? 
}

model DocumentFixture {
  id: Int @id @pg.serial("document_fixtures_id_seq") @unique
  documentClass: DocumentClass 
  documentFixturesEvents: DocumentFixturesEvent[] 
  documents: Document[] 
  fixtureKey: String? 
  name: String? 
  publisher: Publisher 
}

model DocumentFixtureEvent {
  id: Int @id @pg.serial("document_fixtures_events_id_seq") @unique
  documentFixture: DocumentFixture 
  event: Event 
  lastUpdate: DateTime? 
  latestDocument: Document 
}

model DocumentPackage {
  id: Int @id @pg.serial("document_packages_id_seq") @unique
  dateTime: DateTime? 
  documentPackageEntry: DocumentPackageEntry[] 
  packageKey: String? 
  packageName: String? 
}

model DocumentPackageEntry {
  id: Int @id @pg.serial("document_package_entry_id_seq") @unique
  document: Document 
  documentPackage: DocumentPackage 
  headline: String? 
  rank: String? 
  shortHeadline: String? 
}

model DocumentMedia {
  id: Int @id @pg.serial("documents_media_id_seq") @unique
  document: Document 
  media: Media 
  mediaCaption: MediaCaption 
}

model Event {
  id: Int @id @pg.serial("events_id_seq") @unique
  affiliationsEvents: AffiliationsEvent[] 
  americanFootballEventStates: AmericanFootballEventState[] 
  attendance: String? 
  baseballEventStates: BaseballEventState[] 
  basketballEventStates: BasketballEventState[] 
  documentFixturesEvents: DocumentFixturesEvent[] 
  duration: String? 
  eventKey: String 
  eventsDocuments: EventsDocument[] 
  eventsMedia: EventsMedia[] 
  eventsSubSeasons: EventsSubSeason[] 
  eventStatus: String? 
  iceHockeyEventStates: IceHockeyEventState[] 
  lastUpdate: DateTime? 
  motorRacingEventStates: MotorRacingEventState[] 
  participantsEvents: ParticipantsEvent[] 
  personEventMetadata: PersonEventMetadatum[] 
  publisher: Publisher 
  site: Site? 
  siteAlignment: String? 
  soccerEventStates: SoccerEventState[] 
  startDateTime: DateTime? 
  tennisEventStates: TennisEventState[] 
  wageringMoneylines: WageringMoneyline[] 
  wageringOddsLines: WageringOddsLine[] 
  wageringRunlines: WageringRunline[] 
  wageringStraightSpreadLines: WageringStraightSpreadLine[] 
  wageringTotalScoreLines: WageringTotalScoreLine[] 
  weatherConditions: WeatherCondition[] 
}

model EventDocument {
  document: Document 
  event: Event 
}

model EventMedia {
  event: Event 
  media: Media 
}

model EventSubSeason {
  event: Event 
  subSeason: SubSeason 
}

model IceHockeyActionParticipant {
  id: Int @id @pg.serial("ice_hockey_action_participants_id_seq") @unique
  iceHockeyActionPlayId: Int 
  participantRole: String 
  personId: Int 
  pointCredit: Int? 
}

model IceHockeyActionPlay {
  id: Int @id @pg.serial("ice_hockey_action_plays_id_seq") @unique
  comment: String? 
  iceHockeyEventStateId: Int 
  playResult: String? 
  playType: String? 
  scoreAttemptType: String? 
}

model IceHockeyDefensiveStat {
  id: Int @id @pg.serial("ice_hockey_defensive_stats_id_seq") @unique
  goalsAgainstAverage: String? 
  goalsEmptyNetAllowed: String? 
  goalsPenaltyShotAllowed: String? 
  goalsPowerPlayAllowed: String? 
  goalsShootoutAllowed: String? 
  goalsShortHandedAllowed: String? 
  hits: String? 
  minutesPenaltyKilling: String? 
  penaltyKillingAmount: String? 
  penaltyKillingPercentage: String? 
  savePercentage: String? 
  saves: String? 
  shotsBlocked: String? 
  shotsPenaltyShotAllowed: String? 
  shotsPowerPlayAllowed: String? 
  shotsShootoutAllowed: String? 
  shutouts: String? 
  takeaways: String? 
}

model IceHockeyEventState {
  id: Int @id @pg.serial("ice_hockey_event_states_id_seq") @unique
  context: String? 
  currentState: Int? 
  event: Event 
  periodTimeElapsed: String? 
  periodTimeRemaining: String? 
  periodValue: String? 
  sequenceNumber: Int? 
}

model IceHockeyOffensiveStat {
  id: Int @id @pg.serial("ice_hockey_offensive_stats_id_seq") @unique
  assists: String? 
  faceoffLosses: String? 
  faceoffWinPercentage: String? 
  faceoffWins: String? 
  giveaways: String? 
  goalsEmptyNet: String? 
  goalsEvenStrength: String? 
  goalsGameTying: String? 
  goalsGameWinning: String? 
  goalsOvertime: String? 
  goalsPenaltyShot: String? 
  goalsPowerPlay: String? 
  goalsShootout: String? 
  goalsShortHanded: String? 
  minutesPowerPlay: String? 
  points: String? 
  powerPlayAmount: String? 
  powerPlayPercentage: String? 
  scoringChances: String? 
  shotsPenaltyShotMissed: String? 
  shotsPenaltyShotPercentage: String? 
  shotsPenaltyShotTaken: String? 
}

model IceHockeyPlayerStat {
  id: Int @id @pg.serial("ice_hockey_player_stats_id_seq") @unique
  plusMinus: String? 
}

model InjuryPhase {
  id: Int @id @pg.serial("injury_phases_id_seq") @unique
  disabledList: String? 
  endDateTime: DateTime? 
  injuryComment: String? 
  injurySide: String? 
  injuryStatus: String? 
  injuryType: String? 
  person: Person 
  phaseType: String? 
  season: Season? 
  startDateTime: DateTime? 
}

model KeyAlias {
  id: Int @id @pg.serial("key_aliases_id_seq") @unique
  keyId: Int 
  keyRoot: KeyRoot 
}

model KeyRoot {
  id: Int @id @pg.serial("key_roots_id_seq") @unique
  keyAliases: KeyAlias[] 
  keyType: String? 
}

model LatestRevision {
  id: Int @id @pg.serial("latest_revisions_id_seq") @unique
  latestDocument: Document 
  revisionId: String 
}

model Location {
  id: Int @id @pg.serial("locations_id_seq") @unique
  addresses: Address[] 
  bookmakers: Bookmaker[]? 
  countryCode: String? 
  latitude: String? 
  longitude: String? 
  media: Media[] 
  persons: Person[]? 
  persons: Person[]? 
  persons: Person[]? 
  persons: Person[]? 
  sites: Site[]? 
  timezone: String? 
}

model Media {
  id: Int @id @pg.serial("media_id_seq") @unique
  affiliationsMedia: AffiliationsMedia[] 
  creationLocation: Location 
  credit: Person 
  dateTime: String? 
  dbLoadingDateTime: DateTime? 
  documentsMedia: DocumentsMedia[] 
  eventsMedia: EventsMedia[] 
  mediaCaptions: MediaCaption[] 
  mediaContents: MediaContent[] 
  mediaKeywords: MediaKeyword[] 
  mediaType: String? 
  objectId: Int? 
  personsMedia: PersonsMedia[] 
  publisher: Publisher 
  revisionId: Int? 
  sourceId: Int? 
  teamsMedia: TeamsMedia[] 
}

model MediaCaption {
  id: Int @id @pg.serial("media_captions_id_seq") @unique
  caption: String? 
  captionAuthor: Person 
  captionSize: String? 
  captionType: String? 
  documentsMedia: DocumentsMedia[] 
  language: String? 
  media: Media 
}

model MediaContent {
  id: Int @id @pg.serial("media_contents_id_seq") @unique
  duration: String? 
  fileSize: String? 
  format: String? 
  height: String? 
  media: Media 
  mimeType: String? 
  object: String? 
  resolution: String? 
  width: String? 
}

model MediaKeyword {
  id: Int @id @pg.serial("media_keywords_id_seq") @unique
  keyword: String? 
  media: Media 
}

model MotorRacingEventState {
  id: Int @id @pg.serial("motor_racing_event_states_id_seq") @unique
  context: String? 
  currentState: Int? 
  event: Event 
  flagState: String? 
  lap: String? 
  lapsRemaining: String? 
  sequenceNumber: Int? 
  timeElapsed: String? 
}

model MotorRacingQualifyingStat {
  id: Int @id @pg.serial("motor_racing_qualifying_stats_id_seq") @unique
  grid: String? 
  polePosition: String? 
  poleWins: String? 
  qualifyingPosition: String? 
  qualifyingSpeed: String? 
  qualifyingSpeedUnits: String? 
  qualifyingTime: String? 
}

model MotorRacingRaceStat {
  id: Int @id @pg.serial("motor_racing_race_stats_id_seq") @unique
  bonus: String? 
  distanceCompleted: String? 
  distanceLeading: String? 
  distanceUnits: String? 
  finishes: String? 
  finishesTop10: String? 
  finishesTop5: String? 
  lapsAheadFollower: String? 
  lapsBehindLeader: String? 
  lapsCompleted: String? 
  lapsLeadingTotal: String? 
  leadsTotal: String? 
  money: String? 
  moneyUnits: String? 
  nonFinishes: String? 
  points: String? 
  pointsRookie: String? 
  racesLeading: String? 
  speedAverage: String? 
  speedUnits: String? 
  starts: String? 
  status: String? 
  time: String? 
  timeAheadFollower: String? 
  timeBehindLeader: String? 
  wins: String? 
}

model OutcomeTotal {
  id: Int @id @pg.serial("outcome_totals_id_seq") @unique
  losses: String? 
  outcomeHolderId: Int? 
  outcomeHolderType: String? 
  pointsDifference: String? 
  pointsScoredAgainst: String? 
  pointsScoredFor: String? 
  rank: String? 
  standingPoints: String? 
  standingSubgroup: StandingSubgroup 
  streakDuration: String? 
  streakEnd: DateTime? 
  streakStart: DateTime? 
  streakTotal: String? 
  streakType: String? 
  ties: String? 
  undecideds: String? 
  winningPercentage: String? 
  wins: String? 
}

model ParticipantEvent {
  id: Int @id @pg.serial("participants_events_id_seq") @unique
  alignment: String? 
  event: Event 
  eventOutcome: String? 
  participantId: Int 
  participantType: String 
  periods: Period[] 
  rank: Int? 
  score: String? 
}

model Period {
  id: Int @id @pg.serial("periods_id_seq") @unique
  participantEvent: ParticipantsEvent 
  periodValue: String? 
  score: String? 
  subPeriods: SubPeriod[] 
}

model Person {
  id: Int @id @pg.serial("persons_id_seq") @unique
  americanFootballActionParticipants: AmericanFootballActionParticipant[] 
  baseballActionSubstitutions: BaseballActionSubstitution[]? 
  baseballActionSubstitutions: BaseballActionSubstitution[]? 
  baseballDefensivePlayers: BaseballDefensivePlayer[] 
  baseballEventStates: BaseballEventState[]? 
  baseballEventStates: BaseballEventState[]? 
  baseballEventStates: BaseballEventState[]? 
  baseballEventStates: BaseballEventState[]? 
  baseballEventStates: BaseballEventState[]? 
  birthDate: String? 
  birthLocation: Location? 
  deathDate: String? 
  deathLocation: Location? 
  gender: String? 
  hometownLocation: Location? 
  injuryPhases: InjuryPhase[] 
  media: Media[] 
  mediaCaptions: MediaCaption[] 
  personEventMetadata: PersonEventMetadatum[] 
  personKey: String 
  personPhases: PersonPhase[] 
  personsDocuments: PersonsDocument[] 
  personsMedia: PersonsMedia[] 
  publisher: Publisher 
  residenceLocation: Location? 
}

model PersonEventMetadatum {
  id: Int @id @pg.serial("person_event_metadata_id_seq") @unique
  event: Event 
  health: String? 
  lineupSlot: Int? 
  lineupSlotSequence: Int? 
  person: Person 
  position: Position? 
  role: Role? 
  status: String? 
  team: Team? 
  weight: String? 
}

model PersonPhase {
  id: Int @id @pg.serial("person_phases_id_seq") @unique
  endDateTime: DateTime? 
  endSeason: Season? 
  entryReason: String? 
  exitReason: String? 
  height: String? 
  membershipId: Int 
  membershipType: String 
  person: Person 
  phaseStatus: String? 
  regularPosition: Position? 
  regularPositionDepth: String? 
  role: Role? 
  roleStatus: String? 
  selectionLevel: Int? 
  selectionOverall: Int? 
  selectionSublevel: Int? 
  startDateTime: DateTime? 
  startSeason: Season? 
  uniformNumber: String? 
  weight: String? 
}

model PersonDocument {
  document: Document 
  person: Person 
}

model PersonMedia {
  media: Media 
  person: Person 
}

model Position {
  id: Int @id @pg.serial("positions_id_seq") @unique
  abbreviation: String 
  affiliation: Affiliation 
  baseballActionSubstitutions: BaseballActionSubstitution[]? 
  baseballActionSubstitutions: BaseballActionSubstitution[]? 
  baseballDefensivePlayers: BaseballDefensivePlayer[] 
  corePersonStats: CorePersonStat[]? 
  personEventMetadata: PersonEventMetadatum[]? 
  personPhases: PersonPhase[]? 
}

model Publisher {
  id: Int @id @pg.serial("publishers_id_seq") @unique
  affiliations: Affiliation[] 
  bookmakers: Bookmaker[] 
  documentFixtures: DocumentFixture[] 
  documents: Document[] 
  documents: Document[]? 
  events: Event[] 
  media: Media[] 
  persons: Person[] 
  publisherKey: String 
  publisherName: String? 
  seasons: Season[] 
  sites: Site[] 
  standings: Standing[] 
  teams: Team[] 
}

model Role {
  id: Int @id @pg.serial("roles_id_seq") @unique
  comment: String? 
  personEventMetadata: PersonEventMetadatum[]? 
  personPhases: PersonPhase[]? 
  roleKey: String 
  roleName: String? 
  teamPhases: TeamPhase[]? 
}

model Season {
  id: Int @id @pg.serial("seasons_id_seq") @unique
  affiliationPhases: AffiliationPhase[]? 
  affiliationPhases: AffiliationPhase[]? 
  endDateTime: DateTime? 
  injuryPhases: InjuryPhase[]? 
  league: Affiliation 
  personPhases: PersonPhase[]? 
  personPhases: PersonPhase[]? 
  publisher: Publisher 
  seasonKey: Int 
  startDateTime: DateTime? 
  subSeasons: SubSeason[] 
  teamPhases: TeamPhase[]? 
  teamPhases: TeamPhase[]? 
}

model Site {
  id: Int @id @pg.serial("sites_id_seq") @unique
  events: Event[]? 
  location: Location? 
  publisher: Publisher 
  siteKey: Int 
  teams: Team[]? 
}

model SoccerDefensiveStat {
  id: Int @id @pg.serial("soccer_defensive_stats_id_seq") @unique
  catchesPunches: String? 
  goalsAgainstAverage: String? 
  goalsAgainstTotal: String? 
  goalsPenaltyShotAllowed: String? 
  savePercentage: String? 
  saves: String? 
  shotsBlocked: String? 
  shotsOnGoalTotal: String? 
  shotsPenaltyShotAllowed: String? 
  shotsShootoutAllowed: String? 
  shotsShootoutTotal: String? 
  shutouts: String? 
}

model SoccerEventState {
  id: Int @id @pg.serial("soccer_event_states_id_seq") @unique
  context: String? 
  currentState: Int? 
  event: Event 
  minutesElapsed: String? 
  periodMinuteElapsed: String? 
  periodTimeElapsed: String? 
  periodTimeRemaining: String? 
  periodValue: String? 
  sequenceNumber: Int? 
}

model SoccerFoulStat {
  id: Int @id @pg.serial("soccer_foul_stats_id_seq") @unique
  cautionPointsPending: String? 
  cautionPointsTotal: String? 
  cautionsPending: String? 
  cautionsTotal: String? 
  ejectionsTotal: String? 
  foulsCommited: String? 
  foulsSuffered: String? 
}

model SoccerOffensiveStat {
  id: Int @id @pg.serial("soccer_offensive_stats_id_seq") @unique
  assistsGameTying: String? 
  assistsGameWinning: String? 
  assistsOvertime: String? 
  assistsTotal: String? 
  cornerKicks: String? 
  giveaways: String? 
  goalsGameTying: String? 
  goalsGameWinning: String? 
  goalsOvertime: String? 
  goalsShootout: String? 
  goalsTotal: String? 
  hatTricks: String? 
  offsides: String? 
  points: String? 
  shotsHitFrame: String? 
  shotsOnGoalTotal: String? 
  shotsPenaltyShotMissed: String? 
  shotsPenaltyShotPercentage: String? 
  shotsPenaltyShotScored: String? 
  shotsPenaltyShotTaken: String? 
  shotsShootoutMissed: String? 
  shotsShootoutPercentage: String? 
  shotsShootoutScored: String? 
  shotsShootoutTaken: String? 
  shotsTotal: String? 
}

model Standing {
  id: Int @id @pg.serial("standings_id_seq") @unique
  affiliation: Affiliation 
  alignmentScope: String? 
  competitionScope: String? 
  competitionScopeId: String? 
  durationScope: String? 
  lastUpdated: String? 
  publisher: Publisher 
  scopingLabel: String? 
  siteScope: String? 
  source: String? 
  standingSubgroups: StandingSubgroup[] 
  standingType: String? 
  subSeason: SubSeason 
}

model StandingSubgroup {
  id: Int @id @pg.serial("standing_subgroups_id_seq") @unique
  affiliation: Affiliation 
  outcomeTotals: OutcomeTotal[] 
  standing: Standing 
}

model Stat {
  id: Int @id @pg.serial("stats_id_seq") @unique
  context: String 
  statCoverageId: Int? 
  statCoverageType: String? 
  statHolderId: Int? 
  statHolderType: String? 
  statRepositoryId: Int 
  statRepositoryType: String? 
}

model SubPeriod {
  id: Int @id @pg.serial("sub_periods_id_seq") @unique
  period: Period 
  score: String? 
  subPeriodValue: String? 
}

model SubSeason {
  id: Int @id @pg.serial("sub_seasons_id_seq") @unique
  endDateTime: DateTime? 
  eventsSubSeasons: EventsSubSeason[] 
  season: Season 
  standings: Standing[] 
  startDateTime: DateTime? 
  subSeasonKey: String 
  subSeasonType: String 
}

model Team {
  id: Int @id @pg.serial("teams_id_seq") @unique
  americanFootballEventStates: AmericanFootballEventState[]? 
  homeSite: Site? 
  personEventMetadata: PersonEventMetadatum[]? 
  publisher: Publisher 
  teamKey: String 
  teamPhases: TeamPhase[] 
  teamsDocuments: TeamsDocument[] 
  teamsMedia: TeamsMedia[] 
  wageringMoneylines: WageringMoneyline[] 
  wageringOddsLines: WageringOddsLine[] 
  wageringRunlines: WageringRunline[] 
  wageringStraightSpreadLines: WageringStraightSpreadLine[] 
  wageringTotalScoreLines: WageringTotalScoreLine[] 
}

model TeamAmericanFootballStat {
  id: Int @id @pg.serial("team_american_football_stats_id_seq") @unique
  averageStartingPosition: String? 
  timeOfPossession: String? 
  timeouts: String? 
  turnoverRatio: String? 
  yardsPerAttempt: String? 
}

model TeamPhase {
  id: Int @id @pg.serial("team_phases_id_seq") @unique
  affiliation: Affiliation 
  endDateTime: String? 
  endSeason: Season? 
  phaseStatus: String? 
  role: Role? 
  startDateTime: String? 
  startSeason: Season? 
  team: Team 
}

model TeamDocument {
  document: Document 
  team: Team 
}

model TeamMedia {
  media: Media 
  team: Team 
}

model TennisActionPoint {
  id: Int @id @pg.serial("tennis_action_points_id_seq") @unique
  sequenceNumber: String? 
  subPeriodId: String? 
  winType: String? 
}

model TennisActionVolley {
  id: Int @id @pg.serial("tennis_action_volleys_id_seq") @unique
  landingLocation: String? 
  result: String? 
  sequenceNumber: String? 
  spinType: String? 
  swingType: String? 
  tennisActionPointsId: Int? 
  trajectoryDetails: String? 
}

model TennisEventState {
  id: Int @id @pg.serial("tennis_event_states_id_seq") @unique
  context: String? 
  currentState: Int? 
  event: Event 
  game: String? 
  receiverPersonId: Int? 
  receiverScore: String? 
  sequenceNumber: Int? 
  serverPersonId: Int? 
  serverScore: String? 
  serviceNumber: String? 
  tennisSet: String? 
}

model TennisReturnStat {
  id: Int @id @pg.serial("tennis_return_stats_id_seq") @unique
  breakPointsConverted: String? 
  breakPointsConvertedPct: String? 
  breakPointsPlayed: String? 
  firstServiceReturnPointsWon: String? 
  firstServiceReturnPointsWonPct: String? 
  matchesPlayed: String? 
  returnGamesPlayed: String? 
  returnGamesWon: String? 
  returnGamesWonPct: String? 
  returnsPlayed: String? 
  secondServiceReturnPointsWon: String? 
  secondServiceReturnPointsWonPct: String? 
}

model TennisServiceStat {
  id: Int @id @pg.serial("tennis_service_stats_id_seq") @unique
  aces: String? 
  breakPointsPlayed: String? 
  breakPointsSaved: String? 
  breakPointsSavedPct: String? 
  firstServicePointsWon: String? 
  firstServicePointsWonPct: String? 
  firstServicesGood: String? 
  firstServicesGoodPct: String? 
  matchesPlayed: String? 
  secondServicePointsWon: String? 
  secondServicePointsWonPct: String? 
  serviceGamesPlayed: String? 
  serviceGamesWon: String? 
  serviceGamesWonPct: String? 
  servicesPlayed: String? 
}

model WageringMoneyline {
  id: Int @id @pg.serial("wagering_moneylines_id_seq") @unique
  bookmaker: Bookmaker 
  comment: String? 
  dateTime: DateTime? 
  event: Event 
  line: String? 
  lineOpening: String? 
  personId: Int? 
  prediction: String? 
  rotationKey: String? 
  team: Team 
  vigorish: String? 
}

model WageringOddLine {
  id: Int @id @pg.serial("wagering_odds_lines_id_seq") @unique
  bookmaker: Bookmaker 
  comment: String? 
  dateTime: DateTime? 
  denominator: String? 
  event: Event 
  numerator: String? 
  payoutAmount: String? 
  payoutCalculation: String? 
  personId: Int? 
  prediction: String? 
  rotationKey: String? 
  team: Team 
}

model WageringRunline {
  id: Int @id @pg.serial("wagering_runlines_id_seq") @unique
  bookmaker: Bookmaker 
  comment: String? 
  dateTime: DateTime? 
  event: Event 
  line: String? 
  lineOpening: String? 
  lineValue: String? 
  personId: Int? 
  prediction: String? 
  rotationKey: String? 
  team: Team 
  vigorish: String? 
}

model WageringStraightSpreadLine {
  id: Int @id @pg.serial("wagering_straight_spread_lines_id_seq") @unique
  bookmaker: Bookmaker 
  comment: String? 
  dateTime: DateTime? 
  event: Event 
  lineValue: String? 
  lineValueOpening: String? 
  personId: Int? 
  prediction: String? 
  rotationKey: String? 
  team: Team 
  vigorish: String? 
}

model WageringTotalScoreLine {
  id: Int @id @pg.serial("wagering_total_score_lines_id_seq") @unique
  bookmaker: Bookmaker 
  comment: String? 
  dateTime: DateTime? 
  event: Event 
  lineOver: String? 
  lineUnder: String? 
  personId: Int? 
  prediction: String? 
  rotationKey: String? 
  team: Team 
  total: String? 
  totalOpening: String? 
  vigorish: String? 
}

model WeatherCondition {
  id: Int @id @pg.serial("weather_conditions_id_seq") @unique
  clouds: String? 
  event: Event 
  humidity: String? 
  temperature: String? 
  temperatureUnits: String? 
  weatherCode: String? 
  windDirection: String? 
  windVelocity: String? 
}
