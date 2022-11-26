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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    discovered character varying(20) NOT NULL,
    description text,
    name character varying(30) NOT NULL
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
    name character varying(30) NOT NULL,
    visible_with_naked_eye character varying(4),
    galaxy_size_in_kpc numeric(4,2),
    age_in_billions_of_years integer,
    galaxy_info text
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
    name character varying(30) NOT NULL,
    orbits character varying(30),
    moon_info text,
    age_in_billions_of_years integer,
    discovered character varying(30)
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
    name character varying(30) NOT NULL,
    moon_info text,
    in_milky_way boolean,
    age_in_billions_of_years integer,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    in_milky_way boolean,
    galaxy_size_in_kpc numeric(4,2),
    age_in_billions_of_years integer,
    temp_in_k integer
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

INSERT INTO public.asteroid VALUES (1, '01-01-1801', NULL, 'Ceres');
INSERT INTO public.asteroid VALUES (2, '03-29-1807', NULL, 'Vesta');
INSERT INTO public.asteroid VALUES (3, '11-15-1852', NULL, 'Lutetia');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Yes', 26.80, 13, 'The Milky Way is the solar system Earth is in');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Yes', 46.56, 10, 'The Andromeda Galaxy is the only galaxy other than the Milky Way to be visible in the night sky');
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'No', 12.52, NULL, 'This galaxy is much more luminous than the Milky Way');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'No', 23.58, NULL, 'This is classified as a spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 'No', 51.91, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'No', 15.00, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobas', 'Mars', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Io', 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Jupiter', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Titan', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Triton', 'Neptune', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Luna', 'Earth', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Hyperion', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Proteus', 'Neptune', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Tethys', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Phoebe', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Deimos', 'Mars', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', 'Saturn', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Uranus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Uranus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Uranus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Uranus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Iapetus', 'Saturn', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Luna
', true, 4, true);
INSERT INTO public.planet VALUES (2, 'Venus', 'Has no moons', true, 4, true);
INSERT INTO public.planet VALUES (3, 'Uranus', 'Uranus has a lot a moons', true, 4, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars has quite a few moons', true, 4, true);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Saturn has many moons', true, 4, false);
INSERT INTO public.planet VALUES (6, 'Neptune', NULL, true, 4, NULL);
INSERT INTO public.planet VALUES (7, 'Jupiter', NULL, true, 4, false);
INSERT INTO public.planet VALUES (8, 'Mercury', NULL, true, 4, true);
INSERT INTO public.planet VALUES (9, 'WASP-12b', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'WASP-17b', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-138d', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, '17 Scorpii b', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 26.80, 4, 5772);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 26.80, NULL, 9940);
INSERT INTO public.star VALUES (3, 'Canopus', NULL, 26.80, NULL, 7350);
INSERT INTO public.star VALUES (4, 'Capella', NULL, 26.80, NULL, 4970);
INSERT INTO public.star VALUES (5, 'Vega', NULL, 26.80, NULL, 9602);
INSERT INTO public.star VALUES (6, 'Rigel', NULL, 26.80, NULL, 11000);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_discovered_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_discovered_key UNIQUE (discovered);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_size_in_kpc_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_size_in_kpc_key UNIQUE (galaxy_size_in_kpc);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_discovered_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_discovered_key UNIQUE (discovered);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_info_key UNIQUE (moon_info);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_in_milky_way_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_milky_way_key UNIQUE (in_milky_way);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_info_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_info_fkey FOREIGN KEY (moon_info) REFERENCES public.planet(moon_info);


--
-- Name: planet planet_in_milky_way_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_in_milky_way_fkey FOREIGN KEY (in_milky_way) REFERENCES public.star(in_milky_way);


--
-- Name: star star_galaxy_size_in_kpc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_size_in_kpc_fkey FOREIGN KEY (galaxy_size_in_kpc) REFERENCES public.galaxy(galaxy_size_in_kpc);


--
-- PostgreSQL database dump complete
--

