--
-- PostgreSQL database dump
--
-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
SET
  statement_timeout = 0;
SET
  lock_timeout = 0;
SET
  idle_in_transaction_session_timeout = 0;
SET
  client_encoding = 'UTF8';
SET
  standard_conforming_strings = on;
SELECT
  pg_catalog.set_config('search_path', '', false);
SET
  check_function_bodies = false;
SET
  xmloption = content;
SET
  client_min_messages = warning;
SET
  row_security = off;
--
  -- Data for Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public."AO_0A5972_NOTIFICATION_SETTING" ("ID", "KEY", "TYPE", "USER_KEY", "VALUE")
FROM stdin;
\.--
  -- Data for Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public."AO_0A5972_PUSH_REGISTRATION" (
    "BUILD",
    "ENDPOINT",
    "ID",
    "OS",
    "TOKEN",
    "USER_KEY"
  )
FROM stdin;
\.--
  -- Data for Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public."AO_0AC321_RECOMMENDATION_AO" (
    "CATEGORY",
    "CUSTOM_FIELD_ID",
    "ID",
    "NAME",
    "PERFORMANCE_IMPACT",
    "PROJECT_IDS",
    "RESOLVED",
    "TYPE"
  )
FROM stdin;
\.--
  -- Data for Name: AO_21D670_WHITELIST_RULES; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  COPY public."AO_21D670_WHITELIST_RULES" ("ALLOWINBOUND", "EXPRESSION", "ID", "TYPE")
FROM stdin;
f http : / / www.atlassian.com
  /*	1	WILDCARD_EXPRESSION
  f	http://www.atlassian.com/*	2	WILDCARD_EXPRESSION
  \.
  
  
  --
  -- Data for Name: AO_21F425_MESSAGE_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_21F425_MESSAGE_AO" ("CONTENT", "ID") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_21F425_MESSAGE_MAPPING_AO" ("ID", "MESSAGE_ID", "USER_HASH") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_21F425_USER_PROPERTY_AO" ("ID", "KEY", "USER", "VALUE") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_38321B_CUSTOM_CONTENT_LINK" ("CONTENT_KEY", "ID", "LINK_LABEL", "LINK_URL", "SEQUENCE") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_3B1893_LOOP_DETECTION; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_3B1893_LOOP_DETECTION" ("COUNTER", "EXPIRES_AT", "ID", "SENDER_EMAIL") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_4789DD_HEALTH_CHECK_STATUS" ("APPLICATION_NAME", "COMPLETE_KEY", "DESCRIPTION", "FAILED_DATE", "FAILURE_REASON", "ID", "IS_HEALTHY", "IS_RESOLVED", "RESOLVED_DATE", "SEVERITY", "STATUS_NAME") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_4789DD_PROPERTIES; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_4789DD_PROPERTIES" ("ID", "PROPERTY_NAME", "PROPERTY_VALUE") FROM stdin;
  1	last-run	1581438408354
  \.
  
  
  --
  -- Data for Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_4789DD_READ_NOTIFICATIONS" ("ID", "IS_SNOOZED", "NOTIFICATION_ID", "SNOOZE_COUNT", "SNOOZE_DATE", "USER_KEY") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_4789DD_TASK_MONITOR; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_4789DD_TASK_MONITOR" ("CLUSTERED_TASK_ID", "CREATED_TIMESTAMP", "ID", "NODE_ID", "PROGRESS_MESSAGE", "PROGRESS_PERCENTAGE", "SERIALIZED_ERRORS", "SERIALIZED_WARNINGS", "TASK_ID", "TASK_MONITOR_KIND", "TASK_STATUS") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_4AEACD_WEBHOOK_DAO" ("ENABLED", "ENCODED_EVENTS", "FILTER", "ID", "JQL", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "REGISTRATION_METHOD", "URL", "EXCLUDE_ISSUE_DETAILS", "PARAMETERS") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_550953_SHORTCUT; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_550953_SHORTCUT" ("ID", "NAME", "PROJECT_ID", "SHORTCUT_URL", "URL", "ICON") FROM stdin;
  1	Project management ideas	10000	https://docs.atlassian.com/jira/jcore-docs-087/Project+management	\N	
  2	Working in a project	10000	https://docs.atlassian.com/jira/jcore-docs-087/Working+in+a+project	\N	
  \.
  
  
  --
  -- Data for Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_563AEE_ACTOR_ENTITY" ("FULL_NAME", "ID", "PROFILE_PAGE_URI", "PROFILE_PICTURE_URI", "USERNAME") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_563AEE_MEDIA_LINK_ENTITY" ("DURATION", "HEIGHT", "ID", "URL", "WIDTH") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_563AEE_OBJECT_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_563AEE_TARGET_ENTITY; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_563AEE_TARGET_ENTITY" ("CONTENT", "DISPLAY_NAME", "ID", "IMAGE_ID", "OBJECT_ID", "OBJECT_TYPE", "SUMMARY", "URL") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_563AEE_ACTIVITY_ENTITY" ("ACTIVITY_ID", "ACTOR_ID", "CONTENT", "GENERATOR_DISPLAY_NAME", "GENERATOR_ID", "ICON_ID", "ID", "ISSUE_KEY", "OBJECT_ID", "POSTER", "PROJECT_KEY", "PUBLISHED", "TARGET_ID", "TITLE", "URL", "USERNAME", "VERB") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_587B34_GLANCE_CONFIG; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_587B34_GLANCE_CONFIG" ("ROOM_ID", "STATE", "SYNC_NEEDED", "APPLICATION_USER_KEY", "NAME", "JQL") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_587B34_PROJECT_CONFIG; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_587B34_PROJECT_CONFIG" ("CONFIGURATION_GROUP_ID", "ID", "NAME", "NAME_UNIQUE_CONSTRAINT", "PROJECT_ID", "ROOM_ID", "VALUE") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_5FB9D7_AOHIP_CHAT_LINK" ("ADDON_TOKEN_EXPIRY", "API_URL", "CONNECT_DESCRIPTOR", "GROUP_ID", "GROUP_NAME", "ID", "OAUTH_ID", "SECRET_KEY", "SYSTEM_PASSWORD", "SYSTEM_TOKEN_EXPIRY", "SYSTEM_USER", "SYSTEM_USER_TOKEN", "TOKEN") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_5FB9D7_AOHIP_CHAT_USER" ("HIP_CHAT_LINK_ID", "HIP_CHAT_USER_ID", "HIP_CHAT_USER_NAME", "ID", "REFRESH_CODE", "USER_KEY", "USER_SCOPES", "USER_TOKEN", "USER_TOKEN_EXPIRY") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_733371_EVENT; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_733371_EVENT" ("ACTION", "ACTION_ID", "CREATED", "EVENT_BUNDLE_ID", "EVENT_TYPE", "ID", "USER_KEY") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_733371_EVENT_PARAMETER; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_733371_EVENT_PARAMETER" ("EVENT_ID", "ID", "NAME", "VALUE") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_733371_EVENT_RECIPIENT; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_733371_EVENT_RECIPIENT" ("CONSUMER_NAME", "CREATED", "EVENT_ID", "ID", "SEND_DATE", "STATUS", "UPDATED", "USER_KEY") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_97EDAB_USERINVITATION; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_97EDAB_USERINVITATION" ("APPLICATION_KEYS", "EMAIL_ADDRESS", "EXPIRY", "ID", "REDEEMED", "SENDER_USERNAME", "TOKEN") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_A0B856_WEB_HOOK_LISTENER_AO" ("DESCRIPTION", "ENABLED", "EVENTS", "EXCLUDE_BODY", "FILTERS", "ID", "LAST_UPDATED", "LAST_UPDATED_USER", "NAME", "PARAMETERS", "REGISTRATION_METHOD", "URL") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_AC3877_RL_USER_COUNTER; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_AC3877_RL_USER_COUNTER" ("ID", "INTERVAL_START", "NODE_ID", "REJECT_COUNT", "USER_ID") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_AC3877_SETTINGS_VERSION; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_AC3877_SETTINGS_VERSION" ("TYPE", "VERSION") FROM stdin;
  DEFAULT	1
  \.
  
  
  --
  -- Data for Name: AO_AC3877_SYSTEM_RL_SETTINGS; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_AC3877_SYSTEM_RL_SETTINGS" ("CAPACITY", "CLEAN_JOB_DURATION", "FILL_RATE", "FLUSH_JOB_DURATION", "INTERVAL_FREQUENCY", "INTERVAL_TIME_UNIT", "MODE", "NAME", "REAPER_JOB_DURATION", "RETENTION_PERIOD_DURATION", "SETTINGS_RELOAD_JOB_DURATION") FROM stdin;
  50	PT1M10S	10	PT5M	1	SECONDS	OFF	SYSTEM	PT15M	PT24H	PT1M
  \.
  
  
  --
  -- Data for Name: AO_AC3877_USER_RL_SETTINGS; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_AC3877_USER_RL_SETTINGS" ("CAPACITY", "FILL_RATE", "INTERVAL_FREQUENCY", "INTERVAL_TIME_UNIT", "USER_ID", "WHITELISTED") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_B9A0F0_APPLIED_TEMPLATE" ("ID", "PROJECT_ID", "PROJECT_TEMPLATE_MODULE_KEY", "PROJECT_TEMPLATE_WEB_ITEM_KEY") FROM stdin;
  1	10000	com.atlassian.jira-core-project-templates:jira-core-project-management	com.atlassian.jira-core-project-templates:jira-core-project-management
  \.
  
  
  --
  -- Data for Name: AO_C16815_ALERT_AO; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_C16815_ALERT_AO" ("CREATED_DATE", "DETAILS_JSON", "ID", "ISSUE_COMPONENT_ID", "ISSUE_ID", "ISSUE_SEVERITY", "NODE_NAME", "TRIGGER_MODULE", "TRIGGER_PLUGIN_KEY", "TRIGGER_PLUGIN_KEY_VERSION", "TRIGGER_PLUGIN_VERSION") FROM stdin;
  \.
  
  
  --
  -- Data for Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public."AO_ED669C_SEEN_ASSERTIONS" ("ASSERTION_ID", "EXPIRY_TIMESTAMP", "ID") FROM stdin;
  \.
  
  
  --
  -- Data for Name: app_user; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.app_user (id, user_key, lower_user_name) FROM stdin;
  10000	JIRAUSER10000	harshit
  \.
  
  
  --
  -- Data for Name: audit_changed_value; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.audit_changed_value (id, log_id, name, delta_from, delta_to) FROM stdin;
  10000	10001	Permission		Create Shared Objects
  10001	10001	Group		jira-core-users
  10002	10002	Permission		Browse Users
  10003	10002	Group		jira-core-users
  10004	10003	Permission		Manage Group Filter Subscriptions
  10005	10003	Group		jira-core-users
  10006	10004	Permission		Bulk Change
  10007	10004	Group		jira-core-users
  10008	10005	Organisation	\N	personal
  10009	10005	Date Purchased	\N	11/Feb/20
  10010	10005	License Type	\N	Jira Core (Server): Evaluation
  10011	10005	Server ID	\N	BJ1S-0595-NDWS-5C0U
  10012	10005	Support Entitlement Number (SEN)	\N	SEN-L14977158
  10013	10005	User Limit	\N	Unlimited
  10014	10005	jira-core	\N	-1
  10015	10006	Organisation	\N	personal
  10016	10006	Date Purchased	\N	11/Feb/20
  10017	10006	License Type	\N	Jira Core (Server): Evaluation
  10018	10006	Server ID	\N	BJ1S-0595-NDWS-5C0U
  10019	10006	Support Entitlement Number (SEN)	\N	SEN-L14977158
  10020	10006	User Limit	\N	Unlimited
  10021	10006	jira-core	\N	-1
  10022	10007	Username	\N	harshit
  10023	10007	Full name	\N	Harshit Pant
  10024	10007	Email	\N	pantharshit00@gmail.com
  10025	10007	Active / Inactive	\N	Active
  10026	10009	Permission		Create Shared Objects
  10027	10009	Group		jira-administrators
  10028	10010	Permission		Manage Group Filter Subscriptions
  10029	10010	Group		jira-administrators
  10030	10011	Permission		Bulk Change
  10031	10011	Group		jira-administrators
  10032	10012	Permission		Browse Users
  10033	10012	Group		jira-administrators
  10100	10100	Name	\N	TEST: Project Management Workflow
  10101	10100	Description	\N	
  10102	10100	Status	\N	To Do
  10103	10100	Status	\N	In Progress
  10104	10100	Status	\N	Done
  10105	10100	Transition	\N	Create (To Do)
  10106	10100	Transition	\N	Start Progress (To Do -> In Progress)
  10107	10100	Transition	\N	Done (To Do -> Done)
  10108	10100	Transition	\N	Stop Progress (In Progress -> To Do)
  10109	10100	Transition	\N	Done (In Progress -> Done)
  10110	10100	Transition	\N	Reopen (Done -> To Do)
  10111	10100	Transition	\N	Reopen and start progress (Done -> In Progress)
  10112	10101	Name	\N	TEST: Project Management Workflow Scheme
  10113	10101	Description	\N	
  10114	10104	Name		Open and unassigned (TEST)
  10115	10104	Description		\N
  10116	10104	Owner		JIRAUSER10000
  10117	10104	Shared With	[]	[Project: test (VIEW)]
  10118	10104	JQL Query		{project = 10000} AND {statusCategory != "Done"} AND {assignee = EMPTY} order by priority DESC
  10119	10105	Name		Due this week (TEST)
  10120	10105	Description		\N
  10121	10105	Owner		JIRAUSER10000
  10122	10105	Shared With	[]	[Project: test (VIEW)]
  10123	10105	JQL Query		{project = 10000} AND {duedate >= startOfWeek()} AND {duedate <= endOfWeek()} order by priority DESC
  10124	10106	Name		Overdue (TEST)
  10125	10106	Description		\N
  10126	10106	Owner		JIRAUSER10000
  10127	10106	Shared With	[]	[Project: test (VIEW)]
  10128	10106	JQL Query		{project = 10000} AND {statusCategory != "Done"} AND {duedate < now()} order by duedate DESC
  10129	10107	Name	\N	test
  10130	10107	Key	\N	TEST
  10131	10107	Description	\N	<h3>Welcome to the administration of your demonstration project!</h3>\n <p>This is where you can view and change how the project is configured. Use the tabs on the left to navigate to different project settings.</p>
  10132	10107	Project Lead	\N	harshit
  10133	10107	Default Assignee	\N	Unassigned
  10134	10108	Users	\N	JIRAUSER10000
  \.
  
  
  --
  -- Data for Name: audit_item; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.audit_item (id, log_id, object_type, object_id, object_name, object_parent_id, object_parent_name) FROM stdin;
  10000	10008	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10001	10013	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10100	10102	SCHEME	10100	TEST: Project Management Workflow Scheme	\N	\N
  10101	10104	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10102	10104	PROJECT	10000	test	\N	\N
  10103	10105	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10104	10105	PROJECT	10000	test	\N	\N
  10105	10106	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10106	10106	PROJECT	10000	test	\N	\N
  10107	10107	USER	JIRAUSER10000	harshit	1	Jira Internal Directory
  10108	10108	PROJECT	10000	test	\N	\N
  \.
  
  
  --
  -- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.audit_log (id, remote_address, created, author_key, summary, category, object_type, object_id, object_name, object_parent_id, object_parent_name, author_type, event_source_name, description, long_description, search_field) FROM stdin;
  10000	49.207.87.62	2020-02-11 16:23:37.081+00	\N	Group created	group management	GROUP	\N	jira-core-users	1	Jira Internal Directory	0		\N		49.207.87.62 group created management jira-core-users jira internal directory
  10001	49.207.87.62	2020-02-11 16:23:37.157+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions create shared objects jira-core-users
  10002	49.207.87.62	2020-02-11 16:23:37.186+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions browse users jira-core-users
  10003	49.207.87.62	2020-02-11 16:23:37.193+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions manage group filter subscriptions jira-core-users
  10004	49.207.87.62	2020-02-11 16:23:37.2+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions bulk change jira-core-users
  10005	49.207.87.62	2020-02-11 16:23:37.224+00	\N	New license added	system	LICENSE	0	SEN-L14977158	0	License SEN	0		\N		49.207.87.62 new license added system sen-l14977158 sen personal 11/feb/20 jira core (server): evaluation bj1s-0595-ndws-5c0u unlimited -1
  10006	49.207.87.62	2020-02-11 16:25:19.963+00	\N	License updated	system	LICENSE	0	SEN-L14977158	0	License SEN	0		\N		49.207.87.62 license updated system sen-l14977158 sen personal 11/feb/20 jira core (server): evaluation bj1s-0595-ndws-5c0u unlimited -1
  10007	49.207.87.62	2020-02-11 16:25:37.863+00	\N	User created	user management	USER	JIRAUSER10000	harshit	1	Jira Internal Directory	0		\N		49.207.87.62 user created management harshit jira internal directory pant pantharshit00@gmail.com active
  10008	49.207.87.62	2020-02-11 16:25:38.036+00	\N	User added to group	group management	GROUP	\N	jira-administrators	1	Jira Internal Directory	0		\N		49.207.87.62 user added to group management jira-administrators jira internal directory harshit
  10009	49.207.87.62	2020-02-11 16:25:38.181+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions create shared objects jira-administrators
  10010	49.207.87.62	2020-02-11 16:25:38.195+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions manage group filter subscriptions jira-administrators
  10011	49.207.87.62	2020-02-11 16:25:38.211+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions bulk change jira-administrators
  10012	49.207.87.62	2020-02-11 16:25:38.226+00	\N	Global permission added	permissions	PERMISSIONS	\N	Global Permissions	\N	\N	0		\N		49.207.87.62 global permission added permissions browse users jira-administrators
  10013	49.207.87.62	2020-02-11 16:25:38.265+00	\N	User added to group	group management	GROUP	\N	jira-core-users	1	Jira Internal Directory	0		\N		49.207.87.62 user added to group management jira-core-users jira internal directory harshit
  10100	49.207.87.62	2020-02-11 16:26:52.439+00	JIRAUSER10000	Workflow created	workflows	WORKFLOW	TEST: Project Management Workflow	TEST: Project Management Workflow	\N	\N	1		\N		harshit pant 49.207.87.62 workflow created workflows test: project management to do in progress done create (to do) start -> progress) done) stop (in reopen (done and
  10101	49.207.87.62	2020-02-11 16:26:52.559+00	JIRAUSER10000	Workflow scheme created	workflows	SCHEME	10100	TEST: Project Management Workflow Scheme	\N	\N	1		\N		harshit pant 49.207.87.62 workflow scheme created workflows test: project management
  10102	49.207.87.62	2020-02-11 16:26:52.659+00	JIRAUSER10000	Workflow scheme added to project	workflows	PROJECT	10000	test	\N	\N	1		\N		harshit pant 49.207.87.62 workflow scheme added to project workflows test test: management
  10103	49.207.87.62	2020-02-11 16:26:54.938+00	JIRAUSER10000	Workflow updated	workflows	WORKFLOW	TEST: Project Management Workflow	TEST: Project Management Workflow	\N	\N	1		\N		harshit pant 49.207.87.62 workflow updated workflows test: project management
  10104	49.207.87.62	2020-02-11 16:26:55.617+00	JIRAUSER10000	Filter created	filters	FILTER	10000	Open and unassigned (TEST)	\N	\N	1		\N		harshit pant 49.207.87.62 filter created filters open and unassigned (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} {statuscategory != "done"} {assignee empty} order by priority desc
  10105	49.207.87.62	2020-02-11 16:26:55.743+00	JIRAUSER10000	Filter created	filters	FILTER	10001	Due this week (TEST)	\N	\N	1		\N		harshit pant 49.207.87.62 filter created filters due this week (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} and {duedate >= startofweek()} <= endofweek()} order by priority desc
  10106	49.207.87.62	2020-02-11 16:26:55.842+00	JIRAUSER10000	Filter created	filters	FILTER	10002	Overdue (TEST)	\N	\N	1		\N		harshit pant 49.207.87.62 filter created filters overdue (test) jira internal directory test jirauser10000 [] [project: (view)] {project = 10000} and {statuscategory != "done"} {duedate < now()} order by duedate desc
  10107	49.207.87.62	2020-02-11 16:26:55.987+00	JIRAUSER10000	Project created	projects	PROJECT	10000	test	\N	\N	1		\N		harshit pant 49.207.87.62 project created projects test jira internal directory <h3>welcome to the administration of your demonstration project!</h3>\n <p>this is where you can view and change how configured. use tabs on left navigate different settings.</p> unassigned
  10108	49.207.87.62	2020-02-11 16:26:56.441+00	JIRAUSER10000	Project roles changed	projects	PROJECT_ROLE	10100	Developers	\N	\N	1		\N		harshit pant 49.207.87.62 project roles changed projects developers test jirauser10000
  \.
  
  
  --
  -- Data for Name: avatar; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.avatar (id, filename, contenttype, avatartype, owner, systemavatar) FROM stdin;
  10000	codegeist.png	image/png	project	\N	1
  10001	bird.svg	image/svg+xml	project	\N	1
  10002	jm_black.png	image/png	project	\N	1
  10003	jm_brown.png	image/png	project	\N	1
  10004	jm_orange.png	image/png	project	\N	1
  10005	jm_red.png	image/png	project	\N	1
  10006	jm_white.png	image/png	project	\N	1
  10007	jm_yellow.png	image/png	project	\N	1
  10321	development_task.svg	image/svg+xml	issuetype	\N	1
  10322	feedback.svg	image/svg+xml	issuetype	\N	1
  10008	monster.png	image/png	project	\N	1
  10323	request_access.svg	image/svg+xml	issuetype	\N	1
  10009	nature.svg	image/svg+xml	project	\N	1
  10324	default.svg	image/svg+xml	project	\N	1
  10010	koala.svg	image/svg+xml	project	\N	1
  10325	code.svg	image/svg+xml	project	\N	1
  10326	coffee.svg	image/svg+xml	project	\N	1
  10011	rocket.svg	image/svg+xml	project	\N	1
  10327	design.svg	image/svg+xml	project	\N	1
  10100	Avatar-1.png	image/png	user	\N	1
  10328	drill.svg	image/svg+xml	project	\N	1
  10101	Avatar-2.png	image/png	user	\N	1
  10329	food.svg	image/svg+xml	project	\N	1
  10102	Avatar-3.png	image/png	user	\N	1
  10330	notes.svg	image/svg+xml	project	\N	1
  10103	Avatar-4.png	image/png	user	\N	1
  10331	red-flag.svg	image/svg+xml	project	\N	1
  10104	Avatar-5.png	image/png	user	\N	1
  10332	science.svg	image/svg+xml	project	\N	1
  10105	Avatar-6.png	image/png	user	\N	1
  10333	support.svg	image/svg+xml	project	\N	1
  10106	Avatar-7.png	image/png	user	\N	1
  10334	bull.svg	image/svg+xml	user	\N	1
  10335	cat.svg	image/svg+xml	user	\N	1
  10107	Avatar-8.png	image/png	user	\N	1
  10336	dog.svg	image/svg+xml	user	\N	1
  10108	Avatar-9.png	image/png	user	\N	1
  10337	female_1.svg	image/svg+xml	user	\N	1
  10109	Avatar-10.png	image/png	user	\N	1
  10338	female_2.svg	image/svg+xml	user	\N	1
  10110	Avatar-11.png	image/png	user	\N	1
  10339	female_3.svg	image/svg+xml	user	\N	1
  10340	female_4.svg	image/svg+xml	user	\N	1
  10111	Avatar-12.png	image/png	user	\N	1
  10341	ghost.svg	image/svg+xml	user	\N	1
  10112	Avatar-13.png	image/png	user	\N	1
  10342	male_1.svg	image/svg+xml	user	\N	1
  10113	Avatar-14.png	image/png	user	\N	1
  10343	male_2.svg	image/svg+xml	user	\N	1
  10114	Avatar-15.png	image/png	user	\N	1
  10344	male_3.svg	image/svg+xml	user	\N	1
  10115	Avatar-16.png	image/png	user	\N	1
  10116	Avatar-17.png	image/png	user	\N	1
  10345	male_4.svg	image/svg+xml	user	\N	1
  10346	male_5.svg	image/svg+xml	user	\N	1
  10347	male_6.svg	image/svg+xml	user	\N	1
  10117	Avatar-18.png	image/png	user	\N	1
  10348	male_8.svg	image/svg+xml	user	\N	1
  10349	owl.svg	image/svg+xml	user	\N	1
  10350	pirate.svg	image/svg+xml	user	\N	1
  10118	Avatar-19.png	image/png	user	\N	1
  10351	robot.svg	image/svg+xml	user	\N	1
  10352	vampire.svg	image/svg+xml	user	\N	1
  10119	Avatar-20.png	image/png	user	\N	1
  10120	Avatar-21.png	image/png	user	\N	1
  10121	Avatar-22.png	image/png	user	\N	1
  10122	Avatar-default.svg	image/svg+xml	user	\N	1
  10123	Avatar-unknown.png	image/png	user	\N	1
  10200	cloud.svg	image/svg+xml	project	\N	1
  10201	spanner.svg	image/svg+xml	project	\N	1
  10202	cd.svg	image/svg+xml	project	\N	1
  10203	money.svg	image/svg+xml	project	\N	1
  10204	mouse-hand.svg	image/svg+xml	project	\N	1
  10205	yeti.svg	image/svg+xml	project	\N	1
  10206	power.svg	image/svg+xml	project	\N	1
  10207	refresh.svg	image/svg+xml	project	\N	1
  10208	phone.svg	image/svg+xml	project	\N	1
  10209	settings.svg	image/svg+xml	project	\N	1
  10210	storm.svg	image/svg+xml	project	\N	1
  10211	plane.svg	image/svg+xml	project	\N	1
  10300	genericissue.svg	image/svg+xml	issuetype	\N	1
  10303	bug.svg	image/svg+xml	issuetype	\N	1
  10304	defect.svg	image/svg+xml	issuetype	\N	1
  10306	documentation.svg	image/svg+xml	issuetype	\N	1
  10307	epic.svg	image/svg+xml	issuetype	\N	1
  10308	exclamation.svg	image/svg+xml	issuetype	\N	1
  10309	design_task.svg	image/svg+xml	issuetype	\N	1
  10310	improvement.svg	image/svg+xml	issuetype	\N	1
  10311	newfeature.svg	image/svg+xml	issuetype	\N	1
  10312	remove_feature.svg	image/svg+xml	issuetype	\N	1
  10313	requirement.svg	image/svg+xml	issuetype	\N	1
  10314	sales.svg	image/svg+xml	issuetype	\N	1
  10315	story.svg	image/svg+xml	issuetype	\N	1
  10316	subtask.svg	image/svg+xml	issuetype	\N	1
  10318	task.svg	image/svg+xml	issuetype	\N	1
  10320	question.svg	image/svg+xml	issuetype	\N	1
  10500	female_5.svg	image/svg+xml	user	\N	1
  10501	female_6.svg	image/svg+xml	user	\N	1
  10502	female_7.svg	image/svg+xml	user	\N	1
  10503	female_8.svg	image/svg+xml	user	\N	1
  10504	female_9.svg	image/svg+xml	user	\N	1
  10505	male_7.svg	image/svg+xml	user	\N	1
  10506	male_9.svg	image/svg+xml	user	\N	1
  10507	pirate_female.svg	image/svg+xml	user	\N	1
  10508	princess.svg	image/svg+xml	user	\N	1
  10509	spectrum.svg	image/svg+xml	project	\N	1
  \.
  
  
  --
  -- Data for Name: board; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.board (id, jql) FROM stdin;
  \.
  
  
  --
  -- Data for Name: boardproject; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.boardproject (board_id, project_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: changegroup; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.changegroup (id, issueid, author, created) FROM stdin;
  \.
  
  
  --
  -- Data for Name: changeitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.changeitem (id, groupid, fieldtype, field, oldvalue, oldstring, newvalue, newstring) FROM stdin;
  \.
  
  
  --
  -- Data for Name: clusteredjob; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clusteredjob (id, job_id, job_runner_key, sched_type, interval_millis, first_run, cron_expression, time_zone, next_run, version, parameters) FROM stdin;
  10008	com.atlassian.jira.service.JiraService:10002	com.atlassian.jira.service.DefaultServiceManager	C	\N	\N	0 0 0 * * ?	\N	1581465600000	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002712
  10101	analytics-collection	com.atlassian.plugins.authentication.impl.analytics.StatisticsCollectionService	C	\N	\N	0 0 23 * * ?	\N	1581462000000	1	\N
  10102	assertionId-cleanup	com.atlassian.plugins.authentication.impl.web.saml.SamlAssertionValidationService	I	3600000	1581441875174	\N	\N	1581441875174	1	\N
  10103	OidcDiscoveryRefresh	com.atlassian.plugins.authentication.impl.web.oidc.OidcDiscoveryRefreshJob-refresh	C	\N	\N	0 0 1 * * ?	\N	1581469200000	1	\N
  10104	com.atlassian.diagnostics.internal.analytics.DailyAlertAnalyticsJob	DailyAlertAnalyticsJob	C	\N	\N	0 19 * * * ?	\N	1581441540000	1	\N
  10107	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	com.atlassian.jira.web.action.issue.DefaultTemporaryWebAttachmentsMonitor	I	3600000	1581441904733	\N	\N	1581441904733	1	\N
  10109	com.atlassian.jira.service.JiraService:10001	com.atlassian.jira.service.DefaultServiceManager	I	43200000	1581481380794	\N	\N	1581481380794	1	\\xaced000573720037636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c6542694d61702453657269616c697a6564466f726d000000000000000002000078720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00027870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c020000787000000001740033636f6d2e61746c61737369616e2e6a6972612e736572766963652e536572766963654d616e616765723a7365727669636549647571007e0004000000017372000e6a6176612e6c616e672e4c6f6e673b8be490cc8f23df0200014a000576616c7565787200106a6176612e6c616e672e4e756d62657286ac951d0b94e08b02000078700000000000002711
  10200	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	com.atlassian.jira.analytics.scheduler.AnalyticsScheduler	I	604800000	1581524745929	\N	\N	1581524745929	1	\N
  10201	applink-status-analytics-job	com.atlassian.applinks.analytics.ApplinkStatusJob	I	86400000	\N	\N	\N	1581524745967	2	\N
  10203	Service Provider Session Remover	com.atlassian.oauth.serviceprovider.internal.ExpiredSessionRemover	I	28800000	1581467146083	\N	\N	1581467146083	1	\N
  10207	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	I	300000	1581438649105	\N	\N	1581438649105	1	\\xaced000573720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00017870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c0200007870000000027400116576656e74436f6e73756d65724e616d6574000d636c75737465724c6f636b49647571007e0003000000027400116d61696c4576656e74436f6e73756d6572740059636f6d2e61746c61737369616e2e6a6972612e706c7567696e732e696e666f726d2e6261746368696e672e63726f6e2e4f6e6365506572436c75737465724a6f6252756e6e65722e6d61696c4576656e74436f6e73756d6572
  10209	com.atlassian.whisper.plugin.fetch.FetchJob	com.atlassian.whisper.plugin.fetch.FetchJob	I	21600000	1581441949136	\N	\N	1581441949136	1	\N
  10210	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	com.atlassian.jira.plugins.inform.events.cleanup.CleanupJobScheduler	C	\N	\N	0 0 0 1/1 * ? *	\N	1581465600000	1	\N
  10211	TruncateAlertsJobRunner	com.atlassian.diagnostics.internal.DefaultMonitoringService$TruncateAlertsJobRunner	I	86400000	1581524749150	\N	\N	1581524749150	1	\N
  10213	LocalPluginLicenseNotificationJob-job	LocalPluginLicenseNotificationJob-runner	I	86400000	1581438349207	\N	\N	1581524749223	2	\N
  10214	PluginRequestCheckJob-job	PluginRequestCheckJob-runner	I	3600000	1581438349225	\N	\N	1581441949238	2	\N
  10215	PluginUpdateCheckJob-job	PluginUpdateCheckJob-runner	I	86400000	1581472354584	\N	\N	1581472354584	1	\N
  10216	InstanceTopologyJob-job	InstanceTopologyJob-runner	I	86400000	1581507270878	\N	\N	1581507270878	1	\N
  10204	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.ping.RefreshConnectionStatusJobHandler	I	3600000	1581438371650	\N	\N	1581441971650	2	\N
  10205	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.InstallGlancesJobHandler	I	3600000	1581438372796	\N	\N	1581441972796	2	\N
  10106	HistoryCleanupJob	com.atlassian.ratelimiting.internal.history.HistoryCleanupJob	I	86400000	1581438372838	\N	\N	1581524772838	2	\N
  10208	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl.mentions	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl	I	60000	1581438409127	\N	\N	1581438649127	5	\\xaced000573720035636f6d2e676f6f676c652e636f6d6d6f6e2e636f6c6c6563742e496d6d757461626c654d61702453657269616c697a6564466f726d00000000000000000200025b00046b6579737400135b4c6a6176612f6c616e672f4f626a6563743b5b000676616c75657371007e00017870757200135b4c6a6176612e6c616e672e4f626a6563743b90ce589f1073296c0200007870000000027400116576656e74436f6e73756d65724e616d6574000d636c75737465724c6f636b49647571007e0003000000027400186d61696c4d656e74696f6e4576656e74436f6e73756d6572740060636f6d2e61746c61737369616e2e6a6972612e706c7567696e732e696e666f726d2e6261746368696e672e63726f6e2e4f6e6365506572436c75737465724a6f6252756e6e65722e6d61696c4d656e74696f6e4576656e74436f6e73756d6572
  10105	HistoryFlushJob	com.atlassian.ratelimiting.internal.history.HistoryFlushJob	I	300000	1581438602807	\N	\N	1581438902808	2	\N
  10206	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	CompatibilityPluginScheduler.JobRunnerKey.com.atlassian.jira.plugins.hipchat.service.connect.UpdateGlancesDataJobHandler	I	60000	1581438375069	\N	\N	1581438675292	6	\N
  \.
  
  
  --
  -- Data for Name: clusterlockstatus; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clusterlockstatus (id, lock_name, locked_by_node, update_time) FROM stdin;
  \.
  
  
  --
  -- Data for Name: clustermessage; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clustermessage (id, source_node, destination_node, claimed_by_node, message, message_time) FROM stdin;
  \.
  
  
  --
  -- Data for Name: clusternode; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clusternode (node_id, node_state, "timestamp", ip, cache_listener_port, node_build_number, node_version) FROM stdin;
  \.
  
  
  --
  -- Data for Name: clusternodeheartbeat; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clusternodeheartbeat (node_id, heartbeat_time, database_time) FROM stdin;
  \.
  
  
  --
  -- Data for Name: clusterupgradestate; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.clusterupgradestate (id, database_time, cluster_build_number, cluster_version, state, order_number) FROM stdin;
  \.
  
  
  --
  -- Data for Name: columnlayout; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.columnlayout (id, username, searchrequest) FROM stdin;
  \.
  
  
  --
  -- Data for Name: columnlayoutitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.columnlayoutitem (id, columnlayout, fieldidentifier, horizontalposition) FROM stdin;
  \.
  
  
  --
  -- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.component (id, project, cname, description, url, lead, assigneetype, archived) FROM stdin;
  \.
  
  
  --
  -- Data for Name: configurationcontext; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.configurationcontext (id, projectcategory, project, customfield, fieldconfigscheme) FROM stdin;
  10000	\N	\N	issuetype	10000
  10100	\N	\N	priority	10100
  10200	\N	10000	issuetype	10200
  \.
  
  
  --
  -- Data for Name: customfield; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.customfield (id, cfkey, customfieldtypekey, customfieldsearcherkey, cfname, description, defaultvalue, fieldtype, project, issuetype) FROM stdin;
  \.
  
  
  --
  -- Data for Name: customfieldoption; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.customfieldoption (id, customfield, customfieldconfig, parentoptionid, sequence, customvalue, optiontype, disabled) FROM stdin;
  \.
  
  
  --
  -- Data for Name: customfieldvalue; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.customfieldvalue (id, issue, customfield, updated, parentkey, stringvalue, numbervalue, textvalue, datevalue, valuetype) FROM stdin;
  \.
  
  
  --
  -- Data for Name: cwd_application; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_application (id, application_name, lower_application_name, created_date, updated_date, active, description, application_type, credential) FROM stdin;
  1	crowd-embedded	crowd-embedded	2013-02-28 11:57:51.302+00	2013-02-28 11:57:51.302+00	1		CROWD	X
  \.
  
  
  --
  -- Data for Name: cwd_application_address; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_application_address (application_id, remote_address, encoded_address_binary, remote_address_mask) FROM stdin;
  \.
  
  
  --
  -- Data for Name: cwd_directory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_directory (id, directory_name, lower_directory_name, created_date, updated_date, active, description, impl_class, lower_impl_class, directory_type, directory_position) FROM stdin;
  1	Jira Internal Directory	jira internal directory	2013-02-28 11:57:51.308+00	2013-02-28 11:57:51.308+00	1	Jira default internal directory	com.atlassian.crowd.directory.InternalDirectory	com.atlassian.crowd.directory.internaldirectory	INTERNAL	0
  \.
  
  
  --
  -- Data for Name: cwd_directory_attribute; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_directory_attribute (directory_id, attribute_name, attribute_value) FROM stdin;
  1	user_encryption_method	atlassian-security
  \.
  
  
  --
  -- Data for Name: cwd_directory_operation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_directory_operation (directory_id, operation_type) FROM stdin;
  1	CREATE_GROUP
  1	CREATE_ROLE
  1	CREATE_USER
  1	DELETE_GROUP
  1	DELETE_ROLE
  1	DELETE_USER
  1	UPDATE_GROUP
  1	UPDATE_GROUP_ATTRIBUTE
  1	UPDATE_ROLE
  1	UPDATE_ROLE_ATTRIBUTE
  1	UPDATE_USER
  1	UPDATE_USER_ATTRIBUTE
  \.
  
  
  --
  -- Data for Name: cwd_group; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_group (id, group_name, lower_group_name, active, local, created_date, updated_date, description, lower_description, group_type, directory_id) FROM stdin;
  10000	jira-administrators	jira-administrators	1	0	2013-02-28 11:57:51.326+00	2013-02-28 11:57:51.326+00		\N	GROUP	1
  10010	jira-core-users	jira-core-users	1	0	2020-02-11 16:23:37.05+00	2020-02-11 16:23:37.05+00	\N	\N	GROUP	1
  \.
  
  
  --
  -- Data for Name: cwd_group_attributes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_group_attributes (id, group_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
  \.
  
  
  --
  -- Data for Name: cwd_membership; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_membership (id, parent_id, child_id, membership_type, group_type, parent_name, lower_parent_name, child_name, lower_child_name, directory_id) FROM stdin;
  10000	10000	10000	GROUP_USER	\N	jira-administrators	jira-administrators	harshit	harshit	1
  10001	10010	10000	GROUP_USER	\N	jira-core-users	jira-core-users	harshit	harshit	1
  \.
  
  
  --
  -- Data for Name: cwd_user; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_user (id, directory_id, user_name, lower_user_name, active, created_date, updated_date, first_name, lower_first_name, last_name, lower_last_name, display_name, lower_display_name, email_address, lower_email_address, credential, deleted_externally, external_id) FROM stdin;
  10000	1	harshit	harshit	1	2020-02-11 16:25:36.844+00	2020-02-11 16:25:36.844+00	Harshit	harshit	Pant	pant	Harshit Pant	harshit pant	pantharshit00@gmail.com	pantharshit00@gmail.com	{PKCS5S2}DHzfgmOhj0SV0p8+kh2hZry2zP2EmqCZ/On1x+09ZrAPe087i5NEEvkExaRfsZzL	\N	559fa389-7ae6-492f-bf28-562acaefe620
  \.
  
  
  --
  -- Data for Name: cwd_user_attributes; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.cwd_user_attributes (id, user_id, directory_id, attribute_name, attribute_value, lower_attribute_value) FROM stdin;
  10000	10000	1	requiresPasswordChange	false	false
  10001	10000	1	invalidPasswordAttempts	0	0
  10002	10000	1	passwordLastChanged	1581438337722	1581438337722
  10003	10000	1	password.reset.request.expiry	1581524737905	1581524737905
  10004	10000	1	password.reset.request.token	ac01cda46e71d5460f12a2d1d53dd6bb18a1d2c4	ac01cda46e71d5460f12a2d1d53dd6bb18a1d2c4
  10100	10000	1	login.currentFailedCount	0	0
  10101	10000	1	login.lastLoginMillis	1581438349951	1581438349951
  10102	10000	1	login.count	1	1
  \.
  
  
  --
  -- Data for Name: deadletter; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.deadletter (id, message_id, last_seen, mail_server_id, folder_name) FROM stdin;
  \.
  
  
  --
  -- Data for Name: draftworkflowscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.draftworkflowscheme (id, name, description, workflow_scheme_id, last_modified_date, last_modified_user) FROM stdin;
  \.
  
  
  --
  -- Data for Name: draftworkflowschemeentity; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.draftworkflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
  \.
  
  
  --
  -- Data for Name: entity_property; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.entity_property (id, entity_name, entity_id, property_key, created, updated, json_value) FROM stdin;
  10000	ProjectProperty	10000	searchRequests	2020-02-11 16:26:55.923+00	2020-02-11 16:26:55.923+00	{"ids":[10000,10001,10002]}
  10001	UserProperty	10000	lastViewedVignette	2020-02-11 16:27:29.687+00	2020-02-11 16:27:29.687+00	{"id":"priority"}
  \.
  
  
  --
  -- Data for Name: entity_property_index_document; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.entity_property_index_document (id, plugin_key, module_key, entity_key, updated, document) FROM stdin;
  \.
  
  
  --
  -- Data for Name: entity_translation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.entity_translation (id, entity_name, entity_id, locale, trans_name, trans_desc) FROM stdin;
  \.
  
  
  --
  -- Data for Name: external_entities; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.external_entities (id, name, entitytype) FROM stdin;
  \.
  
  
  --
  -- Data for Name: externalgadget; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.externalgadget (id, gadget_xml) FROM stdin;
  \.
  
  
  --
  -- Data for Name: favouriteassociations; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.favouriteassociations (id, username, entitytype, entityid, sequence) FROM stdin;
  \.
  
  
  --
  -- Data for Name: feature; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.feature (id, feature_name, feature_type, user_key) FROM stdin;
  10001	com.atlassian.jira.projects.issuenavigator	site	
  10000	com.atlassian.jira.projects.ProjectCentricNavigation.Switch	site	
  10100	mail.batching.enabled	site	\N
  10101	com.atlassian.jira.agile.darkfeature.kanplan.enabled	site	
  10102	com.atlassian.jira.agile.darkfeature.kanplan.epics.and.versions.enabled	site	
  10103	com.atlassian.jira.agile.darkfeature.sprint.goal.enabled	site	
  10104	com.atlassian.jira.agile.darkfeature.edit.closed.sprint.enabled	site	
  10105	com.atlassian.jira.agile.darkfeature.splitissue	site	
  \.
  
  
  --
  -- Data for Name: fieldconfigscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldconfigscheme (id, configname, description, fieldid, customfield) FROM stdin;
  10000	Default Issue Type Scheme	Default issue type scheme is the list of global issue types. All newly created issue types will automatically be added to this scheme.	issuetype	\N
  10100	Default priority scheme	This is default priority scheme used by all projects without any other scheme assigned	priority	\N
  10200	TEST: Project Management Issue Type Scheme	\N	issuetype	\N
  \.
  
  
  --
  -- Data for Name: fieldconfigschemeissuetype; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldconfigschemeissuetype (id, issuetype, fieldconfigscheme, fieldconfiguration) FROM stdin;
  10100	\N	10000	10000
  10200	\N	10100	10100
  10301	\N	10200	10200
  \.
  
  
  --
  -- Data for Name: fieldconfiguration; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldconfiguration (id, configname, description, fieldid, customfield) FROM stdin;
  10000	Default Configuration for Issue Type	Default configuration generated by Jira	issuetype	\N
  10100	Default configuration for priority	Default configuration generated by Jira	priority	\N
  10200	Default Configuration for Issue Type	Default configuration generated by JIRA	issuetype	\N
  \.
  
  
  --
  -- Data for Name: fieldlayout; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldlayout (id, name, description, layout_type, layoutscheme) FROM stdin;
  10000	Default Field Configuration	The default field configuration	default	\N
  \.
  
  
  --
  -- Data for Name: fieldlayoutitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldlayoutitem (id, fieldlayout, fieldidentifier, description, verticalposition, ishidden, isrequired, renderertype) FROM stdin;
  10100	10000	issuelinks	\N	\N	false	false	jira-text-renderer
  10101	10000	worklog	Allows work to be logged whilst creating, editing or transitioning issues.	\N	false	false	atlassian-wiki-renderer
  10102	10000	labels	\N	\N	false	false	jira-text-renderer
  10103	10000	comment	\N	\N	false	false	atlassian-wiki-renderer
  10104	10000	attachment	\N	\N	false	false	jira-text-renderer
  10105	10000	resolution	\N	\N	false	false	jira-text-renderer
  10106	10000	timetracking	An estimate of how much work remains until this issue will be resolved.<br>The format of this is ' *w *d *h *m ' (representing weeks, days, hours and minutes - where * can be any number)<br>Examples: 4d, 5h 30m, 60m and 3w.<br>	\N	false	false	jira-text-renderer
  10107	10000	description	\N	\N	false	false	atlassian-wiki-renderer
  10108	10000	environment	For example operating system, software platform and/or hardware specifications (include as appropriate for the issue).	\N	false	false	atlassian-wiki-renderer
  10109	10000	reporter	\N	\N	false	true	jira-text-renderer
  10110	10000	assignee	\N	\N	false	false	jira-text-renderer
  10111	10000	fixVersions	\N	\N	false	false	frother-control-renderer
  10112	10000	versions	\N	\N	false	false	frother-control-renderer
  10113	10000	components	\N	\N	false	false	frother-control-renderer
  10114	10000	duedate	\N	\N	false	false	jira-text-renderer
  10115	10000	priority	\N	\N	false	false	jira-text-renderer
  10116	10000	security	\N	\N	false	false	jira-text-renderer
  10117	10000	issuetype	\N	\N	false	true	jira-text-renderer
  10118	10000	summary	\N	\N	false	true	jira-text-renderer
  \.
  
  
  --
  -- Data for Name: fieldlayoutscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldlayoutscheme (id, name, description) FROM stdin;
  \.
  
  
  --
  -- Data for Name: fieldlayoutschemeassociation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldlayoutschemeassociation (id, issuetype, project, fieldlayoutscheme) FROM stdin;
  \.
  
  
  --
  -- Data for Name: fieldlayoutschemeentity; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldlayoutschemeentity (id, scheme, issuetype, fieldlayout) FROM stdin;
  \.
  
  
  --
  -- Data for Name: fieldscreen; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldscreen (id, name, description) FROM stdin;
  1	Default Screen	Allows to update all system fields.
  2	Workflow Screen	This screen is used in the workflow and enables you to assign issues
  3	Resolve Issue Screen	Allows to set resolution, change fix versions and assign an issue.
  10000	TEST: Project Management Create Issue Screen	
  10001	TEST: Project Management Edit/View Issue Screen	
  10002	TEST: Project Management Resolve Issue Screen	
  \.
  
  
  --
  -- Data for Name: fieldscreenlayoutitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldscreenlayoutitem (id, fieldidentifier, sequence, fieldscreentab) FROM stdin;
  10000	summary	0	10000
  10001	issuetype	1	10000
  10002	security	2	10000
  10003	priority	3	10000
  10004	duedate	4	10000
  10005	components	5	10000
  10006	versions	6	10000
  10007	fixVersions	7	10000
  10008	assignee	8	10000
  10009	reporter	9	10000
  10010	environment	10	10000
  10011	description	11	10000
  10012	timetracking	12	10000
  10013	attachment	13	10000
  10014	assignee	0	10001
  10015	resolution	0	10002
  10016	fixVersions	1	10002
  10017	assignee	2	10002
  10018	worklog	3	10002
  10100	labels	14	10000
  10200	summary	0	10100
  10201	issuetype	1	10100
  10202	reporter	2	10100
  10203	security	3	10100
  10204	attachment	4	10100
  10205	duedate	5	10100
  10206	description	6	10100
  10207	assignee	7	10100
  10208	priority	8	10100
  10209	labels	9	10100
  10210	timetracking	10	10100
  10211	summary	0	10101
  10212	issuetype	1	10101
  10213	reporter	2	10101
  10214	components	3	10101
  10215	attachment	4	10101
  10216	duedate	5	10101
  10217	description	6	10101
  10218	assignee	7	10101
  10219	priority	8	10101
  10220	labels	9	10101
  10221	timetracking	10	10101
  10222	summary	0	10102
  10223	issuetype	1	10102
  10224	reporter	2	10102
  10225	issuelinks	3	10102
  10226	resolution	4	10102
  \.
  
  
  --
  -- Data for Name: fieldscreenscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldscreenscheme (id, name, description) FROM stdin;
  1	Default Screen Scheme	Default Screen Scheme
  10000	TEST: Project Management Screen Scheme	
  \.
  
  
  --
  -- Data for Name: fieldscreenschemeitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldscreenschemeitem (id, operation, fieldscreen, fieldscreenscheme) FROM stdin;
  10000	\N	1	1
  10100	\N	10001	10000
  10101	0	10000	10000
  \.
  
  
  --
  -- Data for Name: fieldscreentab; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fieldscreentab (id, name, description, sequence, fieldscreen) FROM stdin;
  10000	Field Tab	\N	0	1
  10001	Field Tab	\N	0	2
  10002	Field Tab	\N	0	3
  10100	Field Tab	\N	0	10000
  10101	Field Tab	\N	0	10001
  10102	Field Tab	\N	0	10002
  \.
  
  
  --
  -- Data for Name: fileattachment; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.fileattachment (id, issueid, mimetype, filename, created, filesize, author, zip, thumbnailable) FROM stdin;
  10002	10002	image/png	Comment.png	2020-02-11 16:26:56.31+00	15690	JIRAUSER10000	\N	\N
  10003	10002	image/png	dot.png	2020-02-11 16:26:56.31+00	1127	JIRAUSER10000	\N	\N
  10004	10002	image/png	e.png	2020-02-11 16:26:56.31+00	1280	JIRAUSER10000	\N	\N
  10005	10002	image/png	m.png	2020-02-11 16:26:56.31+00	1215	JIRAUSER10000	\N	\N
  10006	10004	image/png	Keyboard.png	2020-02-11 16:26:56.311+00	1355	JIRAUSER10000	\N	\N
  10007	10004	image/png	dot.png	2020-02-11 16:26:56.311+00	1127	JIRAUSER10000	\N	\N
  10008	10004	image/png	i.png	2020-02-11 16:26:56.311+00	1123	JIRAUSER10000	\N	\N
  10009	10004	image/png	l.png	2020-02-11 16:26:56.311+00	1120	JIRAUSER10000	\N	\N
  10010	10004	image/png	questionmark.png	2020-02-11 16:26:56.311+00	1251	JIRAUSER10000	\N	\N
  10011	10005	image/png	c.png	2020-02-11 16:26:56.311+00	1268	JIRAUSER10000	\N	\N
  10012	10005	image/png	dot.png	2020-02-11 16:26:56.311+00	1127	JIRAUSER10000	\N	\N
  10013	10005	image/png	g.png	2020-02-11 16:26:56.311+00	1284	JIRAUSER10000	\N	\N
  10014	10005	image/png	i.png	2020-02-11 16:26:56.311+00	1123	JIRAUSER10000	\N	\N
  10000	10000	image/png	IssueTypes.png	2020-02-11 16:26:56.307+00	12880	JIRAUSER10000	\N	1
  10001	10001	image/png	Workflow.png	2020-02-11 16:26:56.309+00	24139	JIRAUSER10000	\N	1
  \.
  
  
  --
  -- Data for Name: filtersubscription; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.filtersubscription (id, filter_i_d, username, groupname, last_run, email_on_empty) FROM stdin;
  \.
  
  
  --
  -- Data for Name: gadgetuserpreference; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.gadgetuserpreference (id, portletconfiguration, userprefkey, userprefvalue) FROM stdin;
  10000	10002	isConfigured	true
  10001	10003	keys	__all_projects__
  10002	10003	isConfigured	true
  10003	10003	title	Your Company Jira
  10004	10003	numofentries	5
  \.
  
  
  --
  -- Data for Name: genericconfiguration; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.genericconfiguration (id, datatype, datakey, xmlvalue) FROM stdin;
  10000	DefaultValue	10000	<string>1</string>
  10100	DefaultValue	10200	<string>10000</string>
  \.
  
  
  --
  -- Data for Name: globalpermissionentry; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.globalpermissionentry (id, permission, group_id) FROM stdin;
  10000	ADMINISTER	jira-administrators
  10006	SYSTEM_ADMIN	jira-administrators
  10100	CREATE_SHARED_OBJECTS	jira-core-users
  10101	USER_PICKER	jira-core-users
  10102	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-core-users
  10103	BULK_CHANGE	jira-core-users
  10104	CREATE_SHARED_OBJECTS	jira-administrators
  10105	MANAGE_GROUP_FILTER_SUBSCRIPTIONS	jira-administrators
  10106	BULK_CHANGE	jira-administrators
  10107	USER_PICKER	jira-administrators
  \.
  
  
  --
  -- Data for Name: groupbase; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.groupbase (id, groupname) FROM stdin;
  \.
  
  
  --
  -- Data for Name: issue_field_option; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issue_field_option (id, option_id, field_key, option_value, properties) FROM stdin;
  \.
  
  
  --
  -- Data for Name: issue_field_option_scope; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issue_field_option_scope (id, option_id, entity_id, scope_type) FROM stdin;
  \.
  
  
  --
  -- Data for Name: issuelink; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuelink (id, linktype, source, destination, sequence) FROM stdin;
  \.
  
  
  --
  -- Data for Name: issuelinktype; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuelinktype (id, linkname, inward, outward, pstyle) FROM stdin;
  10100	jira_subtask_link	jira_subtask_inward	jira_subtask_outward	jira_subtask
  10000	Blocks	is blocked by	blocks	\N
  10001	Cloners	is cloned by	clones	\N
  10002	Duplicate	is duplicated by	duplicates	\N
  10003	Relates	relates to	relates to	\N
  \.
  
  
  --
  -- Data for Name: issuesecurityscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuesecurityscheme (id, name, description, defaultlevel) FROM stdin;
  \.
  
  
  --
  -- Data for Name: issuestatus; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuestatus (id, sequence, pname, description, iconurl, statuscategory) FROM stdin;
  1	1	Open	The issue is open and ready for the assignee to start work on it.	/images/icons/statuses/open.png	2
  3	3	In Progress	This issue is being actively worked on at the moment by the assignee.	/images/icons/statuses/inprogress.png	4
  4	4	Reopened	This issue was once resolved, but the resolution was deemed incorrect. From here issues are either marked assigned or resolved.	/images/icons/statuses/reopened.png	2
  5	5	Resolved	A resolution has been taken, and it is awaiting verification by reporter. From here issues are either reopened, or are closed.	/images/icons/statuses/resolved.png	3
  6	6	Closed	The issue is considered finished, the resolution is correct. Issues which are closed can be reopened.	/images/icons/statuses/closed.png	3
  10000	7	To Do	\N	/images/icons/status_generic.gif	2
  10001	8	Done	\N	/images/icons/status_generic.gif	3
  \.
  
  
  --
  -- Data for Name: issuetype; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuetype (id, sequence, pname, pstyle, description, iconurl, avatar) FROM stdin;
  10000	\N	Task		A task that needs to be done.	\N	10318
  10001	\N	Sub-task	jira_subtask	The sub-task of the issue	\N	10316
  \.
  
  
  --
  -- Data for Name: issuetypescreenscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuetypescreenscheme (id, name, description) FROM stdin;
  1	Default Issue Type Screen Scheme	The default issue type screen scheme
  10000	TEST: Project Management Issue Type Screen Scheme	
  \.
  
  
  --
  -- Data for Name: issuetypescreenschemeentity; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.issuetypescreenschemeentity (id, issuetype, scheme, fieldscreenscheme) FROM stdin;
  10000	\N	1	1
  10100	\N	10000	10000
  \.
  
  
  --
  -- Data for Name: jiraaction; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraaction (id, issueid, author, actiontype, actionlevel, rolelevel, actionbody, created, updateauthor, updated, actionnum) FROM stdin;
  10000	10002	JIRAUSER10000	comment	\N	\N	Which way are you going to add your comment?\n\n* Keyboard shortcut: !m.png!\n* Clicking the Comment button below\n* Clicking the Comment button in the top section\n* Using the Operations Dialog keyboard shortcut: !dot.png! and then typing 'comment'\n	2020-02-11 16:26:56.31+00	JIRAUSER10000	2020-02-11 16:26:56.31+00	\N
  \.
  
  
  --
  -- Data for Name: jiradraftworkflows; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiradraftworkflows (id, parentname, descriptor) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jiraeventtype; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraeventtype (id, template_id, name, description, event_type) FROM stdin;
  1	\N	Issue Created	This is the 'issue created' event.	jira.system.event.type
  2	\N	Issue Updated	This is the 'issue updated' event.	jira.system.event.type
  3	\N	Issue Assigned	This is the 'issue assigned' event.	jira.system.event.type
  4	\N	Issue Resolved	This is the 'issue resolved' event.	jira.system.event.type
  5	\N	Issue Closed	This is the 'issue closed' event.	jira.system.event.type
  6	\N	Issue Commented	This is the 'issue commented' event.	jira.system.event.type
  7	\N	Issue Reopened	This is the 'issue reopened' event.	jira.system.event.type
  8	\N	Issue Deleted	This is the 'issue deleted' event.	jira.system.event.type
  9	\N	Issue Moved	This is the 'issue moved' event.	jira.system.event.type
  10	\N	Work Logged On Issue	This is the 'work logged on issue' event.	jira.system.event.type
  11	\N	Work Started On Issue	This is the 'work started on issue' event.	jira.system.event.type
  12	\N	Work Stopped On Issue	This is the 'work stopped on issue' event.	jira.system.event.type
  13	\N	Generic Event	This is the 'generic event' event.	jira.system.event.type
  14	\N	Issue Comment Edited	This is the 'issue comment edited' event.	jira.system.event.type
  15	\N	Issue Worklog Updated	This is the 'issue worklog updated' event.	jira.system.event.type
  16	\N	Issue Worklog Deleted	This is the 'issue worklog deleted' event.	jira.system.event.type
  17	\N	Issue Comment Deleted	This is the 'issue comment deleted' event.	jira.system.event.type
  18	\N	Issue Archived	This is the 'issue archived' event	jira.system.event.type
  19	\N	Issue Restored	This is the 'issue restored' event	jira.system.event.type
  \.
  
  
  --
  -- Data for Name: jiraissue; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraissue (id, pkey, issuenum, project, reporter, assignee, creator, issuetype, summary, description, environment, priority, resolution, issuestatus, created, updated, duedate, resolutiondate, votes, watches, timeoriginalestimate, timeestimate, timespent, workflow_id, security, fixfor, component, archived, archivedby, archiveddate) FROM stdin;
  10000	\N	1	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	This is your first task	h2. This is your first task. \n{color:#707070} Issues are the things you do in a project. In business projects, issues are called tasks. {color}\nh4. Types of tasks\n{color:#707070}A task can represent a document, a creative asset, a purchase and even a person.{color}\n!IssueTypes.png!\nh4. Details\n{color:#707070}The 'Details' section above, provides the information you need, such as priority and status, to help you track the progress of your tasks.{color}\nNext: [Workflows and statuses|TEST-2]\n\n----\n[Learn more |http://blogs.atlassian.com/2015/11/make-jira-core-issues-work-for-your-business-team/]	\N	3	\N	10000	2020-02-11 16:26:56.701+00	2020-02-11 16:25:56.305+00	\N	\N	0	0	\N	\N	\N	10000	\N	\N	\N	N	\N	\N
  10001	\N	2	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	Workflows and statuses	!Workflow.png|align=left!\nh4. Workflows - What you need to know\n{color:#707070}Workflows define steps to get a task to done. To see the workflow this tasks goes through, click on 'View Workflow' above. {color}\nh4. Status\n{color:#707070} A status represents the “state” of a task at a specific point in your workflow. The current status of your task can be viewed in the 'Details' section above. Once you're ready to move to the next step, click on the appropriate transition button. {color}\n\nNext: [Editing tasks|TEST-3]\n{color:#707070}Previous:{color} [This is your first task.|TEST-1]\n\n----\n[Learn more about workflows|http://blogs.atlassian.com/2015/11/how-to-set-up-business-workflows-in-jira-core/]	\N	3	\N	10000	2020-02-11 16:26:57.645+00	2020-02-11 16:24:56.307+00	\N	\N	0	0	\N	\N	\N	10001	\N	\N	\N	N	\N	\N
  10002	\N	3	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	Editing tasks	h4. Editing tasks\n{color:#707070}Hover over the content you want to edit and make the change. Click the checkmark and you're done! You can also edit using keyboard shortcuts or by clicking the 'Edit' button. And don't forget to assign the task to someone. {color}\nh4. Commenting\n{color:#707070}You can add comments to a task below. Comments are a great way to communicate with your team and stay informed. Plus, you can notify specific team members by using @mentions.\n{color}\n!Comment.png!\nNext: [Searching|TEST-4]\n{color:#707070}Previous:{color} [Workflows and Statuses|TEST-2]\n\n\n----\n[Learn more about editing issues|https://confluence.atlassian.com/display/JIRA/Editing+an+Issue]	\N	3	\N	10000	2020-02-11 16:26:57.754+00	2020-02-11 16:23:56.309+00	\N	\N	0	0	300	\N	\N	10002	\N	\N	\N	N	\N	\N
  10003	\N	4	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	Searching for information	h4.Searching for Information\n{color:#707070}Use the Search bar in the top right to quickly find a particular task. \nFor more advanced searches, click 'Search for issues' under the Issues menu. \n{color}\nNext: [Keyboard shortcuts|TEST-5]\n{color:#707070}Previous:{color} [Editing tasks|TEST-3]\n\n----\n[Learn more about searching|https://confluence.atlassian.com/display/JIRACORECLOUD/Searching+for+issues]	\N	3	\N	10000	2020-02-11 16:26:57.891+00	2020-02-11 16:22:56.31+00	\N	\N	0	0	\N	\N	\N	10003	\N	\N	\N	N	\N	\N
  10004	\N	5	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	Keyboard shortcuts	h4. Working faster\n{color:#707070}!Keyboard.png! Are you a fan of keyboard shortcuts? We are too! Press !questionmark.png! to see the list.\nHere are three of our favourites that you might like to try:{color}\n* {color:#707070}!dot.png! Operations Dialog{color}\n* {color:#707070}!i.png! Assign to me{color}\n* {color:#707070}!l.png! Label Issue{color}\nNext: [Searching for Information|TEST-6]\n{color:#707070}Previous:{color} [What's next|TEST-4]\n\n----\n[Learn more about keyboard shortcuts|https://confluence.atlassian.com/display/JIRA/Using+Keyboard+Shortcuts]	\N	3	\N	10000	2020-02-11 16:26:57.943+00	2020-02-11 16:21:56.311+00	\N	\N	0	0	\N	\N	\N	10004	\N	\N	\N	N	\N	\N
  10005	\N	6	10000	JIRAUSER10000	JIRAUSER10000	JIRAUSER10000	10000	What's next?	h4. Now it's your turn!\n{color:#707070}Now, it is your turn to create your first task. Click the 'Create' button and get your project started. {color}\nh4. If you are a JIRA Core administrator, you can create and customize projects for your organization. \n* {color:#707070} Click on 'Create Project' under the Project menu above and select one of the business projects to get started. {color}\n* {color:#707070}Invite team members to JIRA Core - keyboard shortcut: !dot.png!, then type 'users' {color}\n* {color:#707070}Delete this Demo Project - keyboard shortcut: !dot.png!, then type 'projects' {color}\n{color:#707070}Previous:{color} [Keyboard shortcuts|TEST-5]\n\n----\n(i) [Visit the JIRA Core documentation|https://confluence.atlassian.com/display/JIRACORECLOUD/JIRA+Core+documentation]	\N	3	\N	10000	2020-02-11 16:26:58.065+00	2020-02-11 16:20:56.311+00	\N	\N	0	0	\N	\N	\N	10005	\N	\N	\N	N	\N	\N
  \.
  
  
  --
  -- Data for Name: jiraperms; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraperms (id, permtype, projectid, groupname) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jiraworkflows; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraworkflows (id, workflowname, creatorname, descriptor, islocked) FROM stdin;
  10000	classic default workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description">The classic Jira default workflow</meta>\n  <initial-actions>\n    <action id="1" name="Create Issue">\n      <meta name="opsbar-sequence">0</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n          <arg name="permission">Create Issue</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="Finished" status="Open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">1</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <common-actions>\n    <action id="2" name="Close Issue" view="resolveissue">\n      <meta name="opsbar-sequence">60</meta>\n      <meta name="jira.i18n.submit">closeissue.close</meta>\n      <meta name="jira.i18n.description">closeissue.desc</meta>\n      <meta name="jira.i18n.title">closeissue.title</meta>\n      <restrict-to>\n        <conditions type="AND">\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Close Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Closed" step="6">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">5</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="3" name="Reopen Issue" view="commentassign">\n      <meta name="opsbar-sequence">80</meta>\n      <meta name="jira.i18n.submit">issue.operations.reopen.issue</meta>\n      <meta name="jira.i18n.description">issue.operations.reopen.description</meta>\n      <meta name="jira.i18n.title">issue.operations.reopen.issue</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Reopened" step="5">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">7</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="4" name="Start Progress">\n      <meta name="opsbar-sequence">20</meta>\n      <meta name="jira.i18n.title">startprogress.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Underway" step="3">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n              <arg name="field.value"></arg>\n              <arg name="field.name">resolution</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">11</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n    <action id="5" name="Resolve Issue" view="resolveissue">\n      <meta name="opsbar-sequence">40</meta>\n      <meta name="jira.i18n.submit">resolveissue.resolve</meta>\n      <meta name="jira.i18n.description">resolveissue.desc.line1</meta>\n      <meta name="jira.i18n.title">resolveissue.title</meta>\n      <restrict-to>\n        <conditions>\n          <condition type="class">\n            <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n            <arg name="permission">Resolve Issue</arg>\n          </condition>\n        </conditions>\n      </restrict-to>\n      <results>\n        <unconditional-result old-status="Finished" status="Resolved" step="4">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n              <arg name="eventTypeId">4</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </common-actions>\n  <steps>\n    <step id="1" name="Open">\n      <meta name="jira.status.id">1</meta>\n      <actions>\n<common-action id="4" />\n<common-action id="5" />\n<common-action id="2" />\n      </actions>\n    </step>\n    <step id="3" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n        <action id="301" name="Stop Progress">\n          <meta name="opsbar-sequence">20</meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.AllowOnlyAssignee</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Assigned" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="field.name">resolution</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">12</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="4" name="Resolved">\n      <meta name="jira.status.id">5</meta>\n      <actions>\n<common-action id="3" />\n        <action id="701" name="Close Issue" view="commentassign">\n          <meta name="opsbar-sequence">60</meta>\n          <meta name="jira.i18n.submit">closeissue.close</meta>\n          <meta name="jira.i18n.description">closeissue.desc</meta>\n          <meta name="jira.i18n.title">closeissue.title</meta>\n          <meta name="jira.description">Closing an issue indicates there is no more work to be done on it, and it has been verified as complete.</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n                <arg name="permission">Close Issue</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Finished" status="Closed" step="6">\n              <post-functions>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                  <arg name="eventTypeId">5</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="5" name="Reopened">\n      <meta name="jira.status.id">4</meta>\n      <actions>\n<common-action id="5" />\n<common-action id="2" />\n<common-action id="4" />\n      </actions>\n    </step>\n    <step id="6" name="Closed">\n      <meta name="jira.status.id">6</meta>\n      <meta name="jira.issue.editable">false</meta>\n      <actions>\n<common-action id="3" />\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
  10100	TEST: Project Management Workflow	\N	<?xml version="1.0" encoding="UTF-8"?>\n<!DOCTYPE workflow PUBLIC "-//OpenSymphony Group//DTD OSWorkflow 2.8//EN" "http://www.opensymphony.com/osworkflow/workflow_2_8.dtd">\n<workflow>\n  <meta name="jira.description"></meta>\n  <meta name="jira.update.author.key">JIRAUSER10000</meta>\n  <meta name="jira.updated.date">1581438414922</meta>\n  <initial-actions>\n    <action id="1" name="Create">\n      <meta name="jira.i18n.submit">common.forms.create</meta>\n      <meta name="jira.i18n.title">common.forms.create</meta>\n      <validators>\n        <validator name="" type="class">\n          <arg name="permission">Create Issue</arg>\n          <arg name="class.name">com.atlassian.jira.workflow.validator.PermissionValidator</arg>\n        </validator>\n      </validators>\n      <results>\n        <unconditional-result old-status="null" status="open" step="1">\n          <post-functions>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueCreateFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n            </function>\n            <function type="class">\n              <arg name="eventTypeId">1</arg>\n              <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n            </function>\n          </post-functions>\n        </unconditional-result>\n      </results>\n    </action>\n  </initial-actions>\n  <steps>\n    <step id="1" name="To Do">\n      <meta name="jira.status.id">10000</meta>\n      <actions>\n        <action id="11" name="Start Progress">\n          <meta name="jira.i18n.submit">startprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">startprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="21" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="2" name="In Progress">\n      <meta name="jira.status.id">3</meta>\n      <actions>\n        <action id="31" name="Stop Progress">\n          <meta name="jira.i18n.submit">stopprogress.title</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">stopprogress.title</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="41" name="Done">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.done.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="3">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value">10000</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n    <step id="3" name="Done">\n      <meta name="jira.status.id">10001</meta>\n      <actions>\n        <action id="51" name="Reopen">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopen.name</meta>\n          <restrict-to>\n            <conditions>\n              <condition type="class">\n                <arg name="permission">RESOLVE_ISSUES</arg>\n                <arg name="class.name">com.atlassian.jira.workflow.condition.PermissionCondition</arg>\n              </condition>\n            </conditions>\n          </restrict-to>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="1">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n        <action id="61" name="Reopen and start progress">\n          <meta name="jira.i18n.submit">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <meta name="jira.description"></meta>\n          <meta name="jira.i18n.title">jira.issuetracking.simple.workflow.action.reopenandstartprogress.name</meta>\n          <results>\n            <unconditional-result old-status="Not Done" status="Done" step="2">\n              <post-functions>\n                <function type="class">\n                  <arg name="field.name">resolution</arg>\n                  <arg name="field.value"></arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueFieldFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowupdateissuestatus-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.UpdateIssueStatusFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowassigntocurrentuser-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.AssignToCurrentUserFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowcreatecomment-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.misc.CreateCommentFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowgeneratechangehistory-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.GenerateChangeHistoryFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowreindexissue-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.issue.IssueReindexFunction</arg>\n                </function>\n                <function type="class">\n                  <arg name="eventTypeId">13</arg>\n                  <arg name="full.module.key">com.atlassian.jira.plugin.system.workflowfireevent-function</arg>\n                  <arg name="class.name">com.atlassian.jira.workflow.function.event.FireIssueEventFunction</arg>\n                </function>\n              </post-functions>\n            </unconditional-result>\n          </results>\n        </action>\n      </actions>\n    </step>\n  </steps>\n</workflow>\n	\N
  \.
  
  
  --
  -- Data for Name: jiraworkflowstatuses; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jiraworkflowstatuses (id, status, parentname) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_blob_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_blob_triggers (sched_name, trigger_name, trigger_group, blob_data) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_calendars; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_calendars (sched_name, calendar_name, calendar) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_cron_triggers (sched_name, trigger_name, trigger_group, cron_expression, time_zone_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_fired_triggers (sched_name, entry_id, trigger_name, trigger_group, is_volatile, instance_name, fired_time, sched_time, priority, state, job_name, job_group, is_stateful, is_nonconcurrent, is_update_data, requests_recovery) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_job_details; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_job_details (sched_name, job_name, job_group, description, job_class_name, is_durable, is_volatile, is_stateful, is_nonconcurrent, is_update_data, requests_recovery, job_data) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_job_listeners; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_job_listeners (job_name, job_group, job_listener) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_locks; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_locks (sched_name, lock_name) FROM stdin;
  \N	TRIGGER_ACCESS
  \N	JOB_ACCESS
  \N	CALENDAR_ACCESS
  \N	STATE_ACCESS
  \N	MISFIRE_ACCESS
  \.
  
  
  --
  -- Data for Name: jquartz_paused_trigger_grps; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_paused_trigger_grps (sched_name, trigger_group) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_scheduler_state; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_scheduler_state (sched_name, instance_name, last_checkin_time, checkin_interval) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_simple_triggers (sched_name, trigger_name, trigger_group, repeat_count, repeat_interval, times_triggered) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_simprop_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_simprop_triggers (sched_name, trigger_name, trigger_group, str_prop_1, str_prop_2, str_prop_3, int_prop_1, int_prop_2, long_prop_1, long_prop_2, dec_prop_1, dec_prop_2, bool_prop_1, bool_prop_2) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_trigger_listeners (trigger_name, trigger_group, trigger_listener) FROM stdin;
  \.
  
  
  --
  -- Data for Name: jquartz_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.jquartz_triggers (sched_name, trigger_name, trigger_group, job_name, job_group, is_volatile, description, next_fire_time, prev_fire_time, priority, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr, job_data) FROM stdin;
  \.
  
  
  --
  -- Data for Name: label; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.label (id, fieldid, issue, label) FROM stdin;
  10000	\N	10004	keyboard-shortcuts
  10001	\N	10004	demo
  \.
  
  
  --
  -- Data for Name: licenserolesdefault; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.licenserolesdefault (id, license_role_name) FROM stdin;
  10000	jira-core
  \.
  
  
  --
  -- Data for Name: licenserolesgroup; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.licenserolesgroup (id, license_role_name, group_id, primary_group) FROM stdin;
  10000	jira-core	jira-core-users	Y
  10001	jira-core	jira-administrators	N
  \.
  
  
  --
  -- Data for Name: listenerconfig; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.listenerconfig (id, clazz, listenername) FROM stdin;
  10000	com.atlassian.jira.event.listeners.mail.MailListener	Mail Listener
  10001	com.atlassian.jira.event.listeners.history.IssueAssignHistoryListener	Issue Assignment Listener
  10201	com.atlassian.jira.event.listeners.search.IssueIndexListener	Issue Index Listener
  \.
  
  
  --
  -- Data for Name: mailserver; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.mailserver (id, name, description, mailfrom, prefix, smtp_port, protocol, server_type, servername, jndilocation, mailusername, mailpassword, istlsrequired, timeout, socks_port, socks_host) FROM stdin;
  \.
  
  
  --
  -- Data for Name: managedconfigurationitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.managedconfigurationitem (id, item_id, item_type, managed, access_level, source, description_key) FROM stdin;
  \.
  
  
  --
  -- Data for Name: membershipbase; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.membershipbase (id, user_name, group_name) FROM stdin;
  \.
  
  
  --
  -- Data for Name: moved_issue_key; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.moved_issue_key (id, old_issue_key, issue_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: nodeassociation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.nodeassociation (source_node_id, source_node_entity, sink_node_id, sink_node_entity, association_type, sequence) FROM stdin;
  10000	Project	0	PermissionScheme	ProjectScheme	\N
  10000	Project	10000	NotificationScheme	ProjectScheme	\N
  10000	Project	10100	WorkflowScheme	ProjectScheme	\N
  10000	Project	10000	IssueTypeScreenScheme	ProjectScheme	\N
  \.
  
  
  --
  -- Data for Name: nodeindexcounter; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.nodeindexcounter (id, node_id, sending_node_id, index_operation_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: notification; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.notification (id, scheme, event, event_type_id, template_id, notif_type, notif_parameter) FROM stdin;
  10000	10000	\N	1	\N	Current_Assignee	\N
  10001	10000	\N	1	\N	Current_Reporter	\N
  10002	10000	\N	1	\N	All_Watchers	\N
  10003	10000	\N	2	\N	Current_Assignee	\N
  10004	10000	\N	2	\N	Current_Reporter	\N
  10005	10000	\N	2	\N	All_Watchers	\N
  10006	10000	\N	3	\N	Current_Assignee	\N
  10007	10000	\N	3	\N	Current_Reporter	\N
  10008	10000	\N	3	\N	All_Watchers	\N
  10009	10000	\N	4	\N	Current_Assignee	\N
  10010	10000	\N	4	\N	Current_Reporter	\N
  10011	10000	\N	4	\N	All_Watchers	\N
  10012	10000	\N	5	\N	Current_Assignee	\N
  10013	10000	\N	5	\N	Current_Reporter	\N
  10014	10000	\N	5	\N	All_Watchers	\N
  10015	10000	\N	6	\N	Current_Assignee	\N
  10016	10000	\N	6	\N	Current_Reporter	\N
  10017	10000	\N	6	\N	All_Watchers	\N
  10018	10000	\N	7	\N	Current_Assignee	\N
  10019	10000	\N	7	\N	Current_Reporter	\N
  10020	10000	\N	7	\N	All_Watchers	\N
  10021	10000	\N	8	\N	Current_Assignee	\N
  10022	10000	\N	8	\N	Current_Reporter	\N
  10023	10000	\N	8	\N	All_Watchers	\N
  10024	10000	\N	9	\N	Current_Assignee	\N
  10025	10000	\N	9	\N	Current_Reporter	\N
  10026	10000	\N	9	\N	All_Watchers	\N
  10027	10000	\N	10	\N	Current_Assignee	\N
  10028	10000	\N	10	\N	Current_Reporter	\N
  10029	10000	\N	10	\N	All_Watchers	\N
  10030	10000	\N	11	\N	Current_Assignee	\N
  10031	10000	\N	11	\N	Current_Reporter	\N
  10032	10000	\N	11	\N	All_Watchers	\N
  10033	10000	\N	12	\N	Current_Assignee	\N
  10034	10000	\N	12	\N	Current_Reporter	\N
  10035	10000	\N	12	\N	All_Watchers	\N
  10036	10000	\N	13	\N	Current_Assignee	\N
  10037	10000	\N	13	\N	Current_Reporter	\N
  10038	10000	\N	13	\N	All_Watchers	\N
  10100	10000	\N	14	\N	Current_Assignee	\N
  10101	10000	\N	14	\N	Current_Reporter	\N
  10102	10000	\N	14	\N	All_Watchers	\N
  10103	10000	\N	15	\N	Current_Assignee	\N
  10104	10000	\N	15	\N	Current_Reporter	\N
  10105	10000	\N	15	\N	All_Watchers	\N
  10106	10000	\N	16	\N	Current_Assignee	\N
  10107	10000	\N	16	\N	Current_Reporter	\N
  10108	10000	\N	16	\N	All_Watchers	\N
  10200	10000	\N	18	\N	Current_Assignee	\N
  10201	10000	\N	18	\N	Current_Reporter	\N
  10202	10000	\N	18	\N	All_Watchers	\N
  10203	10000	\N	19	\N	Current_Assignee	\N
  10204	10000	\N	19	\N	Current_Reporter	\N
  10205	10000	\N	19	\N	All_Watchers	\N
  \.
  
  
  --
  -- Data for Name: notificationinstance; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.notificationinstance (id, notificationtype, source, emailaddress, messageid) FROM stdin;
  \.
  
  
  --
  -- Data for Name: notificationscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.notificationscheme (id, name, description) FROM stdin;
  10000	Default Notification Scheme	\N
  \.
  
  
  --
  -- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.oauthconsumer (id, created, consumername, consumer_key, consumerservice, public_key, private_key, description, callback, signature_method, shared_secret) FROM stdin;
  \.
  
  
  --
  -- Data for Name: oauthconsumertoken; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.oauthconsumertoken (id, created, token_key, token, token_secret, token_type, consumer_key) FROM stdin;
  \.
  
  
  --
  -- Data for Name: oauthspconsumer; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.oauthspconsumer (id, created, consumer_key, consumername, public_key, description, callback, two_l_o_allowed, executing_two_l_o_user, two_l_o_impersonation_allowed, three_l_o_allowed) FROM stdin;
  \.
  
  
  --
  -- Data for Name: oauthsptoken; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.oauthsptoken (id, created, token, token_secret, token_type, consumer_key, username, ttl, spauth, callback, spverifier, spversion, session_handle, session_creation_time, session_last_renewal_time, session_time_to_live) FROM stdin;
  \.
  
  
  --
  -- Data for Name: optionconfiguration; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.optionconfiguration (id, fieldid, optionid, fieldconfig, sequence) FROM stdin;
  10200	priority	1	10100	1
  10201	priority	2	10100	2
  10202	priority	3	10100	3
  10203	priority	4	10100	4
  10204	priority	5	10100	5
  10300	issuetype	10000	10200	0
  10301	issuetype	10001	10200	1
  \.
  
  
  --
  -- Data for Name: os_currentstep; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.os_currentstep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
  10000	10000	1	0		2020-02-11 16:26:56.767+00	\N	\N	open	\N
  10001	10001	1	0		2020-02-11 16:26:57.66+00	\N	\N	open	\N
  10002	10002	1	0		2020-02-11 16:26:57.779+00	\N	\N	open	\N
  10003	10003	1	0		2020-02-11 16:26:57.899+00	\N	\N	open	\N
  10004	10004	1	0		2020-02-11 16:26:57.954+00	\N	\N	open	\N
  10005	10005	1	0		2020-02-11 16:26:58.068+00	\N	\N	open	\N
  \.
  
  
  --
  -- Data for Name: os_currentstep_prev; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.os_currentstep_prev (id, previous_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: os_historystep; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.os_historystep (id, entry_id, step_id, action_id, owner, start_date, due_date, finish_date, status, caller) FROM stdin;
  \.
  
  
  --
  -- Data for Name: os_historystep_prev; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.os_historystep_prev (id, previous_id) FROM stdin;
  \.
  
  
  --
  -- Data for Name: os_wfentry; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.os_wfentry (id, name, initialized, state) FROM stdin;
  10000	TEST: Project Management Workflow	\N	1
  10001	TEST: Project Management Workflow	\N	1
  10002	TEST: Project Management Workflow	\N	1
  10003	TEST: Project Management Workflow	\N	1
  10004	TEST: Project Management Workflow	\N	1
  10005	TEST: Project Management Workflow	\N	1
  \.
  
  
  --
  -- Data for Name: permissionscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.permissionscheme (id, name, description) FROM stdin;
  0	Default Permission Scheme	This is the default Permission Scheme. Any new projects that are created will be assigned this scheme.
  \.
  
  
  --
  -- Data for Name: permissionschemeattribute; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.permissionschemeattribute (id, scheme, attribute_key, attribute_value) FROM stdin;
  \.
  
  
  --
  -- Data for Name: pluginstate; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.pluginstate (pluginkey, pluginenabled) FROM stdin;
  \.
  
  
  --
  -- Data for Name: pluginversion; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.pluginversion (id, pluginname, pluginkey, pluginversion, created) FROM stdin;
  10000	Jira Projects Plugin	com.atlassian.jira.jira-projects-plugin	5.2.0	2020-02-11 16:22:40.462+00
  10001	Atlassian OAuth Consumer Plugin	com.atlassian.oauth.consumer	4.0.2	2020-02-11 16:22:40.475+00
  10002	Atlassian Jira - Plugins - My Jira Home	com.atlassian.jira.jira-my-home-plugin	8.7.1	2020-02-11 16:22:40.476+00
  10003	Project Creation Plugin SPI for JIRA	com.atlassian.plugins.jira-project-creation	4.0.0-74bdd7a6fa	2020-02-11 16:22:40.479+00
  10004	Atlassian Embedded Crowd - Administration Plugin	com.atlassian.crowd.embedded.admin	2.3.4-j11-2	2020-02-11 16:22:40.481+00
  10005	Analytics Client Plugin	com.atlassian.analytics.analytics-client	5.8.0	2020-02-11 16:22:40.483+00
  10006	Jira Index Analyzer	com.atlassian.jira.plugins.jira-index-analyzer-plugin	8.7.1	2020-02-11 16:22:40.487+00
  10007	Jira Help Tips plugin	com.atlassian.plugins.helptips.jira-help-tips	8.7.1	2020-02-11 16:22:40.49+00
  10008	Atlassian Navigation Links Plugin	com.atlassian.plugins.atlassian-nav-links-plugin	5.0.0	2020-02-11 16:22:40.492+00
  10009	JIRA Core Romanian (Romania) Language Pack	tac.jira core.languages.ro_RO	8.8.0.v20200206001329	2020-02-11 16:22:40.494+00
  10010	Atlassian Jira - Plugins - Issue Web Link	com.atlassian.jira.jira-issue-link-web-plugin	8.7.1	2020-02-11 16:22:40.496+00
  10011	JIRA Core Slovak (Slovakia) Language Pack	tac.jira core.languages.sk_SK	8.8.0.v20200206001329	2020-02-11 16:22:40.497+00
  10012	Atlassian Hipchat Integration Plugin Core	com.atlassian.plugins.base-hipchat-integration-plugin-api	8.4.2	2020-02-11 16:22:40.499+00
  10013	Whisper Messages Plugin	whisper.messages	1.0	2020-02-11 16:22:40.5+00
  10014	Project Role Actors Plugin	com.atlassian.jira.plugin.system.projectroleactors	1.0	2020-02-11 16:22:40.506+00
  10015	Atlassian Jira - Plugins - OAuth Service Provider SPI	com.atlassian.jira.oauth.serviceprovider	8.7.1	2020-02-11 16:22:40.51+00
  10016	Keyboard Shortcuts Plugin	jira.keyboard.shortcuts	1.0	2020-02-11 16:22:40.512+00
  10017	Bitbucket Importer Plugin for JIM	com.atlassian.jira.plugins.jira-importers-bitbucket-plugin	3.1.1	2020-02-11 16:22:40.514+00
  10018	Atlassian Remote Event Common Plugin	com.atlassian.plugins.atlassian-remote-event-common-plugin	6.1.0	2020-02-11 16:22:40.516+00
  10019	Jira GitHub Issue Importer	com.atlassian.jira.plugins.jira-importers-github-plugin	3.1.0	2020-02-11 16:22:40.517+00
  10020	JIRA Password Policy Plugin	com.atlassian.jira.plugins.jira-password-policy-plugin	2.1.0	2020-02-11 16:22:40.518+00
  10021	ROME: RSS/Atom syndication and publishing tools	com.springsource.com.sun.syndication-0.9.0	0.9.0	2020-02-11 16:22:40.52+00
  10022	JIRA iCalendar Plugin	com.atlassian.jira.extra.jira-ical-feed	1.5.0	2020-02-11 16:22:40.523+00
  10023	Jira Drag and Drop Attachment Plugin	com.atlassian.jira.plugins.jira-dnd-attachment-plugin	5.0.7	2020-02-11 16:22:40.525+00
  10024	Atlassian Jira - Plugins - Post setup announcements plugin	com.atlassian.jira.jira-postsetup-announcements-plugin	8.7.1	2020-02-11 16:22:40.526+00
  10025	Streams Inline Actions Plugin	com.atlassian.streams.actions	8.2.0	2020-02-11 16:22:40.528+00
  10026	Apache Apache HttpClient OSGi bundle	org.apache.httpcomponents.httpclient-4.5.10	4.5.10	2020-02-11 16:22:40.529+00
  10027	JIRA Core Swedish (Sweden) Language Pack	tac.jira core.languages.sv_SE	8.8.0.v20200206001329	2020-02-11 16:22:40.534+00
  10028	Comment Panel Plugin	com.atlassian.jira.plugin.system.comment-panel	1.0	2020-02-11 16:22:40.537+00
  10029	Atlassian Remote Event Consumer Plugin	com.atlassian.plugins.atlassian-remote-event-consumer-plugin	6.1.0	2020-02-11 16:22:40.539+00
  10030	scala-2.11-provider-plugin	com.atlassian.scala.plugins.scala-2.11-provider-plugin	0.13	2020-02-11 16:22:40.541+00
  10031	JIRA Workflow Transition Tabs	com.atlassian.jira.plugin.system.workfloweditor.transition.tabs	1.0	2020-02-11 16:22:40.543+00
  10032	Jira inform - batching plugin	com.atlassian.jira.plugins.inform.batching-plugin	1.3.4	2020-02-11 16:22:40.55+00
  10033	JIRA Core Czech (Czech Republic) Language Pack	tac.jira core.languages.cs_CZ	8.8.0.v20200206001329	2020-02-11 16:22:40.552+00
  10034	Renderer Plugin	com.atlassian.jira.plugin.system.jirarenderers	1.0	2020-02-11 16:22:40.554+00
  10035	Atlassian Gadgets OAuth Service Provider Plugin	com.atlassian.gadgets.oauth.serviceprovider	4.3.10	2020-02-11 16:22:40.556+00
  10036	JIRA Core Japanese (Japan) Language Pack	tac.jira core.languages.ja_JP	8.8.0.v20200206001329	2020-02-11 16:22:40.557+00
  10037	JIRA Core Italian (Italy) Language Pack	tac.jira core.languages.it_IT	8.8.0.v20200206001329	2020-02-11 16:22:40.559+00
  10038	JIRA Core Polish (Poland) Language Pack	tac.jira core.languages.pl_PL	8.8.0.v20200206001329	2020-02-11 16:22:40.56+00
  10039	Atlassian Jira - Plugins - Admin Navigation Component	com.atlassian.jira.jira-admin-navigation-plugin	8.7.1	2020-02-11 16:22:40.561+00
  10040	JIRA Core German (Germany) Language Pack	tac.jira core.languages.de_DE	8.8.0.v20200206001329	2020-02-11 16:22:40.563+00
  10041	Atlassian Plugins - Web Resources - Implementation Plugin	com.atlassian.plugins.atlassian-plugins-webresource-plugin	4.1.3	2020-02-11 16:22:40.564+00
  10042	Preset Filters Sections	jira.webfragments.preset.filters	1.0	2020-02-11 16:22:40.565+00
  10043	Atlassian Jira - Plugins - Project Config Plugin	com.atlassian.jira.jira-project-config-plugin	8.7.1	2020-02-11 16:22:40.567+00
  10044	Crowd System Password Encoders	crowd.system.passwordencoders	1.0	2020-02-11 16:22:40.568+00
  10045	Atlassian UI Plugin	com.atlassian.auiplugin	8.6.0	2020-02-11 16:22:40.582+00
  10046	Atlassian Jira - Plugins - Share Content Component	com.atlassian.jira.jira-share-plugin	8.7.1	2020-02-11 16:22:40.599+00
  10047	Atlassian Jira - Plugins - Statistics plugin	com.atlassian.jira.jira-statistics-plugin	8.7.1	2020-02-11 16:22:40.603+00
  10048	Atlassian Jira - Plugins - Remote Jira Link	com.atlassian.jira.jira-issue-link-remote-jira-plugin	8.7.1	2020-02-11 16:22:40.607+00
  10049	Functional Extensions Guava Inter-Ops	io.atlassian.fugue.guava-4.7.2	4.7.2	2020-02-11 16:22:40.611+00
  10050	Remote Link Aggregator Plugin	com.atlassian.plugins.remote-link-aggregator-plugin	3.0.0	2020-02-11 16:22:40.615+00
  10051	Atlassian HealthCheck Common Module	com.atlassian.healthcheck.atlassian-healthcheck	6.0.0	2020-02-11 16:22:40.617+00
  10052	Workbox - Common Plugin	com.atlassian.mywork.mywork-common-plugin	7.0.1	2020-02-11 16:22:40.623+00
  10053	Jira Workflow Sharing Plugin	com.atlassian.jira.plugins.workflow.sharing.jira-workflow-sharing-plugin	2.2.3	2020-02-11 16:22:40.626+00
  10054	Entity property conditions	system.entity.property.conditions	1.0	2020-02-11 16:22:40.634+00
  10055	org.osgi:org.osgi.service.cm	org.osgi.service.cm-1.5.0.201505202024	1.5.0.201505202024	2020-02-11 16:22:40.636+00
  10056	Atlassian Jira - Plugins - APDEX	com.atlassian.jira.jira-apdex-plugin	8.7.1	2020-02-11 16:22:40.639+00
  10057	JQL Functions	jira.jql.function	1.0	2020-02-11 16:22:40.641+00
  10058	Atlassian Soy - Plugin	com.atlassian.soy.soy-template-plugin	5.0.0	2020-02-11 16:22:40.643+00
  10059	Mobile Plugin for Jira	com.atlassian.jira.mobile.jira-mobile-rest	2.0.0	2020-02-11 16:22:40.655+00
  10060	atlassian-failure-cache-plugin	com.atlassian.atlassian-failure-cache-plugin	2.0.0	2020-02-11 16:22:40.667+00
  10061	Atlassian Jira - Plugins - View Issue Panels	com.atlassian.jira.jira-view-issue-plugin	8.7.1	2020-02-11 16:22:40.691+00
  10062	JIRA Footer	jira.footer	1.0	2020-02-11 16:22:40.693+00
  10063	Applinks - Plugin - Core	com.atlassian.applinks.applinks-plugin	7.1.3	2020-02-11 16:22:40.702+00
  10064	Atlassian Whitelist API Plugin	com.atlassian.plugins.atlassian-whitelist-api-plugin-4.0.7	4.0.7	2020-02-11 16:22:40.704+00
  10065	Jira inform - batchers	com.atlassian.jira.plugins.inform.batchers	1.3.4	2020-02-11 16:22:40.705+00
  10066	jira-optimizer-plugin	com.atlassian.jira.plugins.jira-optimizer-plugin	2.0.13	2020-02-11 16:22:40.707+00
  10067	Analytics Whitelist Plugin	com.atlassian.analytics.analytics-whitelist	3.73	2020-02-11 16:22:40.708+00
  10068	Atlassian Jira - Plugins - Invite User	com.atlassian.jira.jira-invite-user-plugin	2.3.1	2020-02-11 16:22:40.71+00
  10069	Atlassian Jira - Plugins - Cluster Monitoring	com.atlassian.jira.jira-cluster-monitoring-plugin	8.7.1	2020-02-11 16:22:40.711+00
  10070	Applinks - Plugin - Basic Authentication	com.atlassian.applinks.applinks-basicauth-plugin	7.1.3	2020-02-11 16:22:40.713+00
  10071	Atlassian Jira - Plugins - Quick Search	com.atlassian.jira.plugins.jira-quicksearch-plugin	8.7.1	2020-02-11 16:22:40.714+00
  10072	User Profile Links	jira.webfragments.user.profile.links	1.0	2020-02-11 16:22:40.715+00
  10073	Admin Menu Sections	jira.webfragments.admin	1.0	2020-02-11 16:22:40.716+00
  10074	wiki-editor	com.atlassian.jira.plugins.jira-wiki-editor	4.1.9	2020-02-11 16:22:40.718+00
  10075	Atlassian OAuth Service Provider SPI	com.atlassian.oauth.atlassian-oauth-service-provider-spi	4.0.2	2020-02-11 16:22:40.719+00
  10076	Top Navigation Bar	jira.top.navigation.bar	1.0	2020-02-11 16:22:40.741+00
  10077	Applinks - Plugin - Trusted Apps	com.atlassian.applinks.applinks-trustedapps-plugin	7.1.3	2020-02-11 16:22:40.759+00
  10078	Wiki Renderer Macros Plugin	com.atlassian.jira.plugin.system.renderers.wiki.macros	1.0	2020-02-11 16:22:40.786+00
  10079	Issue Views Plugin	jira.issueviews	1.0	2020-02-11 16:22:40.792+00
  10080	JIRA Core Icelandic (Iceland) Language Pack	tac.jira core.languages.is_IS	8.8.0.v20200206001329	2020-02-11 16:22:40.794+00
  10081	Streams SPI	com.atlassian.streams.streams-spi	8.2.0	2020-02-11 16:22:40.795+00
  10082	Jira inform - event plugin	com.atlassian.jira.plugins.inform.event-plugin	1.3.4	2020-02-11 16:22:40.809+00
  10083	Applinks - Plugin - CORS	com.atlassian.applinks.applinks-cors-plugin	7.1.3	2020-02-11 16:22:40.812+00
  10084	Streams Third Party Provider Plugin	com.atlassian.streams.streams-thirdparty-plugin	8.2.0	2020-02-11 16:22:40.814+00
  10085	Atlassian OAuth Service Provider Plugin	com.atlassian.oauth.serviceprovider	4.0.2	2020-02-11 16:22:40.817+00
  10086	Atlassian Jira - Plugins - Common AppLinks Based Issue Link Plugin	com.atlassian.jira.jira-issue-link-applinks-common-plugin	8.7.1	2020-02-11 16:22:40.824+00
  10087	Functional Extensions	io.atlassian.fugue-4.7.2	4.7.2	2020-02-11 16:22:40.828+00
  10088	jira-webresources-plugin	jira.webresources	1.0	2020-02-11 16:22:40.846+00
  10089	Embedded Gadgets Plugin	com.atlassian.gadgets.embedded	4.3.10	2020-02-11 16:22:40.849+00
  10090	Atlassian Jira - Plugins - Core Reports	com.atlassian.jira.jira-core-reports-plugin	8.7.1	2020-02-11 16:22:40.851+00
  10091	Streams Plugin	com.atlassian.streams	8.2.0	2020-02-11 16:22:40.852+00
  10092	Browse Project Operations Sections	jira.webfragments.browse.project.links	1.0	2020-02-11 16:22:40.854+00
  10093	Jira Issue Collector Plugin	com.atlassian.jira.collector.plugin.jira-issue-collector-plugin	4.0.0	2020-02-11 16:22:40.855+00
  10094	Atlassian Whitelist Core Plugin	com.atlassian.plugins.atlassian-whitelist-core-plugin	4.0.7	2020-02-11 16:22:40.857+00
  10095	JIRA Core Russian (Russia) Language Pack	tac.jira core.languages.ru_RU	8.8.0.v20200206001329	2020-02-11 16:22:40.858+00
  10096	ICU4J	com.atlassian.bundles.icu4j-3.8.0.1	3.8.0.1	2020-02-11 16:22:40.86+00
  10097	Streams Core Plugin	com.atlassian.streams.core	8.2.0	2020-02-11 16:22:40.862+00
  10098	Atlassian Jira - Plugins - WebHooks Plugin	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin	8.7.1	2020-02-11 16:22:40.864+00
  10099	Issue Operations Plugin	com.atlassian.jira.plugin.system.issueoperations	1.0	2020-02-11 16:22:40.865+00
  10100	Gadget Directory Plugin	com.atlassian.gadgets.directory	4.3.10	2020-02-11 16:22:40.867+00
  10101	Attach Image for JIRA	com.atlassian.plugins.jira-html5-attach-images	4.0.0	2020-02-11 16:22:40.873+00
  10102	Jira Monitoring Plugin	com.atlassian.jira.jira-monitoring-plugin	05.7.3	2020-02-11 16:22:40.875+00
  10103	Atlassian Hipchat Integration Plugin	com.atlassian.plugins.base-hipchat-integration-plugin	8.4.2	2020-02-11 16:22:40.876+00
  10104	Atlassian Jira - Plugins - Project Centric Issue Navigator	com.atlassian.jira.jira-projects-issue-navigator	9.3.3	2020-02-11 16:22:40.877+00
  10105	jira-importers-plugin	com.atlassian.jira.plugins.jira-importers-plugin	9.1.2	2020-02-11 16:22:40.879+00
  10106	Atlassian Plugins - JavaScript libraries	com.atlassian.plugin.jslibs	1.4.1	2020-02-11 16:22:40.88+00
  10107	Jira Time Zone Detection plugin	com.atlassian.jira.jira-tzdetect-plugin	3.0.3	2020-02-11 16:22:40.881+00
  10108	Hipchat for Jira	com.atlassian.labs.hipchat.hipchat-for-jira-plugin	8.4.2	2020-02-11 16:22:40.883+00
  10109	Atlassian Jira - Plugins - Diagnostics Plugin	com.atlassian.jira.diagnostics	8.7.1	2020-02-11 16:22:40.884+00
  10110	JIRA Core Dutch (Netherlands) Language Pack	tac.jira core.languages.nl_NL	8.8.0.v20200206001329	2020-02-11 16:22:40.886+00
  10111	JIRA Core Estonian (Estonia) Language Pack	tac.jira core.languages.et_EE	8.8.0.v20200206001329	2020-02-11 16:22:40.887+00
  10112	JSON Library	com.atlassian.bundles.json-20070829.0.0.1	20070829.0.0.1	2020-02-11 16:22:40.922+00
  10113	JDOM DOM Processor	com.springsource.org.jdom-1.0.0	1.0.0	2020-02-11 16:22:40.939+00
  10114	JIRA Core Chinese (China) Language Pack	tac.jira core.languages.zh_CN	8.8.0.v20200206001329	2020-02-11 16:22:40.943+00
  10115	Atlassian Jira - Plugins - Feedback Plugin	com.atlassian.feedback.jira-feedback-plugin	8.7.1	2020-02-11 16:22:40.945+00
  10116	ActiveObjects Plugin - OSGi Bundle	com.atlassian.activeobjects.activeobjects-plugin	3.2.0	2020-02-11 16:22:40.948+00
  10117	Atlassian Jira - Plugins - Header Plugin	com.atlassian.jira.jira-header-plugin	8.7.1	2020-02-11 16:22:40.958+00
  10118	Issue Tab Panels Plugin	com.atlassian.jira.plugin.system.issuetabpanels	1.0	2020-02-11 16:22:40.961+00
  10119	JIRA Feature Keys	jira.feature.keys	1.0	2020-02-11 16:22:40.966+00
  10120	JIRA Streams Inline Actions Plugin	com.atlassian.streams.jira.inlineactions	8.2.0	2020-02-11 16:22:40.968+00
  10121	Atlassian Jira - Plugins - Application Properties	com.atlassian.jira.jira-application-properties-plugin	8.7.1	2020-02-11 16:22:40.97+00
  10122	Atlassian Jira - Plugins - Gadgets Plugin	com.atlassian.jira.gadgets	8.7.1	2020-02-11 16:22:40.972+00
  10123	Atlassian Jira - Plugins - Analytics whitelist	com.atlassian.jira.jira-analytics-whitelist-plugin	8.7.1	2020-02-11 16:22:40.975+00
  10124	jira-inline-issue-create-plugin	com.atlassian.jira.plugins.inline-create.jira-inline-issue-create-plugin	2.0.16	2020-02-11 16:22:40.977+00
  10125	Functional Extensions Scala Inter-Ops	io.atlassian.fugue.scala-4.7.2	4.7.2	2020-02-11 16:22:40.979+00
  10126	Workbox - JIRA Provider Plugin	com.atlassian.mywork.mywork-jira-provider-plugin	7.0.1	2020-02-11 16:22:40.981+00
  10127	JIRA Core Korean (South Korea) Language Pack	tac.jira core.languages.ko_KR	8.8.0.v20200206001329	2020-02-11 16:22:40.983+00
  10128	Content Link Resolvers Plugin	com.atlassian.jira.plugin.wiki.contentlinkresolvers	1.0	2020-02-11 16:22:40.985+00
  10129	Atlassian Application Manager plugin	com.atlassian.upm.upm-application-plugin	4.0.8	2020-02-11 16:22:40.986+00
  10130	JIRA Core Spanish (Spain) Language Pack	tac.jira core.languages.es_ES	8.8.0.v20200206001329	2020-02-11 16:22:40.988+00
  10131	Atlassian JIRA - Plugins - Credits Plugin	com.atlassian.jira.jira-credits-plugin	8.7.1	2020-02-11 16:22:40.991+00
  10132	Jira Mobile	com.atlassian.jira.mobile	3.2.8	2020-02-11 16:22:40.992+00
  10133	Atlassian Jira - Plugins - Onboarding	com.atlassian.jira.jira-onboarding-assets-plugin	8.7.1	2020-02-11 16:22:40.994+00
  10134	Atlassian JIRA - Admin Helper Plugin	com.atlassian.jira.plugins.jira-admin-helper-plugin	5.0.1	2020-02-11 16:22:40.995+00
  10135	Atlassian browser metrics plugin	com.atlassian.plugins.browser.metrics.browser-metrics-plugin	7.0.1	2020-02-11 16:22:40.996+00
  10136	Atlassian Jira - Plugins - Global Issue Navigator	com.atlassian.jira.jira-issue-nav-plugin	9.3.3	2020-02-11 16:22:40.998+00
  10137	User Navigation Bar Sections	jira.webfragments.user.navigation.bar	1.0	2020-02-11 16:22:40.999+00
  10138	Atlassian Troubleshooting and Support Tools	com.atlassian.troubleshooting.plugin-jira	1.23.3	2020-02-11 16:22:41.001+00
  10139	Neko HTML	com.atlassian.bundles.nekohtml-1.9.12.1	1.9.12.1	2020-02-11 16:22:41.002+00
  10140	JIRA Global Permissions	jira.system.global.permissions	1.0	2020-02-11 16:22:41.004+00
  10141	Atlassian Template Renderer API	com.atlassian.templaterenderer.api	4.0.0	2020-02-11 16:22:41.006+00
  10142	JIRA Core Danish (Denmark) Language Pack	tac.jira core.languages.da_DK	8.8.0.v20200206001329	2020-02-11 16:22:41.007+00
  10143	Atlassian JIRA - Plugins - File viewer plugin	com.atlassian.jira.jira-fileviewer-plugin	8.0.0	2020-02-11 16:22:41.008+00
  10144	Atlassian Pretty URLs Plugin	com.atlassian.prettyurls.atlassian-pretty-urls-plugin	3.0.0	2020-02-11 16:22:41.01+00
  10145	JIRA Attachment Archive File Processors	jira.system.attachment.processors	1.0	2020-02-11 16:22:41.011+00
  10146	Atlassian Jira - Plugins - Admin Upgrades	com.atlassian.jira.jira-admin-updates-plugin	8.7.1	2020-02-11 16:22:41.013+00
  10147	Atlassian Cluster Monitoring Plugin	com.atlassian.cluster.monitoring.cluster-monitoring-plugin	2.0.1	2020-02-11 16:22:41.014+00
  10148	jira-ui	com.atlassian.jira.plugins.jira-ui	0.3.0	2020-02-11 16:22:41.016+00
  10149	Atlassian Universal Plugin Manager Plugin	com.atlassian.upm.atlassian-universal-plugin-manager-plugin	4.0.8	2020-02-11 16:22:41.017+00
  10150	SSO for Atlassian Data Center	com.atlassian.plugins.authentication.atlassian-authentication-plugin	4.0.1	2020-02-11 16:22:41.019+00
  10151	Atlassian Whitelist UI Plugin	com.atlassian.plugins.atlassian-whitelist-ui-plugin	4.0.7	2020-02-11 16:22:41.023+00
  10152	JIRA Core Portuguese (Brazil) Language Pack	tac.jira core.languages.pt_BR	8.8.0.v20200206001329	2020-02-11 16:22:41.025+00
  10153	Atlassian Jira - Plugins - Frontend Features	com.atlassian.jira.jira-frontend-plugin	8.7.1	2020-02-11 16:22:41.026+00
  10154	Redmine Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-redmine-plugin	2.2.0	2020-02-11 16:22:41.028+00
  10155	jira-capabilities-plugin	jira.capabilities	1.0	2020-02-11 16:22:41.03+00
  10156	Atlassian JIRA - Plugins - Quick Edit Plugin	com.atlassian.jira.jira-quick-edit-plugin	4.0.0	2020-02-11 16:22:41.039+00
  10157	Soy Function Plugin	com.atlassian.jira.plugin.system.soyfunction	1.0	2020-02-11 16:22:41.042+00
  10158	Universal Plugin Manager - Role-Based Licensing Implementation Plugin	com.atlassian.upm.role-based-licensing-plugin	4.0.8	2020-02-11 16:22:41.045+00
  10159	Jira Core Project Templates Plugin	com.atlassian.jira-core-project-templates	7.0.4	2020-02-11 16:22:41.048+00
  10160	Atlassian OAuth Admin Plugin	com.atlassian.oauth.admin	4.0.2	2020-02-11 16:22:41.051+00
  10161	Atlassian REST - Module Types	com.atlassian.plugins.rest.atlassian-rest-module	6.0.2	2020-02-11 16:22:41.053+00
  10162	Crowd REST API	crowd-rest-application-management	1.0	2020-02-11 16:22:41.055+00
  10163	jira-issue-nav-components	com.atlassian.jira.jira-issue-nav-components	9.3.3	2020-02-11 16:22:41.056+00
  10164	jquery	com.atlassian.plugins.jquery	2.2.4.7	2020-02-11 16:22:41.058+00
  10165	Atlassian Jira - Plugins - Auditing Plugin [Audit Log]	com.atlassian.jira.plugins.jira-auditing-plugin	8.7.1	2020-02-11 16:22:41.06+00
  10166	Apache Apache HttpCore OSGi bundle	org.apache.httpcomponents.httpcore-4.4.12	4.4.12	2020-02-11 16:22:41.061+00
  10167	JIRA Remote Link Aggregator Plugin	com.atlassian.plugins.jira-remote-link-aggregator-plugin	3.0.0	2020-02-11 16:22:41.064+00
  10168	Streams API	com.atlassian.streams.streams-api	8.2.0	2020-02-11 16:22:41.066+00
  10169	Atlassian Jira - Plugins - Atlassian Notifications Plugin	com.atlassian.jira.jira-whisper-plugin	8.7.1	2020-02-11 16:22:41.068+00
  10170	Atlassian HTTP Client, Apache HTTP components impl	com.atlassian.httpclient.atlassian-httpclient-plugin	2.0.0	2020-02-11 16:22:41.07+00
  10171	Asana Importers Plugin for JIM	com.atlassian.jira.plugins.jira-importers-asana-plugin	2.1.0	2020-02-11 16:22:41.071+00
  10172	Atlassian Awareness Capability	com.atlassian.plugins.atlassian-awareness-capability	0.0.6	2020-02-11 16:22:41.073+00
  10173	Atlassian Plugins - Web Resources REST	com.atlassian.plugins.atlassian-plugins-webresource-rest	4.1.3	2020-02-11 16:22:41.075+00
  10174	Custom Field Types & Searchers	com.atlassian.jira.plugin.system.customfieldtypes	1.0	2020-02-11 16:22:41.076+00
  10175	Project Creation Capability Product REST Plugin	com.atlassian.plugins.atlassian-project-creation-plugin	4.0.0-74bdd7a6fa	2020-02-11 16:22:41.077+00
  10176	Atlassian Jira - Plugins - REST Plugin	com.atlassian.jira.rest	8.7.1	2020-02-11 16:22:41.079+00
  10177	Atlassian Spring Scanner Runtime	com.atlassian.plugin.atlassian-spring-scanner-runtime	2.1.13	2020-02-11 16:22:41.08+00
  10178	Opensocial Plugin	com.atlassian.gadgets.opensocial	4.3.10	2020-02-11 16:22:41.081+00
  10179	Atlassian Jira - Plugins - Confluence Link	com.atlassian.jira.jira-issue-link-confluence-plugin	8.7.1	2020-02-11 16:22:41.082+00
  10180	ROME, RSS and atOM utilitiEs for Java	rome.rome-1.0	1.0	2020-02-11 16:22:41.084+00
  10181	User Format	jira.user.format	1.0	2020-02-11 16:22:41.085+00
  10182	JIRA Core Finnish (Finland) Language Pack	tac.jira core.languages.fi_FI	8.8.0.v20200206001329	2020-02-11 16:22:41.086+00
  10183	View Project Operations Sections	jira.webfragments.view.project.operations	1.0	2020-02-11 16:22:41.09+00
  10184	atlassian-servlet-plugin	com.atlassian.web.atlassian-servlet-plugin	5.2.0	2020-02-11 16:22:41.092+00
  10185	Crowd REST API	crowd-rest-plugin	1.0	2020-02-11 16:22:41.094+00
  10186	Atlassian OAuth Consumer SPI	com.atlassian.oauth.atlassian-oauth-consumer-spi	4.0.2	2020-02-11 16:22:41.095+00
  10187	Atlassian Jira - Plugins - Post-Upgrade Landing Page	com.atlassian.jira.plugins.jira-post-upgrade-landing-page-plugin	8.7.1	2020-02-11 16:22:41.096+00
  10188	JIRA Core Hungarian (Hungary) Language Pack	tac.jira core.languages.hu_HU	8.8.0.v20200206001329	2020-02-11 16:22:41.098+00
  10189	Atlassian Spring Scanner Annotations	com.atlassian.plugin.atlassian-spring-scanner-annotation	2.1.13	2020-02-11 16:22:41.099+00
  10190	jackson-module-scala-2.10-provider	com.atlassian.scala.plugins.jackson-module-scala-2.10-provider-plugin	0.5	2020-02-11 16:22:41.1+00
  10191	User anonymization in Jira Core	com.atlassian.jira.user.anonymize	1.0	2020-02-11 16:22:41.102+00
  10192	Rich Text Editor for JIRA	com.atlassian.jira.plugins.jira-editor-plugin	4.1.9	2020-02-11 16:22:41.103+00
  10193	Web Resources Plugin Jira Core	jira.core	1.0	2020-02-11 16:22:41.105+00
  10194	Workflow Plugin	com.atlassian.jira.plugin.system.workflow	1.0	2020-02-11 16:22:41.106+00
  10195	jira-importers-trello-plugin	com.atlassian.jira.plugins.jira-importers-trello-plugin	3.1.0	2020-02-11 16:22:41.108+00
  10196	Icon Types Plugin	jira.icontypes	1.0	2020-02-11 16:22:41.109+00
  10197	JIRA Core Norwegian (Norway) Language Pack	tac.jira core.languages.no_NO	8.8.0.v20200206001329	2020-02-11 16:22:41.11+00
  10198	Atlassian WebHooks Plugin	com.atlassian.webhooks.atlassian-webhooks-plugin	3.3.0	2020-02-11 16:22:41.112+00
  10199	Help Paths Plugin	jira.help.paths	1.0	2020-02-11 16:22:41.113+00
  10200	Jira Base URL Plugin	com.atlassian.jira.jira-baseurl-plugin	3.2.0	2020-02-11 16:22:41.115+00
  10201	Atlassian Jira - Plugins - Look And Feel Logo Upload Plugin	com.atlassian.jira.lookandfeel	8.7.1	2020-02-11 16:22:41.12+00
  10202	Issue Status Plugin	com.atlassian.plugins.issue-status-plugin	2.0.2	2020-02-11 16:22:41.122+00
  10203	Gadget Spec Publisher Plugin	com.atlassian.gadgets.publisher	4.3.10	2020-02-11 16:22:41.123+00
  10204	Atlassian Jira - Plugins - OAuth Consumer SPI	com.atlassian.jira.oauth.consumer	8.7.1	2020-02-11 16:22:41.125+00
  10205	JIRA Core French (France) Language Pack	tac.jira core.languages.fr_FR	8.8.0.v20200206001329	2020-02-11 16:22:41.126+00
  10206	Renderer Component Factories Plugin	com.atlassian.jira.plugin.wiki.renderercomponentfactories	1.0	2020-02-11 16:22:41.128+00
  10207	Atlassian LESS Transformer Plugin	com.atlassian.plugins.less-transformer-plugin	4.0.0	2020-02-11 16:22:41.13+00
  10208	Pocketknife Feature Flags Plugin	com.atlassian.pocketknife.featureflags-plugin	0.5.4	2020-02-11 16:22:41.131+00
  10209	Functional Optics Library	io.atlassian.fugue.optics-4.7.2	4.7.2	2020-02-11 16:22:41.133+00
  10210	Functional Extensions Retry Inter-Ops	io.atlassian.fugue.retry-4.7.2	4.7.2	2020-02-11 16:22:41.135+00
  10211	Atlassian Front-End Runtime Plugin	com.atlassian.frontend.atlassian-frontend-runtime-plugin	0.3.0	2020-02-11 16:22:41.136+00
  10212	Atlassian Bot Session Killer	com.atlassian.labs.atlassian-bot-killer	1.7.9	2020-02-11 16:22:41.137+00
  10213	User Profile Panels	jira.user.profile.panels	1.0	2020-02-11 16:22:41.139+00
  10214	scala-2.10-provider-plugin	com.atlassian.scala.plugins.scala-2.10-provider-plugin	0.14	2020-02-11 16:22:41.14+00
  10215	Atlassian Jira - Plugins - ActiveObjects SPI	com.atlassian.jira.jira-activeobjects-spi-plugin	8.7.1	2020-02-11 16:22:41.141+00
  10216	Atlassian Rate Limiting - Plugin	com.atlassian.ratelimiting.rate-limiting-plugin	1.0.6	2020-02-11 16:22:41.142+00
  10217	JIRA Project Permissions	jira.system.project.permissions	1.0	2020-02-11 16:22:41.143+00
  10218	Wallboard Plugin	com.atlassian.jirawallboard.atlassian-wallboard-plugin	3.0.3	2020-02-11 16:22:41.145+00
  10219	Atlassian Jira - Plugins - User Profile Plugin	com.atlassian.jira.jira-user-profile-plugin	4.0.3	2020-02-11 16:22:41.146+00
  10220	Project Templates Plugin	com.atlassian.jira.project-templates-plugin	7.0.4	2020-02-11 16:22:41.147+00
  10221	Atlassian Notifications	com.atlassian.whisper.atlassian-whisper-plugin	2.0.8	2020-02-11 16:22:41.148+00
  10222	Filter Deletion Warning Plugin	jira.filter.deletion.warning	1.0	2020-02-11 16:22:41.15+00
  10223	English (United States) Language Pack	com.atlassian.jira.jira-languages.en_US	8.7.1	2020-02-11 16:22:41.167+00
  10224	Atlassian Jira - Plugins - LESS integration	com.atlassian.jira.jira-less-integration	8.7.1	2020-02-11 16:22:41.169+00
  10225	Atlassian Jira - Plugins - SAL Plugin	com.atlassian.sal.jira	8.7.1	2020-02-11 16:22:41.17+00
  10226	Atlassian Diagnostics - Plugin	com.atlassian.diagnostics.atlassian-diagnostics-plugin	1.1.10	2020-02-11 16:22:41.172+00
  10227	Atlassian Template Renderer Velocity 1.6 Plugin	com.atlassian.templaterenderer.atlassian-template-renderer-velocity1.6-plugin	4.0.0	2020-02-11 16:22:41.174+00
  10228	Atlassian Jira - Plugins - Mail Plugin	com.atlassian.jira.jira-mail-plugin	11.0.6	2020-02-11 16:22:41.191+00
  10229	Atlassian Jira - Plugins - Closure Template Renderer	com.atlassian.jira.jira-soy-plugin	8.7.1	2020-02-11 16:22:41.193+00
  10230	Jira Workflow Designer Plugin	com.atlassian.jira.plugins.jira-workflow-designer	8.0.6	2020-02-11 16:22:41.195+00
  10231	Gadget Dashboard Plugin	com.atlassian.gadgets.dashboard	4.3.10	2020-02-11 16:22:41.197+00
  10232	Atlassian - Administration - Quick Search - JIRA	com.atlassian.administration.atlassian-admin-quicksearch-jira	2.3.3	2020-02-11 16:22:41.198+00
  10233	Web Panel Plugin	jira.webpanels	1.0	2020-02-11 16:22:41.2+00
  10234	Applinks - Plugin - OAuth	com.atlassian.applinks.applinks-oauth-plugin	7.1.3	2020-02-11 16:22:41.202+00
  10235	JIRA browser metrics integration plugin	com.atlassian.jira.plugins.jira-browser-metrics	2.0.14	2020-02-11 16:22:41.204+00
  10236	JIRA Activity Stream Plugin	com.atlassian.streams.streams-jira-plugin	8.2.0	2020-02-11 16:22:41.205+00
  10237	English (United Kingdom) Language Pack	com.atlassian.jira.jira-languages.en_UK	8.7.1	2020-02-11 16:22:41.214+00
  10238	Static Assets (CDN) Plugin	com.atlassian.plugins.static-assets-url	1.0.5	2020-02-11 16:22:41.216+00
  10239	JIRA Usage Hints	jira.usage.hints	1.0	2020-02-11 16:22:41.218+00
  \.
  
  
  --
  -- Data for Name: portalpage; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.portalpage (id, username, pagename, description, sequence, fav_count, layout, ppversion) FROM stdin;
  10000	\N	System Dashboard	\N	0	0	AA	0
  \.
  
  
  --
  -- Data for Name: portletconfiguration; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.portletconfiguration (id, portalpage, portlet_id, column_number, positionseq, gadget_xml, color, dashboard_module_complete_key) FROM stdin;
  10000	10000	\N	0	0	\N	\N	com.atlassian.jira.gadgets:introduction-dashboard-item
  10002	10000	\N	1	0	rest/gadgets/1.0/g/com.atlassian.jira.gadgets:assigned-to-me-gadget/gadgets/assigned-to-me-gadget.xml	\N	\N
  10003	10000	\N	1	1	rest/gadgets/1.0/g/com.atlassian.streams.streams-jira-plugin:activitystream-gadget/gadgets/activitystream-gadget.xml	\N	\N
  \.
  
  
  --
  -- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.priority (id, sequence, pname, description, iconurl, status_color) FROM stdin;
  1	1	Highest	This problem will block progress.	/images/icons/priorities/highest.png	#ff7452
  2	2	High	Serious problem that could block progress.	/images/icons/priorities/high.png	#ff8f73
  3	3	Medium	Has the potential to affect progress.	/images/icons/priorities/medium.png	#ffab00
  4	4	Low	Minor problem or easily worked around.	/images/icons/priorities/low.png	#0065ff
  5	5	Lowest	Trivial problem with little or no impact on progress.	/images/icons/priorities/lowest.png	#2684ff
  \.
  
  
  --
  -- Data for Name: productlicense; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.productlicense (id, license) FROM stdin;
  10001	AAABWw0ODAoPeNp1kVFPwjAUhd/7K5b4og8l63BBSJqoW01GxiBs6IsvpVygZuuWriPy7y2bRBT32NtzT79zepM14LzA2iHEIe7EG07IyAnSzPFcz0VJU6xBz7erGnRNMUFBqQwXJuEF0Iors+e63kvjuo+7gst8IMoCfUjNB5UuN40wg9MBi1LD4Mqr1V1NF40We15DyA3QEwR2PUw8FEsBqobsWEH7ejCfzdgyiJ7i8xX7rKQ+XuwNMRmeidnM4vUip6APoKOQPk9Jil1/7OMkfEuxH7irvjyp4dqAplue19CJziAbaWSpKEsytlwso5T1eVgweQBqdAPIAioDiivRk+Tb3VLGUZiyBMfkfjwaEf8B2RP9PZnrHVey5i1IZbstFc9RoKGd/C0376xfre6k91AItdCyarenFtcJLK5z2/V09z5x2IHnTevVZbtMctnFf//1s9vpvwA4OtcjMC0CFCgrYI6cSJj6q5wImS6uHBIudWwCAhUAjKInSRkCmL9X0au5y564PRPEnCc=X02h5
  \.
  
  
  --
  -- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.project (id, pname, url, lead, description, pkey, pcounter, assigneetype, avatar, originalkey, projecttype) FROM stdin;
  10000	test	\N	JIRAUSER10000	<h3>Welcome to the administration of your demonstration project!</h3>\n <p>This is where you can view and change how the project is configured. Use the tabs on the left to navigate to different project settings.</p>	TEST	6	3	10324	TEST	business
  \.
  
  
  --
  -- Data for Name: project_key; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.project_key (id, project_id, project_key) FROM stdin;
  10000	10000	TEST
  \.
  
  
  --
  -- Data for Name: projectcategory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.projectcategory (id, cname, description) FROM stdin;
  \.
  
  
  --
  -- Data for Name: projectchangedtime; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.projectchangedtime (project_id, issue_changed_time) FROM stdin;
  \.
  
  
  --
  -- Data for Name: projectrole; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.projectrole (id, name, description) FROM stdin;
  10002	Administrators	A project role that represents administrators in a project
  10100	Developers	\N
  \.
  
  
  --
  -- Data for Name: projectroleactor; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.projectroleactor (id, pid, projectroleid, roletype, roletypeparameter) FROM stdin;
  10002	\N	10002	atlassian-group-role-actor	jira-administrators
  10100	10000	10002	atlassian-group-role-actor	jira-administrators
  10101	10000	10100	atlassian-user-role-actor	JIRAUSER10000
  \.
  
  
  --
  -- Data for Name: projectversion; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.projectversion (id, project, vname, description, sequence, released, archived, url, startdate, releasedate) FROM stdin;
  \.
  
  
  --
  -- Data for Name: propertydata; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertydata (id, propertyvalue) FROM stdin;
  \.
  
  
  --
  -- Data for Name: propertydate; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertydate (id, propertyvalue) FROM stdin;
  \.
  
  
  --
  -- Data for Name: propertydecimal; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertydecimal (id, propertyvalue) FROM stdin;
  \.
  
  
  --
  -- Data for Name: propertyentry; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertyentry (id, entity_name, entity_id, property_key, propertytype) FROM stdin;
  6	jira.properties	1	jira.avatar.user.anonymous.id	5
  7	jira.properties	1	jira.scheme.default.issue.type	5
  9	jira.properties	1	jira.whitelist.disabled	1
  10	jira.properties	1	jira.whitelist.rules	6
  11	jira.properties	1	jira.option.timetracking	1
  12	jira.properties	1	jira.timetracking.estimates.legacy.behaviour	1
  13	jira.properties	1	jira.version	5
  14	jira.properties	1	jira.downgrade.minimum.version	5
  15	jira.properties	1	jira.option.allowunassigned	1
  16	jira.properties	1	jira.path.index.use.default.directory	1
  21	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8a6044147cf2c19c02d099279cfbfd47	6
  22	jira.properties	1	jira.onboarding.app_user.id.threshold	5
  23	jira.properties	1	post.migration.page.displayed	1
  1	jira.properties	1	jira.version.patched	5
  2	jira.properties	1	jira.avatar.issuetype.subtask.default.id	5
  3	jira.properties	1	jira.avatar.default.id	5
  4	jira.properties	1	jira.avatar.issuetype.default.id	5
  5	jira.properties	1	jira.avatar.user.default.id	5
  10100	jira.properties	1	webwork.i18n.encoding	5
  10101	jira.properties	1	jira.sid.key	5
  10102	jira.properties	1	AO_550953_#	5
  10103	jira.properties	1	AO_4AEACD_#	5
  10104	jira.properties	1	AO_587B34_#	5
  10105	jira.properties	1	com.atlassian.jira.util.index.IndexingCounterManagerImpl.counterValue	3
  10106	jira.properties	1	jvm.system.timezone	5
  10107	jira.properties	1	jira.webresource.superbatch.flushcounter	5
  10108	jira.properties	1	jira.i18n.language.index	5
  10109	jira.properties	1	jira.scheme.default.priority	5
  10110	jira.properties	1	jira.title	5
  10113	com.atlassian.jira.user.flag.FlagDismissalServiceImpl	1	com.atlassian.jira.flag.resets	6
  10200	jira.properties	1	jira.webresource.flushcounter	5
  10201	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedBy	5
  10202	jira.properties	1	mailsetting.jira.mail.send.disabled.modifiedDate	5
  10203	jira.properties	1	jira.i18n.default.locale	5
  10204	jira.properties	1	jira.baseurl	5
  10205	jira.properties	1	jira.mode	5
  10206	jira.properties	1	jira.path.attachments	5
  10207	jira.properties	1	jira.path.attachments.use.default.directory	1
  10208	jira.properties	1	jira.option.allowattachments	1
  10209	ServiceConfig	10001	USE_DEFAULT_DIRECTORY	5
  10210	jira.properties	1	jira.path.backup	5
  10211	jira.properties	1	jira.setup	5
  10212	jira.properties	1	jira.initial.build.number	5
  10213	jira.properties	1	jira.option.voting	1
  10214	jira.properties	1	jira.option.watching	1
  10215	jira.properties	1	jira.option.issuelinking	1
  10216	jira.properties	1	jira.option.emailvisible	5
  10300	jira.properties	1	jira.option.allowsubtasks	1
  10301	jira.properties	1	jira-header-plugin.studio-tab-migration-complete	5
  10302	jira.properties	1	com.atlassian.upm.log.PluginSettingsAuditLogService:log:upm_audit_log_v3	5
  10303	jira.properties	1	com.atlassian.analytics.client.configuration..policy_acknowledged	5
  10304	jira.properties	1	com.atlassian.sal.jira:build	5
  10305	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-api-plugin:whitelist.enabled	5
  10306	jira.properties	1	com.atlassian.jira.gadgets:build	5
  10307	jira.properties	1	com.atlassian.crowd.embedded.admin:build	5
  10308	jira.properties	1	com.atlassian.labs.hipchat.hipchat-for-jira-plugin:build	5
  10309	jira.properties	1	com.atlassian.plugins.atlassian-whitelist-core-plugin:build	5
  10310	jira.properties	1	com.atlassian.jira.jira-mail-plugin:build	5
  10311	jira.properties	1	com.atlassian.plugins.custom_apps.hasCustomOrder	5
  10312	jira.properties	1	com.atlassian.plugins.atlassian-nav-links-plugin:build	5
  10313	jira.properties	1	com.atlassian.jira.plugins.jira-workflow-designer:build	5
  10314	jira.properties	1	com.atlassian.jira.plugins.webhooks.jira-webhooks-plugin:build	5
  10315	jira.properties	1	com.atlassian.jirawallboard.atlassian-wallboard-plugin:build	5
  10316	jira.properties	1	com.atlassian.upm.atlassian-universal-plugin-manager-plugin:build	5
  10317	jira.properties	1	com.atlassian.jira.lookandfeel:isDefaultFavicon	5
  10318	jira.properties	1	com.atlassian.jira.lookandfeel:usingCustomFavicon	5
  10319	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconURL	5
  10320	jira.properties	1	com.atlassian.jira.lookandfeel:customDefaultFaviconHiresURL	5
  10321	jira.properties	1	com.atlassian.jira.lookandfeel:faviconWidth	5
  10322	jira.properties	1	com.atlassian.jira.lookandfeel:faviconHeight	5
  10323	jira.properties	1	com.atlassian.jira.lookandfeel:build	5
  10324	jira.properties	1	com.atlassian.plugins.authentication.atlassian-authentication-plugin:build	5
  10325	jira.properties	1	com.atlassian.plugins.authentication.sso.config.sso-type	5
  10326	jira.properties	1	com.atlassian.jira.project-templates-plugin:build	5
  10327	jira.properties	1	com.atlassian.analytics.client.configuration..analytics_enabled	5
  10328	jira.properties	1	com.atlassian.upm:notifications:notification-edition.mismatch	5
  10329	jira.properties	1	com.atlassian.upm:notifications:notification-plugin.request	5
  10330	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.expired	5
  10331	jira.properties	1	com.atlassian.upm:notifications:notification-evaluation.nearlyexpired	5
  10332	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.expired	5
  10333	jira.properties	1	com.atlassian.upm:notifications:notification-maintenance.nearlyexpired	5
  10335	jira.properties	1	com.atlassian.analytics.client.configuration.uuid	5
  10336	jira.properties	1	com.atlassian.analytics.client.configuration.serverid	5
  10334	jira.properties	1	com.atlassian.upm:notifications:notification-license.expired	5
  10337	jira.properties	1	com.atlassian.upm:notifications:notification-license.nearlyexpired	5
  10338	jira.properties	1	com.atlassian.streams.InlineActivityStream:loaded.from.jira.projects	5
  10339	ApplicationUser	10000	jira.onboarding.first.use.flow.started	5
  10340	jira.properties	1	com.atlassian.jira.onboarding.postsetup.AppPropertiesPostSetupAnnouncementStore.all	6
  10341	jira.properties	1	com.atlassian.upm:notifications:notification-update	5
  10342	jira.properties	1	com.atlassian.analytics.client.configuration..logged_base_analytics_data	5
  10343	ApplicationUser	10000	newsletter.signup.first.view	3
  10344	ApplicationUser	10000	jira.onboarding.first.use.flow.current.sequence	5
  10345	ApplicationUser	10000	jira.onboarding.first.use.flow.completed	1
  10346	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout:8e9606a59280ca2ae4aed4b6958478af	6
  10347	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.draft.layout.v5:8e9606a59280ca2ae4aed4b6958478af	6
  10348	com.atlassian.jira.plugins.jira-workflow-designer	1	jira.workflow.layout.v5:8e9606a59280ca2ae4aed4b6958478af	6
  10349	ApplicationUser	10000	user.search.filter.id	6
  10350	ApplicationUser	10000	user.search.jql	6
  10351	ApplicationUser	10000	last-visited-item.10000	5
  10352	user.format.mapping	1	avatarFullNameHover	5
  10353	ApplicationUser	10000	com.atlassian.jira.flag.dismissals	6
  10354	ApplicationUser	10000	jira.user.suppressedTips.qs-onboarding-tip	1
  10355	user.format.mapping	1	profileLinkWithAvatar	5
  10356	user.format.mapping	1	avatarWithHover	5
  10357	jira.properties	1	org.apache.shindig.common.crypto.BlobCrypter:key	5
  10358	ApplicationUser	10000	jira.issues.preferred.layout.key	5
  \.
  
  
  --
  -- Data for Name: propertynumber; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertynumber (id, propertyvalue) FROM stdin;
  9	0
  11	1
  12	0
  15	1
  16	1
  23	1
  10207	1
  10208	1
  10213	1
  10214	1
  10215	1
  10105	1
  10300	1
  10343	1581438379143
  10345	1
  10354	1
  \.
  
  
  --
  -- Data for Name: propertystring; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertystring (id, propertyvalue) FROM stdin;
  2	10316
  3	10011
  4	10300
  5	10122
  6	10123
  7	10000
  22	0
  10100	UTF-8
  10101	BJ1S-0595-NDWS-5C0U
  10102	1
  10103	1
  10104	4
  10106	GMT
  10108	english-moderate-stemming
  10109	10100
  10110	Jira
  1	807001
  13	8.7.1
  14	7.1.2
  10200	6411e0087192541a09d88223fb51a6a0
  10201	
  10202	1581438163370
  10203	en_US
  10204	http://142.93.220.252:9090
  10206	/var/atlassian/jira/data/attachments
  10210	/var/atlassian/jira/export
  10107	4
  10205	public
  10209	true
  10211	true
  10212	807001
  10216	show
  10301	migrated
  10302	#java.util.List\n{"userKey":"JIRA","date":1581438346098,"i18nKey":"upm.auditLog.upm.startup","entryType":"UPM_STARTUP","params":[]}
  10303	true
  10304	2
  10306	1
  10307	3
  10308	1
  10305	true
  10309	4
  10310	2
  10311	false
  10312	1
  10313	1
  10314	3
  10315	6086
  10316	5
  10317	false
  10318	false
  10319	/favicon.ico
  10320	/images/64jira.png
  10321	64
  10322	64
  10323	1
  10325	NONE
  10324	4
  10326	2001
  10327	true
  10328	#java.util.List\n
  10329	#java.util.List\n
  10330	#java.util.List\n
  10331	#java.util.List\n
  10332	#java.util.List\n
  10333	#java.util.List\n
  10334	#java.util.List\n
  10335	39179729-f473-46aa-92ed-1bfa48b6cfda
  10336	BJ1S-0595-NDWS-5C0U
  10337	#java.util.List\n
  10338	true
  10339	cyoaFirstUseFlow
  10341	#java.util.List\n
  10342	true
  10344	cyoa:return
  10352	jira.user.format:avatar-and-full-name-with-hover-format
  10355	jira.user.format:profile-link-with-avatar
  10356	jira.user.format:avatar-with-hover
  10357	WOyDwGvCh2zDRfGBZCkTPjaFNNgsyFX6pYW1NCqiR1Y=
  10351	com.atlassian.jira.jira-projects-issue-navigator:sidebar-issue-navigator
  10358	split-view
  \.
  
  
  --
  -- Data for Name: propertytext; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.propertytext (id, propertyvalue) FROM stdin;
  10	http://www.atlassian.com/*\n
  21	{\n    "edgeMap": {\n        "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1801.0,\n                    "y": 115.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1801.0,\n                "y": 115.0\n            },\n            "endStepId": 4,\n            "id": "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1776.85,\n                "y": 355.25\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.25,\n                "y": 154.25\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "483797F1-1BF4-5E0F-86C6-4D19CE6023A2": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1551.0,\n                "y": 104.0\n            },\n            "lineType": "straight",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "startStepId": 1\n        },\n        "517D7F32-20FB-309E-8639-4D19CE2ACB54": {\n            "actionId": 5,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1435.0,\n                    "y": 490.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1947.0,\n                    "y": 494.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1950.0,\n                    "y": 118.0\n                }\n            ],\n            "endNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "endStepId": 4,\n            "id": "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n            "label": "Resolve Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1631.25,\n                "y": 479.5\n            },\n            "lineType": "poly",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "startStepId": 3\n        },\n        "58BD4605-5FB9-84EA-6952-4D19CE7B454B": {\n            "actionId": 1,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1470.0,\n                    "y": 16.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "58BD4605-5FB9-84EA-6952-4D19CE7B454B",\n            "label": "Create Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1475.5,\n                "y": 48.5\n            },\n            "lineType": "straight",\n            "startNodeId": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1470.0,\n                "y": 16.0\n            },\n            "startStepId": 1\n        },\n        "92D3DEFD-13AC-06A7-E5D8-4D19CE537791": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1439.5,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1390.0,\n                    "y": 434.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1393.0,\n                    "y": 116.0\n                }\n            ],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1390.0,\n                "y": 434.0\n            },\n            "endStepId": 3,\n            "id": "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1323.65,\n                "y": 193.75\n            },\n            "lineType": "poly",\n            "startNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1439.5,\n                "y": 116.0\n            },\n            "startStepId": 1\n        },\n        "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1677.0,\n                    "y": 227.0\n                },\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                },\n                {\n                    "positiveController": null,\n                    "x": 1773.5,\n                    "y": 425.0\n                }\n            ],\n            "controlPoints": [\n                {\n                    "positiveController": {\n                        "positiveController": null,\n                        "x": 0.0,\n                        "y": 0.0\n                    },\n                    "x": 1767.05,\n                    "y": 230.05\n                }\n            ],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1773.5,\n                "y": 425.0\n            },\n            "endStepId": 5,\n            "id": "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1703.85,\n                "y": 218.5\n            },\n            "lineType": "poly",\n            "startNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1677.0,\n                "y": 227.0\n            },\n            "startStepId": 6\n        },\n        "C9EA1792-2332-8B56-A04D-4D19CD725367": {\n            "actionId": 301,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1465.0,\n                    "y": 436.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1469.5,\n                    "y": 113.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1469.5,\n                "y": 113.0\n            },\n            "endStepId": 1,\n            "id": "C9EA1792-2332-8B56-A04D-4D19CD725367",\n            "label": "Stop Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1407.8,\n                "y": 308.5\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1465.0,\n                "y": 436.0\n            },\n            "startStepId": 3\n        },\n        "CAF37138-6321-E03A-8E41-4D19CDD7DC78": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1764.5,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1677.65,\n                "y": 365.0\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1764.5,\n                "y": 430.0\n            },\n            "startStepId": 5\n        },\n        "E1F8462A-8B0A-87EA-4F70-4D19CE423C83": {\n            "actionId": 2,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1488.0,\n                    "y": 430.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1492.0,\n                "y": 345.0\n            },\n            "lineType": "straight",\n            "startNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1488.0,\n                "y": 430.0\n            },\n            "startStepId": 3\n        },\n        "E27D8EB8-8E49-430B-8FCB-4D19CE127171": {\n            "actionId": 3,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1840.0,\n                    "y": 130.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1846.5,\n                    "y": 428.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1846.5,\n                "y": 428.0\n            },\n            "endStepId": 5,\n            "id": "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n            "label": "Reopen Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1814.05,\n                "y": 169.5\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1840.0,\n                "y": 130.0\n            },\n            "startStepId": 4\n        },\n        "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C": {\n            "actionId": 4,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1806.5,\n                    "y": 434.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1434.0,\n                    "y": 435.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1434.0,\n                "y": 435.0\n            },\n            "endStepId": 3,\n            "id": "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n            "label": "Start Progress",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1607.25,\n                "y": 423.5\n            },\n            "lineType": "straight",\n            "startNodeId": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1806.5,\n                "y": 434.0\n            },\n            "startStepId": 5\n        },\n        "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1": {\n            "actionId": 701,\n            "allPoints": [\n                {\n                    "positiveController": null,\n                    "x": 1763.0,\n                    "y": 113.0\n                },\n                {\n                    "positiveController": null,\n                    "x": 1614.0,\n                    "y": 226.0\n                }\n            ],\n            "controlPoints": [],\n            "endNodeId": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "endPoint": {\n                "positiveController": null,\n                "x": 1614.0,\n                "y": 226.0\n            },\n            "endStepId": 6,\n            "id": "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n            "label": "Close Issue",\n            "labelPoint": {\n                "positiveController": null,\n                "x": 1635.75,\n                "y": 152.25\n            },\n            "lineType": "straight",\n            "startNodeId": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "startPoint": {\n                "positiveController": null,\n                "x": 1763.0,\n                "y": 113.0\n            },\n            "startStepId": 4\n        }\n    },\n    "nodeMap": {\n        "0740FFFA-2AA1-C90A-38ED-4D19CD61899B": {\n            "id": "0740FFFA-2AA1-C90A-38ED-4D19CD61899B",\n            "inLinkIds": [\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C",\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791"\n            ],\n            "isInitialAction": false,\n            "label": "In Progress",\n            "outLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 146.0,\n                "x": 1373.0,\n                "y": 419.0\n            },\n            "stepId": 3\n        },\n        "15174530-AE75-04E0-1D9D-4D19CD200835": {\n            "id": "15174530-AE75-04E0-1D9D-4D19CD200835",\n            "inLinkIds": [],\n            "isInitialAction": true,\n            "label": "Create Issue",\n            "outLinkIds": [\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 157.0,\n                "x": 1405.0,\n                "y": 0.0\n            },\n            "stepId": 1\n        },\n        "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34": {\n            "id": "1C846CFB-4F0D-2F40-D0AE-4D19CDAF5D34",\n            "inLinkIds": [\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "E1F8462A-8B0A-87EA-4F70-4D19CE423C83",\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "isInitialAction": false,\n            "label": "Closed",\n            "outLinkIds": [\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 120.0,\n                "x": 1569.0,\n                "y": 210.0\n            },\n            "stepId": 6\n        },\n        "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D": {\n            "id": "6DA64EEB-08FE-2870-C90C-4D19CDA2F72D",\n            "inLinkIds": [\n                "517D7F32-20FB-309E-8639-4D19CE2ACB54",\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2"\n            ],\n            "isInitialAction": false,\n            "label": "Resolved",\n            "outLinkIds": [\n                "FD6BA267-475B-70B3-8AA4-4D19CE00BCD1",\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171"\n            ],\n            "rect": {\n                "height": 44.0,\n                "positiveController": null,\n                "width": 137.0,\n                "x": 1709.0,\n                "y": 97.0\n            },\n            "stepId": 4\n        },\n        "778534F4-7595-88B6-45E1-4D19CD518712": {\n            "id": "778534F4-7595-88B6-45E1-4D19CD518712",\n            "inLinkIds": [\n                "C9EA1792-2332-8B56-A04D-4D19CD725367",\n                "58BD4605-5FB9-84EA-6952-4D19CE7B454B"\n            ],\n            "isInitialAction": false,\n            "label": "Open",\n            "outLinkIds": [\n                "92D3DEFD-13AC-06A7-E5D8-4D19CE537791",\n                "483797F1-1BF4-5E0F-86C6-4D19CE6023A2",\n                "3DF7CEC8-9FBC-C0D0-AFB1-4D19CE6EA230"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 106.0,\n                "x": 1429.5,\n                "y": 97.0\n            },\n            "stepId": 1\n        },\n        "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB": {\n            "id": "A8B1A431-AC3A-6DCD-BFF0-4D19CDBCAADB",\n            "inLinkIds": [\n                "E27D8EB8-8E49-430B-8FCB-4D19CE127171",\n                "C049EE11-C5BB-F93B-36C3-4D19CDF12B8F"\n            ],\n            "isInitialAction": false,\n            "label": "Reopened",\n            "outLinkIds": [\n                "1DEDB66F-FE5C-EDFD-54D0-4D19CDC8CECA",\n                "CAF37138-6321-E03A-8E41-4D19CDD7DC78",\n                "F79E742D-A9E4-0124-D7D4-4D19CDE48C9C"\n            ],\n            "rect": {\n                "height": 45.0,\n                "positiveController": null,\n                "width": 142.0,\n                "x": 1749.5,\n                "y": 418.0\n            },\n            "stepId": 5\n        }\n    },\n    "rootIds": [\n        "15174530-AE75-04E0-1D9D-4D19CD200835"\n    ],\n    "width": 1136\n}\n
  10113	{"com.atlassian.jira.reindex.required":1581438163253}
  10340	database.setup=AWAITS;app.properties.setup=FULLFILLED;create.user.mail.properties.setup=ANNOUNCE;mail.properties.setup=ANNOUNCE
  10346	{\n  "annotations": [],\n  "width": 1375,\n  "rootIds": ["0D45CF1F-C6AE-B393-21B3-5A05591D1737"],\n  "nodeMap": {\n    "4E4B73B1-3C40-5FAC-264E-5A05595F62A5": {\n      "stepId": 2,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 151.0,\n        "x": 1927.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5"\n      ],\n      "outLinkIds": [\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E"\n      ],\n      "id": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "label": "In Progress"\n    },\n    "0D45CF1F-C6AE-B393-21B3-5A05591D1737": {\n      "stepId": 1,\n      "isInitialAction": true,\n      "rect": {\n        "height": 42.0,\n        "width": 117.0,\n        "x": 1512.0,\n        "y": 0.0,\n        "positiveController": null\n      },\n      "inLinkIds": [],\n      "outLinkIds": ["A56BC718-F21C-4688-A750-5A055A19265A"],\n      "id": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "label": "Create"\n    },\n    "3A048B99-FC9B-EADD-9590-5A0559B773A9": {\n      "stepId": 3,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 109.0,\n        "x": 1518.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "outLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "5841480E-F84E-DBF7-3509-5A0559D9CADA"\n      ],\n      "id": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "label": "Done"\n    },\n    "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257": {\n      "stepId": 1,\n      "isInitialAction": false,\n      "rect": {\n        "height": 42.0,\n        "width": 114.0,\n        "x": 1512.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "inLinkIds": [\n        "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n        "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n        "A56BC718-F21C-4688-A750-5A055A19265A"\n      ],\n      "outLinkIds": [\n        "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n        "1B7EC8D6-8966-9F61-6207-5A055A09D24C"\n      ],\n      "id": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "label": "To Do"\n    }\n  },\n  "edgeMap": {\n    "1B7EC8D6-8966-9F61-6207-5A055A09D24C": {\n      "actionId": 21,\n      "startStepId": 1,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 1572.0,\n        "y": 122.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1573.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1572.0,\n          "y": 122.0,\n          "positiveController": null\n        },\n        {\n          "x": 1573.0,\n          "y": 354.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1567.0,\n        "y": 219.6,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "1B7EC8D6-8966-9F61-6207-5A055A09D24C",\n      "label": "Done"\n    },\n    "5841480E-F84E-DBF7-3509-5A0559D9CADA": {\n      "actionId": 61,\n      "startStepId": 3,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1627.0,\n        "y": 361.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1953.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1627.0,\n          "y": 361.0,\n          "positiveController": null\n        },\n        {\n          "x": 1953.0,\n          "y": 257.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1658.0,\n        "y": 287.0,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "5841480E-F84E-DBF7-3509-5A0559D9CADA",\n      "label": "Reopen and start progress"\n    },\n    "321335A8-A6FA-C691-F3DF-5A0559C94B79": {\n      "actionId": 51,\n      "startStepId": 3,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1528.0,\n        "y": 354.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1527.0,\n        "y": 120.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1528.0,\n          "y": 354.0,\n          "positiveController": null\n        },\n        {\n          "x": 1527.0,\n          "y": 120.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1437.0,\n        "y": 219.1,\n        "positiveController": null\n      },\n      "startNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "321335A8-A6FA-C691-F3DF-5A0559C94B79",\n      "label": "Reopen"\n    },\n    "40B3F1B0-322B-BC82-F68C-5A0559E9885E": {\n      "actionId": 41,\n      "startStepId": 2,\n      "endStepId": 3,\n      "startPoint": {\n        "x": 2056.0,\n        "y": 257.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1608.0,\n        "y": 394.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 2056.0,\n          "y": 257.0,\n          "positiveController": null\n        },\n        {\n          "x": 1608.0,\n          "y": 394.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1788.5,\n        "y": 325.25,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "3A048B99-FC9B-EADD-9590-5A0559B773A9",\n      "id": "40B3F1B0-322B-BC82-F68C-5A0559E9885E",\n      "label": "Done"\n    },\n    "A56BC718-F21C-4688-A750-5A055A19265A": {\n      "actionId": 1,\n      "startStepId": 1,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1557.0,\n        "y": 40.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1557.0,\n        "y": 80.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1557.0,\n          "y": 40.0,\n          "positiveController": null\n        },\n        {\n          "x": 1557.0,\n          "y": 80.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1537.0,\n        "y": 50.6,\n        "positiveController": null\n      },\n      "startNodeId": "0D45CF1F-C6AE-B393-21B3-5A05591D1737",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "A56BC718-F21C-4688-A750-5A055A19265A",\n      "label": "Create"\n    },\n    "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7": {\n      "actionId": 31,\n      "startStepId": 2,\n      "endStepId": 1,\n      "startPoint": {\n        "x": 1951.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 1623.0,\n        "y": 114.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1951.0,\n          "y": 215.0,\n          "positiveController": null\n        },\n        {\n          "x": 1623.0,\n          "y": 114.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1709.5,\n        "y": 168.75,\n        "positiveController": null\n      },\n      "startNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "endNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "id": "9D6AA61E-F12E-9BD5-6EBB-5A055974DDE7",\n      "label": "Stop Progress"\n    },\n    "407198C8-F439-AEEC-73FE-5A0559F98EB5": {\n      "actionId": 11,\n      "startStepId": 1,\n      "endStepId": 2,\n      "startPoint": {\n        "x": 1626.0,\n        "y": 89.0,\n        "positiveController": null\n      },\n      "endPoint": {\n        "x": 2053.0,\n        "y": 215.0,\n        "positiveController": null\n      },\n      "controlPoints": [],\n      "allPoints": [\n        {\n          "x": 1626.0,\n          "y": 89.0,\n          "positiveController": null\n        },\n        {\n          "x": 2053.0,\n          "y": 215.0,\n          "positiveController": null\n        }\n      ],\n      "lineType": "straight",\n      "labelPoint": {\n        "x": 1809.5,\n        "y": 131.5,\n        "positiveController": null\n      },\n      "startNodeId": "8AB4AFFF-FF78-15A4-3FF6-5A05594C4257",\n      "endNodeId": "4E4B73B1-3C40-5FAC-264E-5A05595F62A5",\n      "id": "407198C8-F439-AEEC-73FE-5A0559F98EB5",\n      "label": "Start Progress"\n    }\n  }\n}
  10347	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
  10348	{"statuses":[{"id":"S<1>","x":1512.0,"y":80.0},{"id":"S<2>","x":1927.0,"y":215.0},{"id":"I<1>","x":1512.0,"y":0.0},{"id":"S<3>","x":1518.0,"y":354.0}],"transitions":[],"updateAuthor":null,"updatedDate":null,"loopedTransitionContainer":null}
  10353	{"com.atlassian.jira.tzdetect.19800000,19800000":1581438434464}
  10349	\N
  10350	project = TEST AND resolution = Unresolved ORDER BY priority DESC, updated DESC
  \.
  
  
  --
  -- Data for Name: qrtz_calendars; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_calendars (id, calendar_name, calendar) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_cron_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_cron_triggers (id, trigger_id, cronexperssion) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_fired_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_fired_triggers (id, entry_id, trigger_id, trigger_listener, fired_time, trigger_state) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_job_details; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_job_details (id, job_name, job_group, class_name, is_durable, is_stateful, requests_recovery, job_data) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_job_listeners; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_job_listeners (id, job, job_listener) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_simple_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_simple_triggers (id, trigger_id, repeat_count, repeat_interval, times_triggered) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_trigger_listeners; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_trigger_listeners (id, trigger_id, trigger_listener) FROM stdin;
  \.
  
  
  --
  -- Data for Name: qrtz_triggers; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.qrtz_triggers (id, trigger_name, trigger_group, job, next_fire, trigger_state, trigger_type, start_time, end_time, calendar_name, misfire_instr) FROM stdin;
  \.
  
  
  --
  -- Data for Name: reindex_component; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.reindex_component (id, request_id, affected_index, entity_type) FROM stdin;
  10100	10000	ISSUE	NONE
  10101	10000	COMMENT	NONE
  10102	10000	CHANGEHISTORY	NONE
  10103	10000	WORKLOG	NONE
  \.
  
  
  --
  -- Data for Name: reindex_request; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.reindex_request (id, type, request_time, start_time, completion_time, status, execution_node_id, query) FROM stdin;
  10000	IMMEDIATE	2020-02-11 16:22:42.483+00	2020-02-11 16:25:45.103+00	2020-02-11 16:25:45.577+00	COMPLETE	\N	\N
  \.
  
  
  --
  -- Data for Name: remembermetoken; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.remembermetoken (id, created, token, username) FROM stdin;
  \.
  
  
  --
  -- Data for Name: remotelink; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.remotelink (id, issueid, globalid, title, summary, url, iconurl, icontitle, relationship, resolved, statusname, statusdescription, statusiconurl, statusicontitle, statusiconlink, statuscategorykey, statuscategorycolorname, applicationtype, applicationname) FROM stdin;
  \.
  
  
  --
  -- Data for Name: replicatedindexoperation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.replicatedindexoperation (id, index_time, node_id, affected_index, entity_type, affected_ids, operation, filename) FROM stdin;
  \.
  
  
  --
  -- Data for Name: resolution; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.resolution (id, sequence, pname, description, iconurl) FROM stdin;
  10000	1	Done	Work has been completed on this issue.	\N
  10001	2	Won't Do	This issue won't be actioned.	\N
  10002	3	Duplicate	The problem is a duplicate of an existing issue.	\N
  \.
  
  
  --
  -- Data for Name: rundetails; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.rundetails (id, job_id, start_time, run_duration, run_outcome, info_message) FROM stdin;
  10005	com.atlassian.jira.service.JiraService:10001	2020-02-11 16:23:00.794+00	3969	S	
  10006	ConfigurationLoggerJob	2020-02-11 16:25:05.076+00	25	S	
  10007	com.atlassian.jira.user.UserHistoryDatabaseCompactor	2020-02-11 16:25:05.096+00	15	S	
  10100	applink-status-analytics-job	2020-02-11 16:25:45.967+00	30	S	
  10101	BundledUpdateCheckJob-job	2020-02-11 16:25:49.198+00	13	S	
  10102	PluginRequestCheckJob-job	2020-02-11 16:25:49.238+00	49	S	
  10103	LocalPluginLicenseNotificationJob-job	2020-02-11 16:25:49.223+00	251	S	
  10104	com.atlassian.troubleshooting.jira.scheduler.CustomisationsCheckScheduler:job	2020-02-11 16:25:45.978+00	6377	S	
  10106	JiraPluginScheduler:com.atlassian.analytics.client.upload.RemoteFilterRead:job	2020-02-11 16:25:59.038+00	1745	S	
  10109	CompatibilityPluginScheduler.JobId.hipchatRefreshConnectionStatusJob	2020-02-11 16:26:11.65+00	10	S	
  10110	CompatibilityPluginScheduler.JobId.hipchatInstallGlancesJob	2020-02-11 16:26:12.796+00	5	S	
  10111	HistoryCleanupJob	2020-02-11 16:26:12.838+00	17	S	
  10113	JiraPluginScheduler:com.atlassian.troubleshooting.healthcheck.scheduler.HealthCheckSchedulerImpl:job	2020-02-11 16:26:45.913+00	2542	S	
  10129	com.atlassian.jira.plugins.inform.batching.cron.BatchNotificationJobSchedulerImpl.mentions	2020-02-11 16:29:49.127+00	22	S	
  10130	com.atlassian.jira.service.JiraService:10000	2020-02-11 16:30:00+00	1	S	
  10131	SettingsReloaderJob	2020-02-11 16:30:02.792+00	8	S	
  10132	HistoryFlushJob	2020-02-11 16:30:02.808+00	16	S	
  10133	class com.atlassian.scheduler.core.util.JobRunnerRegistry:com.atlassian.cluster.monitoring.cluster-monitoring-plugin:runtime-information	2020-02-11 16:30:05.056+00	13	S	
  10134	class com.atlassian.scheduler.core.util.JobRunnerRegistry:com.atlassian.cluster.monitoring.cluster-monitoring-plugin:system-information	2020-02-11 16:30:05.052+00	18	S	
  10135	CompatibilityPluginScheduler.JobId.hipchatUpdateGlancesDataJob	2020-02-11 16:30:15.292+00	6	S	
  \.
  
  
  --
  -- Data for Name: schemeissuesecurities; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.schemeissuesecurities (id, scheme, security, sec_type, sec_parameter) FROM stdin;
  \.
  
  
  --
  -- Data for Name: schemeissuesecuritylevels; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.schemeissuesecuritylevels (id, name, description, scheme) FROM stdin;
  \.
  
  
  --
  -- Data for Name: schemepermissions; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.schemepermissions (id, scheme, permission, perm_type, perm_parameter, permission_key) FROM stdin;
  10025	0	32	projectrole	10002	MANAGE_WATCHERS
  10026	0	34	projectrole	10002	EDIT_ALL_COMMENTS
  10027	0	35	applicationRole		EDIT_OWN_COMMENTS
  10028	0	36	projectrole	10002	DELETE_ALL_COMMENTS
  10029	0	37	applicationRole		DELETE_OWN_COMMENTS
  10030	0	38	projectrole	10002	DELETE_ALL_ATTACHMENTS
  10031	0	39	applicationRole		DELETE_OWN_ATTACHMENTS
  10033	0	29	applicationRole		VIEW_DEV_TOOLS
  10101	\N	44	group	jira-administrators	\N
  10200	0	45	applicationRole		VIEW_READONLY_WORKFLOW
  10300	0	46	applicationRole		TRANSITION_ISSUES
  10000	\N	0	group	jira-administrators	\N
  10004	0	23	projectrole	10002	ADMINISTER_PROJECTS
  10005	0	10	applicationRole		BROWSE_PROJECTS
  10006	0	11	applicationRole		CREATE_ISSUES
  10007	0	15	applicationRole		ADD_COMMENTS
  10008	0	19	applicationRole		CREATE_ATTACHMENTS
  10009	0	13	applicationRole		ASSIGN_ISSUES
  10010	0	17	applicationRole		ASSIGNABLE_USER
  10011	0	14	applicationRole		RESOLVE_ISSUES
  10012	0	21	applicationRole		LINK_ISSUES
  10013	0	12	applicationRole		EDIT_ISSUES
  10014	0	16	projectrole	10002	DELETE_ISSUES
  10015	0	18	applicationRole		CLOSE_ISSUES
  10016	0	25	applicationRole		MOVE_ISSUES
  10017	0	28	applicationRole		SCHEDULE_ISSUES
  10018	0	30	projectrole	10002	MODIFY_REPORTER
  10019	0	20	applicationRole		WORK_ON_ISSUES
  10020	0	43	projectrole	10002	DELETE_ALL_WORKLOGS
  10021	0	42	applicationRole		DELETE_OWN_WORKLOGS
  10022	0	41	projectrole	10002	EDIT_ALL_WORKLOGS
  10023	0	40	applicationRole		EDIT_OWN_WORKLOGS
  10024	0	31	applicationRole		VIEW_VOTERS_AND_WATCHERS
  \.
  
  
  --
  -- Data for Name: searchrequest; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.searchrequest (id, filtername, authorname, description, username, groupname, projectid, reqcontent, fav_count, filtername_lower) FROM stdin;
  10000	Open and unassigned (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and statusCategory != Done and assignee = EMPTY ORDER BY priority desc	0	open and unassigned (test)
  10001	Due this week (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and duedate >= startOfWeek() and duedate <= endOfWeek() ORDER BY priority desc	0	due this week (test)
  10002	Overdue (TEST)	JIRAUSER10000	\N	JIRAUSER10000	\N	\N	project = 10000 and statusCategory != Done and duedate < now() ORDER BY duedate desc	0	overdue (test)
  \.
  
  
  --
  -- Data for Name: sequence_value_item; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.sequence_value_item (seq_name, seq_id) FROM stdin;
  Project	10100
  ProjectKey	10100
  ProjectRoleActor	10200
  IssueType	10100
  FieldConfiguration	10300
  FieldConfigScheme	10300
  FieldConfigSchemeIssueType	10400
  OptionConfiguration	10400
  ConfigurationContext	10300
  GenericConfiguration	10200
  Status	10100
  Workflow	10200
  AuditLog	10200
  AuditChangedValue	10200
  WorkflowScheme	10200
  WorkflowSchemeEntity	10200
  EventType	10000
  FieldLayout	10100
  GadgetUserPreference	10100
  IssueLinkType	10200
  NotificationScheme	10100
  OAuthConsumer	10100
  PortalPage	10100
  PortletConfiguration	10100
  Priority	10000
  SchemePermissions	10400
  ServiceConfig	10200
  AuditItem	10200
  FieldScreen	10100
  UpgradeTaskHistory	10100
  Feature	10200
  UpgradeTaskHistoryAuditLog	10100
  FieldScreenTab	10200
  FieldScreenLayoutItem	10300
  PluginVersion	10300
  UpgradeHistory	10200
  ReindexRequest	10100
  FieldScreenScheme	10100
  Avatar	10600
  Notification	10300
  UpgradeVersionHistory	10100
  FieldScreenSchemeItem	10200
  ListenerConfig	10300
  IssueTypeScreenScheme	10100
  ProductLicense	10100
  Group	10110
  LicenseRoleGroup	10100
  GlobalPermissionEntry	10200
  ApplicationUser	10100
  User	10100
  IssueTypeScreenSchemeEntity	10200
  Membership	10100
  LicenseRoleDefault	10100
  ReindexComponent	10200
  TaskIdSequence	10100
  OSPropertyEntry	10400
  FieldLayoutItem	10200
  ClusteredJob	10300
  RunDetails	10200
  UserAttribute	10200
  Resolution	10100
  DraftWorkflow	10100
  SearchRequest	10100
  SharePermissions	10200
  EntityProperty	10100
  ProjectRole	10200
  OSWorkflowEntry	10100
  OSCurrentStep	10100
  Issue	10100
  FileAttachment	10100
  Action	10100
  Label	10100
  UserHistoryItem	10100
  \.
  
  
  --
  -- Data for Name: serviceconfig; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.serviceconfig (id, delaytime, clazz, servicename, cron_expression) FROM stdin;
  10000	60000	com.atlassian.jira.service.services.mail.MailQueueService	Mail Queue Service	0 * * * * ?
  10002	86400000	com.atlassian.jira.service.services.auditing.AuditLogCleaningService	Audit log cleaning service	0 0 0 * * ?
  10001	43200000	com.atlassian.jira.service.services.export.ExportService	Backup Service	\N
  \.
  
  
  --
  -- Data for Name: sharepermissions; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.sharepermissions (id, entityid, entitytype, sharetype, param1, param2, rights) FROM stdin;
  10000	10000	PortalPage	global	\N	\N	1
  10100	10000	SearchRequest	project	10000	\N	1
  10101	10001	SearchRequest	project	10000	\N	1
  10102	10002	SearchRequest	project	10000	\N	1
  \.
  
  
  --
  -- Data for Name: tempattachmentsmonitor; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.tempattachmentsmonitor (temporary_attachment_id, form_token, file_name, content_type, file_size, created_time) FROM stdin;
  \.
  
  
  --
  -- Data for Name: trackback_ping; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.trackback_ping (id, issue, url, title, blogname, excerpt, created) FROM stdin;
  \.
  
  
  --
  -- Data for Name: trustedapp; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.trustedapp (id, application_id, name, public_key, ip_match, url_match, timeout, created, created_by, updated, updated_by) FROM stdin;
  \.
  
  
  --
  -- Data for Name: upgradehistory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.upgradehistory (id, upgradeclass, targetbuild, status, downgradetaskrequired) FROM stdin;
  10000	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70100	70100	complete	Y
  10100	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70101	70101	complete	N
  10101	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build70102	70102	complete	N
  10102	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build71001	71001	complete	N
  10103	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72001	72001	complete	N
  10104	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build72002	72002	complete	N
  10105	com.atlassian.jira.upgrade.tasks.UpgradeTask_Build73002	73002	complete	N
  \.
  
  
  --
  -- Data for Name: upgradetaskhistory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.upgradetaskhistory (id, upgrade_task_factory_key, build_number, status, upgrade_type) FROM stdin;
  10000	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER
  10007	host	73010	COMPLETED	SERVER
  10008	host	73011	COMPLETED	SERVER
  10009	host	74002	COMPLETED	SERVER
  10010	host	75002	COMPLETED	SERVER
  10011	host	75003	COMPLETED	SERVER
  10012	host	75004	COMPLETED	SERVER
  10013	host	75005	COMPLETED	SERVER
  10014	host	76001	COMPLETED	SERVER
  10015	host	77001	COMPLETED	SERVER
  10016	host	710001	COMPLETED	SERVER
  10017	host	711001	COMPLETED	SERVER
  10018	host	712001	COMPLETED	SERVER
  10019	host	800000	COMPLETED	SERVER
  10020	host	800003	COMPLETED	SERVER
  10021	host	800004	COMPLETED	SERVER
  10022	host	800005	COMPLETED	SERVER
  10023	host	800006	COMPLETED	SERVER
  10024	host	800007	COMPLETED	SERVER
  10025	host	800009	COMPLETED	SERVER
  10026	host	801000	COMPLETED	SERVER
  10027	host	804000	COMPLETED	SERVER
  \.
  
  
  --
  -- Data for Name: upgradetaskhistoryauditlog; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.upgradetaskhistoryauditlog (id, upgrade_task_factory_key, build_number, status, upgrade_type, timeperformed, action) FROM stdin;
  10000	com.atlassian.jira.plugins.inform.batching-plugin	1	COMPLETED	SERVER	2020-02-11 16:22:35.93+00	upgrade
  10001	host	70101	COMPLETED	SERVER	2020-02-11 16:22:41.506+00	upgrade
  10002	host	70102	COMPLETED	SERVER	2020-02-11 16:22:41.554+00	upgrade
  10003	host	71001	COMPLETED	SERVER	2020-02-11 16:22:41.594+00	upgrade
  10004	host	72001	COMPLETED	SERVER	2020-02-11 16:22:41.616+00	upgrade
  10005	host	72002	COMPLETED	SERVER	2020-02-11 16:22:41.715+00	upgrade
  10006	host	73002	COMPLETED	SERVER	2020-02-11 16:22:41.725+00	upgrade
  10007	host	73010	COMPLETED	SERVER	2020-02-11 16:22:41.777+00	upgrade
  10008	host	73011	COMPLETED	SERVER	2020-02-11 16:22:41.786+00	upgrade
  10009	host	74002	COMPLETED	SERVER	2020-02-11 16:22:41.822+00	upgrade
  10010	host	75002	COMPLETED	SERVER	2020-02-11 16:22:41.842+00	upgrade
  10011	host	75003	COMPLETED	SERVER	2020-02-11 16:22:41.863+00	upgrade
  10012	host	75004	COMPLETED	SERVER	2020-02-11 16:22:41.881+00	upgrade
  10013	host	75005	COMPLETED	SERVER	2020-02-11 16:22:41.896+00	upgrade
  10014	host	76001	COMPLETED	SERVER	2020-02-11 16:22:42.062+00	upgrade
  10015	host	77001	COMPLETED	SERVER	2020-02-11 16:22:42.1+00	upgrade
  10016	host	710001	COMPLETED	SERVER	2020-02-11 16:22:42.211+00	upgrade
  10017	host	711001	COMPLETED	SERVER	2020-02-11 16:22:42.306+00	upgrade
  10018	host	712001	COMPLETED	SERVER	2020-02-11 16:22:42.33+00	upgrade
  10019	host	800000	COMPLETED	SERVER	2020-02-11 16:22:42.348+00	upgrade
  10020	host	800003	COMPLETED	SERVER	2020-02-11 16:22:42.468+00	upgrade
  10021	host	800004	COMPLETED	SERVER	2020-02-11 16:22:42.678+00	upgrade
  10022	host	800005	COMPLETED	SERVER	2020-02-11 16:22:42.761+00	upgrade
  10023	host	800006	COMPLETED	SERVER	2020-02-11 16:22:42.791+00	upgrade
  10024	host	800007	COMPLETED	SERVER	2020-02-11 16:22:42.839+00	upgrade
  10025	host	800009	COMPLETED	SERVER	2020-02-11 16:22:42.883+00	upgrade
  10026	host	801000	COMPLETED	SERVER	2020-02-11 16:22:43.039+00	upgrade
  10027	host	804000	COMPLETED	SERVER	2020-02-11 16:22:43.104+00	upgrade
  \.
  
  
  --
  -- Data for Name: upgradeversionhistory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.upgradeversionhistory (id, timeperformed, targetbuild, targetversion) FROM stdin;
  10000	2020-02-11 16:22:43.183+00	804000	8.7.1
  \.
  
  
  --
  -- Data for Name: userassociation; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userassociation (source_name, sink_node_id, sink_node_entity, association_type, sequence, created) FROM stdin;
  \.
  
  
  --
  -- Data for Name: userbase; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userbase (id, username, password_hash) FROM stdin;
  \.
  
  
  --
  -- Data for Name: userhistoryitem; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userhistoryitem (id, entitytype, entityid, username, lastviewed, data) FROM stdin;
  10002	Issue	10001	JIRAUSER10000	1581438440829	\N
  10003	Searcher	project	JIRAUSER10000	1581438462815	\N
  10004	Searcher	issuetype	JIRAUSER10000	1581438462836	\N
  10005	Searcher	status	JIRAUSER10000	1581438462988	\N
  10006	Searcher	resolution	JIRAUSER10000	1581438463023	\N
  10000	Project	10000	JIRAUSER10000	1581438463054	\N
  10007	Searcher	assignee	JIRAUSER10000	1581438463055	\N
  10001	Issue	10000	JIRAUSER10000	1581438463720	\N
  \.
  
  
  --
  -- Data for Name: userpickerfilter; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userpickerfilter (id, customfield, customfieldconfig, enabled) FROM stdin;
  \.
  
  
  --
  -- Data for Name: userpickerfiltergroup; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userpickerfiltergroup (id, userpickerfilter, groupname) FROM stdin;
  \.
  
  
  --
  -- Data for Name: userpickerfilterrole; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.userpickerfilterrole (id, userpickerfilter, projectroleid) FROM stdin;
  \.
  
  
  --
  -- Data for Name: versioncontrol; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.versioncontrol (id, vcsname, vcsdescription, vcstype) FROM stdin;
  \.
  
  
  --
  -- Data for Name: votehistory; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.votehistory (id, issueid, votes, "timestamp") FROM stdin;
  \.
  
  
  --
  -- Data for Name: workflowscheme; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.workflowscheme (id, name, description) FROM stdin;
  10000	classic	classic
  10100	TEST: Project Management Workflow Scheme	
  \.
  
  
  --
  -- Data for Name: workflowschemeentity; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.workflowschemeentity (id, scheme, workflow, issuetype) FROM stdin;
  10000	10000	classic default workflow	0
  10100	10100	TEST: Project Management Workflow	0
  \.
  
  
  --
  -- Data for Name: worklog; Type: TABLE DATA; Schema: public; Owner: prisma
  --
  
  COPY public.worklog (id, issueid, author, grouplevel, rolelevel, worklogbody, created, updateauthor, updated, startdate, timeworked) FROM stdin;
  \.
  
  
  --
  -- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_21D670_WHITELIST_RULES_ID_seq"', 2, true);
  
  
  --
  -- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_21F425_USER_PROPERTY_AO_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_3B1893_LOOP_DETECTION_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_4789DD_PROPERTIES_ID_seq"', 1, true);
  
  
  --
  -- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_4789DD_TASK_MONITOR_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_4AEACD_WEBHOOK_DAO_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_550953_SHORTCUT_ID_seq"', 2, true);
  
  
  --
  -- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_563AEE_ACTOR_ENTITY_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_563AEE_OBJECT_ENTITY_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_563AEE_TARGET_ENTITY_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_587B34_PROJECT_CONFIG_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_733371_EVENT_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_733371_EVENT_PARAMETER_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_733371_EVENT_RECIPIENT_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_97EDAB_USERINVITATION_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_AC3877_RL_USER_COUNTER_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"', 1, true);
  
  
  --
  -- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_C16815_ALERT_AO_ID_seq"', 1, false);
  
  
  --
  -- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: prisma
  --
  
  SELECT pg_catalog.setval('public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"', 1, false);
  
  
  --
  -- PostgreSQL database dump complete
  --