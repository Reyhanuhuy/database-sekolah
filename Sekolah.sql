--
-- PostgreSQL database dump
--

\restrict 84kahFsAjM3P6wNbDLc2u1AkyknuIo0ZZ2XbaTcwzWKhmOuZKYUncE4HCYYH7OO

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

-- Started on 2025-10-06 22:52:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 222 (class 1259 OID 16411)
-- Name: nilai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nilai (
    id integer NOT NULL,
    siswa_id integer,
    mata_pelajaran character varying(100),
    nilai integer
);


ALTER TABLE public.nilai OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: nilai_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nilai_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nilai_id_seq OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 221
-- Name: nilai_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nilai_id_seq OWNED BY public.nilai.id;


--
-- TOC entry 220 (class 1259 OID 16400)
-- Name: siswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siswa (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    umur integer,
    jurusan character varying(100)
);


ALTER TABLE public.siswa OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16399)
-- Name: siswa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.siswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.siswa_id_seq OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 219
-- Name: siswa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.siswa_id_seq OWNED BY public.siswa.id;


--
-- TOC entry 4815 (class 2604 OID 16414)
-- Name: nilai id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai ALTER COLUMN id SET DEFAULT nextval('public.nilai_id_seq'::regclass);


--
-- TOC entry 4814 (class 2604 OID 16403)
-- Name: siswa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa ALTER COLUMN id SET DEFAULT nextval('public.siswa_id_seq'::regclass);


--
-- TOC entry 4971 (class 0 OID 16411)
-- Dependencies: 222
-- Data for Name: nilai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nilai (id, siswa_id, mata_pelajaran, nilai) FROM stdin;
21	1	Matematika	85
22	1	Bahasa Inggris	90
25	3	Matematika	92
26	3	Fisika	87
27	4	Bahasa Indonesia	80
29	5	Biologi	89
\.


--
-- TOC entry 4969 (class 0 OID 16400)
-- Dependencies: 220
-- Data for Name: siswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.siswa (id, nama, umur, jurusan) FROM stdin;
1	Andi	16	IPA
3	Citra	16	IPA
4	Dewi	17	IPS
5	Eko	18	IPA
2	Budi	17	IPS
\.


--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 221
-- Name: nilai_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nilai_id_seq', 40, true);


--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 219
-- Name: siswa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.siswa_id_seq', 5, true);


--
-- TOC entry 4819 (class 2606 OID 16417)
-- Name: nilai nilai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_pkey PRIMARY KEY (id);


--
-- TOC entry 4817 (class 2606 OID 16409)
-- Name: siswa siswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siswa
    ADD CONSTRAINT siswa_pkey PRIMARY KEY (id);


--
-- TOC entry 4820 (class 2606 OID 16418)
-- Name: nilai nilai_siswa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nilai
    ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id);


-- Completed on 2025-10-06 22:52:27

--
-- PostgreSQL database dump complete
--

\unrestrict 84kahFsAjM3P6wNbDLc2u1AkyknuIo0ZZ2XbaTcwzWKhmOuZKYUncE4HCYYH7OO

