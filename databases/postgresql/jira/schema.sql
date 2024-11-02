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
  -- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
  --
  CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
--
  -- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
  --
  COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
SET
  default_tablespace = '';
SET
  default_with_oids = false;
--
  -- Name: AO_0A5972_NOTIFICATION_SETTING; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_0A5972_NOTIFICATION_SETTING" (
    "ID" bigint NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "TYPE" character varying(255) NOT NULL,
    "USER_KEY" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_0A5972_NOTIFICATION_SETTING" OWNER TO prisma;
--
  -- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNER TO prisma;
--
  -- Name: AO_0A5972_NOTIFICATION_SETTING_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_0A5972_NOTIFICATION_SETTING_ID_seq" OWNED BY public."AO_0A5972_NOTIFICATION_SETTING"."ID";
--
  -- Name: AO_0A5972_PUSH_REGISTRATION; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_0A5972_PUSH_REGISTRATION" (
    "BUILD" character varying(255) NOT NULL,
    "ENDPOINT" character varying(450),
    "ID" character varying(255) NOT NULL,
    "OS" character varying(255) NOT NULL,
    "TOKEN" character varying(450),
    "USER_KEY" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_0A5972_PUSH_REGISTRATION" OWNER TO prisma;
--
  -- Name: AO_0AC321_RECOMMENDATION_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_0AC321_RECOMMENDATION_AO" (
    "CATEGORY" character varying(255),
    "CUSTOM_FIELD_ID" bigint,
    "ID" character varying(255) NOT NULL,
    "NAME" character varying(255),
    "PERFORMANCE_IMPACT" double precision,
    "PROJECT_IDS" text,
    "RESOLVED" boolean,
    "TYPE" character varying(255)
  );
ALTER TABLE public. "AO_0AC321_RECOMMENDATION_AO" OWNER TO prisma;
--
  -- Name: AO_21D670_WHITELIST_RULES; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_21D670_WHITELIST_RULES" (
    "ALLOWINBOUND" boolean,
    "EXPRESSION" text NOT NULL,
    "ID" integer NOT NULL,
    "TYPE" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_21D670_WHITELIST_RULES" OWNER TO prisma;
--
  -- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_21D670_WHITELIST_RULES_ID_seq" OWNER TO prisma;
--
  -- Name: AO_21D670_WHITELIST_RULES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_21D670_WHITELIST_RULES_ID_seq" OWNED BY public."AO_21D670_WHITELIST_RULES"."ID";
--
  -- Name: AO_21F425_MESSAGE_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_21F425_MESSAGE_AO" (
    "CONTENT" text NOT NULL,
    "ID" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_21F425_MESSAGE_AO" OWNER TO prisma;
--
  -- Name: AO_21F425_MESSAGE_MAPPING_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_21F425_MESSAGE_MAPPING_AO" (
    "ID" integer NOT NULL,
    "MESSAGE_ID" character varying(255) NOT NULL,
    "USER_HASH" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_21F425_MESSAGE_MAPPING_AO" OWNER TO prisma;
--
  -- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNER TO prisma;
--
  -- Name: AO_21F425_MESSAGE_MAPPING_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq" OWNED BY public."AO_21F425_MESSAGE_MAPPING_AO"."ID";
--
  -- Name: AO_21F425_USER_PROPERTY_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_21F425_USER_PROPERTY_AO" (
    "ID" integer NOT NULL,
    "KEY" character varying(255) NOT NULL,
    "USER" character varying(255) NOT NULL,
    "VALUE" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_21F425_USER_PROPERTY_AO" OWNER TO prisma;
--
  -- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_21F425_USER_PROPERTY_AO_ID_seq" OWNER TO prisma;
--
  -- Name: AO_21F425_USER_PROPERTY_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_21F425_USER_PROPERTY_AO_ID_seq" OWNED BY public."AO_21F425_USER_PROPERTY_AO"."ID";
--
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_38321B_CUSTOM_CONTENT_LINK" (
    "CONTENT_KEY" character varying(255),
    "ID" integer NOT NULL,
    "LINK_LABEL" character varying(255),
    "LINK_URL" character varying(255),
    "SEQUENCE" integer DEFAULT 0
  );
ALTER TABLE public. "AO_38321B_CUSTOM_CONTENT_LINK" OWNER TO prisma;
--
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNER TO prisma;
--
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq" OWNED BY public."AO_38321B_CUSTOM_CONTENT_LINK"."ID";
--
  -- Name: AO_3B1893_LOOP_DETECTION; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_3B1893_LOOP_DETECTION" (
    "COUNTER" integer DEFAULT 0 NOT NULL,
    "EXPIRES_AT" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "SENDER_EMAIL" text NOT NULL
  );
ALTER TABLE public. "AO_3B1893_LOOP_DETECTION" OWNER TO prisma;
--
  -- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_3B1893_LOOP_DETECTION_ID_seq" OWNER TO prisma;
--
  -- Name: AO_3B1893_LOOP_DETECTION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_3B1893_LOOP_DETECTION_ID_seq" OWNED BY public."AO_3B1893_LOOP_DETECTION"."ID";
--
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_4789DD_HEALTH_CHECK_STATUS" (
    "APPLICATION_NAME" character varying(255),
    "COMPLETE_KEY" character varying(255),
    "DESCRIPTION" text,
    "FAILED_DATE" timestamp without time zone,
    "FAILURE_REASON" text,
    "ID" integer NOT NULL,
    "IS_HEALTHY" boolean,
    "IS_RESOLVED" boolean,
    "RESOLVED_DATE" timestamp without time zone,
    "SEVERITY" character varying(255),
    "STATUS_NAME" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_4789DD_HEALTH_CHECK_STATUS" OWNER TO prisma;
--
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNER TO prisma;
--
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq" OWNED BY public."AO_4789DD_HEALTH_CHECK_STATUS"."ID";
--
  -- Name: AO_4789DD_PROPERTIES; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_4789DD_PROPERTIES" (
    "ID" integer NOT NULL,
    "PROPERTY_NAME" character varying(255) NOT NULL,
    "PROPERTY_VALUE" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_4789DD_PROPERTIES" OWNER TO prisma;
--
  -- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_4789DD_PROPERTIES_ID_seq" OWNER TO prisma;
--
  -- Name: AO_4789DD_PROPERTIES_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_4789DD_PROPERTIES_ID_seq" OWNED BY public."AO_4789DD_PROPERTIES"."ID";
--
  -- Name: AO_4789DD_READ_NOTIFICATIONS; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_4789DD_READ_NOTIFICATIONS" (
    "ID" integer NOT NULL,
    "IS_SNOOZED" boolean,
    "NOTIFICATION_ID" integer NOT NULL,
    "SNOOZE_COUNT" integer,
    "SNOOZE_DATE" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_4789DD_READ_NOTIFICATIONS" OWNER TO prisma;
--
  -- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNER TO prisma;
--
  -- Name: AO_4789DD_READ_NOTIFICATIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_4789DD_READ_NOTIFICATIONS_ID_seq" OWNED BY public."AO_4789DD_READ_NOTIFICATIONS"."ID";
--
  -- Name: AO_4789DD_TASK_MONITOR; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_4789DD_TASK_MONITOR" (
    "CLUSTERED_TASK_ID" character varying(255),
    "CREATED_TIMESTAMP" bigint DEFAULT 0,
    "ID" integer NOT NULL,
    "NODE_ID" character varying(255),
    "PROGRESS_MESSAGE" text,
    "PROGRESS_PERCENTAGE" integer,
    "SERIALIZED_ERRORS" text,
    "SERIALIZED_WARNINGS" text,
    "TASK_ID" character varying(255) NOT NULL,
    "TASK_MONITOR_KIND" character varying(255),
    "TASK_STATUS" text
  );
ALTER TABLE public. "AO_4789DD_TASK_MONITOR" OWNER TO prisma;
--
  -- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_4789DD_TASK_MONITOR_ID_seq" OWNER TO prisma;
--
  -- Name: AO_4789DD_TASK_MONITOR_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_4789DD_TASK_MONITOR_ID_seq" OWNED BY public."AO_4789DD_TASK_MONITOR"."ID";
--
  -- Name: AO_4AEACD_WEBHOOK_DAO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_4AEACD_WEBHOOK_DAO" (
    "ENABLED" boolean,
    "ENCODED_EVENTS" text,
    "FILTER" text,
    "ID" integer NOT NULL,
    "JQL" character varying(255),
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255) NOT NULL,
    "NAME" text NOT NULL,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL,
    "EXCLUDE_ISSUE_DETAILS" boolean,
    "PARAMETERS" text
  );
ALTER TABLE public. "AO_4AEACD_WEBHOOK_DAO" OWNER TO prisma;
--
  -- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNER TO prisma;
--
  -- Name: AO_4AEACD_WEBHOOK_DAO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_4AEACD_WEBHOOK_DAO_ID_seq" OWNED BY public."AO_4AEACD_WEBHOOK_DAO"."ID";
--
  -- Name: AO_550953_SHORTCUT; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_550953_SHORTCUT" (
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "PROJECT_ID" bigint,
    "SHORTCUT_URL" text,
    "URL" character varying(255),
    "ICON" character varying(255)
  );
ALTER TABLE public. "AO_550953_SHORTCUT" OWNER TO prisma;
--
  -- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_550953_SHORTCUT_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_550953_SHORTCUT_ID_seq" OWNER TO prisma;
--
  -- Name: AO_550953_SHORTCUT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_550953_SHORTCUT_ID_seq" OWNED BY public."AO_550953_SHORTCUT"."ID";
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_563AEE_ACTIVITY_ENTITY" (
    "ACTIVITY_ID" bigint NOT NULL,
    "ACTOR_ID" integer,
    "CONTENT" text,
    "GENERATOR_DISPLAY_NAME" character varying(255),
    "GENERATOR_ID" character varying(450),
    "ICON_ID" integer,
    "ID" character varying(450),
    "ISSUE_KEY" character varying(255),
    "OBJECT_ID" integer,
    "POSTER" character varying(255),
    "PROJECT_KEY" character varying(255),
    "PUBLISHED" timestamp without time zone,
    "TARGET_ID" integer,
    "TITLE" character varying(255),
    "URL" character varying(450),
    "USERNAME" character varying(255),
    "VERB" character varying(450)
  );
ALTER TABLE public. "AO_563AEE_ACTIVITY_ENTITY" OWNER TO prisma;
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNER TO prisma;
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq" OWNED BY public."AO_563AEE_ACTIVITY_ENTITY"."ACTIVITY_ID";
--
  -- Name: AO_563AEE_ACTOR_ENTITY; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_563AEE_ACTOR_ENTITY" (
    "FULL_NAME" character varying(255),
    "ID" integer NOT NULL,
    "PROFILE_PAGE_URI" character varying(450),
    "PROFILE_PICTURE_URI" character varying(450),
    "USERNAME" character varying(255)
  );
ALTER TABLE public. "AO_563AEE_ACTOR_ENTITY" OWNER TO prisma;
--
  -- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_563AEE_ACTOR_ENTITY_ID_seq" OWNER TO prisma;
--
  -- Name: AO_563AEE_ACTOR_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_563AEE_ACTOR_ENTITY_ID_seq" OWNED BY public."AO_563AEE_ACTOR_ENTITY"."ID";
--
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_563AEE_MEDIA_LINK_ENTITY" (
    "DURATION" integer,
    "HEIGHT" integer,
    "ID" integer NOT NULL,
    "URL" character varying(450),
    "WIDTH" integer
  );
ALTER TABLE public. "AO_563AEE_MEDIA_LINK_ENTITY" OWNER TO prisma;
--
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNER TO prisma;
--
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq" OWNED BY public."AO_563AEE_MEDIA_LINK_ENTITY"."ID";
--
  -- Name: AO_563AEE_OBJECT_ENTITY; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_563AEE_OBJECT_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
  );
ALTER TABLE public. "AO_563AEE_OBJECT_ENTITY" OWNER TO prisma;
--
  -- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_563AEE_OBJECT_ENTITY_ID_seq" OWNER TO prisma;
--
  -- Name: AO_563AEE_OBJECT_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_563AEE_OBJECT_ENTITY_ID_seq" OWNED BY public."AO_563AEE_OBJECT_ENTITY"."ID";
--
  -- Name: AO_563AEE_TARGET_ENTITY; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_563AEE_TARGET_ENTITY" (
    "CONTENT" character varying(255),
    "DISPLAY_NAME" character varying(255),
    "ID" integer NOT NULL,
    "IMAGE_ID" integer,
    "OBJECT_ID" character varying(450),
    "OBJECT_TYPE" character varying(450),
    "SUMMARY" character varying(255),
    "URL" character varying(450)
  );
ALTER TABLE public. "AO_563AEE_TARGET_ENTITY" OWNER TO prisma;
--
  -- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_563AEE_TARGET_ENTITY_ID_seq" OWNER TO prisma;
--
  -- Name: AO_563AEE_TARGET_ENTITY_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_563AEE_TARGET_ENTITY_ID_seq" OWNED BY public."AO_563AEE_TARGET_ENTITY"."ID";
--
  -- Name: AO_587B34_GLANCE_CONFIG; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_587B34_GLANCE_CONFIG" (
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "STATE" character varying(255),
    "SYNC_NEEDED" boolean,
    "APPLICATION_USER_KEY" character varying(255),
    "NAME" character varying(255),
    "JQL" character varying(255)
  );
ALTER TABLE public. "AO_587B34_GLANCE_CONFIG" OWNER TO prisma;
--
  -- Name: AO_587B34_PROJECT_CONFIG; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_587B34_PROJECT_CONFIG" (
    "CONFIGURATION_GROUP_ID" character varying(255) NOT NULL,
    "ID" integer NOT NULL,
    "NAME" character varying(255),
    "NAME_UNIQUE_CONSTRAINT" character varying(255) NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0 NOT NULL,
    "ROOM_ID" bigint DEFAULT 0 NOT NULL,
    "VALUE" character varying(255)
  );
ALTER TABLE public. "AO_587B34_PROJECT_CONFIG" OWNER TO prisma;
--
  -- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_587B34_PROJECT_CONFIG_ID_seq" OWNER TO prisma;
--
  -- Name: AO_587B34_PROJECT_CONFIG_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_587B34_PROJECT_CONFIG_ID_seq" OWNED BY public."AO_587B34_PROJECT_CONFIG"."ID";
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_LINK" (
    "ADDON_TOKEN_EXPIRY" timestamp without time zone,
    "API_URL" character varying(255),
    "CONNECT_DESCRIPTOR" text,
    "GROUP_ID" integer DEFAULT 0,
    "GROUP_NAME" character varying(255),
    "ID" integer NOT NULL,
    "OAUTH_ID" character varying(255),
    "SECRET_KEY" character varying(255),
    "SYSTEM_PASSWORD" character varying(255),
    "SYSTEM_TOKEN_EXPIRY" timestamp without time zone,
    "SYSTEM_USER" character varying(255),
    "SYSTEM_USER_TOKEN" character varying(255),
    "TOKEN" character varying(255)
  );
ALTER TABLE public. "AO_5FB9D7_AOHIP_CHAT_LINK" OWNER TO prisma;
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNER TO prisma;
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_LINK"."ID";
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_5FB9D7_AOHIP_CHAT_USER" (
    "HIP_CHAT_LINK_ID" integer,
    "HIP_CHAT_USER_ID" character varying(255),
    "HIP_CHAT_USER_NAME" character varying(255),
    "ID" integer NOT NULL,
    "REFRESH_CODE" character varying(255),
    "USER_KEY" character varying(255),
    "USER_SCOPES" character varying(255),
    "USER_TOKEN" character varying(255),
    "USER_TOKEN_EXPIRY" timestamp without time zone
  );
ALTER TABLE public. "AO_5FB9D7_AOHIP_CHAT_USER" OWNER TO prisma;
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNER TO prisma;
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq" OWNED BY public."AO_5FB9D7_AOHIP_CHAT_USER"."ID";
--
  -- Name: AO_733371_EVENT; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_733371_EVENT" (
    "ACTION" character varying(255),
    "ACTION_ID" character varying(255),
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_BUNDLE_ID" character varying(255),
    "EVENT_TYPE" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "USER_KEY" character varying(255)
  );
ALTER TABLE public. "AO_733371_EVENT" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_733371_EVENT_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_733371_EVENT_ID_seq" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_733371_EVENT_ID_seq" OWNED BY public."AO_733371_EVENT"."ID";
--
  -- Name: AO_733371_EVENT_PARAMETER; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_733371_EVENT_PARAMETER" (
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "VALUE" text
  );
ALTER TABLE public. "AO_733371_EVENT_PARAMETER" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_733371_EVENT_PARAMETER_ID_seq" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_PARAMETER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_733371_EVENT_PARAMETER_ID_seq" OWNED BY public."AO_733371_EVENT_PARAMETER"."ID";
--
  -- Name: AO_733371_EVENT_RECIPIENT; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_733371_EVENT_RECIPIENT" (
    "CONSUMER_NAME" character varying(255) NOT NULL,
    "CREATED" timestamp without time zone NOT NULL,
    "EVENT_ID" bigint NOT NULL,
    "ID" bigint NOT NULL,
    "SEND_DATE" timestamp without time zone,
    "STATUS" character varying(255) NOT NULL,
    "UPDATED" timestamp without time zone,
    "USER_KEY" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_733371_EVENT_RECIPIENT" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_733371_EVENT_RECIPIENT_ID_seq" OWNER TO prisma;
--
  -- Name: AO_733371_EVENT_RECIPIENT_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_733371_EVENT_RECIPIENT_ID_seq" OWNED BY public."AO_733371_EVENT_RECIPIENT"."ID";
--
  -- Name: AO_97EDAB_USERINVITATION; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_97EDAB_USERINVITATION" (
    "APPLICATION_KEYS" character varying(255),
    "EMAIL_ADDRESS" character varying(255),
    "EXPIRY" timestamp without time zone,
    "ID" integer NOT NULL,
    "REDEEMED" boolean,
    "SENDER_USERNAME" character varying(255),
    "TOKEN" character varying(255)
  );
ALTER TABLE public. "AO_97EDAB_USERINVITATION" OWNER TO prisma;
--
  -- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_97EDAB_USERINVITATION_ID_seq" OWNER TO prisma;
--
  -- Name: AO_97EDAB_USERINVITATION_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_97EDAB_USERINVITATION_ID_seq" OWNED BY public."AO_97EDAB_USERINVITATION"."ID";
--
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_A0B856_WEB_HOOK_LISTENER_AO" (
    "DESCRIPTION" text,
    "ENABLED" boolean,
    "EVENTS" text,
    "EXCLUDE_BODY" boolean,
    "FILTERS" text,
    "ID" integer NOT NULL,
    "LAST_UPDATED" timestamp without time zone NOT NULL,
    "LAST_UPDATED_USER" character varying(255),
    "NAME" text NOT NULL,
    "PARAMETERS" text,
    "REGISTRATION_METHOD" character varying(255) NOT NULL,
    "URL" text NOT NULL
  );
ALTER TABLE public. "AO_A0B856_WEB_HOOK_LISTENER_AO" OWNER TO prisma;
--
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNER TO prisma;
--
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq" OWNED BY public."AO_A0B856_WEB_HOOK_LISTENER_AO"."ID";
--
  -- Name: AO_AC3877_RL_USER_COUNTER; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_AC3877_RL_USER_COUNTER" (
    "ID" bigint NOT NULL,
    "INTERVAL_START" timestamp without time zone NOT NULL,
    "NODE_ID" character varying(255) NOT NULL,
    "REJECT_COUNT" bigint DEFAULT 0 NOT NULL,
    "USER_ID" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_AC3877_RL_USER_COUNTER" OWNER TO prisma;
--
  -- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_AC3877_RL_USER_COUNTER_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_AC3877_RL_USER_COUNTER_ID_seq" OWNER TO prisma;
--
  -- Name: AO_AC3877_RL_USER_COUNTER_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_AC3877_RL_USER_COUNTER_ID_seq" OWNED BY public."AO_AC3877_RL_USER_COUNTER"."ID";
--
  -- Name: AO_AC3877_SETTINGS_VERSION; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_AC3877_SETTINGS_VERSION" (
    "TYPE" character varying(255) NOT NULL,
    "VERSION" bigint NOT NULL
  );
ALTER TABLE public. "AO_AC3877_SETTINGS_VERSION" OWNER TO prisma;
--
  -- Name: AO_AC3877_SYSTEM_RL_SETTINGS; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_AC3877_SYSTEM_RL_SETTINGS" (
    "CAPACITY" integer DEFAULT 0 NOT NULL,
    "CLEAN_JOB_DURATION" character varying(255) NOT NULL,
    "FILL_RATE" integer DEFAULT 0 NOT NULL,
    "FLUSH_JOB_DURATION" character varying(255) NOT NULL,
    "INTERVAL_FREQUENCY" integer DEFAULT 0 NOT NULL,
    "INTERVAL_TIME_UNIT" character varying(255) NOT NULL,
    "MODE" character varying(255) NOT NULL,
    "NAME" character varying(255) NOT NULL,
    "REAPER_JOB_DURATION" character varying(255) NOT NULL,
    "RETENTION_PERIOD_DURATION" character varying(255) NOT NULL,
    "SETTINGS_RELOAD_JOB_DURATION" character varying(255) NOT NULL
  );
ALTER TABLE public. "AO_AC3877_SYSTEM_RL_SETTINGS" OWNER TO prisma;
--
  -- Name: AO_AC3877_USER_RL_SETTINGS; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_AC3877_USER_RL_SETTINGS" (
    "CAPACITY" integer DEFAULT 0 NOT NULL,
    "FILL_RATE" integer DEFAULT 0 NOT NULL,
    "INTERVAL_FREQUENCY" integer DEFAULT 0 NOT NULL,
    "INTERVAL_TIME_UNIT" character varying(255) NOT NULL,
    "USER_ID" character varying(255) NOT NULL,
    "WHITELISTED" boolean NOT NULL
  );
ALTER TABLE public. "AO_AC3877_USER_RL_SETTINGS" OWNER TO prisma;
--
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_B9A0F0_APPLIED_TEMPLATE" (
    "ID" integer NOT NULL,
    "PROJECT_ID" bigint DEFAULT 0,
    "PROJECT_TEMPLATE_MODULE_KEY" character varying(255),
    "PROJECT_TEMPLATE_WEB_ITEM_KEY" character varying(255)
  );
ALTER TABLE public. "AO_B9A0F0_APPLIED_TEMPLATE" OWNER TO prisma;
--
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNER TO prisma;
--
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq" OWNED BY public."AO_B9A0F0_APPLIED_TEMPLATE"."ID";
--
  -- Name: AO_C16815_ALERT_AO; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_C16815_ALERT_AO" (
    "CREATED_DATE" bigint DEFAULT 0,
    "DETAILS_JSON" text,
    "ID" bigint NOT NULL,
    "ISSUE_COMPONENT_ID" character varying(255),
    "ISSUE_ID" character varying(255),
    "ISSUE_SEVERITY" integer DEFAULT 0,
    "NODE_NAME" character varying(255),
    "TRIGGER_MODULE" character varying(255),
    "TRIGGER_PLUGIN_KEY" character varying(255),
    "TRIGGER_PLUGIN_KEY_VERSION" character varying(255),
    "TRIGGER_PLUGIN_VERSION" character varying(255)
  );
ALTER TABLE public. "AO_C16815_ALERT_AO" OWNER TO prisma;
--
  -- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_C16815_ALERT_AO_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_C16815_ALERT_AO_ID_seq" OWNER TO prisma;
--
  -- Name: AO_C16815_ALERT_AO_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_C16815_ALERT_AO_ID_seq" OWNED BY public."AO_C16815_ALERT_AO"."ID";
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public."AO_ED669C_SEEN_ASSERTIONS" (
    "ASSERTION_ID" character varying(255) NOT NULL,
    "EXPIRY_TIMESTAMP" bigint DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL
  );
ALTER TABLE public. "AO_ED669C_SEEN_ASSERTIONS" OWNER TO prisma;
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public. "AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNER TO prisma;
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public."AO_ED669C_SEEN_ASSERTIONS_ID_seq" OWNED BY public."AO_ED669C_SEEN_ASSERTIONS"."ID";
--
  -- Name: app_user; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.app_user (
    id numeric(18, 0) NOT NULL,
    user_key character varying(255),
    lower_user_name character varying(255)
  );
ALTER TABLE public.app_user OWNER TO prisma;
--
  -- Name: audit_changed_value; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.audit_changed_value (
    id numeric(18, 0) NOT NULL,
    log_id numeric(18, 0),
    name character varying(255),
    delta_from text,
    delta_to text
  );
ALTER TABLE public.audit_changed_value OWNER TO prisma;
--
  -- Name: audit_item; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.audit_item (
    id numeric(18, 0) NOT NULL,
    log_id numeric(18, 0),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255)
  );
ALTER TABLE public.audit_item OWNER TO prisma;
--
  -- Name: audit_log; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.audit_log (
    id numeric(18, 0) NOT NULL,
    remote_address character varying(60),
    created timestamp with time zone,
    author_key character varying(255),
    summary character varying(255),
    category character varying(255),
    object_type character varying(60),
    object_id character varying(255),
    object_name character varying(255),
    object_parent_id character varying(255),
    object_parent_name character varying(255),
    author_type numeric(9, 0),
    event_source_name character varying(255),
    description character varying(255),
    long_description text,
    search_field text
  );
ALTER TABLE public.audit_log OWNER TO prisma;
--
  -- Name: avatar; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.avatar (
    id numeric(18, 0) NOT NULL,
    filename character varying(255),
    contenttype character varying(255),
    avatartype character varying(60),
    owner character varying(255),
    systemavatar numeric(9, 0)
  );
ALTER TABLE public.avatar OWNER TO prisma;
--
  -- Name: board; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.board (id numeric(18, 0) NOT NULL, jql text);
ALTER TABLE public.board OWNER TO prisma;
--
  -- Name: boardproject; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.boardproject (
    board_id numeric(18, 0) NOT NULL,
    project_id numeric(18, 0) NOT NULL
  );
ALTER TABLE public.boardproject OWNER TO prisma;
--
  -- Name: changegroup; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.changegroup (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    author character varying(255),
    created timestamp with time zone
  );
ALTER TABLE public.changegroup OWNER TO prisma;
--
  -- Name: changeitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.changeitem (
    id numeric(18, 0) NOT NULL,
    groupid numeric(18, 0),
    fieldtype character varying(255),
    field character varying(255),
    oldvalue text,
    oldstring text,
    newvalue text,
    newstring text
  );
ALTER TABLE public.changeitem OWNER TO prisma;
--
  -- Name: clusteredjob; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clusteredjob (
    id numeric(18, 0) NOT NULL,
    job_id character varying(255),
    job_runner_key character varying(255),
    sched_type character(1),
    interval_millis numeric(18, 0),
    first_run numeric(18, 0),
    cron_expression character varying(255),
    time_zone character varying(60),
    next_run numeric(18, 0),
    version numeric(18, 0),
    parameters bytea
  );
ALTER TABLE public.clusteredjob OWNER TO prisma;
--
  -- Name: clusterlockstatus; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clusterlockstatus (
    id numeric(18, 0) NOT NULL,
    lock_name character varying(255),
    locked_by_node character varying(60),
    update_time numeric(18, 0)
  );
ALTER TABLE public.clusterlockstatus OWNER TO prisma;
--
  -- Name: clustermessage; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clustermessage (
    id numeric(18, 0) NOT NULL,
    source_node character varying(60),
    destination_node character varying(60),
    claimed_by_node character varying(60),
    message character varying(255),
    message_time timestamp with time zone
  );
ALTER TABLE public.clustermessage OWNER TO prisma;
--
  -- Name: clusternode; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clusternode (
    node_id character varying(60) NOT NULL,
    node_state character varying(60),
    "timestamp" numeric(18, 0),
    ip character varying(60),
    cache_listener_port numeric(18, 0),
    node_build_number numeric(18, 0),
    node_version character varying(60)
  );
ALTER TABLE public.clusternode OWNER TO prisma;
--
  -- Name: clusternodeheartbeat; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clusternodeheartbeat (
    node_id character varying(60) NOT NULL,
    heartbeat_time numeric(18, 0),
    database_time numeric(18, 0)
  );
ALTER TABLE public.clusternodeheartbeat OWNER TO prisma;
--
  -- Name: clusterupgradestate; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.clusterupgradestate (
    id numeric(18, 0) NOT NULL,
    database_time numeric(18, 0),
    cluster_build_number numeric(18, 0),
    cluster_version character varying(60),
    state character varying(60),
    order_number numeric(18, 0)
  );
ALTER TABLE public.clusterupgradestate OWNER TO prisma;
--
  -- Name: columnlayout; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.columnlayout (
    id numeric(18, 0) NOT NULL,
    username character varying(255),
    searchrequest numeric(18, 0)
  );
ALTER TABLE public.columnlayout OWNER TO prisma;
--
  -- Name: columnlayoutitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.columnlayoutitem (
    id numeric(18, 0) NOT NULL,
    columnlayout numeric(18, 0),
    fieldidentifier character varying(255),
    horizontalposition numeric(18, 0)
  );
ALTER TABLE public.columnlayoutitem OWNER TO prisma;
--
  -- Name: component; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.component (
    id numeric(18, 0) NOT NULL,
    project numeric(18, 0),
    cname character varying(255),
    description text,
    url character varying(255),
    lead character varying(255),
    assigneetype numeric(18, 0),
    archived character varying(10)
  );
ALTER TABLE public.component OWNER TO prisma;
--
  -- Name: configurationcontext; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.configurationcontext (
    id numeric(18, 0) NOT NULL,
    projectcategory numeric(18, 0),
    project numeric(18, 0),
    customfield character varying(255),
    fieldconfigscheme numeric(18, 0)
  );
ALTER TABLE public.configurationcontext OWNER TO prisma;
--
  -- Name: customfield; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.customfield (
    id numeric(18, 0) NOT NULL,
    cfkey character varying(255),
    customfieldtypekey character varying(255),
    customfieldsearcherkey character varying(255),
    cfname character varying(255),
    description text,
    defaultvalue character varying(255),
    fieldtype numeric(18, 0),
    project numeric(18, 0),
    issuetype character varying(255)
  );
ALTER TABLE public.customfield OWNER TO prisma;
--
  -- Name: customfieldoption; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.customfieldoption (
    id numeric(18, 0) NOT NULL,
    customfield numeric(18, 0),
    customfieldconfig numeric(18, 0),
    parentoptionid numeric(18, 0),
    sequence numeric(18, 0),
    customvalue character varying(255),
    optiontype character varying(60),
    disabled character varying(60)
  );
ALTER TABLE public.customfieldoption OWNER TO prisma;
--
  -- Name: customfieldvalue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.customfieldvalue (
    id numeric(18, 0) NOT NULL,
    issue numeric(18, 0),
    customfield numeric(18, 0),
    updated numeric(18, 0),
    parentkey character varying(255),
    stringvalue character varying(255),
    numbervalue double precision,
    textvalue text,
    datevalue timestamp with time zone,
    valuetype character varying(255)
  );
ALTER TABLE public.customfieldvalue OWNER TO prisma;
--
  -- Name: cwd_application; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_application (
    id numeric(18, 0) NOT NULL,
    application_name character varying(255),
    lower_application_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9, 0),
    description character varying(255),
    application_type character varying(255),
    credential character varying(255)
  );
ALTER TABLE public.cwd_application OWNER TO prisma;
--
  -- Name: cwd_application_address; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_application_address (
    application_id numeric(18, 0) NOT NULL,
    remote_address character varying(255) NOT NULL,
    encoded_address_binary character varying(255),
    remote_address_mask numeric(9, 0)
  );
ALTER TABLE public.cwd_application_address OWNER TO prisma;
--
  -- Name: cwd_directory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_directory (
    id numeric(18, 0) NOT NULL,
    directory_name character varying(255),
    lower_directory_name character varying(255),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    active numeric(9, 0),
    description character varying(255),
    impl_class character varying(255),
    lower_impl_class character varying(255),
    directory_type character varying(60),
    directory_position numeric(18, 0)
  );
ALTER TABLE public.cwd_directory OWNER TO prisma;
--
  -- Name: cwd_directory_attribute; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_directory_attribute (
    directory_id numeric(18, 0) NOT NULL,
    attribute_name character varying(255) NOT NULL,
    attribute_value character varying(4000)
  );
ALTER TABLE public.cwd_directory_attribute OWNER TO prisma;
--
  -- Name: cwd_directory_operation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_directory_operation (
    directory_id numeric(18, 0) NOT NULL,
    operation_type character varying(60) NOT NULL
  );
ALTER TABLE public.cwd_directory_operation OWNER TO prisma;
--
  -- Name: cwd_group; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_group (
    id numeric(18, 0) NOT NULL,
    group_name character varying(255),
    lower_group_name character varying(255),
    active numeric(9, 0),
    local numeric(9, 0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    description character varying(255),
    lower_description character varying(255),
    group_type character varying(60),
    directory_id numeric(18, 0)
  );
ALTER TABLE public.cwd_group OWNER TO prisma;
--
  -- Name: cwd_group_attributes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_group_attributes (
    id numeric(18, 0) NOT NULL,
    group_id numeric(18, 0),
    directory_id numeric(18, 0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
  );
ALTER TABLE public.cwd_group_attributes OWNER TO prisma;
--
  -- Name: cwd_membership; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_membership (
    id numeric(18, 0) NOT NULL,
    parent_id numeric(18, 0),
    child_id numeric(18, 0),
    membership_type character varying(60),
    group_type character varying(60),
    parent_name character varying(255),
    lower_parent_name character varying(255),
    child_name character varying(255),
    lower_child_name character varying(255),
    directory_id numeric(18, 0)
  );
ALTER TABLE public.cwd_membership OWNER TO prisma;
--
  -- Name: cwd_user; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_user (
    id numeric(18, 0) NOT NULL,
    directory_id numeric(18, 0),
    user_name character varying(255),
    lower_user_name character varying(255),
    active numeric(9, 0),
    created_date timestamp with time zone,
    updated_date timestamp with time zone,
    first_name character varying(255),
    lower_first_name character varying(255),
    last_name character varying(255),
    lower_last_name character varying(255),
    display_name character varying(255),
    lower_display_name character varying(255),
    email_address character varying(255),
    lower_email_address character varying(255),
    credential character varying(255),
    deleted_externally numeric(9, 0),
    external_id character varying(255)
  );
ALTER TABLE public.cwd_user OWNER TO prisma;
--
  -- Name: cwd_user_attributes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.cwd_user_attributes (
    id numeric(18, 0) NOT NULL,
    user_id numeric(18, 0),
    directory_id numeric(18, 0),
    attribute_name character varying(255),
    attribute_value character varying(255),
    lower_attribute_value character varying(255)
  );
ALTER TABLE public.cwd_user_attributes OWNER TO prisma;
--
  -- Name: deadletter; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.deadletter (
    id numeric(18, 0) NOT NULL,
    message_id character varying(255),
    last_seen numeric(18, 0),
    mail_server_id numeric(18, 0),
    folder_name character varying(255)
  );
ALTER TABLE public.deadletter OWNER TO prisma;
--
  -- Name: draftworkflowscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.draftworkflowscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text,
    workflow_scheme_id numeric(18, 0),
    last_modified_date timestamp with time zone,
    last_modified_user character varying(255)
  );
ALTER TABLE public.draftworkflowscheme OWNER TO prisma;
--
  -- Name: draftworkflowschemeentity; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.draftworkflowschemeentity (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    workflow character varying(255),
    issuetype character varying(255)
  );
ALTER TABLE public.draftworkflowschemeentity OWNER TO prisma;
--
  -- Name: entity_property; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.entity_property (
    id numeric(18, 0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18, 0),
    property_key character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    json_value text
  );
ALTER TABLE public.entity_property OWNER TO prisma;
--
  -- Name: entity_property_index_document; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.entity_property_index_document (
    id numeric(18, 0) NOT NULL,
    plugin_key character varying(255),
    module_key character varying(255),
    entity_key character varying(255),
    updated timestamp with time zone,
    document text
  );
ALTER TABLE public.entity_property_index_document OWNER TO prisma;
--
  -- Name: entity_translation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.entity_translation (
    id numeric(18, 0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18, 0),
    locale character varying(60),
    trans_name character varying(255),
    trans_desc character varying(255)
  );
ALTER TABLE public.entity_translation OWNER TO prisma;
--
  -- Name: external_entities; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.external_entities (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    entitytype character varying(255)
  );
ALTER TABLE public.external_entities OWNER TO prisma;
--
  -- Name: externalgadget; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.externalgadget (
    id numeric(18, 0) NOT NULL,
    gadget_xml text
  );
ALTER TABLE public.externalgadget OWNER TO prisma;
--
  -- Name: favouriteassociations; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.favouriteassociations (
    id numeric(18, 0) NOT NULL,
    username character varying(255),
    entitytype character varying(60),
    entityid numeric(18, 0),
    sequence numeric(18, 0)
  );
ALTER TABLE public.favouriteassociations OWNER TO prisma;
--
  -- Name: feature; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.feature (
    id numeric(18, 0) NOT NULL,
    feature_name character varying(255),
    feature_type character varying(10),
    user_key character varying(255)
  );
ALTER TABLE public.feature OWNER TO prisma;
--
  -- Name: fieldconfigscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldconfigscheme (
    id numeric(18, 0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18, 0)
  );
ALTER TABLE public.fieldconfigscheme OWNER TO prisma;
--
  -- Name: fieldconfigschemeissuetype; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldconfigschemeissuetype (
    id numeric(18, 0) NOT NULL,
    issuetype character varying(255),
    fieldconfigscheme numeric(18, 0),
    fieldconfiguration numeric(18, 0)
  );
ALTER TABLE public.fieldconfigschemeissuetype OWNER TO prisma;
--
  -- Name: fieldconfiguration; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldconfiguration (
    id numeric(18, 0) NOT NULL,
    configname character varying(255),
    description text,
    fieldid character varying(60),
    customfield numeric(18, 0)
  );
ALTER TABLE public.fieldconfiguration OWNER TO prisma;
--
  -- Name: fieldlayout; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldlayout (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description character varying(255),
    layout_type character varying(255),
    layoutscheme numeric(18, 0)
  );
ALTER TABLE public.fieldlayout OWNER TO prisma;
--
  -- Name: fieldlayoutitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldlayoutitem (
    id numeric(18, 0) NOT NULL,
    fieldlayout numeric(18, 0),
    fieldidentifier character varying(255),
    description text,
    verticalposition numeric(18, 0),
    ishidden character varying(60),
    isrequired character varying(60),
    renderertype character varying(255)
  );
ALTER TABLE public.fieldlayoutitem OWNER TO prisma;
--
  -- Name: fieldlayoutscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldlayoutscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text
  );
ALTER TABLE public.fieldlayoutscheme OWNER TO prisma;
--
  -- Name: fieldlayoutschemeassociation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldlayoutschemeassociation (
    id numeric(18, 0) NOT NULL,
    issuetype character varying(255),
    project numeric(18, 0),
    fieldlayoutscheme numeric(18, 0)
  );
ALTER TABLE public.fieldlayoutschemeassociation OWNER TO prisma;
--
  -- Name: fieldlayoutschemeentity; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldlayoutschemeentity (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    issuetype character varying(255),
    fieldlayout numeric(18, 0)
  );
ALTER TABLE public.fieldlayoutschemeentity OWNER TO prisma;
--
  -- Name: fieldscreen; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldscreen (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description character varying(255)
  );
ALTER TABLE public.fieldscreen OWNER TO prisma;
--
  -- Name: fieldscreenlayoutitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldscreenlayoutitem (
    id numeric(18, 0) NOT NULL,
    fieldidentifier character varying(255),
    sequence numeric(18, 0),
    fieldscreentab numeric(18, 0)
  );
ALTER TABLE public.fieldscreenlayoutitem OWNER TO prisma;
--
  -- Name: fieldscreenscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldscreenscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description character varying(255)
  );
ALTER TABLE public.fieldscreenscheme OWNER TO prisma;
--
  -- Name: fieldscreenschemeitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldscreenschemeitem (
    id numeric(18, 0) NOT NULL,
    operation numeric(18, 0),
    fieldscreen numeric(18, 0),
    fieldscreenscheme numeric(18, 0)
  );
ALTER TABLE public.fieldscreenschemeitem OWNER TO prisma;
--
  -- Name: fieldscreentab; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fieldscreentab (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description character varying(255),
    sequence numeric(18, 0),
    fieldscreen numeric(18, 0)
  );
ALTER TABLE public.fieldscreentab OWNER TO prisma;
--
  -- Name: fileattachment; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.fileattachment (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    mimetype character varying(255),
    filename character varying(255),
    created timestamp with time zone,
    filesize numeric(18, 0),
    author character varying(255),
    zip numeric(9, 0),
    thumbnailable numeric(9, 0)
  );
ALTER TABLE public.fileattachment OWNER TO prisma;
--
  -- Name: filtersubscription; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.filtersubscription (
    id numeric(18, 0) NOT NULL,
    filter_i_d numeric(18, 0),
    username character varying(60),
    groupname character varying(60),
    last_run timestamp with time zone,
    email_on_empty character varying(10)
  );
ALTER TABLE public.filtersubscription OWNER TO prisma;
--
  -- Name: gadgetuserpreference; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gadgetuserpreference (
    id numeric(18, 0) NOT NULL,
    portletconfiguration numeric(18, 0),
    userprefkey character varying(255),
    userprefvalue text
  );
ALTER TABLE public.gadgetuserpreference OWNER TO prisma;
--
  -- Name: genericconfiguration; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.genericconfiguration (
    id numeric(18, 0) NOT NULL,
    datatype character varying(60),
    datakey character varying(60),
    xmlvalue text
  );
ALTER TABLE public.genericconfiguration OWNER TO prisma;
--
  -- Name: globalpermissionentry; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.globalpermissionentry (
    id numeric(18, 0) NOT NULL,
    permission character varying(255),
    group_id character varying(255)
  );
ALTER TABLE public.globalpermissionentry OWNER TO prisma;
--
  -- Name: groupbase; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.groupbase (
    id numeric(18, 0) NOT NULL,
    groupname character varying(255)
  );
ALTER TABLE public.groupbase OWNER TO prisma;
--
  -- Name: issue_field_option; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issue_field_option (
    id numeric(18, 0) NOT NULL,
    option_id numeric(18, 0),
    field_key character varying(255),
    option_value character varying(255),
    properties text
  );
ALTER TABLE public.issue_field_option OWNER TO prisma;
--
  -- Name: issue_field_option_scope; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issue_field_option_scope (
    id numeric(18, 0) NOT NULL,
    option_id numeric(18, 0),
    entity_id character varying(255),
    scope_type character varying(255)
  );
ALTER TABLE public.issue_field_option_scope OWNER TO prisma;
--
  -- Name: issuelink; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuelink (
    id numeric(18, 0) NOT NULL,
    linktype numeric(18, 0),
    source numeric(18, 0),
    destination numeric(18, 0),
    sequence numeric(18, 0)
  );
ALTER TABLE public.issuelink OWNER TO prisma;
--
  -- Name: issuelinktype; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuelinktype (
    id numeric(18, 0) NOT NULL,
    linkname character varying(255),
    inward character varying(255),
    outward character varying(255),
    pstyle character varying(60)
  );
ALTER TABLE public.issuelinktype OWNER TO prisma;
--
  -- Name: issuesecurityscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuesecurityscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text,
    defaultlevel numeric(18, 0)
  );
ALTER TABLE public.issuesecurityscheme OWNER TO prisma;
--
  -- Name: issuestatus; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuestatus (
    id character varying(60) NOT NULL,
    sequence numeric(18, 0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    statuscategory numeric(18, 0)
  );
ALTER TABLE public.issuestatus OWNER TO prisma;
--
  -- Name: issuetype; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuetype (
    id character varying(60) NOT NULL,
    sequence numeric(18, 0),
    pname character varying(60),
    pstyle character varying(60),
    description text,
    iconurl character varying(255),
    avatar numeric(18, 0)
  );
ALTER TABLE public.issuetype OWNER TO prisma;
--
  -- Name: issuetypescreenscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuetypescreenscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description character varying(255)
  );
ALTER TABLE public.issuetypescreenscheme OWNER TO prisma;
--
  -- Name: issuetypescreenschemeentity; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issuetypescreenschemeentity (
    id numeric(18, 0) NOT NULL,
    issuetype character varying(255),
    scheme numeric(18, 0),
    fieldscreenscheme numeric(18, 0)
  );
ALTER TABLE public.issuetypescreenschemeentity OWNER TO prisma;
--
  -- Name: jiraaction; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraaction (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    author character varying(255),
    actiontype character varying(255),
    actionlevel character varying(255),
    rolelevel numeric(18, 0),
    actionbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    actionnum numeric(18, 0)
  );
ALTER TABLE public.jiraaction OWNER TO prisma;
--
  -- Name: jiradraftworkflows; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiradraftworkflows (
    id numeric(18, 0) NOT NULL,
    parentname character varying(255),
    descriptor text
  );
ALTER TABLE public.jiradraftworkflows OWNER TO prisma;
--
  -- Name: jiraeventtype; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraeventtype (
    id numeric(18, 0) NOT NULL,
    template_id numeric(18, 0),
    name character varying(255),
    description text,
    event_type character varying(60)
  );
ALTER TABLE public.jiraeventtype OWNER TO prisma;
--
  -- Name: jiraissue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraissue (
    id numeric(18, 0) NOT NULL,
    pkey character varying(255),
    issuenum numeric(18, 0),
    project numeric(18, 0),
    reporter character varying(255),
    assignee character varying(255),
    creator character varying(255),
    issuetype character varying(255),
    summary character varying(255),
    description text,
    environment text,
    priority character varying(255),
    resolution character varying(255),
    issuestatus character varying(255),
    created timestamp with time zone,
    updated timestamp with time zone,
    duedate timestamp with time zone,
    resolutiondate timestamp with time zone,
    votes numeric(18, 0),
    watches numeric(18, 0),
    timeoriginalestimate numeric(18, 0),
    timeestimate numeric(18, 0),
    timespent numeric(18, 0),
    workflow_id numeric(18, 0),
    security numeric(18, 0),
    fixfor numeric(18, 0),
    component numeric(18, 0),
    archived character(1),
    archivedby character varying(255),
    archiveddate timestamp with time zone
  );
ALTER TABLE public.jiraissue OWNER TO prisma;
--
  -- Name: jiraperms; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraperms (
    id numeric(18, 0) NOT NULL,
    permtype numeric(18, 0),
    projectid numeric(18, 0),
    groupname character varying(255)
  );
ALTER TABLE public.jiraperms OWNER TO prisma;
--
  -- Name: jiraworkflows; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraworkflows (
    id numeric(18, 0) NOT NULL,
    workflowname character varying(255),
    creatorname character varying(255),
    descriptor text,
    islocked character varying(60)
  );
ALTER TABLE public.jiraworkflows OWNER TO prisma;
--
  -- Name: jiraworkflowstatuses; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jiraworkflowstatuses (
    id numeric(18, 0) NOT NULL,
    status character varying(255),
    parentname character varying(255)
  );
ALTER TABLE public.jiraworkflowstatuses OWNER TO prisma;
--
  -- Name: jquartz_blob_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_blob_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
  );
ALTER TABLE public.jquartz_blob_triggers OWNER TO prisma;
--
  -- Name: jquartz_calendars; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_calendars (
    sched_name character varying(120),
    calendar_name character varying(200) NOT NULL,
    calendar bytea
  );
ALTER TABLE public.jquartz_calendars OWNER TO prisma;
--
  -- Name: jquartz_cron_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_cron_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120),
    time_zone_id character varying(80)
  );
ALTER TABLE public.jquartz_cron_triggers OWNER TO prisma;
--
  -- Name: jquartz_fired_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_fired_triggers (
    sched_name character varying(120),
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200),
    trigger_group character varying(200),
    is_volatile boolean,
    instance_name character varying(200),
    fired_time numeric(18, 0),
    sched_time numeric(18, 0),
    priority numeric(9, 0),
    state character varying(16),
    job_name character varying(200),
    job_group character varying(200),
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean
  );
ALTER TABLE public.jquartz_fired_triggers OWNER TO prisma;
--
  -- Name: jquartz_job_details; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_job_details (
    sched_name character varying(120),
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250),
    is_durable boolean,
    is_volatile boolean,
    is_stateful boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    requests_recovery boolean,
    job_data bytea
  );
ALTER TABLE public.jquartz_job_details OWNER TO prisma;
--
  -- Name: jquartz_job_listeners; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_job_listeners (
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    job_listener character varying(200) NOT NULL
  );
ALTER TABLE public.jquartz_job_listeners OWNER TO prisma;
--
  -- Name: jquartz_locks; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_locks (
    sched_name character varying(120),
    lock_name character varying(40) NOT NULL
  );
ALTER TABLE public.jquartz_locks OWNER TO prisma;
--
  -- Name: jquartz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_paused_trigger_grps (
    sched_name character varying(120),
    trigger_group character varying(200) NOT NULL
  );
ALTER TABLE public.jquartz_paused_trigger_grps OWNER TO prisma;
--
  -- Name: jquartz_scheduler_state; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_scheduler_state (
    sched_name character varying(120),
    instance_name character varying(200) NOT NULL,
    last_checkin_time numeric(18, 0),
    checkin_interval numeric(18, 0)
  );
ALTER TABLE public.jquartz_scheduler_state OWNER TO prisma;
--
  -- Name: jquartz_simple_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_simple_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count numeric(18, 0),
    repeat_interval numeric(18, 0),
    times_triggered numeric(18, 0)
  );
ALTER TABLE public.jquartz_simple_triggers OWNER TO prisma;
--
  -- Name: jquartz_simprop_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_simprop_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 numeric(9, 0),
    int_prop_2 numeric(9, 0),
    long_prop_1 numeric(18, 0),
    long_prop_2 numeric(18, 0),
    dec_prop_1 numeric(13, 4),
    dec_prop_2 numeric(13, 4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
  );
ALTER TABLE public.jquartz_simprop_triggers OWNER TO prisma;
--
  -- Name: jquartz_trigger_listeners; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_trigger_listeners (
    trigger_name character varying(200),
    trigger_group character varying(200) NOT NULL,
    trigger_listener character varying(200) NOT NULL
  );
ALTER TABLE public.jquartz_trigger_listeners OWNER TO prisma;
--
  -- Name: jquartz_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jquartz_triggers (
    sched_name character varying(120),
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_volatile boolean,
    description character varying(250),
    next_fire_time numeric(18, 0),
    prev_fire_time numeric(18, 0),
    priority numeric(9, 0),
    trigger_state character varying(16),
    trigger_type character varying(8),
    start_time numeric(18, 0),
    end_time numeric(18, 0),
    calendar_name character varying(200),
    misfire_instr numeric(4, 0),
    job_data bytea
  );
ALTER TABLE public.jquartz_triggers OWNER TO prisma;
--
  -- Name: label; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.label (
    id numeric(18, 0) NOT NULL,
    fieldid numeric(18, 0),
    issue numeric(18, 0),
    label character varying(255)
  );
ALTER TABLE public.label OWNER TO prisma;
--
  -- Name: licenserolesdefault; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.licenserolesdefault (
    id numeric(18, 0) NOT NULL,
    license_role_name character varying(255)
  );
ALTER TABLE public.licenserolesdefault OWNER TO prisma;
--
  -- Name: licenserolesgroup; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.licenserolesgroup (
    id numeric(18, 0) NOT NULL,
    license_role_name character varying(255),
    group_id character varying(255),
    primary_group character(1)
  );
ALTER TABLE public.licenserolesgroup OWNER TO prisma;
--
  -- Name: listenerconfig; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.listenerconfig (
    id numeric(18, 0) NOT NULL,
    clazz character varying(255),
    listenername character varying(255)
  );
ALTER TABLE public.listenerconfig OWNER TO prisma;
--
  -- Name: mailserver; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.mailserver (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text,
    mailfrom character varying(255),
    prefix character varying(60),
    smtp_port character varying(60),
    protocol character varying(60),
    server_type character varying(60),
    servername character varying(255),
    jndilocation character varying(255),
    mailusername character varying(255),
    mailpassword character varying(255),
    istlsrequired character varying(60),
    timeout numeric(18, 0),
    socks_port character varying(60),
    socks_host character varying(60)
  );
ALTER TABLE public.mailserver OWNER TO prisma;
--
  -- Name: managedconfigurationitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.managedconfigurationitem (
    id numeric(18, 0) NOT NULL,
    item_id character varying(255),
    item_type character varying(255),
    managed character varying(10),
    access_level character varying(255),
    source character varying(255),
    description_key character varying(255)
  );
ALTER TABLE public.managedconfigurationitem OWNER TO prisma;
--
  -- Name: membershipbase; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.membershipbase (
    id numeric(18, 0) NOT NULL,
    user_name character varying(255),
    group_name character varying(255)
  );
ALTER TABLE public.membershipbase OWNER TO prisma;
--
  -- Name: moved_issue_key; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.moved_issue_key (
    id numeric(18, 0) NOT NULL,
    old_issue_key character varying(255),
    issue_id numeric(18, 0)
  );
ALTER TABLE public.moved_issue_key OWNER TO prisma;
--
  -- Name: nodeassociation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.nodeassociation (
    source_node_id numeric(18, 0) NOT NULL,
    source_node_entity character varying(60) NOT NULL,
    sink_node_id numeric(18, 0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9, 0)
  );
ALTER TABLE public.nodeassociation OWNER TO prisma;
--
  -- Name: nodeindexcounter; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.nodeindexcounter (
    id numeric(18, 0) NOT NULL,
    node_id character varying(60),
    sending_node_id character varying(60),
    index_operation_id numeric(18, 0)
  );
ALTER TABLE public.nodeindexcounter OWNER TO prisma;
--
  -- Name: notification; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.notification (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    event character varying(60),
    event_type_id numeric(18, 0),
    template_id numeric(18, 0),
    notif_type character varying(60),
    notif_parameter character varying(60)
  );
ALTER TABLE public.notification OWNER TO prisma;
--
  -- Name: notificationinstance; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.notificationinstance (
    id numeric(18, 0) NOT NULL,
    notificationtype character varying(60),
    source numeric(18, 0),
    emailaddress character varying(255),
    messageid character varying(255)
  );
ALTER TABLE public.notificationinstance OWNER TO prisma;
--
  -- Name: notificationscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.notificationscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text
  );
ALTER TABLE public.notificationscheme OWNER TO prisma;
--
  -- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.oauthconsumer (
    id numeric(18, 0) NOT NULL,
    created timestamp with time zone,
    consumername character varying(255),
    consumer_key character varying(255),
    consumerservice character varying(255),
    public_key text,
    private_key text,
    description text,
    callback text,
    signature_method character varying(60),
    shared_secret text
  );
ALTER TABLE public.oauthconsumer OWNER TO prisma;
--
  -- Name: oauthconsumertoken; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.oauthconsumertoken (
    id numeric(18, 0) NOT NULL,
    created timestamp with time zone,
    token_key character varying(255),
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255)
  );
ALTER TABLE public.oauthconsumertoken OWNER TO prisma;
--
  -- Name: oauthspconsumer; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.oauthspconsumer (
    id numeric(18, 0) NOT NULL,
    created timestamp with time zone,
    consumer_key character varying(255),
    consumername character varying(255),
    public_key text,
    description text,
    callback text,
    two_l_o_allowed character varying(60),
    executing_two_l_o_user character varying(255),
    two_l_o_impersonation_allowed character varying(60),
    three_l_o_allowed character varying(60)
  );
ALTER TABLE public.oauthspconsumer OWNER TO prisma;
--
  -- Name: oauthsptoken; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.oauthsptoken (
    id numeric(18, 0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    token_secret character varying(255),
    token_type character varying(60),
    consumer_key character varying(255),
    username character varying(255),
    ttl numeric(18, 0),
    spauth character varying(60),
    callback text,
    spverifier character varying(255),
    spversion character varying(60),
    session_handle character varying(255),
    session_creation_time timestamp with time zone,
    session_last_renewal_time timestamp with time zone,
    session_time_to_live timestamp with time zone
  );
ALTER TABLE public.oauthsptoken OWNER TO prisma;
--
  -- Name: optionconfiguration; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.optionconfiguration (
    id numeric(18, 0) NOT NULL,
    fieldid character varying(60),
    optionid character varying(60),
    fieldconfig numeric(18, 0),
    sequence numeric(18, 0)
  );
ALTER TABLE public.optionconfiguration OWNER TO prisma;
--
  -- Name: os_currentstep; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.os_currentstep (
    id numeric(18, 0) NOT NULL,
    entry_id numeric(18, 0),
    step_id numeric(9, 0),
    action_id numeric(9, 0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
  );
ALTER TABLE public.os_currentstep OWNER TO prisma;
--
  -- Name: os_currentstep_prev; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.os_currentstep_prev (
    id numeric(18, 0) NOT NULL,
    previous_id numeric(18, 0) NOT NULL
  );
ALTER TABLE public.os_currentstep_prev OWNER TO prisma;
--
  -- Name: os_historystep; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.os_historystep (
    id numeric(18, 0) NOT NULL,
    entry_id numeric(18, 0),
    step_id numeric(9, 0),
    action_id numeric(9, 0),
    owner character varying(255),
    start_date timestamp with time zone,
    due_date timestamp with time zone,
    finish_date timestamp with time zone,
    status character varying(60),
    caller character varying(255)
  );
ALTER TABLE public.os_historystep OWNER TO prisma;
--
  -- Name: os_historystep_prev; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.os_historystep_prev (
    id numeric(18, 0) NOT NULL,
    previous_id numeric(18, 0) NOT NULL
  );
ALTER TABLE public.os_historystep_prev OWNER TO prisma;
--
  -- Name: os_wfentry; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.os_wfentry (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    initialized numeric(9, 0),
    state numeric(9, 0)
  );
ALTER TABLE public.os_wfentry OWNER TO prisma;
--
  -- Name: permissionscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.permissionscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text
  );
ALTER TABLE public.permissionscheme OWNER TO prisma;
--
  -- Name: permissionschemeattribute; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.permissionschemeattribute (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    attribute_key character varying(255),
    attribute_value text
  );
ALTER TABLE public.permissionschemeattribute OWNER TO prisma;
--
  -- Name: pluginstate; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.pluginstate (
    pluginkey character varying(255) NOT NULL,
    pluginenabled character varying(60)
  );
ALTER TABLE public.pluginstate OWNER TO prisma;
--
  -- Name: pluginversion; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.pluginversion (
    id numeric(18, 0) NOT NULL,
    pluginname character varying(255),
    pluginkey character varying(255),
    pluginversion character varying(255),
    created timestamp with time zone
  );
ALTER TABLE public.pluginversion OWNER TO prisma;
--
  -- Name: portalpage; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portalpage (
    id numeric(18, 0) NOT NULL,
    username character varying(255),
    pagename character varying(255),
    description character varying(255),
    sequence numeric(18, 0),
    fav_count numeric(18, 0),
    layout character varying(255),
    ppversion numeric(18, 0)
  );
ALTER TABLE public.portalpage OWNER TO prisma;
--
  -- Name: portletconfiguration; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portletconfiguration (
    id numeric(18, 0) NOT NULL,
    portalpage numeric(18, 0),
    portlet_id character varying(255),
    column_number numeric(9, 0),
    positionseq numeric(9, 0),
    gadget_xml text,
    color character varying(255),
    dashboard_module_complete_key text
  );
ALTER TABLE public.portletconfiguration OWNER TO prisma;
--
  -- Name: priority; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.priority (
    id character varying(60) NOT NULL,
    sequence numeric(18, 0),
    pname character varying(60),
    description text,
    iconurl character varying(255),
    status_color character varying(60)
  );
ALTER TABLE public.priority OWNER TO prisma;
--
  -- Name: productlicense; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.productlicense (
    id numeric(18, 0) NOT NULL,
    license text
  );
ALTER TABLE public.productlicense OWNER TO prisma;
--
  -- Name: project; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project (
    id numeric(18, 0) NOT NULL,
    pname character varying(255),
    url character varying(255),
    lead character varying(255),
    description text,
    pkey character varying(255),
    pcounter numeric(18, 0),
    assigneetype numeric(18, 0),
    avatar numeric(18, 0),
    originalkey character varying(255),
    projecttype character varying(255)
  );
ALTER TABLE public.project OWNER TO prisma;
--
  -- Name: project_key; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_key (
    id numeric(18, 0) NOT NULL,
    project_id numeric(18, 0),
    project_key character varying(255)
  );
ALTER TABLE public.project_key OWNER TO prisma;
--
  -- Name: projectcategory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projectcategory (
    id numeric(18, 0) NOT NULL,
    cname character varying(255),
    description text
  );
ALTER TABLE public.projectcategory OWNER TO prisma;
--
  -- Name: projectchangedtime; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projectchangedtime (
    project_id numeric(18, 0) NOT NULL,
    issue_changed_time timestamp with time zone
  );
ALTER TABLE public.projectchangedtime OWNER TO prisma;
--
  -- Name: projectrole; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projectrole (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text
  );
ALTER TABLE public.projectrole OWNER TO prisma;
--
  -- Name: projectroleactor; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projectroleactor (
    id numeric(18, 0) NOT NULL,
    pid numeric(18, 0),
    projectroleid numeric(18, 0),
    roletype character varying(255),
    roletypeparameter character varying(255)
  );
ALTER TABLE public.projectroleactor OWNER TO prisma;
--
  -- Name: projectversion; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projectversion (
    id numeric(18, 0) NOT NULL,
    project numeric(18, 0),
    vname character varying(255),
    description text,
    sequence numeric(18, 0),
    released character varying(10),
    archived character varying(10),
    url character varying(255),
    startdate timestamp with time zone,
    releasedate timestamp with time zone
  );
ALTER TABLE public.projectversion OWNER TO prisma;
--
  -- Name: propertydata; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertydata (
    id numeric(18, 0) NOT NULL,
    propertyvalue oid
  );
ALTER TABLE public.propertydata OWNER TO prisma;
--
  -- Name: propertydate; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertydate (
    id numeric(18, 0) NOT NULL,
    propertyvalue timestamp with time zone
  );
ALTER TABLE public.propertydate OWNER TO prisma;
--
  -- Name: propertydecimal; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertydecimal (
    id numeric(18, 0) NOT NULL,
    propertyvalue double precision
  );
ALTER TABLE public.propertydecimal OWNER TO prisma;
--
  -- Name: propertyentry; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertyentry (
    id numeric(18, 0) NOT NULL,
    entity_name character varying(255),
    entity_id numeric(18, 0),
    property_key character varying(255),
    propertytype numeric(9, 0)
  );
ALTER TABLE public.propertyentry OWNER TO prisma;
--
  -- Name: propertynumber; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertynumber (
    id numeric(18, 0) NOT NULL,
    propertyvalue numeric(18, 0)
  );
ALTER TABLE public.propertynumber OWNER TO prisma;
--
  -- Name: propertystring; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertystring (
    id numeric(18, 0) NOT NULL,
    propertyvalue text
  );
ALTER TABLE public.propertystring OWNER TO prisma;
--
  -- Name: propertytext; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.propertytext (
    id numeric(18, 0) NOT NULL,
    propertyvalue text
  );
ALTER TABLE public.propertytext OWNER TO prisma;
--
  -- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_calendars (
    id numeric(18, 0),
    calendar_name character varying(255) NOT NULL,
    calendar text
  );
ALTER TABLE public.qrtz_calendars OWNER TO prisma;
--
  -- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_cron_triggers (
    id numeric(18, 0) NOT NULL,
    trigger_id numeric(18, 0),
    cronexperssion character varying(255)
  );
ALTER TABLE public.qrtz_cron_triggers OWNER TO prisma;
--
  -- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_fired_triggers (
    id numeric(18, 0),
    entry_id character varying(255) NOT NULL,
    trigger_id numeric(18, 0),
    trigger_listener character varying(255),
    fired_time timestamp with time zone,
    trigger_state character varying(255)
  );
ALTER TABLE public.qrtz_fired_triggers OWNER TO prisma;
--
  -- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_job_details (
    id numeric(18, 0) NOT NULL,
    job_name character varying(255),
    job_group character varying(255),
    class_name character varying(255),
    is_durable character varying(60),
    is_stateful character varying(60),
    requests_recovery character varying(60),
    job_data character varying(255)
  );
ALTER TABLE public.qrtz_job_details OWNER TO prisma;
--
  -- Name: qrtz_job_listeners; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_job_listeners (
    id numeric(18, 0) NOT NULL,
    job numeric(18, 0),
    job_listener character varying(255)
  );
ALTER TABLE public.qrtz_job_listeners OWNER TO prisma;
--
  -- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_simple_triggers (
    id numeric(18, 0) NOT NULL,
    trigger_id numeric(18, 0),
    repeat_count numeric(9, 0),
    repeat_interval numeric(18, 0),
    times_triggered numeric(9, 0)
  );
ALTER TABLE public.qrtz_simple_triggers OWNER TO prisma;
--
  -- Name: qrtz_trigger_listeners; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_trigger_listeners (
    id numeric(18, 0) NOT NULL,
    trigger_id numeric(18, 0),
    trigger_listener character varying(255)
  );
ALTER TABLE public.qrtz_trigger_listeners OWNER TO prisma;
--
  -- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_triggers (
    id numeric(18, 0) NOT NULL,
    trigger_name character varying(255),
    trigger_group character varying(255),
    job numeric(18, 0),
    next_fire timestamp with time zone,
    trigger_state character varying(255),
    trigger_type character varying(60),
    start_time timestamp with time zone,
    end_time timestamp with time zone,
    calendar_name character varying(255),
    misfire_instr numeric(9, 0)
  );
ALTER TABLE public.qrtz_triggers OWNER TO prisma;
--
  -- Name: reindex_component; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.reindex_component (
    id numeric(18, 0) NOT NULL,
    request_id numeric(18, 0),
    affected_index character varying(60),
    entity_type character varying(60)
  );
ALTER TABLE public.reindex_component OWNER TO prisma;
--
  -- Name: reindex_request; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.reindex_request (
    id numeric(18, 0) NOT NULL,
    type character varying(60),
    request_time timestamp with time zone,
    start_time timestamp with time zone,
    completion_time timestamp with time zone,
    status character varying(60),
    execution_node_id character varying(60),
    query text
  );
ALTER TABLE public.reindex_request OWNER TO prisma;
--
  -- Name: remembermetoken; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.remembermetoken (
    id numeric(18, 0) NOT NULL,
    created timestamp with time zone,
    token character varying(255),
    username character varying(255)
  );
ALTER TABLE public.remembermetoken OWNER TO prisma;
--
  -- Name: remotelink; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.remotelink (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    globalid character varying(255),
    title character varying(255),
    summary text,
    url text,
    iconurl text,
    icontitle text,
    relationship character varying(255),
    resolved character(1),
    statusname character varying(255),
    statusdescription text,
    statusiconurl text,
    statusicontitle text,
    statusiconlink text,
    statuscategorykey character varying(255),
    statuscategorycolorname character varying(255),
    applicationtype character varying(255),
    applicationname character varying(255)
  );
ALTER TABLE public.remotelink OWNER TO prisma;
--
  -- Name: replicatedindexoperation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.replicatedindexoperation (
    id numeric(18, 0) NOT NULL,
    index_time timestamp with time zone,
    node_id character varying(60),
    affected_index character varying(60),
    entity_type character varying(60),
    affected_ids text,
    operation character varying(60),
    filename character varying(255)
  );
ALTER TABLE public.replicatedindexoperation OWNER TO prisma;
--
  -- Name: resolution; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.resolution (
    id character varying(60) NOT NULL,
    sequence numeric(18, 0),
    pname character varying(60),
    description text,
    iconurl character varying(255)
  );
ALTER TABLE public.resolution OWNER TO prisma;
--
  -- Name: rundetails; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rundetails (
    id numeric(18, 0) NOT NULL,
    job_id character varying(255),
    start_time timestamp with time zone,
    run_duration numeric(18, 0),
    run_outcome character(1),
    info_message character varying(255)
  );
ALTER TABLE public.rundetails OWNER TO prisma;
--
  -- Name: schemeissuesecurities; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.schemeissuesecurities (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    security numeric(18, 0),
    sec_type character varying(255),
    sec_parameter character varying(255)
  );
ALTER TABLE public.schemeissuesecurities OWNER TO prisma;
--
  -- Name: schemeissuesecuritylevels; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.schemeissuesecuritylevels (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text,
    scheme numeric(18, 0)
  );
ALTER TABLE public.schemeissuesecuritylevels OWNER TO prisma;
--
  -- Name: schemepermissions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.schemepermissions (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    permission numeric(18, 0),
    perm_type character varying(255),
    perm_parameter character varying(255),
    permission_key character varying(255)
  );
ALTER TABLE public.schemepermissions OWNER TO prisma;
--
  -- Name: searchrequest; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.searchrequest (
    id numeric(18, 0) NOT NULL,
    filtername character varying(255),
    authorname character varying(255),
    description text,
    username character varying(255),
    groupname character varying(255),
    projectid numeric(18, 0),
    reqcontent text,
    fav_count numeric(18, 0),
    filtername_lower character varying(255)
  );
ALTER TABLE public.searchrequest OWNER TO prisma;
--
  -- Name: sequence_value_item; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.sequence_value_item (
    seq_name character varying(60) NOT NULL,
    seq_id numeric(18, 0)
  );
ALTER TABLE public.sequence_value_item OWNER TO prisma;
--
  -- Name: serviceconfig; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.serviceconfig (
    id numeric(18, 0) NOT NULL,
    delaytime numeric(18, 0),
    clazz character varying(255),
    servicename character varying(255),
    cron_expression character varying(255)
  );
ALTER TABLE public.serviceconfig OWNER TO prisma;
--
  -- Name: sharepermissions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.sharepermissions (
    id numeric(18, 0) NOT NULL,
    entityid numeric(18, 0),
    entitytype character varying(60),
    sharetype character varying(10),
    param1 character varying(255),
    param2 character varying(60),
    rights numeric(9, 0)
  );
ALTER TABLE public.sharepermissions OWNER TO prisma;
--
  -- Name: tempattachmentsmonitor; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.tempattachmentsmonitor (
    temporary_attachment_id character varying(255) NOT NULL,
    form_token character varying(255),
    file_name character varying(255),
    content_type character varying(255),
    file_size numeric(18, 0),
    created_time numeric(18, 0)
  );
ALTER TABLE public.tempattachmentsmonitor OWNER TO prisma;
--
  -- Name: trackback_ping; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.trackback_ping (
    id numeric(18, 0) NOT NULL,
    issue numeric(18, 0),
    url character varying(255),
    title character varying(255),
    blogname character varying(255),
    excerpt character varying(255),
    created timestamp with time zone
  );
ALTER TABLE public.trackback_ping OWNER TO prisma;
--
  -- Name: trustedapp; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.trustedapp (
    id numeric(18, 0) NOT NULL,
    application_id character varying(255),
    name character varying(255),
    public_key text,
    ip_match text,
    url_match text,
    timeout numeric(18, 0),
    created timestamp with time zone,
    created_by character varying(255),
    updated timestamp with time zone,
    updated_by character varying(255)
  );
ALTER TABLE public.trustedapp OWNER TO prisma;
--
  -- Name: upgradehistory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.upgradehistory (
    id numeric(18, 0),
    upgradeclass character varying(255) NOT NULL,
    targetbuild character varying(255),
    status character varying(255),
    downgradetaskrequired character(1)
  );
ALTER TABLE public.upgradehistory OWNER TO prisma;
--
  -- Name: upgradetaskhistory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.upgradetaskhistory (
    id numeric(18, 0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9, 0),
    status character varying(60),
    upgrade_type character varying(10)
  );
ALTER TABLE public.upgradetaskhistory OWNER TO prisma;
--
  -- Name: upgradetaskhistoryauditlog; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.upgradetaskhistoryauditlog (
    id numeric(18, 0) NOT NULL,
    upgrade_task_factory_key character varying(255),
    build_number numeric(9, 0),
    status character varying(60),
    upgrade_type character varying(10),
    timeperformed timestamp with time zone,
    action character varying(10)
  );
ALTER TABLE public.upgradetaskhistoryauditlog OWNER TO prisma;
--
  -- Name: upgradeversionhistory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.upgradeversionhistory (
    id numeric(18, 0),
    timeperformed timestamp with time zone,
    targetbuild character varying(255) NOT NULL,
    targetversion character varying(255)
  );
ALTER TABLE public.upgradeversionhistory OWNER TO prisma;
--
  -- Name: userassociation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userassociation (
    source_name character varying(60) NOT NULL,
    sink_node_id numeric(18, 0) NOT NULL,
    sink_node_entity character varying(60) NOT NULL,
    association_type character varying(60) NOT NULL,
    sequence numeric(9, 0),
    created timestamp with time zone
  );
ALTER TABLE public.userassociation OWNER TO prisma;
--
  -- Name: userbase; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userbase (
    id numeric(18, 0) NOT NULL,
    username character varying(255),
    password_hash character varying(255)
  );
ALTER TABLE public.userbase OWNER TO prisma;
--
  -- Name: userhistoryitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userhistoryitem (
    id numeric(18, 0) NOT NULL,
    entitytype character varying(10),
    entityid character varying(60),
    username character varying(255),
    lastviewed numeric(18, 0),
    data text
  );
ALTER TABLE public.userhistoryitem OWNER TO prisma;
--
  -- Name: userpickerfilter; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userpickerfilter (
    id numeric(18, 0) NOT NULL,
    customfield numeric(18, 0),
    customfieldconfig numeric(18, 0),
    enabled character varying(60)
  );
ALTER TABLE public.userpickerfilter OWNER TO prisma;
--
  -- Name: userpickerfiltergroup; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userpickerfiltergroup (
    id numeric(18, 0) NOT NULL,
    userpickerfilter numeric(18, 0),
    groupname character varying(255)
  );
ALTER TABLE public.userpickerfiltergroup OWNER TO prisma;
--
  -- Name: userpickerfilterrole; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.userpickerfilterrole (
    id numeric(18, 0) NOT NULL,
    userpickerfilter numeric(18, 0),
    projectroleid numeric(18, 0)
  );
ALTER TABLE public.userpickerfilterrole OWNER TO prisma;
--
  -- Name: versioncontrol; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.versioncontrol (
    id numeric(18, 0) NOT NULL,
    vcsname character varying(255),
    vcsdescription character varying(255),
    vcstype character varying(255)
  );
ALTER TABLE public.versioncontrol OWNER TO prisma;
--
  -- Name: votehistory; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.votehistory (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    votes numeric(18, 0),
    "timestamp" timestamp with time zone
  );
ALTER TABLE public.votehistory OWNER TO prisma;
--
  -- Name: workflowscheme; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.workflowscheme (
    id numeric(18, 0) NOT NULL,
    name character varying(255),
    description text
  );
ALTER TABLE public.workflowscheme OWNER TO prisma;
--
  -- Name: workflowschemeentity; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.workflowschemeentity (
    id numeric(18, 0) NOT NULL,
    scheme numeric(18, 0),
    workflow character varying(255),
    issuetype character varying(255)
  );
ALTER TABLE public.workflowschemeentity OWNER TO prisma;
--
  -- Name: worklog; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.worklog (
    id numeric(18, 0) NOT NULL,
    issueid numeric(18, 0),
    author character varying(255),
    grouplevel character varying(255),
    rolelevel numeric(18, 0),
    worklogbody text,
    created timestamp with time zone,
    updateauthor character varying(255),
    updated timestamp with time zone,
    startdate timestamp with time zone,
    timeworked numeric(18, 0)
  );
ALTER TABLE public.worklog OWNER TO prisma;
--
  -- Name: AO_0A5972_NOTIFICATION_SETTING ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_0A5972_NOTIFICATION_SETTING_ID_seq"' :: regclass
  );
--
  -- Name: AO_21D670_WHITELIST_RULES ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_21D670_WHITELIST_RULES_ID_seq"' :: regclass
  );
--
  -- Name: AO_21F425_MESSAGE_MAPPING_AO ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_21F425_MESSAGE_MAPPING_AO_ID_seq"' :: regclass
  );
--
  -- Name: AO_21F425_USER_PROPERTY_AO ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_21F425_USER_PROPERTY_AO_ID_seq"' :: regclass
  );
--
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_38321B_CUSTOM_CONTENT_LINK_ID_seq"' :: regclass
  );
--
  -- Name: AO_3B1893_LOOP_DETECTION ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_3B1893_LOOP_DETECTION_ID_seq"' :: regclass
  );
--
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_4789DD_HEALTH_CHECK_STATUS_ID_seq"' :: regclass
  );
--
  -- Name: AO_4789DD_PROPERTIES ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_PROPERTIES"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval('public."AO_4789DD_PROPERTIES_ID_seq"' :: regclass);
--
  -- Name: AO_4789DD_READ_NOTIFICATIONS ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_4789DD_READ_NOTIFICATIONS_ID_seq"' :: regclass
  );
--
  -- Name: AO_4789DD_TASK_MONITOR ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_4789DD_TASK_MONITOR_ID_seq"' :: regclass
  );
--
  -- Name: AO_4AEACD_WEBHOOK_DAO ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_4AEACD_WEBHOOK_DAO_ID_seq"' :: regclass
  );
--
  -- Name: AO_550953_SHORTCUT ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_550953_SHORTCUT"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval('public."AO_550953_SHORTCUT_ID_seq"' :: regclass);
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY ACTIVITY_ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ALTER COLUMN
  "ACTIVITY_ID"
SET
  DEFAULT nextval(
    'public."AO_563AEE_ACTIVITY_ENTITY_ACTIVITY_ID_seq"' :: regclass
  );
--
  -- Name: AO_563AEE_ACTOR_ENTITY ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_563AEE_ACTOR_ENTITY_ID_seq"' :: regclass
  );
--
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_563AEE_MEDIA_LINK_ENTITY_ID_seq"' :: regclass
  );
--
  -- Name: AO_563AEE_OBJECT_ENTITY ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_563AEE_OBJECT_ENTITY_ID_seq"' :: regclass
  );
--
  -- Name: AO_563AEE_TARGET_ENTITY ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_563AEE_TARGET_ENTITY_ID_seq"' :: regclass
  );
--
  -- Name: AO_587B34_PROJECT_CONFIG ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_587B34_PROJECT_CONFIG_ID_seq"' :: regclass
  );
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_5FB9D7_AOHIP_CHAT_LINK_ID_seq"' :: regclass
  );
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_5FB9D7_AOHIP_CHAT_USER_ID_seq"' :: regclass
  );
--
  -- Name: AO_733371_EVENT ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval('public."AO_733371_EVENT_ID_seq"' :: regclass);
--
  -- Name: AO_733371_EVENT_PARAMETER ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_733371_EVENT_PARAMETER_ID_seq"' :: regclass
  );
--
  -- Name: AO_733371_EVENT_RECIPIENT ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_733371_EVENT_RECIPIENT_ID_seq"' :: regclass
  );
--
  -- Name: AO_97EDAB_USERINVITATION ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_97EDAB_USERINVITATION_ID_seq"' :: regclass
  );
--
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_A0B856_WEB_HOOK_LISTENER_AO_ID_seq"' :: regclass
  );
--
  -- Name: AO_AC3877_RL_USER_COUNTER ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_AC3877_RL_USER_COUNTER"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_AC3877_RL_USER_COUNTER_ID_seq"' :: regclass
  );
--
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_B9A0F0_APPLIED_TEMPLATE_ID_seq"' :: regclass
  );
--
  -- Name: AO_C16815_ALERT_AO ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_C16815_ALERT_AO"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval('public."AO_C16815_ALERT_AO_ID_seq"' :: regclass);
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS ID; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
ALTER COLUMN
  "ID"
SET
  DEFAULT nextval(
    'public."AO_ED669C_SEEN_ASSERTIONS_ID_seq"' :: regclass
  );
--
  -- Name: AO_0A5972_NOTIFICATION_SETTING AO_0A5972_NOTIFICATION_SETTING_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_0A5972_NOTIFICATION_SETTING"
ADD
  CONSTRAINT "AO_0A5972_NOTIFICATION_SETTING_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_0A5972_PUSH_REGISTRATION AO_0A5972_PUSH_REGISTRATION_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_0A5972_PUSH_REGISTRATION"
ADD
  CONSTRAINT "AO_0A5972_PUSH_REGISTRATION_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_0AC321_RECOMMENDATION_AO AO_0AC321_RECOMMENDATION_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_0AC321_RECOMMENDATION_AO"
ADD
  CONSTRAINT "AO_0AC321_RECOMMENDATION_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_21D670_WHITELIST_RULES AO_21D670_WHITELIST_RULES_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21D670_WHITELIST_RULES"
ADD
  CONSTRAINT "AO_21D670_WHITELIST_RULES_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_21F425_MESSAGE_AO AO_21F425_MESSAGE_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21F425_MESSAGE_AO"
ADD
  CONSTRAINT "AO_21F425_MESSAGE_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_21F425_MESSAGE_MAPPING_AO AO_21F425_MESSAGE_MAPPING_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21F425_MESSAGE_MAPPING_AO"
ADD
  CONSTRAINT "AO_21F425_MESSAGE_MAPPING_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_21F425_USER_PROPERTY_AO AO_21F425_USER_PROPERTY_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_21F425_USER_PROPERTY_AO"
ADD
  CONSTRAINT "AO_21F425_USER_PROPERTY_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_38321B_CUSTOM_CONTENT_LINK AO_38321B_CUSTOM_CONTENT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_38321B_CUSTOM_CONTENT_LINK"
ADD
  CONSTRAINT "AO_38321B_CUSTOM_CONTENT_LINK_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_3B1893_LOOP_DETECTION AO_3B1893_LOOP_DETECTION_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_3B1893_LOOP_DETECTION"
ADD
  CONSTRAINT "AO_3B1893_LOOP_DETECTION_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_4789DD_HEALTH_CHECK_STATUS AO_4789DD_HEALTH_CHECK_STATUS_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_HEALTH_CHECK_STATUS"
ADD
  CONSTRAINT "AO_4789DD_HEALTH_CHECK_STATUS_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_4789DD_PROPERTIES AO_4789DD_PROPERTIES_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_PROPERTIES"
ADD
  CONSTRAINT "AO_4789DD_PROPERTIES_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_4789DD_READ_NOTIFICATIONS AO_4789DD_READ_NOTIFICATIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_READ_NOTIFICATIONS"
ADD
  CONSTRAINT "AO_4789DD_READ_NOTIFICATIONS_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_4789DD_TASK_MONITOR AO_4789DD_TASK_MONITOR_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
ADD
  CONSTRAINT "AO_4789DD_TASK_MONITOR_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_4AEACD_WEBHOOK_DAO AO_4AEACD_WEBHOOK_DAO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4AEACD_WEBHOOK_DAO"
ADD
  CONSTRAINT "AO_4AEACD_WEBHOOK_DAO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_550953_SHORTCUT AO_550953_SHORTCUT_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_550953_SHORTCUT"
ADD
  CONSTRAINT "AO_550953_SHORTCUT_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY AO_563AEE_ACTIVITY_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ADD
  CONSTRAINT "AO_563AEE_ACTIVITY_ENTITY_pkey" PRIMARY KEY ("ACTIVITY_ID");
--
  -- Name: AO_563AEE_ACTOR_ENTITY AO_563AEE_ACTOR_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTOR_ENTITY"
ADD
  CONSTRAINT "AO_563AEE_ACTOR_ENTITY_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_563AEE_MEDIA_LINK_ENTITY AO_563AEE_MEDIA_LINK_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_MEDIA_LINK_ENTITY"
ADD
  CONSTRAINT "AO_563AEE_MEDIA_LINK_ENTITY_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_563AEE_OBJECT_ENTITY AO_563AEE_OBJECT_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
ADD
  CONSTRAINT "AO_563AEE_OBJECT_ENTITY_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_563AEE_TARGET_ENTITY AO_563AEE_TARGET_ENTITY_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
ADD
  CONSTRAINT "AO_563AEE_TARGET_ENTITY_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_587B34_GLANCE_CONFIG AO_587B34_GLANCE_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_587B34_GLANCE_CONFIG"
ADD
  CONSTRAINT "AO_587B34_GLANCE_CONFIG_pkey" PRIMARY KEY ("ROOM_ID");
--
  -- Name: AO_587B34_PROJECT_CONFIG AO_587B34_PROJECT_CONFIG_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
ADD
  CONSTRAINT "AO_587B34_PROJECT_CONFIG_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_LINK AO_5FB9D7_AOHIP_CHAT_LINK_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_LINK"
ADD
  CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_LINK_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER AO_5FB9D7_AOHIP_CHAT_USER_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
ADD
  CONSTRAINT "AO_5FB9D7_AOHIP_CHAT_USER_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_733371_EVENT_PARAMETER AO_733371_EVENT_PARAMETER_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
ADD
  CONSTRAINT "AO_733371_EVENT_PARAMETER_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_733371_EVENT_RECIPIENT AO_733371_EVENT_RECIPIENT_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
ADD
  CONSTRAINT "AO_733371_EVENT_RECIPIENT_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_733371_EVENT AO_733371_EVENT_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT"
ADD
  CONSTRAINT "AO_733371_EVENT_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_97EDAB_USERINVITATION AO_97EDAB_USERINVITATION_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_97EDAB_USERINVITATION"
ADD
  CONSTRAINT "AO_97EDAB_USERINVITATION_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_A0B856_WEB_HOOK_LISTENER_AO AO_A0B856_WEB_HOOK_LISTENER_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_A0B856_WEB_HOOK_LISTENER_AO"
ADD
  CONSTRAINT "AO_A0B856_WEB_HOOK_LISTENER_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_AC3877_RL_USER_COUNTER AO_AC3877_RL_USER_COUNTER_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_AC3877_RL_USER_COUNTER"
ADD
  CONSTRAINT "AO_AC3877_RL_USER_COUNTER_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_AC3877_SETTINGS_VERSION AO_AC3877_SETTINGS_VERSION_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_AC3877_SETTINGS_VERSION"
ADD
  CONSTRAINT "AO_AC3877_SETTINGS_VERSION_pkey" PRIMARY KEY ("TYPE");
--
  -- Name: AO_AC3877_SYSTEM_RL_SETTINGS AO_AC3877_SYSTEM_RL_SETTINGS_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_AC3877_SYSTEM_RL_SETTINGS"
ADD
  CONSTRAINT "AO_AC3877_SYSTEM_RL_SETTINGS_pkey" PRIMARY KEY ("NAME");
--
  -- Name: AO_AC3877_USER_RL_SETTINGS AO_AC3877_USER_RL_SETTINGS_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_AC3877_USER_RL_SETTINGS"
ADD
  CONSTRAINT "AO_AC3877_USER_RL_SETTINGS_pkey" PRIMARY KEY ("USER_ID");
--
  -- Name: AO_B9A0F0_APPLIED_TEMPLATE AO_B9A0F0_APPLIED_TEMPLATE_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_B9A0F0_APPLIED_TEMPLATE"
ADD
  CONSTRAINT "AO_B9A0F0_APPLIED_TEMPLATE_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_C16815_ALERT_AO AO_C16815_ALERT_AO_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_C16815_ALERT_AO"
ADD
  CONSTRAINT "AO_C16815_ALERT_AO_pkey" PRIMARY KEY ("ID");
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS AO_ED669C_SEEN_ASSERTIONS_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
ADD
  CONSTRAINT "AO_ED669C_SEEN_ASSERTIONS_pkey" PRIMARY KEY ("ID");
--
  -- Name: app_user pk_app_user; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.app_user
ADD
  CONSTRAINT pk_app_user PRIMARY KEY (id);
--
  -- Name: audit_changed_value pk_audit_changed_value; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.audit_changed_value
ADD
  CONSTRAINT pk_audit_changed_value PRIMARY KEY (id);
--
  -- Name: audit_item pk_audit_item; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.audit_item
ADD
  CONSTRAINT pk_audit_item PRIMARY KEY (id);
--
  -- Name: audit_log pk_audit_log; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.audit_log
ADD
  CONSTRAINT pk_audit_log PRIMARY KEY (id);
--
  -- Name: avatar pk_avatar; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.avatar
ADD
  CONSTRAINT pk_avatar PRIMARY KEY (id);
--
  -- Name: board pk_board; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.board
ADD
  CONSTRAINT pk_board PRIMARY KEY (id);
--
  -- Name: boardproject pk_boardproject; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.boardproject
ADD
  CONSTRAINT pk_boardproject PRIMARY KEY (board_id, project_id);
--
  -- Name: changegroup pk_changegroup; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.changegroup
ADD
  CONSTRAINT pk_changegroup PRIMARY KEY (id);
--
  -- Name: changeitem pk_changeitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.changeitem
ADD
  CONSTRAINT pk_changeitem PRIMARY KEY (id);
--
  -- Name: clusteredjob pk_clusteredjob; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clusteredjob
ADD
  CONSTRAINT pk_clusteredjob PRIMARY KEY (id);
--
  -- Name: clusterlockstatus pk_clusterlockstatus; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clusterlockstatus
ADD
  CONSTRAINT pk_clusterlockstatus PRIMARY KEY (id);
--
  -- Name: clustermessage pk_clustermessage; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clustermessage
ADD
  CONSTRAINT pk_clustermessage PRIMARY KEY (id);
--
  -- Name: clusternode pk_clusternode; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clusternode
ADD
  CONSTRAINT pk_clusternode PRIMARY KEY (node_id);
--
  -- Name: clusternodeheartbeat pk_clusternodeheartbeat; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clusternodeheartbeat
ADD
  CONSTRAINT pk_clusternodeheartbeat PRIMARY KEY (node_id);
--
  -- Name: clusterupgradestate pk_clusterupgradestate; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.clusterupgradestate
ADD
  CONSTRAINT pk_clusterupgradestate PRIMARY KEY (id);
--
  -- Name: columnlayout pk_columnlayout; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.columnlayout
ADD
  CONSTRAINT pk_columnlayout PRIMARY KEY (id);
--
  -- Name: columnlayoutitem pk_columnlayoutitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.columnlayoutitem
ADD
  CONSTRAINT pk_columnlayoutitem PRIMARY KEY (id);
--
  -- Name: component pk_component; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.component
ADD
  CONSTRAINT pk_component PRIMARY KEY (id);
--
  -- Name: configurationcontext pk_configurationcontext; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.configurationcontext
ADD
  CONSTRAINT pk_configurationcontext PRIMARY KEY (id);
--
  -- Name: customfield pk_customfield; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.customfield
ADD
  CONSTRAINT pk_customfield PRIMARY KEY (id);
--
  -- Name: customfieldoption pk_customfieldoption; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.customfieldoption
ADD
  CONSTRAINT pk_customfieldoption PRIMARY KEY (id);
--
  -- Name: customfieldvalue pk_customfieldvalue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.customfieldvalue
ADD
  CONSTRAINT pk_customfieldvalue PRIMARY KEY (id);
--
  -- Name: cwd_application pk_cwd_application; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_application
ADD
  CONSTRAINT pk_cwd_application PRIMARY KEY (id);
--
  -- Name: cwd_application_address pk_cwd_application_address; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_application_address
ADD
  CONSTRAINT pk_cwd_application_address PRIMARY KEY (application_id, remote_address);
--
  -- Name: cwd_directory pk_cwd_directory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_directory
ADD
  CONSTRAINT pk_cwd_directory PRIMARY KEY (id);
--
  -- Name: cwd_directory_attribute pk_cwd_directory_attribute; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_directory_attribute
ADD
  CONSTRAINT pk_cwd_directory_attribute PRIMARY KEY (directory_id, attribute_name);
--
  -- Name: cwd_directory_operation pk_cwd_directory_operation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_directory_operation
ADD
  CONSTRAINT pk_cwd_directory_operation PRIMARY KEY (directory_id, operation_type);
--
  -- Name: cwd_group pk_cwd_group; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_group
ADD
  CONSTRAINT pk_cwd_group PRIMARY KEY (id);
--
  -- Name: cwd_group_attributes pk_cwd_group_attributes; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_group_attributes
ADD
  CONSTRAINT pk_cwd_group_attributes PRIMARY KEY (id);
--
  -- Name: cwd_membership pk_cwd_membership; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_membership
ADD
  CONSTRAINT pk_cwd_membership PRIMARY KEY (id);
--
  -- Name: cwd_user pk_cwd_user; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_user
ADD
  CONSTRAINT pk_cwd_user PRIMARY KEY (id);
--
  -- Name: cwd_user_attributes pk_cwd_user_attributes; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.cwd_user_attributes
ADD
  CONSTRAINT pk_cwd_user_attributes PRIMARY KEY (id);
--
  -- Name: deadletter pk_deadletter; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.deadletter
ADD
  CONSTRAINT pk_deadletter PRIMARY KEY (id);
--
  -- Name: draftworkflowscheme pk_draftworkflowscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.draftworkflowscheme
ADD
  CONSTRAINT pk_draftworkflowscheme PRIMARY KEY (id);
--
  -- Name: draftworkflowschemeentity pk_draftworkflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.draftworkflowschemeentity
ADD
  CONSTRAINT pk_draftworkflowschemeentity PRIMARY KEY (id);
--
  -- Name: entity_property pk_entity_property; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.entity_property
ADD
  CONSTRAINT pk_entity_property PRIMARY KEY (id);
--
  -- Name: entity_property_index_document pk_entity_property_index_docum; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.entity_property_index_document
ADD
  CONSTRAINT pk_entity_property_index_docum PRIMARY KEY (id);
--
  -- Name: entity_translation pk_entity_translation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.entity_translation
ADD
  CONSTRAINT pk_entity_translation PRIMARY KEY (id);
--
  -- Name: external_entities pk_external_entities; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.external_entities
ADD
  CONSTRAINT pk_external_entities PRIMARY KEY (id);
--
  -- Name: externalgadget pk_externalgadget; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.externalgadget
ADD
  CONSTRAINT pk_externalgadget PRIMARY KEY (id);
--
  -- Name: favouriteassociations pk_favouriteassociations; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.favouriteassociations
ADD
  CONSTRAINT pk_favouriteassociations PRIMARY KEY (id);
--
  -- Name: feature pk_feature; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.feature
ADD
  CONSTRAINT pk_feature PRIMARY KEY (id);
--
  -- Name: fieldconfigscheme pk_fieldconfigscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldconfigscheme
ADD
  CONSTRAINT pk_fieldconfigscheme PRIMARY KEY (id);
--
  -- Name: fieldconfigschemeissuetype pk_fieldconfigschemeissuetype; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldconfigschemeissuetype
ADD
  CONSTRAINT pk_fieldconfigschemeissuetype PRIMARY KEY (id);
--
  -- Name: fieldconfiguration pk_fieldconfiguration; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldconfiguration
ADD
  CONSTRAINT pk_fieldconfiguration PRIMARY KEY (id);
--
  -- Name: fieldlayout pk_fieldlayout; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldlayout
ADD
  CONSTRAINT pk_fieldlayout PRIMARY KEY (id);
--
  -- Name: fieldlayoutitem pk_fieldlayoutitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldlayoutitem
ADD
  CONSTRAINT pk_fieldlayoutitem PRIMARY KEY (id);
--
  -- Name: fieldlayoutscheme pk_fieldlayoutscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldlayoutscheme
ADD
  CONSTRAINT pk_fieldlayoutscheme PRIMARY KEY (id);
--
  -- Name: fieldlayoutschemeassociation pk_fieldlayoutschemeassociatio; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldlayoutschemeassociation
ADD
  CONSTRAINT pk_fieldlayoutschemeassociatio PRIMARY KEY (id);
--
  -- Name: fieldlayoutschemeentity pk_fieldlayoutschemeentity; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldlayoutschemeentity
ADD
  CONSTRAINT pk_fieldlayoutschemeentity PRIMARY KEY (id);
--
  -- Name: fieldscreen pk_fieldscreen; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldscreen
ADD
  CONSTRAINT pk_fieldscreen PRIMARY KEY (id);
--
  -- Name: fieldscreenlayoutitem pk_fieldscreenlayoutitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldscreenlayoutitem
ADD
  CONSTRAINT pk_fieldscreenlayoutitem PRIMARY KEY (id);
--
  -- Name: fieldscreenscheme pk_fieldscreenscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldscreenscheme
ADD
  CONSTRAINT pk_fieldscreenscheme PRIMARY KEY (id);
--
  -- Name: fieldscreenschemeitem pk_fieldscreenschemeitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldscreenschemeitem
ADD
  CONSTRAINT pk_fieldscreenschemeitem PRIMARY KEY (id);
--
  -- Name: fieldscreentab pk_fieldscreentab; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fieldscreentab
ADD
  CONSTRAINT pk_fieldscreentab PRIMARY KEY (id);
--
  -- Name: fileattachment pk_fileattachment; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.fileattachment
ADD
  CONSTRAINT pk_fileattachment PRIMARY KEY (id);
--
  -- Name: filtersubscription pk_filtersubscription; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.filtersubscription
ADD
  CONSTRAINT pk_filtersubscription PRIMARY KEY (id);
--
  -- Name: gadgetuserpreference pk_gadgetuserpreference; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gadgetuserpreference
ADD
  CONSTRAINT pk_gadgetuserpreference PRIMARY KEY (id);
--
  -- Name: genericconfiguration pk_genericconfiguration; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.genericconfiguration
ADD
  CONSTRAINT pk_genericconfiguration PRIMARY KEY (id);
--
  -- Name: globalpermissionentry pk_globalpermissionentry; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.globalpermissionentry
ADD
  CONSTRAINT pk_globalpermissionentry PRIMARY KEY (id);
--
  -- Name: groupbase pk_groupbase; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.groupbase
ADD
  CONSTRAINT pk_groupbase PRIMARY KEY (id);
--
  -- Name: issue_field_option pk_issue_field_option; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issue_field_option
ADD
  CONSTRAINT pk_issue_field_option PRIMARY KEY (id);
--
  -- Name: issue_field_option_scope pk_issue_field_option_scope; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issue_field_option_scope
ADD
  CONSTRAINT pk_issue_field_option_scope PRIMARY KEY (id);
--
  -- Name: issuelink pk_issuelink; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuelink
ADD
  CONSTRAINT pk_issuelink PRIMARY KEY (id);
--
  -- Name: issuelinktype pk_issuelinktype; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuelinktype
ADD
  CONSTRAINT pk_issuelinktype PRIMARY KEY (id);
--
  -- Name: issuesecurityscheme pk_issuesecurityscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuesecurityscheme
ADD
  CONSTRAINT pk_issuesecurityscheme PRIMARY KEY (id);
--
  -- Name: issuestatus pk_issuestatus; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuestatus
ADD
  CONSTRAINT pk_issuestatus PRIMARY KEY (id);
--
  -- Name: issuetype pk_issuetype; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuetype
ADD
  CONSTRAINT pk_issuetype PRIMARY KEY (id);
--
  -- Name: issuetypescreenscheme pk_issuetypescreenscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuetypescreenscheme
ADD
  CONSTRAINT pk_issuetypescreenscheme PRIMARY KEY (id);
--
  -- Name: issuetypescreenschemeentity pk_issuetypescreenschemeentity; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issuetypescreenschemeentity
ADD
  CONSTRAINT pk_issuetypescreenschemeentity PRIMARY KEY (id);
--
  -- Name: jiraaction pk_jiraaction; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraaction
ADD
  CONSTRAINT pk_jiraaction PRIMARY KEY (id);
--
  -- Name: jiradraftworkflows pk_jiradraftworkflows; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiradraftworkflows
ADD
  CONSTRAINT pk_jiradraftworkflows PRIMARY KEY (id);
--
  -- Name: jiraeventtype pk_jiraeventtype; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraeventtype
ADD
  CONSTRAINT pk_jiraeventtype PRIMARY KEY (id);
--
  -- Name: jiraissue pk_jiraissue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraissue
ADD
  CONSTRAINT pk_jiraissue PRIMARY KEY (id);
--
  -- Name: jiraperms pk_jiraperms; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraperms
ADD
  CONSTRAINT pk_jiraperms PRIMARY KEY (id);
--
  -- Name: jiraworkflows pk_jiraworkflows; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraworkflows
ADD
  CONSTRAINT pk_jiraworkflows PRIMARY KEY (id);
--
  -- Name: jiraworkflowstatuses pk_jiraworkflowstatuses; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jiraworkflowstatuses
ADD
  CONSTRAINT pk_jiraworkflowstatuses PRIMARY KEY (id);
--
  -- Name: jquartz_blob_triggers pk_jquartz_blob_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_blob_triggers
ADD
  CONSTRAINT pk_jquartz_blob_triggers PRIMARY KEY (trigger_name, trigger_group);
--
  -- Name: jquartz_calendars pk_jquartz_calendars; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_calendars
ADD
  CONSTRAINT pk_jquartz_calendars PRIMARY KEY (calendar_name);
--
  -- Name: jquartz_cron_triggers pk_jquartz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_cron_triggers
ADD
  CONSTRAINT pk_jquartz_cron_triggers PRIMARY KEY (trigger_name, trigger_group);
--
  -- Name: jquartz_fired_triggers pk_jquartz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_fired_triggers
ADD
  CONSTRAINT pk_jquartz_fired_triggers PRIMARY KEY (entry_id);
--
  -- Name: jquartz_job_details pk_jquartz_job_details; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_job_details
ADD
  CONSTRAINT pk_jquartz_job_details PRIMARY KEY (job_name, job_group);
--
  -- Name: jquartz_job_listeners pk_jquartz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_job_listeners
ADD
  CONSTRAINT pk_jquartz_job_listeners PRIMARY KEY (job_name, job_group, job_listener);
--
  -- Name: jquartz_locks pk_jquartz_locks; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_locks
ADD
  CONSTRAINT pk_jquartz_locks PRIMARY KEY (lock_name);
--
  -- Name: jquartz_paused_trigger_grps pk_jquartz_paused_trigger_grps; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_paused_trigger_grps
ADD
  CONSTRAINT pk_jquartz_paused_trigger_grps PRIMARY KEY (trigger_group);
--
  -- Name: jquartz_scheduler_state pk_jquartz_scheduler_state; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_scheduler_state
ADD
  CONSTRAINT pk_jquartz_scheduler_state PRIMARY KEY (instance_name);
--
  -- Name: jquartz_simple_triggers pk_jquartz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_simple_triggers
ADD
  CONSTRAINT pk_jquartz_simple_triggers PRIMARY KEY (trigger_name, trigger_group);
--
  -- Name: jquartz_simprop_triggers pk_jquartz_simprop_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_simprop_triggers
ADD
  CONSTRAINT pk_jquartz_simprop_triggers PRIMARY KEY (trigger_name, trigger_group);
--
  -- Name: jquartz_trigger_listeners pk_jquartz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_trigger_listeners
ADD
  CONSTRAINT pk_jquartz_trigger_listeners PRIMARY KEY (trigger_group, trigger_listener);
--
  -- Name: jquartz_triggers pk_jquartz_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jquartz_triggers
ADD
  CONSTRAINT pk_jquartz_triggers PRIMARY KEY (trigger_name, trigger_group);
--
  -- Name: label pk_label; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.label
ADD
  CONSTRAINT pk_label PRIMARY KEY (id);
--
  -- Name: licenserolesdefault pk_licenserolesdefault; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.licenserolesdefault
ADD
  CONSTRAINT pk_licenserolesdefault PRIMARY KEY (id);
--
  -- Name: licenserolesgroup pk_licenserolesgroup; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.licenserolesgroup
ADD
  CONSTRAINT pk_licenserolesgroup PRIMARY KEY (id);
--
  -- Name: listenerconfig pk_listenerconfig; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.listenerconfig
ADD
  CONSTRAINT pk_listenerconfig PRIMARY KEY (id);
--
  -- Name: mailserver pk_mailserver; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.mailserver
ADD
  CONSTRAINT pk_mailserver PRIMARY KEY (id);
--
  -- Name: managedconfigurationitem pk_managedconfigurationitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.managedconfigurationitem
ADD
  CONSTRAINT pk_managedconfigurationitem PRIMARY KEY (id);
--
  -- Name: membershipbase pk_membershipbase; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.membershipbase
ADD
  CONSTRAINT pk_membershipbase PRIMARY KEY (id);
--
  -- Name: moved_issue_key pk_moved_issue_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.moved_issue_key
ADD
  CONSTRAINT pk_moved_issue_key PRIMARY KEY (id);
--
  -- Name: nodeassociation pk_nodeassociation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.nodeassociation
ADD
  CONSTRAINT pk_nodeassociation PRIMARY KEY (
    source_node_id,
    source_node_entity,
    sink_node_id,
    sink_node_entity,
    association_type
  );
--
  -- Name: nodeindexcounter pk_nodeindexcounter; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.nodeindexcounter
ADD
  CONSTRAINT pk_nodeindexcounter PRIMARY KEY (id);
--
  -- Name: notification pk_notification; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.notification
ADD
  CONSTRAINT pk_notification PRIMARY KEY (id);
--
  -- Name: notificationinstance pk_notificationinstance; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.notificationinstance
ADD
  CONSTRAINT pk_notificationinstance PRIMARY KEY (id);
--
  -- Name: notificationscheme pk_notificationscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.notificationscheme
ADD
  CONSTRAINT pk_notificationscheme PRIMARY KEY (id);
--
  -- Name: oauthconsumer pk_oauthconsumer; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.oauthconsumer
ADD
  CONSTRAINT pk_oauthconsumer PRIMARY KEY (id);
--
  -- Name: oauthconsumertoken pk_oauthconsumertoken; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.oauthconsumertoken
ADD
  CONSTRAINT pk_oauthconsumertoken PRIMARY KEY (id);
--
  -- Name: oauthspconsumer pk_oauthspconsumer; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.oauthspconsumer
ADD
  CONSTRAINT pk_oauthspconsumer PRIMARY KEY (id);
--
  -- Name: oauthsptoken pk_oauthsptoken; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.oauthsptoken
ADD
  CONSTRAINT pk_oauthsptoken PRIMARY KEY (id);
--
  -- Name: optionconfiguration pk_optionconfiguration; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.optionconfiguration
ADD
  CONSTRAINT pk_optionconfiguration PRIMARY KEY (id);
--
  -- Name: os_currentstep pk_os_currentstep; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.os_currentstep
ADD
  CONSTRAINT pk_os_currentstep PRIMARY KEY (id);
--
  -- Name: os_currentstep_prev pk_os_currentstep_prev; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.os_currentstep_prev
ADD
  CONSTRAINT pk_os_currentstep_prev PRIMARY KEY (id, previous_id);
--
  -- Name: os_historystep pk_os_historystep; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.os_historystep
ADD
  CONSTRAINT pk_os_historystep PRIMARY KEY (id);
--
  -- Name: os_historystep_prev pk_os_historystep_prev; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.os_historystep_prev
ADD
  CONSTRAINT pk_os_historystep_prev PRIMARY KEY (id, previous_id);
--
  -- Name: os_wfentry pk_os_wfentry; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.os_wfentry
ADD
  CONSTRAINT pk_os_wfentry PRIMARY KEY (id);
--
  -- Name: permissionscheme pk_permissionscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.permissionscheme
ADD
  CONSTRAINT pk_permissionscheme PRIMARY KEY (id);
--
  -- Name: permissionschemeattribute pk_permissionschemeattribute; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.permissionschemeattribute
ADD
  CONSTRAINT pk_permissionschemeattribute PRIMARY KEY (id);
--
  -- Name: pluginstate pk_pluginstate; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.pluginstate
ADD
  CONSTRAINT pk_pluginstate PRIMARY KEY (pluginkey);
--
  -- Name: pluginversion pk_pluginversion; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.pluginversion
ADD
  CONSTRAINT pk_pluginversion PRIMARY KEY (id);
--
  -- Name: portalpage pk_portalpage; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portalpage
ADD
  CONSTRAINT pk_portalpage PRIMARY KEY (id);
--
  -- Name: portletconfiguration pk_portletconfiguration; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portletconfiguration
ADD
  CONSTRAINT pk_portletconfiguration PRIMARY KEY (id);
--
  -- Name: priority pk_priority; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.priority
ADD
  CONSTRAINT pk_priority PRIMARY KEY (id);
--
  -- Name: productlicense pk_productlicense; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.productlicense
ADD
  CONSTRAINT pk_productlicense PRIMARY KEY (id);
--
  -- Name: project pk_project; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project
ADD
  CONSTRAINT pk_project PRIMARY KEY (id);
--
  -- Name: project_key pk_project_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_key
ADD
  CONSTRAINT pk_project_key PRIMARY KEY (id);
--
  -- Name: projectcategory pk_projectcategory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projectcategory
ADD
  CONSTRAINT pk_projectcategory PRIMARY KEY (id);
--
  -- Name: projectchangedtime pk_projectchangedtime; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projectchangedtime
ADD
  CONSTRAINT pk_projectchangedtime PRIMARY KEY (project_id);
--
  -- Name: projectrole pk_projectrole; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projectrole
ADD
  CONSTRAINT pk_projectrole PRIMARY KEY (id);
--
  -- Name: projectroleactor pk_projectroleactor; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projectroleactor
ADD
  CONSTRAINT pk_projectroleactor PRIMARY KEY (id);
--
  -- Name: projectversion pk_projectversion; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projectversion
ADD
  CONSTRAINT pk_projectversion PRIMARY KEY (id);
--
  -- Name: propertydata pk_propertydata; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertydata
ADD
  CONSTRAINT pk_propertydata PRIMARY KEY (id);
--
  -- Name: propertydate pk_propertydate; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertydate
ADD
  CONSTRAINT pk_propertydate PRIMARY KEY (id);
--
  -- Name: propertydecimal pk_propertydecimal; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertydecimal
ADD
  CONSTRAINT pk_propertydecimal PRIMARY KEY (id);
--
  -- Name: propertyentry pk_propertyentry; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertyentry
ADD
  CONSTRAINT pk_propertyentry PRIMARY KEY (id);
--
  -- Name: propertynumber pk_propertynumber; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertynumber
ADD
  CONSTRAINT pk_propertynumber PRIMARY KEY (id);
--
  -- Name: propertystring pk_propertystring; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertystring
ADD
  CONSTRAINT pk_propertystring PRIMARY KEY (id);
--
  -- Name: propertytext pk_propertytext; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.propertytext
ADD
  CONSTRAINT pk_propertytext PRIMARY KEY (id);
--
  -- Name: qrtz_calendars pk_qrtz_calendars; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_calendars
ADD
  CONSTRAINT pk_qrtz_calendars PRIMARY KEY (calendar_name);
--
  -- Name: qrtz_cron_triggers pk_qrtz_cron_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_cron_triggers
ADD
  CONSTRAINT pk_qrtz_cron_triggers PRIMARY KEY (id);
--
  -- Name: qrtz_fired_triggers pk_qrtz_fired_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_fired_triggers
ADD
  CONSTRAINT pk_qrtz_fired_triggers PRIMARY KEY (entry_id);
--
  -- Name: qrtz_job_details pk_qrtz_job_details; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_job_details
ADD
  CONSTRAINT pk_qrtz_job_details PRIMARY KEY (id);
--
  -- Name: qrtz_job_listeners pk_qrtz_job_listeners; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_job_listeners
ADD
  CONSTRAINT pk_qrtz_job_listeners PRIMARY KEY (id);
--
  -- Name: qrtz_simple_triggers pk_qrtz_simple_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_simple_triggers
ADD
  CONSTRAINT pk_qrtz_simple_triggers PRIMARY KEY (id);
--
  -- Name: qrtz_trigger_listeners pk_qrtz_trigger_listeners; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_trigger_listeners
ADD
  CONSTRAINT pk_qrtz_trigger_listeners PRIMARY KEY (id);
--
  -- Name: qrtz_triggers pk_qrtz_triggers; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_triggers
ADD
  CONSTRAINT pk_qrtz_triggers PRIMARY KEY (id);
--
  -- Name: reindex_component pk_reindex_component; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.reindex_component
ADD
  CONSTRAINT pk_reindex_component PRIMARY KEY (id);
--
  -- Name: reindex_request pk_reindex_request; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.reindex_request
ADD
  CONSTRAINT pk_reindex_request PRIMARY KEY (id);
--
  -- Name: remembermetoken pk_remembermetoken; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.remembermetoken
ADD
  CONSTRAINT pk_remembermetoken PRIMARY KEY (id);
--
  -- Name: remotelink pk_remotelink; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.remotelink
ADD
  CONSTRAINT pk_remotelink PRIMARY KEY (id);
--
  -- Name: replicatedindexoperation pk_replicatedindexoperation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.replicatedindexoperation
ADD
  CONSTRAINT pk_replicatedindexoperation PRIMARY KEY (id);
--
  -- Name: resolution pk_resolution; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.resolution
ADD
  CONSTRAINT pk_resolution PRIMARY KEY (id);
--
  -- Name: rundetails pk_rundetails; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rundetails
ADD
  CONSTRAINT pk_rundetails PRIMARY KEY (id);
--
  -- Name: schemeissuesecurities pk_schemeissuesecurities; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.schemeissuesecurities
ADD
  CONSTRAINT pk_schemeissuesecurities PRIMARY KEY (id);
--
  -- Name: schemeissuesecuritylevels pk_schemeissuesecuritylevels; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.schemeissuesecuritylevels
ADD
  CONSTRAINT pk_schemeissuesecuritylevels PRIMARY KEY (id);
--
  -- Name: schemepermissions pk_schemepermissions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.schemepermissions
ADD
  CONSTRAINT pk_schemepermissions PRIMARY KEY (id);
--
  -- Name: searchrequest pk_searchrequest; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.searchrequest
ADD
  CONSTRAINT pk_searchrequest PRIMARY KEY (id);
--
  -- Name: sequence_value_item pk_sequence_value_item; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.sequence_value_item
ADD
  CONSTRAINT pk_sequence_value_item PRIMARY KEY (seq_name);
--
  -- Name: serviceconfig pk_serviceconfig; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.serviceconfig
ADD
  CONSTRAINT pk_serviceconfig PRIMARY KEY (id);
--
  -- Name: sharepermissions pk_sharepermissions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.sharepermissions
ADD
  CONSTRAINT pk_sharepermissions PRIMARY KEY (id);
--
  -- Name: tempattachmentsmonitor pk_tempattachmentsmonitor; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.tempattachmentsmonitor
ADD
  CONSTRAINT pk_tempattachmentsmonitor PRIMARY KEY (temporary_attachment_id);
--
  -- Name: trackback_ping pk_trackback_ping; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.trackback_ping
ADD
  CONSTRAINT pk_trackback_ping PRIMARY KEY (id);
--
  -- Name: trustedapp pk_trustedapp; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.trustedapp
ADD
  CONSTRAINT pk_trustedapp PRIMARY KEY (id);
--
  -- Name: upgradehistory pk_upgradehistory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.upgradehistory
ADD
  CONSTRAINT pk_upgradehistory PRIMARY KEY (upgradeclass);
--
  -- Name: upgradetaskhistory pk_upgradetaskhistory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.upgradetaskhistory
ADD
  CONSTRAINT pk_upgradetaskhistory PRIMARY KEY (id);
--
  -- Name: upgradetaskhistoryauditlog pk_upgradetaskhistoryauditlog; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.upgradetaskhistoryauditlog
ADD
  CONSTRAINT pk_upgradetaskhistoryauditlog PRIMARY KEY (id);
--
  -- Name: upgradeversionhistory pk_upgradeversionhistory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.upgradeversionhistory
ADD
  CONSTRAINT pk_upgradeversionhistory PRIMARY KEY (targetbuild);
--
  -- Name: userassociation pk_userassociation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userassociation
ADD
  CONSTRAINT pk_userassociation PRIMARY KEY (
    source_name,
    sink_node_id,
    sink_node_entity,
    association_type
  );
--
  -- Name: userbase pk_userbase; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userbase
ADD
  CONSTRAINT pk_userbase PRIMARY KEY (id);
--
  -- Name: userhistoryitem pk_userhistoryitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userhistoryitem
ADD
  CONSTRAINT pk_userhistoryitem PRIMARY KEY (id);
--
  -- Name: userpickerfilter pk_userpickerfilter; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userpickerfilter
ADD
  CONSTRAINT pk_userpickerfilter PRIMARY KEY (id);
--
  -- Name: userpickerfiltergroup pk_userpickerfiltergroup; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userpickerfiltergroup
ADD
  CONSTRAINT pk_userpickerfiltergroup PRIMARY KEY (id);
--
  -- Name: userpickerfilterrole pk_userpickerfilterrole; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.userpickerfilterrole
ADD
  CONSTRAINT pk_userpickerfilterrole PRIMARY KEY (id);
--
  -- Name: versioncontrol pk_versioncontrol; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.versioncontrol
ADD
  CONSTRAINT pk_versioncontrol PRIMARY KEY (id);
--
  -- Name: votehistory pk_votehistory; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.votehistory
ADD
  CONSTRAINT pk_votehistory PRIMARY KEY (id);
--
  -- Name: workflowscheme pk_workflowscheme; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.workflowscheme
ADD
  CONSTRAINT pk_workflowscheme PRIMARY KEY (id);
--
  -- Name: workflowschemeentity pk_workflowschemeentity; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.workflowschemeentity
ADD
  CONSTRAINT pk_workflowschemeentity PRIMARY KEY (id);
--
  -- Name: worklog pk_worklog; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.worklog
ADD
  CONSTRAINT pk_worklog PRIMARY KEY (id);
--
  -- Name: AO_4789DD_TASK_MONITOR u_ao_4789dd_task_mo1827547914; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_4789DD_TASK_MONITOR"
ADD
  CONSTRAINT u_ao_4789dd_task_mo1827547914 UNIQUE ("TASK_ID");
--
  -- Name: AO_587B34_PROJECT_CONFIG u_ao_587b34_project2070954277; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_587B34_PROJECT_CONFIG"
ADD
  CONSTRAINT u_ao_587b34_project2070954277 UNIQUE ("NAME_UNIQUE_CONSTRAINT");
--
  -- Name: AO_ED669C_SEEN_ASSERTIONS u_ao_ed669c_seen_as1055534769; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_ED669C_SEEN_ASSERTIONS"
ADD
  CONSTRAINT u_ao_ed669c_seen_as1055534769 UNIQUE ("ASSERTION_ID");
--
  -- Name: action_author_created; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX action_author_created ON public.jiraaction USING btree (author, created);
--
  -- Name: action_issue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX action_issue ON public.jiraaction USING btree (issueid);
--
  -- Name: attach_issue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX attach_issue ON public.fileattachment USING btree (issueid);
--
  -- Name: avatar_filename_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX avatar_filename_index ON public.avatar USING btree (filename, avatartype, systemavatar);
--
  -- Name: avatar_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX avatar_index ON public.avatar USING btree (avatartype, owner);
--
  -- Name: cf_cfoption; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cf_cfoption ON public.customfieldoption USING btree (customfield);
--
  -- Name: cf_userpickerfiltergroup; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cf_userpickerfiltergroup ON public.userpickerfiltergroup USING btree (userpickerfilter);
--
  -- Name: cf_userpickerfilterrole; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cf_userpickerfilterrole ON public.userpickerfilterrole USING btree (userpickerfilter);
--
  -- Name: cfvalue_issue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cfvalue_issue ON public.customfieldvalue USING btree (issue, customfield);
--
  -- Name: chggroup_author_created; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX chggroup_author_created ON public.changegroup USING btree (author, created);
--
  -- Name: chggroup_issue_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX chggroup_issue_id ON public.changegroup USING btree (issueid, id);
--
  -- Name: chgitem_group_field; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX chgitem_group_field ON public.changeitem USING btree (groupid, field);
--
  -- Name: cl_searchrequest; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cl_searchrequest ON public.columnlayout USING btree (searchrequest);
--
  -- Name: cl_username; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX cl_username ON public.columnlayout USING btree (username);
--
  -- Name: cluster_lock_name_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX cluster_lock_name_idx ON public.clusterlockstatus USING btree (lock_name);
--
  -- Name: clusteredjob_jobid_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX clusteredjob_jobid_idx ON public.clusteredjob USING btree (job_id);
--
  -- Name: clusteredjob_jrk_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX clusteredjob_jrk_idx ON public.clusteredjob USING btree (job_runner_key);
--
  -- Name: clusteredjob_nextrun_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX clusteredjob_nextrun_idx ON public.clusteredjob USING btree (next_run);
--
  -- Name: confcontext; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX confcontext ON public.configurationcontext USING btree (projectcategory, project, customfield);
--
  -- Name: confcontextfieldconfigscheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX confcontextfieldconfigscheme ON public.configurationcontext USING btree (fieldconfigscheme);
--
  -- Name: confcontextkey; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX confcontextkey ON public.configurationcontext USING btree (customfield);
--
  -- Name: confcontextprojectkey; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX confcontextprojectkey ON public.configurationcontext USING btree (project, customfield);
--
  -- Name: deadletter_lastseen; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX deadletter_lastseen ON public.deadletter USING btree (last_seen);
--
  -- Name: deadletter_msg_server_folder; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX deadletter_msg_server_folder ON public.deadletter USING btree (message_id, mail_server_id, folder_name);
--
  -- Name: draft_workflow_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX draft_workflow_scheme ON public.draftworkflowschemeentity USING btree (scheme);
--
  -- Name: draft_workflow_scheme_parent; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX draft_workflow_scheme_parent ON public.draftworkflowscheme USING btree (workflow_scheme_id);
--
  -- Name: entityproperty_id_name_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX entityproperty_id_name_key ON public.entity_property USING btree (entity_id, entity_name, property_key);
--
  -- Name: entityproperty_key_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX entityproperty_key_name ON public.entity_property USING btree (property_key, entity_name);
--
  -- Name: entitytranslation_locale; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX entitytranslation_locale ON public.entity_translation USING btree (locale);
--
  -- Name: entpropindexdoc_module; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX entpropindexdoc_module ON public.entity_property_index_document USING btree (plugin_key, module_key);
--
  -- Name: ext_entity_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ext_entity_name ON public.external_entities USING btree (name);
--
  -- Name: favourite_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX favourite_index ON public.favouriteassociations USING btree (username, entitytype, entityid);
--
  -- Name: fc_fieldid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fc_fieldid ON public.fieldconfiguration USING btree (fieldid);
--
  -- Name: fcs_fieldid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fcs_fieldid ON public.fieldconfigscheme USING btree (fieldid);
--
  -- Name: fcs_issuetype; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fcs_issuetype ON public.fieldconfigschemeissuetype USING btree (issuetype);
--
  -- Name: fcs_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fcs_scheme ON public.fieldconfigschemeissuetype USING btree (fieldconfigscheme);
--
  -- Name: feature_id_userkey; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX feature_id_userkey ON public.feature USING btree (id, user_key);
--
  -- Name: fieldid_fieldconf; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldid_fieldconf ON public.optionconfiguration USING btree (fieldid, fieldconfig);
--
  -- Name: fieldid_optionid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldid_optionid ON public.optionconfiguration USING btree (fieldid, optionid);
--
  -- Name: fieldlayout_layout; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldlayout_layout ON public.fieldlayoutschemeentity USING btree (fieldlayout);
--
  -- Name: fieldlayout_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldlayout_scheme ON public.fieldlayoutschemeentity USING btree (scheme);
--
  -- Name: fieldscitem_tab; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldscitem_tab ON public.fieldscreenlayoutitem USING btree (fieldscreentab);
--
  -- Name: fieldscreen_field; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldscreen_field ON public.fieldscreenlayoutitem USING btree (fieldidentifier);
--
  -- Name: fieldscreen_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldscreen_scheme ON public.issuetypescreenschemeentity USING btree (fieldscreenscheme);
--
  -- Name: fieldscreen_tab; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fieldscreen_tab ON public.fieldscreentab USING btree (fieldscreen);
--
  -- Name: fl_scheme_assoc; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX fl_scheme_assoc ON public.fieldlayoutschemeassociation USING btree (project, issuetype);
--
  -- Name: historystep_entryid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX historystep_entryid ON public.os_historystep USING btree (entry_id);
--
  -- Name: idx_all_project_ids; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_all_project_ids ON public.project_key USING btree (project_id);
--
  -- Name: idx_all_project_keys; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX idx_all_project_keys ON public.project_key USING btree (project_key);
--
  -- Name: idx_audit_item_log_id2; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_audit_item_log_id2 ON public.audit_item USING btree (log_id);
--
  -- Name: idx_audit_log_created; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_audit_log_created ON public.audit_log USING btree (created);
--
  -- Name: idx_board_board_ids; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_board_board_ids ON public.boardproject USING btree (board_id);
--
  -- Name: idx_board_project_ids; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_board_project_ids ON public.boardproject USING btree (project_id);
--
  -- Name: idx_changed_value_log_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_changed_value_log_id ON public.audit_changed_value USING btree (log_id);
--
  -- Name: idx_cli_fieldidentifier; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_cli_fieldidentifier ON public.columnlayoutitem USING btree (fieldidentifier);
--
  -- Name: idx_component_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_component_name ON public.component USING btree (cname);
--
  -- Name: idx_component_project; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_component_project ON public.component USING btree (project);
--
  -- Name: idx_directory_active; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_directory_active ON public.cwd_directory USING btree (active);
--
  -- Name: idx_directory_impl; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_directory_impl ON public.cwd_directory USING btree (lower_impl_class);
--
  -- Name: idx_directory_type; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_directory_type ON public.cwd_directory USING btree (directory_type);
--
  -- Name: idx_display_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_display_name ON public.cwd_user USING btree (lower_display_name);
--
  -- Name: idx_email_address; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_email_address ON public.cwd_user USING btree (lower_email_address);
--
  -- Name: idx_first_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_first_name ON public.cwd_user USING btree (lower_first_name);
--
  -- Name: idx_fli_fieldidentifier; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_fli_fieldidentifier ON public.fieldlayoutitem USING btree (fieldidentifier);
--
  -- Name: idx_fli_fieldlayout; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_fli_fieldlayout ON public.fieldlayoutitem USING btree (fieldlayout);
--
  -- Name: idx_group_active; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_group_active ON public.cwd_group USING btree (lower_group_name, active);
--
  -- Name: idx_group_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_group_attr_dir_name_lval ON public.cwd_group_attributes USING btree (
    directory_id,
    attribute_name,
    lower_attribute_value
  );
--
  -- Name: idx_group_dir_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_group_dir_id ON public.cwd_group USING btree (directory_id);
--
  -- Name: idx_last_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_last_name ON public.cwd_user USING btree (lower_last_name);
--
  -- Name: idx_mem_dir_child; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_mem_dir_child ON public.cwd_membership USING btree (lower_child_name, membership_type, directory_id);
--
  -- Name: idx_mem_dir_parent; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_mem_dir_parent ON public.cwd_membership USING btree (lower_parent_name, membership_type, directory_id);
--
  -- Name: idx_mem_dir_parent_child; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_mem_dir_parent_child ON public.cwd_membership USING btree (
    lower_parent_name,
    lower_child_name,
    membership_type,
    directory_id
  );
--
  -- Name: idx_old_issue_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX idx_old_issue_key ON public.moved_issue_key USING btree (old_issue_key);
--
  -- Name: idx_parent_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_parent_name ON public.jiraworkflowstatuses USING btree (parentname);
--
  -- Name: idx_project_category_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_project_category_name ON public.projectcategory USING btree (cname);
--
  -- Name: idx_project_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX idx_project_key ON public.project USING btree (pkey);
--
  -- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON public.jquartz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);
--
  -- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_j_g ON public.jquartz_fired_triggers USING btree (sched_name, job_name, job_group);
--
  -- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_jg ON public.jquartz_fired_triggers USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_t_g ON public.jquartz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);
--
  -- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_tg ON public.jquartz_fired_triggers USING btree (sched_name, trigger_group);
--
  -- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.jquartz_fired_triggers USING btree (sched_name, instance_name);
--
  -- Name: idx_qrtz_j_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_g ON public.jquartz_triggers USING btree (sched_name, trigger_group);
--
  -- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_grp ON public.jquartz_job_details USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_req_recovery ON public.jquartz_job_details USING btree (sched_name, requests_recovery);
--
  -- Name: idx_qrtz_j_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_state ON public.jquartz_triggers USING btree (sched_name, trigger_state);
--
  -- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_c ON public.jquartz_triggers USING btree (sched_name, calendar_name);
--
  -- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_j ON public.jquartz_triggers USING btree (sched_name, job_name, job_group);
--
  -- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_jg ON public.jquartz_triggers USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_n_g_state ON public.jquartz_triggers USING btree (sched_name, trigger_group, trigger_state);
--
  -- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_n_state ON public.jquartz_triggers USING btree (
    sched_name,
    trigger_name,
    trigger_group,
    trigger_state
  );
--
  -- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_next_fire_time ON public.jquartz_triggers USING btree (sched_name, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_misfire ON public.jquartz_triggers USING btree (sched_name, misfire_instr, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st ON public.jquartz_triggers USING btree (sched_name, trigger_state, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st_misfire ON public.jquartz_triggers USING btree (
    sched_name,
    misfire_instr,
    next_fire_time,
    trigger_state
  );
--
  -- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON public.jquartz_triggers USING btree (
    sched_name,
    misfire_instr,
    next_fire_time,
    trigger_group,
    trigger_state
  );
--
  -- Name: idx_reindex_component_req_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_reindex_component_req_id ON public.reindex_component USING btree (request_id);
--
  -- Name: idx_tam_by_created_time; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_tam_by_created_time ON public.tempattachmentsmonitor USING btree (created_time);
--
  -- Name: idx_tam_by_form_token; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_tam_by_form_token ON public.tempattachmentsmonitor USING btree (form_token);
--
  -- Name: idx_user_attr_dir_name_lval; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_user_attr_dir_name_lval ON public.cwd_user_attributes USING btree (
    directory_id,
    attribute_name,
    lower_attribute_value
  );
--
  -- Name: idx_version_project; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_version_project ON public.projectversion USING btree (project);
--
  -- Name: idx_version_sequence; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_version_sequence ON public.projectversion USING btree (sequence);
--
  -- Name: index_ao_0a5972_not187736835; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_0a5972_not187736835 ON public."AO_0A5972_NOTIFICATION_SETTING" USING btree ("USER_KEY");
--
  -- Name: index_ao_0a5972_pus2127422409; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_0a5972_pus2127422409 ON public."AO_0A5972_PUSH_REGISTRATION" USING btree ("USER_KEY");
--
  -- Name: index_ao_21f425_mes1965715920; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_21f425_mes1965715920 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("MESSAGE_ID");
--
  -- Name: index_ao_21f425_mes223897723; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_21f425_mes223897723 ON public."AO_21F425_MESSAGE_MAPPING_AO" USING btree ("USER_HASH");
--
  -- Name: index_ao_21f425_use1458667739; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_21f425_use1458667739 ON public."AO_21F425_USER_PROPERTY_AO" USING btree ("USER");
--
  -- Name: index_ao_38321b_cus1828044926; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_38321b_cus1828044926 ON public."AO_38321B_CUSTOM_CONTENT_LINK" USING btree ("CONTENT_KEY");
--
  -- Name: index_ao_4789dd_tas42846517; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_4789dd_tas42846517 ON public."AO_4789DD_TASK_MONITOR" USING btree ("TASK_MONITOR_KIND");
--
  -- Name: index_ao_550953_sho1778115994; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_550953_sho1778115994 ON public."AO_550953_SHORTCUT" USING btree ("PROJECT_ID");
--
  -- Name: index_ao_563aee_act1642652291; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_act1642652291 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("OBJECT_ID");
--
  -- Name: index_ao_563aee_act1978295567; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_act1978295567 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("TARGET_ID");
--
  -- Name: index_ao_563aee_act972488439; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_act972488439 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ICON_ID");
--
  -- Name: index_ao_563aee_act995325379; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_act995325379 ON public."AO_563AEE_ACTIVITY_ENTITY" USING btree ("ACTOR_ID");
--
  -- Name: index_ao_563aee_obj696886343; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_obj696886343 ON public."AO_563AEE_OBJECT_ENTITY" USING btree ("IMAGE_ID");
--
  -- Name: index_ao_563aee_tar521440921; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_563aee_tar521440921 ON public."AO_563AEE_TARGET_ENTITY" USING btree ("IMAGE_ID");
--
  -- Name: index_ao_587b34_pro1732672724; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_587b34_pro1732672724 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("ROOM_ID");
--
  -- Name: index_ao_587b34_pro193829489; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_587b34_pro193829489 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("CONFIGURATION_GROUP_ID");
--
  -- Name: index_ao_587b34_pro2093917684; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_587b34_pro2093917684 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("PROJECT_ID");
--
  -- Name: index_ao_587b34_pro2115480362; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_587b34_pro2115480362 ON public."AO_587B34_PROJECT_CONFIG" USING btree ("NAME");
--
  -- Name: index_ao_5fb9d7_aoh1981563178; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_5fb9d7_aoh1981563178 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("USER_KEY");
--
  -- Name: index_ao_5fb9d7_aoh49772492; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_5fb9d7_aoh49772492 ON public."AO_5FB9D7_AOHIP_CHAT_USER" USING btree ("HIP_CHAT_LINK_ID");
--
  -- Name: index_ao_733371_eve1266474620; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve1266474620 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("CONSUMER_NAME");
--
  -- Name: index_ao_733371_eve1423945899; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve1423945899 ON public."AO_733371_EVENT_PARAMETER" USING btree ("NAME");
--
  -- Name: index_ao_733371_eve1645451632; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve1645451632 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("EVENT_ID");
--
  -- Name: index_ao_733371_eve525098581; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve525098581 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("SEND_DATE");
--
  -- Name: index_ao_733371_eve673683319; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve673683319 ON public."AO_733371_EVENT" USING btree ("EVENT_BUNDLE_ID");
--
  -- Name: index_ao_733371_eve678699426; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve678699426 ON public."AO_733371_EVENT_RECIPIENT" USING btree ("STATUS");
--
  -- Name: index_ao_733371_eve704112384; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve704112384 ON public."AO_733371_EVENT_PARAMETER" USING btree ("EVENT_ID");
--
  -- Name: index_ao_733371_eve902883849; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_eve902883849 ON public."AO_733371_EVENT" USING btree ("EVENT_TYPE");
--
  -- Name: index_ao_733371_event_action; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_event_action ON public."AO_733371_EVENT" USING btree ("ACTION");
--
  -- Name: index_ao_733371_event_created; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_event_created ON public."AO_733371_EVENT" USING btree ("CREATED");
--
  -- Name: index_ao_733371_event_user_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_733371_event_user_key ON public."AO_733371_EVENT" USING btree ("USER_KEY");
--
  -- Name: index_ao_ac3877_rl_1696242418; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_ac3877_rl_1696242418 ON public."AO_AC3877_RL_USER_COUNTER" USING btree ("INTERVAL_START");
--
  -- Name: index_ao_ac3877_rl_2023752663; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_ac3877_rl_2023752663 ON public."AO_AC3877_RL_USER_COUNTER" USING btree ("USER_ID");
--
  -- Name: index_ao_ed669c_see20117222; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_ao_ed669c_see20117222 ON public."AO_ED669C_SEEN_ASSERTIONS" USING btree ("EXPIRY_TIMESTAMP");
--
  -- Name: issue_assignee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_assignee ON public.jiraissue USING btree (assignee);
--
  -- Name: issue_created; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_created ON public.jiraissue USING btree (created);
--
  -- Name: issue_duedate; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_duedate ON public.jiraissue USING btree (duedate);
--
  -- Name: issue_proj_num; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_proj_num ON public.jiraissue USING btree (issuenum, project);
--
  -- Name: issue_proj_status; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_proj_status ON public.jiraissue USING btree (project, issuestatus);
--
  -- Name: issue_reporter; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_reporter ON public.jiraissue USING btree (reporter);
--
  -- Name: issue_resolutiondate; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_resolutiondate ON public.jiraissue USING btree (resolutiondate);
--
  -- Name: issue_updated; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_updated ON public.jiraissue USING btree (updated);
--
  -- Name: issue_votes; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_votes ON public.jiraissue USING btree (votes);
--
  -- Name: issue_watches; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_watches ON public.jiraissue USING btree (watches);
--
  -- Name: issue_workflow; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_workflow ON public.jiraissue USING btree (workflow_id);
--
  -- Name: issuelink_dest; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issuelink_dest ON public.issuelink USING btree (destination);
--
  -- Name: issuelink_src; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issuelink_src ON public.issuelink USING btree (source);
--
  -- Name: issuelink_type; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issuelink_type ON public.issuelink USING btree (linktype);
--
  -- Name: label_fieldissue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX label_fieldissue ON public.label USING btree (issue, fieldid);
--
  -- Name: label_fieldissuelabel; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX label_fieldissuelabel ON public.label USING btree (issue, fieldid, label);
--
  -- Name: label_issue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX label_issue ON public.label USING btree (issue);
--
  -- Name: label_label; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX label_label ON public.label USING btree (label);
--
  -- Name: licenseroledefault_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX licenseroledefault_index ON public.licenserolesdefault USING btree (license_role_name);
--
  -- Name: licenserolegroup_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX licenserolegroup_index ON public.licenserolesgroup USING btree (license_role_name, group_id);
--
  -- Name: linktypename; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX linktypename ON public.issuelinktype USING btree (linkname);
--
  -- Name: linktypestyle; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX linktypestyle ON public.issuelinktype USING btree (pstyle);
--
  -- Name: managedconfigitem_id_type_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX managedconfigitem_id_type_idx ON public.managedconfigurationitem USING btree (item_id, item_type);
--
  -- Name: mshipbase_group; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX mshipbase_group ON public.membershipbase USING btree (group_name);
--
  -- Name: mshipbase_user; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX mshipbase_user ON public.membershipbase USING btree (user_name);
--
  -- Name: node_id_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX node_id_idx ON public.nodeindexcounter USING btree (node_id, sending_node_id);
--
  -- Name: node_operation_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX node_operation_idx ON public.replicatedindexoperation USING btree (node_id, affected_index, operation, index_time);
--
  -- Name: node_sink; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX node_sink ON public.nodeassociation USING btree (sink_node_id, sink_node_entity);
--
  -- Name: node_source; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX node_source ON public.nodeassociation USING btree (source_node_id, source_node_entity);
--
  -- Name: notif_messageid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX notif_messageid ON public.notificationinstance USING btree (messageid);
--
  -- Name: notif_source; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX notif_source ON public.notificationinstance USING btree (source);
--
  -- Name: ntfctn_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ntfctn_scheme ON public.notification USING btree (scheme);
--
  -- Name: oauth_consumer_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX oauth_consumer_index ON public.oauthconsumer USING btree (consumer_key);
--
  -- Name: oauth_consumer_service_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX oauth_consumer_service_index ON public.oauthconsumer USING btree (consumerservice);
--
  -- Name: oauth_consumer_token_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX oauth_consumer_token_index ON public.oauthconsumertoken USING btree (token);
--
  -- Name: oauth_consumer_token_key_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX oauth_consumer_token_key_index ON public.oauthconsumertoken USING btree (token_key);
--
  -- Name: oauth_sp_consumer_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX oauth_sp_consumer_index ON public.oauthspconsumer USING btree (consumer_key);
--
  -- Name: oauth_sp_consumer_key_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX oauth_sp_consumer_key_index ON public.oauthsptoken USING btree (consumer_key);
--
  -- Name: oauth_sp_token_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX oauth_sp_token_index ON public.oauthsptoken USING btree (token);
--
  -- Name: ordernumber_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ordernumber_idx ON public.clusterupgradestate USING btree (order_number);
--
  -- Name: osgroup_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX osgroup_name ON public.groupbase USING btree (groupname);
--
  -- Name: osproperty_entid_name_propkey; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX osproperty_entid_name_propkey ON public.propertyentry USING btree (entity_id, entity_name, property_key);
--
  -- Name: osproperty_propertykey; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX osproperty_propertykey ON public.propertyentry USING btree (property_key);
--
  -- Name: osuser_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX osuser_name ON public.userbase USING btree (username);
--
  -- Name: permission_key_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX permission_key_idx ON public.schemepermissions USING btree (permission_key);
--
  -- Name: ppage_username; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ppage_username ON public.portalpage USING btree (username);
--
  -- Name: prmssn_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX prmssn_scheme ON public.schemepermissions USING btree (scheme);
--
  -- Name: prmssn_scheme_attr_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX prmssn_scheme_attr_idx ON public.permissionschemeattribute USING btree (scheme);
--
  -- Name: prmssn_scheme_attr_key_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX prmssn_scheme_attr_key_idx ON public.permissionschemeattribute USING btree (scheme, attribute_key);
--
  -- Name: remembermetoken_username_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX remembermetoken_username_index ON public.remembermetoken USING btree (username);
--
  -- Name: remotelink_globalid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX remotelink_globalid ON public.remotelink USING btree (globalid);
--
  -- Name: remotelink_issueid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX remotelink_issueid ON public.remotelink USING btree (issueid, globalid);
--
  -- Name: role_pid_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX role_pid_idx ON public.projectroleactor USING btree (pid);
--
  -- Name: role_player_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX role_player_idx ON public.projectroleactor USING btree (projectroleid, pid);
--
  -- Name: rundetails_jobid_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX rundetails_jobid_idx ON public.rundetails USING btree (job_id);
--
  -- Name: rundetails_starttime_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX rundetails_starttime_idx ON public.rundetails USING btree (start_time);
--
  -- Name: screenitem_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX screenitem_scheme ON public.fieldscreenschemeitem USING btree (fieldscreenscheme);
--
  -- Name: searchrequest_filternamelower; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX searchrequest_filternamelower ON public.searchrequest USING btree (filtername_lower);
--
  -- Name: sec_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX sec_scheme ON public.schemeissuesecurities USING btree (scheme);
--
  -- Name: sec_security; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX sec_security ON public.schemeissuesecurities USING btree (security);
--
  -- Name: share_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX share_index ON public.sharepermissions USING btree (entityid, entitytype);
--
  -- Name: source_destination_node_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX source_destination_node_idx ON public.clustermessage USING btree (source_node, destination_node);
--
  -- Name: sr_author; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX sr_author ON public.searchrequest USING btree (authorname);
--
  -- Name: subscrpt_user; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX subscrpt_user ON public.filtersubscription USING btree (filter_i_d, username);
--
  -- Name: subscrptn_group; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX subscrptn_group ON public.filtersubscription USING btree (filter_i_d, groupname);
--
  -- Name: trustedapp_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX trustedapp_id ON public.trustedapp USING btree (application_id);
--
  -- Name: type_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX type_key ON public.genericconfiguration USING btree (datatype, datakey);
--
  -- Name: uh_type_user_entity; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uh_type_user_entity ON public.userhistoryitem USING btree (entitytype, username, entityid);
--
  -- Name: uk_application_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_application_name ON public.cwd_application USING btree (lower_application_name);
--
  -- Name: uk_directory_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX uk_directory_name ON public.cwd_directory USING btree (lower_directory_name);
--
  -- Name: uk_entitytranslation; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_entitytranslation ON public.entity_translation USING btree (entity_name, entity_id, locale);
--
  -- Name: uk_group_attr_name_lval; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_group_attr_name_lval ON public.cwd_group_attributes USING btree (group_id, attribute_name, lower_attribute_value);
--
  -- Name: uk_group_name_dir_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_group_name_dir_id ON public.cwd_group USING btree (lower_group_name, directory_id);
--
  -- Name: uk_lower_user_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_lower_user_name ON public.app_user USING btree (lower_user_name);
--
  -- Name: uk_mem_parent_child_type; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_mem_parent_child_type ON public.cwd_membership USING btree (parent_id, child_id, membership_type);
--
  -- Name: uk_user_attr_name_lval; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX uk_user_attr_name_lval ON public.cwd_user_attributes USING btree (user_id, attribute_name);
--
  -- Name: uk_user_externalid_dir_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX uk_user_externalid_dir_id ON public.cwd_user USING btree (external_id, directory_id);
--
  -- Name: uk_user_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_user_key ON public.app_user USING btree (user_key);
--
  -- Name: uk_user_name_dir_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uk_user_name_dir_id ON public.cwd_user USING btree (lower_user_name, directory_id);
--
  -- Name: upf_customfield; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX upf_customfield ON public.userpickerfilter USING btree (customfield);
--
  -- Name: upf_fieldconfigid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX upf_fieldconfigid ON public.userpickerfilter USING btree (customfieldconfig);
--
  -- Name: user_sink; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX user_sink ON public.userassociation USING btree (sink_node_id, sink_node_entity);
--
  -- Name: user_source; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX user_source ON public.userassociation USING btree (source_name);
--
  -- Name: userpref_portletconfiguration; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX userpref_portletconfiguration ON public.gadgetuserpreference USING btree (portletconfiguration);
--
  -- Name: votehistory_issue_index; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX votehistory_issue_index ON public.votehistory USING btree (issueid);
--
  -- Name: wf_entryid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX wf_entryid ON public.os_currentstep USING btree (entry_id);
--
  -- Name: workflow_scheme; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX workflow_scheme ON public.workflowschemeentity USING btree (scheme);
--
  -- Name: worklog_author; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX worklog_author ON public.worklog USING btree (author);
--
  -- Name: worklog_issue; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX worklog_issue ON public.worklog USING btree (issueid);
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_actor_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_activity_entity_actor_id FOREIGN KEY ("ACTOR_ID") REFERENCES public."AO_563AEE_ACTOR_ENTITY"("ID");
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_icon_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_activity_entity_icon_id FOREIGN KEY ("ICON_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_object_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_activity_entity_object_id FOREIGN KEY ("OBJECT_ID") REFERENCES public."AO_563AEE_OBJECT_ENTITY"("ID");
--
  -- Name: AO_563AEE_ACTIVITY_ENTITY fk_ao_563aee_activity_entity_target_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_ACTIVITY_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_activity_entity_target_id FOREIGN KEY ("TARGET_ID") REFERENCES public."AO_563AEE_TARGET_ENTITY"("ID");
--
  -- Name: AO_563AEE_OBJECT_ENTITY fk_ao_563aee_object_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_OBJECT_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_object_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");
--
  -- Name: AO_563AEE_TARGET_ENTITY fk_ao_563aee_target_entity_image_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_563AEE_TARGET_ENTITY"
ADD
  CONSTRAINT fk_ao_563aee_target_entity_image_id FOREIGN KEY ("IMAGE_ID") REFERENCES public."AO_563AEE_MEDIA_LINK_ENTITY"("ID");
--
  -- Name: AO_5FB9D7_AOHIP_CHAT_USER fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_5FB9D7_AOHIP_CHAT_USER"
ADD
  CONSTRAINT fk_ao_5fb9d7_aohip_chat_user_hip_chat_link_id FOREIGN KEY ("HIP_CHAT_LINK_ID") REFERENCES public."AO_5FB9D7_AOHIP_CHAT_LINK"("ID");
--
  -- Name: AO_733371_EVENT_PARAMETER fk_ao_733371_event_parameter_event_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_PARAMETER"
ADD
  CONSTRAINT fk_ao_733371_event_parameter_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");
--
  -- Name: AO_733371_EVENT_RECIPIENT fk_ao_733371_event_recipient_event_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public."AO_733371_EVENT_RECIPIENT"
ADD
  CONSTRAINT fk_ao_733371_event_recipient_event_id FOREIGN KEY ("EVENT_ID") REFERENCES public."AO_733371_EVENT"("ID");
--
  -- PostgreSQL database dump complete
  --