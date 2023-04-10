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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_col_1 integer,
    galaxy_col_2 numeric,
    galaxy_col_3 text,
    galaxy_col_4 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    moon_col_1 integer,
    moon_col_2 numeric,
    moon_col_3 text,
    moon_col_4 boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    planet_col_1 integer,
    planet_col_2 numeric,
    planet_col_3 text,
    planet_col_4 boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    star_col_1 integer,
    star_col_2 numeric,
    star_col_3 text,
    star_col_4 boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: tableone; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.tableone (
    tableone_id integer NOT NULL,
    col_1 integer NOT NULL,
    col_2 integer,
    name character varying(30)
);


ALTER TABLE public.tableone OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'solar', 1, 1, 1, 'haha', true);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 1, 1, 1, 'haha', true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 1, 1, 1, 'haha', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 1, 1, 1, 'haha', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 1, 1, 1, 'haha', true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 1, 1, 1, 'haha', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name1', 1, 1, 1, 'lala', false, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 1, 1, 1, 'lala', false, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 1, 1, 'lala', false, 3);
INSERT INTO public.moon VALUES (4, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (5, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (6, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (7, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (8, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (9, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (10, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (11, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (12, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (13, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (14, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (15, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (16, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (17, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (18, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (19, 'mooooo', 1, 1, 1, 'haha', true, 2);
INSERT INTO public.moon VALUES (20, 'mooooo', 1, 1, 1, 'haha', true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'name1', 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 1, 1, 1, 'lala', false, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 1, 1, 1, 'lala', false, 3);
INSERT INTO public.planet VALUES (4, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (5, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (6, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (7, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (8, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (9, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (10, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (11, NULL, 1, 1, 1, 'lala', false, 1);
INSERT INTO public.planet VALUES (12, NULL, 1, 1, 1, 'lala', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mars', 1, 1, 1, 'xixi', true, 1);
INSERT INTO public.star VALUES (2, 'star2', 1, 1, 1, 'xixi', true, 2);
INSERT INTO public.star VALUES (3, 'star3', 1, 1, 1, 'xixi', true, 3);
INSERT INTO public.star VALUES (4, 'star4', 1, 1, 1, 'xixi', true, 4);
INSERT INTO public.star VALUES (5, 'star5', 1, 1, 1, 'xixi', true, 5);
INSERT INTO public.star VALUES (6, 'star6', 1, 1, 1, 'xixi', true, 6);


--
-- Data for Name: tableone; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.tableone VALUES (1, 1, 2, NULL);
INSERT INTO public.tableone VALUES (2, 1, 2, NULL);
INSERT INTO public.tableone VALUES (3, 1, 2, NULL);


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
-- Name: tableone tableone_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tableone
    ADD CONSTRAINT tableone_pkey PRIMARY KEY (tableone_id);


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
-- Name: tableone unique_tableone_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.tableone
    ADD CONSTRAINT unique_tableone_id UNIQUE (tableone_id);


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

