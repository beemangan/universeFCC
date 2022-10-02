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
    name character varying(32) NOT NULL,
    galaxy_age_in_million numeric(4,2) NOT NULL,
    galaxy_radius_in_kpc numeric(3,1) NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(32) NOT NULL,
    radius_km numeric(32,4) NOT NULL,
    mass_kg integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(32) NOT NULL,
    planet_type text NOT NULL,
    is_habitable boolean NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(32) NOT NULL,
    is_hostile boolean NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(32) NOT NULL,
    star_type character varying(16) NOT NULL,
    star_radius_in_km integer NOT NULL,
    star_mass_in_suns integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 12.60, 53.6, true);
INSERT INTO public.galaxy VALUES (2, 'Super Mario', 1.10, 28.2, true);
INSERT INTO public.galaxy VALUES (3, 'Gusty Garden', 3.40, 12.1, true);
INSERT INTO public.galaxy VALUES (4, 'Honeyhive', 0.40, 0.3, true);
INSERT INTO public.galaxy VALUES (5, 'Ghostly', 99.99, 0.0, false);
INSERT INTO public.galaxy VALUES (6, 'Deep Dark', 0.00, 0.0, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 1111.1000, 1000000);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 222.2000, 1111);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 123123.4000, 98709182);
INSERT INTO public.moon VALUES (4, 5, 'Titan', 9879080.0000, 678576);
INSERT INTO public.moon VALUES (5, 6, 'Ganymede', 87987.0000, 567576);
INSERT INTO public.moon VALUES (6, 6, 'Io', 12371987.0000, 765823);
INSERT INTO public.moon VALUES (7, 7, 'Placeholder1', 0.0000, 0);
INSERT INTO public.moon VALUES (8, 7, 'Placeholder2', 0.0000, 0);
INSERT INTO public.moon VALUES (9, 8, 'Placeholder3', 0.0000, 0);
INSERT INTO public.moon VALUES (10, 9, 'p4', 0.0000, 0);
INSERT INTO public.moon VALUES (11, 10, 'p5', 1.0000, 1);
INSERT INTO public.moon VALUES (12, 10, 'p6', 4213.0000, 7872);
INSERT INTO public.moon VALUES (14, 12, 'p7', 123123.0000, 273821);
INSERT INTO public.moon VALUES (15, 11, 'Ceres', 432.0000, 51234);
INSERT INTO public.moon VALUES (16, 10, 'Kepler-452B', 123123.0000, 9898);
INSERT INTO public.moon VALUES (17, 9, 'Kepler-4F', 54984.0000, 7231);
INSERT INTO public.moon VALUES (18, 10, 'Enders World', 12309182.0000, 5098123);
INSERT INTO public.moon VALUES (19, 10, 'Tatooine', 542.0000, 6543);
INSERT INTO public.moon VALUES (20, 11, 'Bara Gaon V', 12392.0000, 58977);
INSERT INTO public.moon VALUES (13, 12, 'Blobworld', 1231.3000, 123123);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'Rocky', false, false);
INSERT INTO public.planet VALUES (2, 1, 'Venus', 'Rocky', false, false);
INSERT INTO public.planet VALUES (3, 1, 'Earth', 'Terrestrial', true, true);
INSERT INTO public.planet VALUES (4, 1, 'Mars', 'Rocky', true, false);
INSERT INTO public.planet VALUES (5, 1, 'Jupiter', 'Gas Giant', false, false);
INSERT INTO public.planet VALUES (6, 1, 'Saturn', 'Gas Giant', false, false);
INSERT INTO public.planet VALUES (7, 1, 'Uranus', 'Ice Giant', false, false);
INSERT INTO public.planet VALUES (8, 1, 'Neptune', 'Ice Giant', false, false);
INSERT INTO public.planet VALUES (9, 1, 'Pluto', 'Dwarf Planet', false, false);
INSERT INTO public.planet VALUES (10, 2, 'Ilus', 'Rocky', true, true);
INSERT INTO public.planet VALUES (11, 3, 'Laconia', 'Earthlike', true, true);
INSERT INTO public.planet VALUES (12, 4, 'Auberon', 'Earthlike', true, true);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', true);
INSERT INTO public.species VALUES (2, 'Martian', true);
INSERT INTO public.species VALUES (3, 'Laconian', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'G2V', 695700, 1);
INSERT INTO public.star VALUES (2, 2, 'Betelgeuse', 'M1-2', 9048, 165000);
INSERT INTO public.star VALUES (3, 3, 'Ares', 'F2V', 2, 1);
INSERT INTO public.star VALUES (4, 4, 'Vulkan', 'K0V', 540000, 1000);
INSERT INTO public.star VALUES (5, 5, 'Matterhorn', 'A0Va', 123123123, 9342);
INSERT INTO public.star VALUES (6, 6, 'X', 'Black Hole', 0, 123123123);


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
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

