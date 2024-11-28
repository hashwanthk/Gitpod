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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    is_orphan boolean
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
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    is_orphan boolean,
    planet_id integer
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
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    is_orphan boolean,
    star_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    is_orphan boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 4500, 0, 250000.1234, 'The galaxy that contains our Solar System.', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13000, 0, 2537000.5678, 'The nearest spiral galaxy to the Milky Way.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 0, 3200000.9101, 'A member of the Local Group of galaxies.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 5000, 0, 5000000.2345, 'Known for its distinctive spiral structure.', true, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 12000, 0, 10000000.6789, 'Famous for its bright nucleus and large central bulge.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 8000, 0, 12000000.1234, 'A face-on spiral galaxy in the constellation Ursa Major.', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon Europa', 4500, 0, 628.3, 'A moon of Jupiter, known for its icy surface.', true, false, 162);
INSERT INTO public.moon VALUES (2, 'Moon Titan', 4500, 0, 1270, 'The largest moon of Saturn, with a thick atmosphere.', true, false, 163);
INSERT INTO public.moon VALUES (3, 'Moon Ganymede', 4500, 0, 628.3, 'The largest moon in the Solar System, orbiting Jupiter.', true, false, 164);
INSERT INTO public.moon VALUES (4, 'Moon Callisto', 4500, 0, 628.3, 'A heavily cratered moon of Jupiter.', true, false, 165);
INSERT INTO public.moon VALUES (5, 'Moon Io', 4500, 0, 628.3, 'A volcanic moon of Jupiter.', true, false, 166);
INSERT INTO public.moon VALUES (6, 'Moon Enceladus', 4500, 0, 1270, 'A moon of Saturn, known for its geysers.', true, false, 167);
INSERT INTO public.moon VALUES (7, 'Moon Triton', 4500, 0, 4500, 'The largest moon of Neptune, with a retrograde orbit.', true, false, 168);
INSERT INTO public.moon VALUES (8, 'Moon Charon', 4500, 0, 5906.4, 'The largest moon of Pluto.', true, false, 169);
INSERT INTO public.moon VALUES (9, 'Moon Dione', 4500, 0, 1270, 'A moon of Saturn, with a heavily cratered surface.', true, false, 170);
INSERT INTO public.moon VALUES (10, 'Moon Tethys', 4500, 0, 1270, 'A moon of Saturn, known for its large impact crater.', true, false, 171);
INSERT INTO public.moon VALUES (11, 'Moon Rhea', 4500, 0, 1270, 'The second-largest moon of Saturn.', true, false, 172);
INSERT INTO public.moon VALUES (12, 'Moon Iapetus', 4500, 0, 1270, 'A moon of Saturn, known for its two-tone coloration.', true, false, 173);
INSERT INTO public.moon VALUES (13, 'Moon Oberon', 4500, 0, 2871, 'The second-largest moon of Uranus.', true, false, 174);
INSERT INTO public.moon VALUES (14, 'Moon Titania', 4500, 0, 2871, 'The largest moon of Uranus.', true, false, 175);
INSERT INTO public.moon VALUES (15, 'Moon Umbriel', 4500, 0, 2871, 'A dark moon of Uranus.', true, false, 176);
INSERT INTO public.moon VALUES (16, 'Moon Ariel', 4500, 0, 2871, 'A bright moon of Uranus.', true, false, 177);
INSERT INTO public.moon VALUES (17, 'Moon Miranda', 4500, 0, 2871, 'A moon of Uranus, known for its extreme geological features.', true, false, 178);
INSERT INTO public.moon VALUES (18, 'Moon Phobos', 4500, 0, 0.000228, 'The larger of the two moons of Mars.', true, false, 179);
INSERT INTO public.moon VALUES (19, 'Moon Deimos', 4500, 0, 0.000228, 'The smaller of the two moons of Mars.', true, false, 180);
INSERT INTO public.moon VALUES (20, 'Moon Mimas', 4500, 0, 1270, 'A moon of Saturn, known for its large crater.', true, false, 181);
INSERT INTO public.moon VALUES (21, 'Moon Hyperion', 4500, 0, 1270, 'A moon of Saturn, known for its irregular shape.', true, false, 182);
INSERT INTO public.moon VALUES (22, 'Moon Nereid', 4500, 0, 4500, 'A moon of Neptune, with a highly eccentric orbit.', true, false, 183);
INSERT INTO public.moon VALUES (23, 'Moon Proteus', 4500, 0, 4500, 'A moon of Neptune, known for its irregular shape.', true, false, 184);
INSERT INTO public.moon VALUES (24, 'Moon Larissa', 4500, 0, 4500, 'A moon of Neptune, discovered by Voyager 2.', true, false, 185);
INSERT INTO public.moon VALUES (25, 'Moon Galatea', 4500, 0, 4500, 'A moon of Neptune, known for its close orbit.', true, false, 186);
INSERT INTO public.moon VALUES (26, 'Moon Despina', 4500, 0, 4500, 'A moon of Neptune, named after a sea nymph.', true, false, 187);
INSERT INTO public.moon VALUES (27, 'Moon Amalthea', 4500, 0, 628.3, 'A small moon of Jupiter, known for its irregular shape.', true, false, 162);
INSERT INTO public.moon VALUES (28, 'Moon Thebe', 4500, 0, 628.3, 'A moon of Jupiter, discovered by Voyager 1.', true, false, 163);
INSERT INTO public.moon VALUES (29, 'Moon Adrastea', 4500, 0, 628.3, 'A small moon of Jupiter, discovered by Voyager 2.', true, false, 164);
INSERT INTO public.moon VALUES (30, 'Moon Metis', 4500, 0, 628.3, 'The innermost moon of Jupiter.', true, false, 165);
INSERT INTO public.moon VALUES (31, 'Moon Himalia', 4500, 0, 628.3, 'The largest irregular moon of Jupiter.', true, false, 166);
INSERT INTO public.moon VALUES (32, 'Moon Elara', 4500, 0, 628.3, 'A moon of Jupiter, discovered by Charles Dillon Perrine.', true, false, 167);
INSERT INTO public.moon VALUES (33, 'Moon Pasiphae', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 168);
INSERT INTO public.moon VALUES (34, 'Moon Sinope', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 169);
INSERT INTO public.moon VALUES (35, 'Moon Lysithea', 4500, 0, 628.3, 'A prograde irregular moon of Jupiter.', true, false, 170);
INSERT INTO public.moon VALUES (36, 'Moon Carme', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 171);
INSERT INTO public.moon VALUES (37, 'Moon Ananke', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 172);
INSERT INTO public.moon VALUES (38, 'Moon Leda', 4500, 0, 628.3, 'A small moon of Jupiter, discovered by Charles T. Kowal.', true, false, 173);
INSERT INTO public.moon VALUES (39, 'Moon Callirrhoe', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 174);
INSERT INTO public.moon VALUES (40, 'Moon Themisto', 4500, 0, 628.3, 'A small moon of Jupiter, discovered by Charles T. Kowal.', true, false, 175);
INSERT INTO public.moon VALUES (41, 'Moon Megaclite', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 176);
INSERT INTO public.moon VALUES (42, 'Moon Taygete', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 177);
INSERT INTO public.moon VALUES (43, 'Moon Chaldene', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 178);
INSERT INTO public.moon VALUES (44, 'Moon Harpalyke', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 179);
INSERT INTO public.moon VALUES (45, 'Moon Kalyke', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 180);
INSERT INTO public.moon VALUES (46, 'Moon Iocaste', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 181);
INSERT INTO public.moon VALUES (47, 'Moon Erinome', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 182);
INSERT INTO public.moon VALUES (48, 'Moon Aitne', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 183);
INSERT INTO public.moon VALUES (49, 'Moon Eurydome', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 184);
INSERT INTO public.moon VALUES (50, 'Moon Autonoe', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 185);
INSERT INTO public.moon VALUES (51, 'Moon Thyone', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 186);
INSERT INTO public.moon VALUES (52, 'Moon Hermippe', 4500, 0, 628.3, 'A retrograde irregular moon of Jupiter.', true, false, 187);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (162, 'Earth', 4500, 1, 0.0000158, 'The only planet known to support life.', true, false, 7);
INSERT INTO public.planet VALUES (163, 'Mars', 4500, 0, 0.000228, 'Known as the Red Planet.', true, false, 8);
INSERT INTO public.planet VALUES (164, 'Jupiter', 4500, 0, 0.000778, 'The largest planet in our Solar System.', true, false, 9);
INSERT INTO public.planet VALUES (165, 'Saturn', 4500, 0, 0.001429, 'Famous for its ring system.', true, false, 10);
INSERT INTO public.planet VALUES (166, 'Venus', 4500, 0, 0.000108, 'The hottest planet in our Solar System.', true, false, 11);
INSERT INTO public.planet VALUES (167, 'Proxima b', 4500, 0, 4.24, 'An exoplanet orbiting Proxima Centauri.', true, false, 12);
INSERT INTO public.planet VALUES (168, 'Kepler-22b', 6000, 0, 600, 'An exoplanet in the habitable zone of its star.', true, false, 13);
INSERT INTO public.planet VALUES (169, 'Gliese 581g', 7000, 0, 20.3, 'A potentially habitable exoplanet.', true, false, 14);
INSERT INTO public.planet VALUES (170, 'HD 209458 b', 5000, 0, 153, 'A well-studied exoplanet known as Osiris.', true, false, 15);
INSERT INTO public.planet VALUES (171, 'TRAPPIST-1e', 500, 0, 39.5, 'One of the seven Earth-sized planets in the TRAPPIST-1 system.', true, false, 16);
INSERT INTO public.planet VALUES (172, 'Kepler-186f', 5000, 0, 490, 'An Earth-sized exoplanet in the habitable zone.', true, false, 7);
INSERT INTO public.planet VALUES (173, 'Ross 128 b', 5000, 0, 11, 'A temperate exoplanet orbiting a red dwarf.', true, false, 8);
INSERT INTO public.planet VALUES (174, 'Wolf 1061c', 5000, 0, 13.8, 'A potentially habitable exoplanet.', true, false, 9);
INSERT INTO public.planet VALUES (175, 'GJ 667 Cc', 5000, 0, 23.6, 'A super-Earth in the habitable zone.', true, false, 10);
INSERT INTO public.planet VALUES (176, 'K2-18b', 5000, 0, 124, 'An exoplanet with potential for liquid water.', true, false, 11);
INSERT INTO public.planet VALUES (177, 'Teegarden b', 5000, 0, 12.5, 'A potentially habitable exoplanet.', true, false, 12);
INSERT INTO public.planet VALUES (178, 'TOI 700 d', 5000, 0, 101.4, 'An Earth-sized exoplanet in the habitable zone.', true, false, 13);
INSERT INTO public.planet VALUES (179, 'Kepler-1649c', 5000, 0, 300, 'An Earth-sized exoplanet in the habitable zone.', true, false, 14);
INSERT INTO public.planet VALUES (180, 'Kepler-62f', 5000, 0, 1200, 'A super-Earth exoplanet in the habitable zone.', true, false, 15);
INSERT INTO public.planet VALUES (181, 'Kepler-442b', 5000, 0, 1200, 'A rocky exoplanet in the habitable zone.', true, false, 16);
INSERT INTO public.planet VALUES (182, 'Kepler-69c', 5000, 0, 2700, 'A super-Earth exoplanet in the habitable zone.', true, false, 7);
INSERT INTO public.planet VALUES (183, 'Kepler-62e', 5000, 0, 1200, 'A super-Earth exoplanet in the habitable zone.', true, false, 8);
INSERT INTO public.planet VALUES (184, 'Kepler-1652b', 5000, 0, 800, 'A potentially habitable exoplanet.', true, false, 9);
INSERT INTO public.planet VALUES (185, 'Kepler-1229b', 5000, 0, 870, 'A super-Earth exoplanet in the habitable zone.', true, false, 10);
INSERT INTO public.planet VALUES (186, 'Kepler-452b', 5000, 0, 1400, 'A super-Earth exoplanet in the habitable zone.', true, false, 11);
INSERT INTO public.planet VALUES (187, 'LHS 1140 b', 5000, 0, 40, 'A rocky exoplanet in the habitable zone.', true, false, 12);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planets with solid surfaces, like Earth and Mars.');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planets with thick gaseous atmospheres, like Jupiter and Saturn.');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Planets with icy compositions and thick atmospheres, like Uranus and Neptune.');
INSERT INTO public.planet_types VALUES (4, 'Dwarf Planet', 'Small planetary bodies that orbit the Sun, like Pluto.');
INSERT INTO public.planet_types VALUES (5, 'Super-Earth', 'Exoplanets with masses larger than Earth but smaller than Neptune.');
INSERT INTO public.planet_types VALUES (6, 'Mini-Neptune', 'Small gas giants with thick atmospheres, smaller than Neptune.');
INSERT INTO public.planet_types VALUES (7, 'Hot Jupiter', 'Gas giants that orbit very close to their stars, with high surface temperatures.');
INSERT INTO public.planet_types VALUES (8, 'Rogue Planet', 'Planets that do not orbit any star and drift through space.');
INSERT INTO public.planet_types VALUES (9, 'Ocean Planet', 'Planets with vast oceans covering their surfaces.');
INSERT INTO public.planet_types VALUES (10, 'Desert Planet', 'Planets with arid, desert-like conditions and little to no water.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', 4600, 0, 0.0000158, 'The star at the center of our Solar System.', true, false, 1);
INSERT INTO public.star VALUES (8, 'Sirius', 242, 0, 8.6, 'The brightest star in the night sky.', true, false, 2);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 10000, 0, 642.5, 'A red supergiant star in the constellation Orion.', true, false, 3);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', 4500, 0, 4.24, 'The closest known star to the Sun.', true, false, 1);
INSERT INTO public.star VALUES (11, 'Vega', 455, 0, 25.3, 'The fifth-brightest star in the night sky.', true, false, 2);
INSERT INTO public.star VALUES (12, 'Rigel', 8000, 0, 863, 'A blue supergiant star in the constellation Orion.', true, false, 3);
INSERT INTO public.star VALUES (13, 'Altair', 1200, 0, 16.7, 'The brightest star in the constellation Aquila.', true, false, 4);
INSERT INTO public.star VALUES (14, 'Aldebaran', 6500, 0, 65.1, 'A red giant star in the constellation Taurus.', true, false, 5);
INSERT INTO public.star VALUES (15, 'Antares', 12000, 0, 550, 'A red supergiant star in the constellation Scorpius.', true, false, 6);
INSERT INTO public.star VALUES (16, 'Polaris', 7000, 0, 433.8, 'The current North Star, located in the constellation Ursa Minor.', true, false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 187, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 10, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 16, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

