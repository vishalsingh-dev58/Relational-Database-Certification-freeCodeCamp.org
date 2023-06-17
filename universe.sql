--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    galaxy_type text,
    has_life boolean,
    has_satellite boolean,
    number_of_satellite integer,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL
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
    name character varying(20),
    description text,
    moon_type text,
    has_life boolean,
    has_satellite boolean,
    number_of_satellite integer,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL
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
    name character varying(20),
    description text,
    planet_type text,
    has_life boolean,
    has_satellite boolean,
    number_of_satellite integer,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(20),
    description text,
    satellite_type text,
    has_life boolean,
    has_satellite boolean,
    number_of_satellite integer,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    description text,
    star_type text,
    has_life boolean,
    has_satellite boolean,
    number_of_satellite integer,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric NOT NULL
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_A', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy_B', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy_C', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy_D', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy_E', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.galaxy VALUES (6, 'galaxy_F', NULL, NULL, NULL, NULL, NULL, 1, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES (2, 'moon_2', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.moon VALUES (3, 'moon_3', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.moon VALUES (4, 'moon_4', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.moon VALUES (5, 'moon_5', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.moon VALUES (6, 'moon_6', NULL, NULL, NULL, NULL, NULL, 1, 6);
INSERT INTO public.moon VALUES (7, 'moon_7', NULL, NULL, NULL, NULL, NULL, 1, 7);
INSERT INTO public.moon VALUES (8, 'moon_8', NULL, NULL, NULL, NULL, NULL, 1, 8);
INSERT INTO public.moon VALUES (9, 'moon_9', NULL, NULL, NULL, NULL, NULL, 1, 9);
INSERT INTO public.moon VALUES (10, 'moon_10', NULL, NULL, NULL, NULL, NULL, 1, 10);
INSERT INTO public.moon VALUES (11, 'moon_11', NULL, NULL, NULL, NULL, NULL, 1, 11);
INSERT INTO public.moon VALUES (12, 'moon_12', NULL, NULL, NULL, NULL, NULL, 1, 12);
INSERT INTO public.moon VALUES (13, 'moon_13', NULL, NULL, NULL, NULL, NULL, 1, 13);
INSERT INTO public.moon VALUES (14, 'moon_14', NULL, NULL, NULL, NULL, NULL, 1, 14);
INSERT INTO public.moon VALUES (15, 'moon_15', NULL, NULL, NULL, NULL, NULL, 1, 15);
INSERT INTO public.moon VALUES (16, 'moon_16', NULL, NULL, NULL, NULL, NULL, 1, 16);
INSERT INTO public.moon VALUES (17, 'moon_17', NULL, NULL, NULL, NULL, NULL, 1, 17);
INSERT INTO public.moon VALUES (18, 'moon_18', NULL, NULL, NULL, NULL, NULL, 1, 18);
INSERT INTO public.moon VALUES (19, 'moon_19', NULL, NULL, NULL, NULL, NULL, 1, 19);
INSERT INTO public.moon VALUES (20, 'moon_20', NULL, NULL, NULL, NULL, NULL, 1, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_A', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES (2, 'planet_B', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.planet VALUES (3, 'planet_C', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.planet VALUES (4, 'planet_D', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.planet VALUES (5, 'planet_E', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.planet VALUES (6, 'planet_F', NULL, NULL, NULL, NULL, NULL, 1, 6);
INSERT INTO public.planet VALUES (7, 'planet_G', NULL, NULL, NULL, NULL, NULL, 1, 7);
INSERT INTO public.planet VALUES (8, 'planet_H', NULL, NULL, NULL, NULL, NULL, 1, 8);
INSERT INTO public.planet VALUES (9, 'planet_I', NULL, NULL, NULL, NULL, NULL, 1, 9);
INSERT INTO public.planet VALUES (10, 'planet_J', NULL, NULL, NULL, NULL, NULL, 1, 10);
INSERT INTO public.planet VALUES (11, 'planet_K', NULL, NULL, NULL, NULL, NULL, 1, 11);
INSERT INTO public.planet VALUES (12, 'planet_L', NULL, NULL, NULL, NULL, NULL, 1, 12);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'satellite_A', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.satellite VALUES (2, 'satellite_B', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.satellite VALUES (3, 'satellite_C', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.satellite VALUES (4, 'satellite_D', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.satellite VALUES (5, 'satellite_E', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.satellite VALUES (6, 'satellite_F', NULL, NULL, NULL, NULL, NULL, 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_A', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES (2, 'star_B', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.star VALUES (3, 'star_C', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.star VALUES (4, 'star_D', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.star VALUES (5, 'star_E', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.star VALUES (6, 'star_F', NULL, NULL, NULL, NULL, NULL, 1, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_distance_from_earh_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earh_key UNIQUE (distance_from_earth);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: satellite pk_satellite; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT pk_satellite PRIMARY KEY (satellite_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: satellite satellite_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: satellite fk_distence_from_earth; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT fk_distence_from_earth FOREIGN KEY (distance_from_earth) REFERENCES public.moon(distance_from_earth);


--
-- PostgreSQL database dump complete
--

