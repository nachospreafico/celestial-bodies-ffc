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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_years bigint,
    distance_from_earth numeric,
    description text
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_hole_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_million_of_years integer,
    is_visible_wo_telescope boolean,
    description text
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
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
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
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    galaxy_id integer
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_hole_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (1, 'Sagittarius A*', 4000000, NULL, 'A supermassive black hole at the center of the Milky Way galaxy.');
INSERT INTO public.black_holes VALUES (2, 'M87*', 5500000000, NULL, 'A supermassive black hole located in the center of the Virgo A galaxy.');
INSERT INTO public.black_holes VALUES (3, 'Cygnus X-1', 6000000, NULL, 'One of the first discovered candidates for a black hole, located in the constellation Cygnus.');
INSERT INTO public.black_holes VALUES (4, 'V404 Cygni', 6500, NULL, 'A binary system consisting of a black hole and a companion star, located in the constellation Cygnus.');
INSERT INTO public.black_holes VALUES (5, 'Messier 87*', 5500000000, NULL, 'A supermassive black hole located in the center of the Virgo A galaxy.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13000, true, 'The galaxy that contains our Solar System, including Earth.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.537, 13000, true, 'The nearest spiral galaxy to the Milky Way and the largest galaxy in the Local Group.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 13000, true, 'The third-largest galaxy in the Local Group and the smallest spiral galaxy in the Local Group.');
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 12, 13000, true, 'A spiral galaxy located in the constellation Ursa Major.');
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 53.5, 13000, true, 'A supergiant elliptical galaxy in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (6, 'Messier 51', 31, 13000, true, 'A spiral galaxy located in the constellation Canes Venatici.');
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 28, 13000, true, 'A spiral galaxy in the constellation Virgo characterized by its prominent dust lane and bulge.');
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 11, 13000, true, 'A peculiar galaxy located in the constellation Centaurus, notable for its active galactic nucleus.');
INSERT INTO public.galaxy VALUES (9, 'Whirlpool', 23, 13000, true, 'A spiral galaxy in the constellation Canes Venatici, also known as M51 or NGC 5194.');
INSERT INTO public.galaxy VALUES (10, 'Pinwheel', 25, 13000, true, 'A face-on spiral galaxy in the constellation Ursa Major, also known as Messier 101.');
INSERT INTO public.galaxy VALUES (11, 'Cigar', 12, 13000, true, 'A barred spiral galaxy in the constellation Ursa Major, also known as Messier 82.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Luna', 4500, 0.384, 'The Earth''s only natural satellite.', true, 13);
INSERT INTO public.moon VALUES (62, 'Phobos', 4000, 9.377, 'The larger and closer of the two natural satellites of Mars.', true, 14);
INSERT INTO public.moon VALUES (63, 'Deimos', 4000, 23.460, 'The smaller and outermost of the two natural satellites of Mars.', true, 14);
INSERT INTO public.moon VALUES (64, 'Ganymede', 4500, 1.070, 'The largest moon of Jupiter and in the Solar System, and the only moon known to have its own magnetic field.', true, 17);
INSERT INTO public.moon VALUES (65, 'Callisto', 4500, 1.882, 'The second-largest moon of Jupiter and the third-largest moon in the Solar System.', true, 17);
INSERT INTO public.moon VALUES (66, 'Io', 4500, 0.421, 'The innermost of the four Galilean moons of Jupiter and the fourth-largest moon in the Solar System.', true, 17);
INSERT INTO public.moon VALUES (67, 'Europa', 4500, 0.671, 'The smallest of the four Galilean moons of Jupiter and the sixth-closest to the planet.', true, 17);
INSERT INTO public.moon VALUES (68, 'Titan', 4500, 1.222, 'The largest moon of Saturn and the second-largest natural satellite in the Solar System.', true, 18);
INSERT INTO public.moon VALUES (69, 'Rhea', 4500, 1.527, 'The second-largest moon of Saturn and the ninth-largest moon in the Solar System.', true, 18);
INSERT INTO public.moon VALUES (70, 'Iapetus', 4500, 3.560, 'The third-largest natural satellite of Saturn, and the eleventh-largest in the Solar System.', true, 18);
INSERT INTO public.moon VALUES (71, 'Mimas', 4500, 1.247, 'A moon of Saturn which was discovered in 1789 by William Herschel.', true, 18);
INSERT INTO public.moon VALUES (72, 'Enceladus', 4500, 1.271, 'A moon of Saturn which was discovered in 1789 by William Herschel.', true, 18);
INSERT INTO public.moon VALUES (73, 'Triton', 4400, 354.76, 'The largest natural satellite of the planet Neptune, and the only large moon in the Solar System with a retrograde orbit.', true, 20);
INSERT INTO public.moon VALUES (74, 'Charon', 4400, 19.571, 'The largest of the five known natural satellites of the dwarf planet Pluto.', true, 21);
INSERT INTO public.moon VALUES (75, 'Dione', 4500, 2.737, 'A moon of Saturn which was discovered in 1789 by William Herschel.', true, 18);
INSERT INTO public.moon VALUES (76, 'Ariel', 4500, 191.020, 'The fourth-largest of the 27 known moons of Uranus.', true, 19);
INSERT INTO public.moon VALUES (77, 'Umbriel', 4500, 266.000, 'A moon of Uranus which was discovered in 1851 by William Lassell.', true, 19);
INSERT INTO public.moon VALUES (78, 'Titania', 4500, 435.910, 'The largest of the moons of Uranus and the eighth largest moon in the Solar System.', true, 19);
INSERT INTO public.moon VALUES (79, 'Oberon', 4500, 584.300, 'A moon of Uranus which was discovered in 1787 by William Herschel.', true, 19);
INSERT INTO public.moon VALUES (80, 'Miranda', 4500, 129.780, 'A moon of Uranus which was discovered in 1948 by Gerard Kuiper.', true, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', 4500, 1, 'The third planet from the Sun, and the only astronomical object known to harbor life. It is home to millions of species, including humans.', true, 1);
INSERT INTO public.planet VALUES (14, 'Mars', 4000, 1.5, 'The fourth planet from the Sun. It is a cold desert world with a thin atmosphere, known for its reddish appearance.', false, 1);
INSERT INTO public.planet VALUES (15, 'Venus', 4500, 0.7, 'The second planet from the Sun. It is a rocky planet with a thick atmosphere that traps heat, making it the hottest planet in the solar system.', false, 1);
INSERT INTO public.planet VALUES (16, 'Mercury', 4400, 0.4, 'The smallest and innermost planet in the solar system. It has no natural satellite and completes an orbit around the Sun in just 88 days.', false, 1);
INSERT INTO public.planet VALUES (17, 'Jupiter', 4500, 5.2, 'The largest planet in the solar system. It is a gas giant with a banded appearance and numerous moons, including the largest moon, Ganymede.', false, 1);
INSERT INTO public.planet VALUES (18, 'Saturn', 4500, 9.5, 'The sixth planet from the Sun. It is known for its prominent ring system, composed mostly of ice particles and dust.', false, 1);
INSERT INTO public.planet VALUES (19, 'Uranus', 4500, 19.2, 'The seventh planet from the Sun. It is an ice giant with a pale blue color due to the presence of methane in its atmosphere.', false, 1);
INSERT INTO public.planet VALUES (20, 'Neptune', 4500, 30.1, 'The eighth and farthest known planet from the Sun. It is a cold and windy world with a blue appearance, similar to Uranus.', false, 1);
INSERT INTO public.planet VALUES (21, 'Pluto', 4400, 39.5, 'A dwarf planet located in the Kuiper belt, beyond the orbit of Neptune. It was considered the ninth planet until reclassified in 2006.', false, 1);
INSERT INTO public.planet VALUES (22, 'Alpha Centauri Bb', 6000, 4.37, 'A potentially habitable exoplanet orbiting the red dwarf star Alpha Centauri B, part of the Alpha Centauri star system.', false, 2);
INSERT INTO public.planet VALUES (23, 'Proxima Centauri b', 6000, 4.24, 'An exoplanet orbiting the red dwarf star Proxima Centauri, the closest known exoplanet to the Solar System and a potentially habitable world.', false, 2);
INSERT INTO public.planet VALUES (24, 'Kepler-186f', 5000, 490, 'The first Earth-sized exoplanet discovered orbiting within the habitable zone of its star. It is located about 500 light-years away in the constellation of Cygnus.', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4500, 0, 'The star at the center of the Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 200, 8.6, 'The brightest star in the night sky, also known as the Dog Star.', 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 6000, 4.37, 'The primary star in the Alpha Centauri system, the closest star system to the Solar System.', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 8000, 643, 'A red supergiant star in the constellation Orion.', 2);
INSERT INTO public.star VALUES (5, 'Vega', 450, 25.05, 'The fifth-brightest star in the night sky, and the second-brightest star in the northern celestial hemisphere.', 3);
INSERT INTO public.star VALUES (6, 'Arcturus', 7000, 36.7, 'The brightest star in the northern celestial hemisphere and the fourth-brightest star in the night sky.', 4);
INSERT INTO public.star VALUES (7, 'Aldebaran', 6500, 65.3, 'A giant star located in the constellation Taurus.', 5);
INSERT INTO public.star VALUES (8, 'Antares', 12000, 550, 'A red supergiant star in the constellation Scorpius.', 6);
INSERT INTO public.star VALUES (9, 'Pollux', 7000, 33.7, 'The brightest star in the constellation Gemini.', 7);
INSERT INTO public.star VALUES (10, 'Deneb', 8000, 2600, 'A supergiant star in the constellation Cygnus.', 8);
INSERT INTO public.star VALUES (11, 'Altair', 600, 16.7, 'The twelfth-brightest star in the night sky and the brightest star in the constellation Aquila.', 9);


--
-- Name: black_holes_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_holes unique_bh_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT unique_bh_id UNIQUE (black_holes_id);


--
-- Name: galaxy unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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

