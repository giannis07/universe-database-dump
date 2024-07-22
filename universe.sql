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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    description text,
    name character varying(100) NOT NULL,
    discovery_year integer,
    size_in_km integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    galaxy_type character varying(100) NOT NULL,
    distance_from_earth numeric
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
    planet_id integer,
    name character varying(100) NOT NULL,
    mass numeric NOT NULL,
    description text
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
    planet_type character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    has_water boolean NOT NULL,
    star_id integer,
    name character varying(100) NOT NULL,
    mass numeric NOT NULL
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
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    radius numeric
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (5, 'The largest asteroid in the asteroid belt.', 'Ceres', 1801, 940);
INSERT INTO public.asteroid VALUES (6, 'One of the largest asteroids in the asteroid belt, known for its bright surface.', 'Vesta', 1807, 525);
INSERT INTO public.asteroid VALUES (7, 'A large asteroid located in the asteroid belt with a diameter of approximately 512 km.', 'Pallas', 1802, 512);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', 'Spiral', 0);
INSERT INTO public.galaxy VALUES (2, 'Sunflower', 'M63 was first discovered by the French astronomer PierreMéchain.', 'Spiral', 37);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'The nearest major galaxy to the Milky Way.', 'Spiral', 2.537);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'It was discovered by Pierre Méchain in 1781', 'Spiral', 21);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'It lies in the constellation Canes Venatici, and was the first galaxy to be classified as a spiral galaxy.', 'Spiral', 23);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'It was discovered by Edward Pigott in March 1779', 'Spiral', 17);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (6, 2, 'Moon', 7347600000000000000000, 'The only natural satelite of Earth');
INSERT INTO public.moon VALUES (8, 2, 'Moonlet A', 100000000000000000000, 'A small moonlet orbiting Earth.');
INSERT INTO public.moon VALUES (10, 9, 'Sirius Moon', 500000000000000000000000, 'A large moon orbiting Sirius b.');
INSERT INTO public.moon VALUES (12, 9, 'Sirius Minor', 25000000000000000000000, 'A smaller moon orbiting Sirius  b.');
INSERT INTO public.moon VALUES (13, 11, 'Betelgeuse I', 40000000000000000000000000, 'A massive moon orbiting Betelgeuse b.');
INSERT INTO public.moon VALUES (14, 11, 'Betelgeuse II', 3500000000000000000000000, 'A medium-sized moon orbiting Betelgeuse b.');
INSERT INTO public.moon VALUES (15, 16, 'Altair I', 300000000000000000000000, 'A large moon orbiting Altair b.');
INSERT INTO public.moon VALUES (16, 16, 'Altair II', 12000000000000000000000, 'A smaller  moon orbiting Altair b.');
INSERT INTO public.moon VALUES (17, 7, 'Proxima Moon', 100000000000000000000000, 'A moon orbiting Proxima b.');
INSERT INTO public.moon VALUES (18, 7, 'Proxima Satellite', 70000000000000000000000, 'A satellite of Proxima b.');
INSERT INTO public.moon VALUES (19, 18, 'Altair V', 10000000000000000000000, 'A hypothetical moon of Altair d.');
INSERT INTO public.moon VALUES (20, 18, 'Altair VI', 5000000000000000000000, 'Another hypothetical moon of Altair d.');
INSERT INTO public.moon VALUES (21, 17, 'Altair III', 25000000000000000000000, 'A fictional moon orbiting Altair c.');
INSERT INTO public.moon VALUES (22, 17, 'Altair IV', 12000000000000000000000, 'Another fictional moon of Altair c.');
INSERT INTO public.moon VALUES (25, 15, 'Betelgeuse VII', 50000000000000000000000, 'A fictional moon orbiting Betelgeuse e.');
INSERT INTO public.moon VALUES (26, 15, 'Betelgeuse VIII', 20000000000000000000000, 'Another fictional moon of Betelgeuse e.');
INSERT INTO public.moon VALUES (27, 14, 'Betelgeuse V', 70000000000000000000000, 'A fictional moon orbiting Betelgeuse d.');
INSERT INTO public.moon VALUES (28, 14, 'Betelgeuse VI', 40000000000000000000000, 'Another fictional moon of Betelgeuse d.');
INSERT INTO public.moon VALUES (29, 13, 'Betelgeuse III', 60000000000000000000000, 'A fictional moon orbiting Betelgeuse c.');
INSERT INTO public.moon VALUES (30, 13, 'Betelgeuse IV', 30000000000000000000000, 'Another fictional moon of Betelgeuse c.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Terrestrial', 2, true, 6, 'Earth', 5972000000000000000000000);
INSERT INTO public.planet VALUES ('Terrestrial', 4, false, 6, 'Mars', 641700000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 5, false, 6, 'Jupiter', 1898000000000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 6, false, 6, 'Saturn', 568300000000000000000000000);
INSERT INTO public.planet VALUES ('Terrestrial', 7, true, 7, 'Proxima b', 127300000000000000000000);
INSERT INTO public.planet VALUES ('Rocky', 8, false, 7, 'Alpha Centauri C b', 16000000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 9, false, 7, 'Sirius b', 2500000000000000000000000000);
INSERT INTO public.planet VALUES ('Terrestrial', 11, true, 8, 'Betelgeuse b', 8400000000000000000000000);
INSERT INTO public.planet VALUES ('Rocky', 13, false, 8, 'Betelgeuse c', 710000000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 14, false, 8, 'Betelgeuse d', 3100000000000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 15, false, 8, 'Betelgeuse e', 2300000000000000000000000000000000000000000000);
INSERT INTO public.planet VALUES ('Terrestrial', 16, false, 9, 'Altair b', 5600000000000000000000000);
INSERT INTO public.planet VALUES ('Gas Giant', 17, false, 9, 'Altair c', 1200000000000000000000000000);
INSERT INTO public.planet VALUES ('Ice Giant', 18, false, 9, 'Altair d', 730000000000000000000000000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, true, 4600, 1, 'Sun', 1391000);
INSERT INTO public.star VALUES (7, true, 120, 1, 'Sirius A', 1.71);
INSERT INTO public.star VALUES (8, true, 10, 1, 'Betelgeuse', 1669200000);
INSERT INTO public.star VALUES (9, true, 150, 1, 'Altair', 2505800);
INSERT INTO public.star VALUES (10, true, 450, 3, 'Mirach', 2086500);
INSERT INTO public.star VALUES (11, true, 250, 3, 'Alpheratz', 2086500);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 30, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

