--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: reservations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reservations (
    id bigint NOT NULL,
    trajet_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.reservations OWNER TO postgres;

--
-- Name: reservations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reservations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reservations_id_seq OWNER TO postgres;

--
-- Name: reservations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reservations_id_seq OWNED BY public.reservations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: trajets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trajets (
    id bigint NOT NULL,
    conducteur_id bigint,
    depart character varying,
    destination character varying,
    heure_depart timestamp without time zone,
    places_disponibles integer,
    type_voiture character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.trajets OWNER TO postgres;

--
-- Name: trajets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trajets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trajets_id_seq OWNER TO postgres;

--
-- Name: trajets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trajets_id_seq OWNED BY public.trajets.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    first_name character varying,
    last_name character varying,
    gender character varying,
    role character varying,
    current_sign_in_at timestamp(6) without time zone,
    last_sign_in_at timestamp(6) without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    sign_in_count integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: reservations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations ALTER COLUMN id SET DEFAULT nextval('public.reservations_id_seq'::regclass);


--
-- Name: trajets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trajets ALTER COLUMN id SET DEFAULT nextval('public.trajets_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-01-11 13:12:46.7932	2024-01-11 13:12:46.793204
\.


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reservations (id, trajet_id, user_id, created_at, updated_at) FROM stdin;
10	3	37	2024-01-13 17:23:06.218621	2024-01-13 17:23:06.218621
11	6	37	2024-01-13 17:23:14.151621	2024-01-13 17:23:14.151621
12	1	37	2024-01-13 17:23:29.783976	2024-01-13 17:23:29.783976
13	4	37	2024-01-14 00:11:36.849163	2024-01-14 00:11:36.849163
14	2	37	2024-01-14 00:12:39.386495	2024-01-14 00:12:39.386495
15	6	26	2024-01-14 01:01:04.286036	2024-01-14 01:01:04.286036
16	4	26	2024-01-14 01:02:02.612669	2024-01-14 01:02:02.612669
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20240111143903
20240111155725
20240111232052
20240112105708
20240113011337
20240113012547
20240113013508
20240113104438
20240113140923
\.


--
-- Data for Name: trajets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trajets (id, conducteur_id, depart, destination, heure_depart, places_disponibles, type_voiture, created_at, updated_at) FROM stdin;
5	37	Kpalimé	Aného	2023-10-12 05:31:00	\N	Essence	2024-01-13 00:54:06.493791	2024-01-13 00:54:06.493791
3	37	Ablogamé	Kpomé	2024-06-08 06:30:00	19	electrique	2024-01-12 11:48:41.721718	2024-01-12 11:48:41.721718
1	37	Lomé	Kara	2024-11-21 13:30:00	1	Electrique	2024-01-12 11:19:23.731958	2024-01-12 11:19:23.731958
2	37	Bè	Kpogan	2024-05-12 05:30:00	13	electrique	2024-01-12 11:47:26.412313	2024-01-12 11:47:26.412313
7	37	Lomé	Aného	2024-01-31 05:45:00	9	Electrique	2024-01-14 00:59:06.789804	2024-01-14 00:59:06.789804
6	37	Aneho	Lomé	2024-11-21 03:30:00	47	Essence	2024-01-13 12:11:51.624833	2024-01-13 12:11:51.624833
4	37	Kara	Blita	2024-03-23 12:30:00	55	Electrique	2024-01-12 19:34:32.750347	2024-01-12 19:34:32.750347
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, first_name, last_name, gender, role, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, sign_in_count) FROM stdin;
18	daniel@example.com	$2a$12$wqpOQb.ATxnkgd8vNb9ZPucavIfe47lvn9phoApk2aCfJJnsZ/Giu	\N	\N	\N	2024-01-11 23:45:15.828279	2024-01-11 23:45:15.828279	John	Doe	Male	Passager	\N	\N	\N	\N	0
19	danielajavon@example.com	$2a$12$ZSmMiuBcn77ZgEi14Eqc2upEiQ.rDrGNyfOedx7rQ6HWYsk9WH0AS	\N	\N	\N	2024-01-11 23:46:39.274686	2024-01-11 23:46:39.274686	Daniel	AJAVON	Male	Passager	\N	\N	\N	\N	0
20	danielajavonayi@example.com	$2a$12$y8ba6vfiFbGX/9P7t8kbjuFw4LwS3vj.v8w.TUJqUoEzdA4RDMAsO	\N	\N	\N	2024-01-11 23:49:35.968342	2024-01-11 23:49:35.968342	Anna	GBAMA	Male	Passager	\N	\N	\N	\N	0
21	ayidanielajavon@gmail.com	$2a$12$VmB6M/PcxKCVqgnVCsXN7.Kh4XVrPj1WU9D./z2IbhkPVOyVd6Htq	\N	\N	\N	2024-01-11 23:51:25.92781	2024-01-11 23:51:25.92781	Ayi Daniel	AJAVON	Male	Conducteur	\N	\N	\N	\N	0
22	tkamen@gmail.com	$2a$12$eD/YVfraAOIr4YeBUmoMBuDVBF0VwUz98GtqSDXvH5kkvMJpES65W	\N	\N	\N	2024-01-11 23:52:40.405233	2024-01-11 23:52:40.405233	Amen	TETTEH	Male	Conducteur	\N	\N	\N	\N	0
23	raymond@gmail.com	$2a$12$LxN5619RzXidHS9BvJzYZOeP60bg8g8ACJ4PN4Yu9b2cNzCNDRIs2	\N	\N	\N	2024-01-11 23:55:06.73375	2024-01-11 23:55:06.73375	Raymond	KENAVO	Male	Passager	\N	\N	\N	\N	0
24	lolo@gmail.com	$2a$12$kyyWLpYqfVsxSVmu4lQRkO8mIqAkv8/ok6DUJS8/A6lfQ3QnyQTw2	\N	\N	\N	2024-01-11 23:55:58.079736	2024-01-11 23:55:58.079736	Elolo	TONA	Male	Passager	\N	\N	\N	\N	0
25	parfaite@gmail.com	$2a$12$NStWv54B/N44s8WjlaKgA.sNkso3hxmLtE0rvp3TWfciz/pgWcwBu	\N	\N	\N	2024-01-11 23:57:30.34972	2024-01-11 23:57:30.34972	Parfaite	SEPLEDI	Male	Passager	\N	\N	\N	\N	0
27	donald@gmail.com	$2a$12$W6Q6s8KMDnxeyLFcPuxVSOG7dARcvhsW7blWuv8rluprmYqudXHeu	\N	\N	\N	2024-01-12 00:04:24.854277	2024-01-12 00:04:24.854277	Donald	AMEGNINOU	Male	Passager	\N	\N	\N	\N	0
28	florent@gmail.com	$2a$12$6T2JLY6vJ7gRMBHUH.pVe.t9ayPnMgAvKlp8Pne8YzvrFVcJpnzoS	\N	\N	\N	2024-01-12 00:05:50.904961	2024-01-12 00:05:50.904961	Florent	DEKEDJEVI	Male	Passager	\N	\N	\N	\N	0
29	jeanclaude@gmail.com	$2a$12$vwWR/8aYYoeqJdXMNk0RWOegktCQsil6tg4NTRZEO4sXtsPcV4PQe	\N	\N	\N	2024-01-12 00:06:36.442483	2024-01-12 00:06:36.442483	Jean-Claude	AMAIZO	Male	Passager	\N	\N	\N	\N	0
30	jclaude@gmail.com	$2a$12$uT8PUJe7pMY/rliYlV4SqeHkePiaUMATa7pKMoVA23P4xs7RGPgOS	\N	\N	\N	2024-01-12 00:07:05.303107	2024-01-12 00:07:05.303107	Jean-Claude	SASSOU	Male	Passager	\N	\N	\N	\N	0
31	ariel@gmail.com	$2a$12$tZCtHukNBwBT1hEKXf79Z.dGon7u08.8fmV7YdX9NkAk0odoewzfO	\N	\N	\N	2024-01-12 00:08:20.306908	2024-01-12 00:08:20.306908	Ariel	SENYO	Male	Passager	\N	\N	\N	\N	0
32	arist@gmail.com	$2a$12$m1FdZgRuimHY1X2ycxhgveqAzZORtdc8h/y0PYkM.qs54nMrxVlI6	\N	\N	\N	2024-01-12 00:08:57.51109	2024-01-12 00:08:57.51109	Arist	NYAMLE	Male	Passager	\N	\N	\N	\N	0
33	drigo@gmail.com	$2a$12$4/OPsZkQPxJT28dqkIuEJ.RJ6hdepx8ME48ZlOCkVUnPYpAU6jaA6	\N	\N	\N	2024-01-12 00:10:56.430212	2024-01-12 00:10:56.430212	Rodrique	TEKO	Male	Conducteur	\N	\N	\N	\N	0
34	collete@gmail.com	$2a$12$CSBaO7NRyR74XuKyNVe6X.WrDXpBafWiaI/8KPAqeVzz1sMG0Ad3m	\N	\N	\N	2024-01-12 00:11:31.027995	2024-01-12 00:11:31.027995	COllete	SEMEGLO	Male	Conducteur	\N	\N	\N	\N	0
35	rosa@gmail.com	$2a$12$gESi6squ6Tjh9mmEyU2sr.MZp.WGJBZqQkZsreZJ85hWOpemL7VtS	\N	\N	\N	2024-01-12 00:13:30.403452	2024-01-12 00:13:30.403452	Rosario	AGUEH	Male	Conducteur	\N	\N	\N	\N	0
36	alain@gmail.com	$2a$12$CqS9ViAcSrY/C1KaRM/TOuKWV/DwvbWkYj.qLN/c3wNNwulg.URqy	\N	\N	\N	2024-01-12 00:14:28.634691	2024-01-12 00:14:28.634691	Alain	KOMAKO	Male	Conducteur	\N	\N	\N	\N	0
38	jean@gmail.com	$2a$12$aZq0VHcrcbujrF07qmync.NViLTnuRLLP4y.s/Nm/hStpDHo2QeJy	\N	\N	\N	2024-01-14 00:48:23.254097	2024-01-14 00:48:23.274389	\N	\N	\N	\N	2024-01-14 00:48:23.273848	2024-01-14 00:48:23.273848	127.0.0.1	127.0.0.1	1
39	franck@gmail.com	$2a$12$SoYzmjm.HLzNfLwsUiwRneaVQYC5/sWoscHub1rCZ4TY2X.Aeu5dq	\N	\N	\N	2024-01-14 00:53:45.766631	2024-01-14 00:54:08.181605	\N	\N	\N	\N	2024-01-14 00:54:08.180656	2024-01-14 00:53:45.782072	127.0.0.1	127.0.0.1	2
40	ayite@gmail.com	$2a$12$fFVvHYh3U2bLnEhqfHs8v.KRWm/X0gMYXVyXhBG9/9hQzGHn0DRlW	\N	\N	\N	2024-01-14 00:56:46.267454	2024-01-14 00:56:46.267454	Ayité	AJAVON	Male	Conducteur	\N	\N	\N	\N	0
37	wis@gmail.com	$2a$12$5QiASvA4cxqE8kzVMNoO0OracTvv0CdzIGnKhJPQOuA96sZ2lX12u	\N	\N	\N	2024-01-12 00:15:17.718526	2024-01-14 00:58:10.012425	Wis	ADJIDJI	Male	Conducteur	2024-01-14 00:58:10.011675	2024-01-14 00:20:42.385732	127.0.0.1	127.0.0.1	24
26	sam@gmail.com	$2a$12$KPYY1ZlV5iqC/Eq55KV6nuRF4SLYXNo3D0jkpgrD6oPZVbkRyvXfS	\N	\N	\N	2024-01-12 00:00:03.541213	2024-01-14 00:59:52.90835	Sam	DATE	Male	Passager	2024-01-14 00:59:52.907668	2024-01-13 00:55:27.099889	127.0.0.1	127.0.0.1	4
\.


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reservations_id_seq', 16, true);


--
-- Name: trajets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trajets_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 40, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: reservations reservations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: trajets trajets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trajets
    ADD CONSTRAINT trajets_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_reservations_on_trajet_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reservations_on_trajet_id ON public.reservations USING btree (trajet_id);


--
-- Name: index_reservations_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_reservations_on_user_id ON public.reservations USING btree (user_id);


--
-- Name: index_trajets_on_conducteur_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_trajets_on_conducteur_id ON public.trajets USING btree (conducteur_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: trajets fk_rails_04c8d0f431; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trajets
    ADD CONSTRAINT fk_rails_04c8d0f431 FOREIGN KEY (conducteur_id) REFERENCES public.users(id);


--
-- Name: reservations fk_rails_3132a98eaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT fk_rails_3132a98eaa FOREIGN KEY (trajet_id) REFERENCES public.trajets(id);


--
-- Name: reservations fk_rails_48a92fce51; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT fk_rails_48a92fce51 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

