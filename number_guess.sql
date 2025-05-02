--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE games_played;
--
-- Name: games_played; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE games_played WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE games_played OWNER TO freecodecamp;

\connect games_played

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_data (
    game_id integer NOT NULL,
    username character varying(22),
    gamescore integer
);


ALTER TABLE public.user_data OWNER TO freecodecamp;

--
-- Name: user_data_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_data_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_data_game_id_seq OWNER TO freecodecamp;

--
-- Name: user_data_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_data_game_id_seq OWNED BY public.user_data.game_id;


--
-- Name: user_data game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data ALTER COLUMN game_id SET DEFAULT nextval('public.user_data_game_id_seq'::regclass);


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_data VALUES (9, 'user_1746217794890', 887);
INSERT INTO public.user_data VALUES (10, 'user_1746217794890', 770);
INSERT INTO public.user_data VALUES (11, 'user_1746217794889', 720);
INSERT INTO public.user_data VALUES (12, 'user_1746217794889', 291);
INSERT INTO public.user_data VALUES (13, 'user_1746217794890', 625);
INSERT INTO public.user_data VALUES (14, 'user_1746217794890', 993);
INSERT INTO public.user_data VALUES (15, 'user_1746217794890', 615);
INSERT INTO public.user_data VALUES (16, 'k', 1);
INSERT INTO public.user_data VALUES (17, 'user_1746217844593', 973);
INSERT INTO public.user_data VALUES (18, 'user_1746217844593', 222);
INSERT INTO public.user_data VALUES (19, 'user_1746217844592', 808);
INSERT INTO public.user_data VALUES (20, 'user_1746217844592', 306);
INSERT INTO public.user_data VALUES (21, 'user_1746217844593', 628);
INSERT INTO public.user_data VALUES (22, 'user_1746217844593', 421);
INSERT INTO public.user_data VALUES (23, 'user_1746217844593', 747);
INSERT INTO public.user_data VALUES (24, 'user_1746225534932', 213);
INSERT INTO public.user_data VALUES (25, 'user_1746225534932', 428);
INSERT INTO public.user_data VALUES (26, 'user_1746225534931', 324);
INSERT INTO public.user_data VALUES (27, 'user_1746225534931', 591);
INSERT INTO public.user_data VALUES (28, 'user_1746225534932', 383);
INSERT INTO public.user_data VALUES (29, 'user_1746225534932', 85);
INSERT INTO public.user_data VALUES (30, 'user_1746225534932', 758);
INSERT INTO public.user_data VALUES (31, 'user_1746225579075', 134);
INSERT INTO public.user_data VALUES (32, 'user_1746225579075', 792);
INSERT INTO public.user_data VALUES (33, 'user_1746225579074', 266);
INSERT INTO public.user_data VALUES (34, 'user_1746225579074', 346);
INSERT INTO public.user_data VALUES (35, 'user_1746225579075', 481);
INSERT INTO public.user_data VALUES (36, 'user_1746225579075', 300);
INSERT INTO public.user_data VALUES (37, 'user_1746225579075', 953);
INSERT INTO public.user_data VALUES (38, 'user_1746225629481', 52);
INSERT INTO public.user_data VALUES (39, 'user_1746225629481', 117);
INSERT INTO public.user_data VALUES (40, 'user_1746225629480', 566);
INSERT INTO public.user_data VALUES (41, 'user_1746225629480', 719);
INSERT INTO public.user_data VALUES (42, 'user_1746225629481', 122);
INSERT INTO public.user_data VALUES (43, 'user_1746225629481', 776);
INSERT INTO public.user_data VALUES (44, 'user_1746225629481', 251);
INSERT INTO public.user_data VALUES (45, 'user_1746225659846', 391);
INSERT INTO public.user_data VALUES (46, 'user_1746225659846', 271);
INSERT INTO public.user_data VALUES (47, 'user_1746225659845', 233);
INSERT INTO public.user_data VALUES (48, 'user_1746225659845', 836);
INSERT INTO public.user_data VALUES (49, 'user_1746225659846', 737);
INSERT INTO public.user_data VALUES (50, 'user_1746225659846', 926);
INSERT INTO public.user_data VALUES (51, 'user_1746225659846', 446);
INSERT INTO public.user_data VALUES (52, 'user_1746225688111', 895);
INSERT INTO public.user_data VALUES (53, 'user_1746225688111', 811);
INSERT INTO public.user_data VALUES (54, 'user_1746225688110', 276);
INSERT INTO public.user_data VALUES (55, 'user_1746225688110', 401);
INSERT INTO public.user_data VALUES (56, 'user_1746225688111', 237);
INSERT INTO public.user_data VALUES (57, 'user_1746225688111', 375);
INSERT INTO public.user_data VALUES (58, 'user_1746225688111', 773);
INSERT INTO public.user_data VALUES (59, 'user_1746225703251', 667);
INSERT INTO public.user_data VALUES (60, 'user_1746225703251', 587);
INSERT INTO public.user_data VALUES (61, 'user_1746225703250', 241);
INSERT INTO public.user_data VALUES (62, 'user_1746225703250', 337);
INSERT INTO public.user_data VALUES (63, 'user_1746225703251', 122);
INSERT INTO public.user_data VALUES (64, 'user_1746225703251', 860);
INSERT INTO public.user_data VALUES (65, 'user_1746225703251', 170);


--
-- Name: user_data_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_data_game_id_seq', 65, true);


--
-- Name: user_data user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

