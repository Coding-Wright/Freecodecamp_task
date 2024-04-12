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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: done; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.done (
    we integer,
    are integer NOT NULL,
    done integer NOT NULL,
    name character varying(255),
    done_id integer NOT NULL,
    uni integer
);


ALTER TABLE public.done OWNER TO freecodecamp;

--
-- Name: done_done_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.done_done_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.done_done_id_seq OWNER TO freecodecamp;

--
-- Name: done_done_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.done_done_id_seq OWNED BY public.done.done_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    radius integer,
    distance_from_planet numeric(4,2),
    type text,
    has_life boolean,
    uni integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    radius integer,
    distance_from_planet numeric(4,2),
    type text,
    has_life boolean,
    planet_id integer,
    uni integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    radius integer,
    distance_from_planet numeric(4,2),
    type text,
    has_life boolean,
    star_id integer,
    uni integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    radius integer,
    distance_from_planet numeric(4,2),
    type text,
    has_life boolean,
    galaxy_id integer,
    uni integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: done done_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.done ALTER COLUMN done_id SET DEFAULT nextval('public.done_done_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: done; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.done VALUES (1, 2, 3, NULL, 1, NULL);
INSERT INTO public.done VALUES (4, 5, 6, NULL, 2, NULL);
INSERT INTO public.done VALUES (7, 8, 9, NULL, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Blazing Star Galaxy', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (2, 'Earth', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Mars', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (10, 'Eris', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Haumea', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (12, 'Makemake', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (13, 'Ceres', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Gonggong', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Quaoar', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (16, 'Mercury', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Earth', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (18, 'Mars', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (21, 'Saturn', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (22, 'Uranus', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (23, 'Neptune', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (24, 'Pluto', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (25, 'Eris', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (26, 'Haumea', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (27, 'Makemake', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (28, 'Ceres', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (29, 'Gonggong', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (30, 'Quaoar', NULL, NULL, NULL, NULL, NULL, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Eris', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Makemake', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (13, 'Ceres', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (14, 'Gonggong', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (15, 'Quaoar', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (16, 'Venus', NULL, NULL, NULL, NULL, NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (14, 'Fool', 3, 3, 4.67, 'something', true, 1, NULL);
INSERT INTO public.star VALUES (1, 'Sirius', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'Arcturus', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'Capella', NULL, NULL, NULL, NULL, NULL, 3, NULL);


--
-- Name: done_done_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.done_done_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: done done_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.done
    ADD CONSTRAINT done_pkey PRIMARY KEY (done_id);


--
-- Name: done done_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.done
    ADD CONSTRAINT done_uni_key UNIQUE (uni);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_uni_key UNIQUE (uni);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_uni_key UNIQUE (uni);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_uni_key UNIQUE (uni);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_uni_key UNIQUE (uni);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

