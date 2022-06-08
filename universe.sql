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
    name character varying NOT NULL,
    planet_size integer NOT NULL,
    age_in_millions_of_years numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: infos; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.infos (
    infos_id integer NOT NULL,
    name character varying NOT NULL,
    more character varying
);


ALTER TABLE public.infos OWNER TO freecodecamp;

--
-- Name: infos_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.infos_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infos_infos_id_seq OWNER TO freecodecamp;

--
-- Name: infos_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.infos_infos_id_seq OWNED BY public.infos.infos_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    weight integer,
    planet_id integer,
    age_in_millions_of_years numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    size numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    age_in_millions_of_years numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: infos infos_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infos ALTER COLUMN infos_id SET DEFAULT nextval('public.infos_infos_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'xaxa', 13, 13.5, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'xaxa', 1, 13.5, false, 1);
INSERT INTO public.galaxy VALUES (3, 'xaxa', 1, 13.5, false, 1);
INSERT INTO public.galaxy VALUES (4, 'xaxa', 1, 13.5, false, 1);
INSERT INTO public.galaxy VALUES (5, 'xaxa', 1, 13.5, false, 1);
INSERT INTO public.galaxy VALUES (6, 'xaxa', 1, 13.5, false, 1);


--
-- Data for Name: infos; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.infos VALUES (1, 'xaxa', 'xaxa');
INSERT INTO public.infos VALUES (2, 'xaxa', 'xaxaxa');
INSERT INTO public.infos VALUES (3, 'xaxa', 'xaxaxa');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (2, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (3, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (4, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (5, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (6, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (7, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (8, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (9, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (10, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (11, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (12, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (13, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (14, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (15, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (16, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (17, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (18, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (19, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (20, 'xaxa', 13, 1, 12.5);
INSERT INTO public.moon VALUES (21, 'xaxa', 13, 1, 12.5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (2, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (3, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (4, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (5, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (6, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (7, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (8, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (9, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (10, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (11, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);
INSERT INTO public.planet VALUES (12, 'xaxa', 13.5, 'asdasd', false, false, 1, 1.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'xaxa', 1, 13.5, false);
INSERT INTO public.star VALUES (2, 'xaxa', 1, 13.5, false);
INSERT INTO public.star VALUES (3, 'xaxa', 1, 13.5, false);
INSERT INTO public.star VALUES (4, 'xaxa', 1, 13.5, false);
INSERT INTO public.star VALUES (5, 'xaxa', 1, 13.5, false);
INSERT INTO public.star VALUES (6, 'xaxa', 1, 13.5, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: infos_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.infos_infos_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: infos infos_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infos
    ADD CONSTRAINT infos_pkey PRIMARY KEY (infos_id);


--
-- Name: infos infos_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.infos
    ADD CONSTRAINT infos_unique UNIQUE (infos_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
