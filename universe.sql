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
-- Name: filler; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.filler (
    fill integer NOT NULL,
    name character varying(30),
    final boolean,
    filler_id integer NOT NULL
);


ALTER TABLE public.filler OWNER TO freecodecamp;

--
-- Name: filler_pr_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.filler_pr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filler_pr_seq OWNER TO freecodecamp;

--
-- Name: filler_pr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.filler_pr_seq OWNED BY public.filler.filler_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL,
    age_in_milions_of_years integer NOT NULL,
    describtion text
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
    name character varying(30),
    has_life boolean NOT NULL,
    age_in_milions_of_years numeric,
    planet_id integer NOT NULL
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
    name character varying(30),
    has_life boolean NOT NULL,
    age_in_milions_of_years numeric,
    star_id integer NOT NULL
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
    name character varying(30),
    has_life boolean NOT NULL,
    age_in_milions_of_years integer,
    galaxy_id integer NOT NULL
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
-- Name: filler filler_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler ALTER COLUMN filler_id SET DEFAULT nextval('public.filler_pr_seq'::regclass);


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
-- Data for Name: filler; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.filler VALUES (1, 'medo', true, 1);
INSERT INTO public.filler VALUES (2, 'medos', true, 2);
INSERT INTO public.filler VALUES (3, 'medoss', true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'mas', true, 20, 'this is a describtion');
INSERT INTO public.galaxy VALUES (2, 'mass', true, 20, 'this is a describtion');
INSERT INTO public.galaxy VALUES (3, 'masss', true, 20, 'this is a describtion');
INSERT INTO public.galaxy VALUES (4, 'massss', true, 20, 'this is a describtion');
INSERT INTO public.galaxy VALUES (5, 'masssss', true, 20, 'this is a describtion');
INSERT INTO public.galaxy VALUES (7, 'massssss', true, 20, 'this is a describtion');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'last_one', true, 222, 1);
INSERT INTO public.moon VALUES (2, 'last_one2', true, 222, 1);
INSERT INTO public.moon VALUES (3, 'last_one23', true, 222, 2);
INSERT INTO public.moon VALUES (4, 'last_one24', true, 222, 2);
INSERT INTO public.moon VALUES (5, 'last_one3', true, 222, 3);
INSERT INTO public.moon VALUES (6, 'last_one32', true, 222, 3);
INSERT INTO public.moon VALUES (7, 'last_one4', true, 222, 4);
INSERT INTO public.moon VALUES (8, 'last_one42', true, 222, 4);
INSERT INTO public.moon VALUES (9, 'last_one5', true, 222, 5);
INSERT INTO public.moon VALUES (10, 'last_one52', true, 222, 5);
INSERT INTO public.moon VALUES (11, 'last_one6', true, 222, 6);
INSERT INTO public.moon VALUES (12, 'last_one62', true, 222, 6);
INSERT INTO public.moon VALUES (13, 'last_one622', true, 222, 7);
INSERT INTO public.moon VALUES (14, 'last_one6222', true, 222, 7);
INSERT INTO public.moon VALUES (15, 'last_one7', true, 222, 7);
INSERT INTO public.moon VALUES (16, 'last_one8', true, 222, 7);
INSERT INTO public.moon VALUES (17, 'last_one9', true, 222, 7);
INSERT INTO public.moon VALUES (18, 'last_one99', true, 222, 8);
INSERT INTO public.moon VALUES (19, 'last_one999', true, 222, 8);
INSERT INTO public.moon VALUES (20, 'last_one1000', true, 222, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'idk', false, 322, 1);
INSERT INTO public.planet VALUES (2, 'idk2', false, 322, 2);
INSERT INTO public.planet VALUES (3, 'idk3', false, 322, 3);
INSERT INTO public.planet VALUES (4, 'idkk3', false, 322, 4);
INSERT INTO public.planet VALUES (5, 'idkk23', false, 322, 2);
INSERT INTO public.planet VALUES (6, 'idkk21', false, 322, 2);
INSERT INTO public.planet VALUES (7, 'idk21', false, 322, 3);
INSERT INTO public.planet VALUES (8, 'idk212', false, 322, 1);
INSERT INTO public.planet VALUES (9, 'ids2', false, 322, 3);
INSERT INTO public.planet VALUES (10, 'ids21', false, 322, 6);
INSERT INTO public.planet VALUES (11, 'idss21', false, 322, 6);
INSERT INTO public.planet VALUES (12, 'last', true, 322, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'nas', true, 233, 1);
INSERT INTO public.star VALUES (2, 'nass', true, 233, 2);
INSERT INTO public.star VALUES (3, 'nasss', true, 233, 3);
INSERT INTO public.star VALUES (4, 'nassss', true, 233, 3);
INSERT INTO public.star VALUES (5, 'nasssss', true, 233, 4);
INSERT INTO public.star VALUES (6, 'nassssss', true, 233, 5);
INSERT INTO public.star VALUES (7, 'nasssssss', true, 233, 7);


--
-- Name: filler_pr_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.filler_pr_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: filler filler_fill_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_fill_key UNIQUE (fill);


--
-- Name: filler filler_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.filler
    ADD CONSTRAINT filler_pkey PRIMARY KEY (filler_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon mn; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT mn UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet sp; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT sp UNIQUE (name);


--
-- Name: galaxy ss; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT ss UNIQUE (name);


--
-- Name: star st; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT st UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_planets_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_planets_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_stars_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_stars_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_stars_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_stars_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

