--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 641, 642, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 643, 644, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 642, 644, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 641, 643, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 642, 650, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 644, 652, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 643, 654, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 641, 656, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 644, 658, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 652, 660, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 643, 662, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 654, 664, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 642, 666, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 650, 668, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 656, 670, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 641, 672, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 673, 672, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 675, 654, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 672, 675, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 673, 654, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 675, 682, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 672, 643, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 654, 658, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 673, 641, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 654, 690, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 658, 656, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 641, 694, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 673, 696, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 675, 664, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 682, 700, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 672, 660, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 643, 704, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (641, 'France');
INSERT INTO public.teams VALUES (642, 'Croatia');
INSERT INTO public.teams VALUES (643, 'Belgium');
INSERT INTO public.teams VALUES (644, 'England');
INSERT INTO public.teams VALUES (650, 'Russia');
INSERT INTO public.teams VALUES (652, 'Sweden');
INSERT INTO public.teams VALUES (654, 'Brazil');
INSERT INTO public.teams VALUES (656, 'Uruguay');
INSERT INTO public.teams VALUES (658, 'Colombia');
INSERT INTO public.teams VALUES (660, 'Switzerland');
INSERT INTO public.teams VALUES (662, 'Japan');
INSERT INTO public.teams VALUES (664, 'Mexico');
INSERT INTO public.teams VALUES (666, 'Denmark');
INSERT INTO public.teams VALUES (668, 'Spain');
INSERT INTO public.teams VALUES (670, 'Portugal');
INSERT INTO public.teams VALUES (672, 'Argentina');
INSERT INTO public.teams VALUES (673, 'Germany');
INSERT INTO public.teams VALUES (675, 'Netherlands');
INSERT INTO public.teams VALUES (682, 'Costa Rica');
INSERT INTO public.teams VALUES (690, 'Chile');
INSERT INTO public.teams VALUES (694, 'Nigeria');
INSERT INTO public.teams VALUES (696, 'Algeria');
INSERT INTO public.teams VALUES (700, 'Greece');
INSERT INTO public.teams VALUES (704, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 704, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_teams_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_teams_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_teams_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_teams_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

