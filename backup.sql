--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: todos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.todos (
    id integer NOT NULL,
    title text,
    status text
);


ALTER TABLE public.todos OWNER TO postgres;

--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.todos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.todos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    username text NOT NULL,
    password text NOT NULL,
    role text NOT NULL,
    profile_picture text
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
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
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: todos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.todos (id, title, status) FROM stdin;
182	styling tailwind	pending
131	PrimeVue	completed
130	Tailwind	completed
183	authorization	pending
226	halo	completed
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, created_at, updated_at, deleted_at, username, password, role, profile_picture) FROM stdin;
31	2024-06-04 09:35:54.194095+07	2024-06-16 11:21:42.71604+07	\N	userbaru	$2a$10$0ajJbW/ljHg0DKzW4bXuH.D4aYuzxEHt//Sn/Fcl16Kh27Bnwebka	user	./uploads/default.png
30	2024-06-03 14:50:59.408926+07	2024-06-03 14:50:59.408926+07	2024-06-03 14:51:03.719106+07	asdfsadfaf	$2a$10$OK/8Ay5pfCE0qx3J3Hi5b.zGmyvDeN734a4Dyo8ps0El/tomRfFMq	asdfas	./uploads/2e7a8683-2ecd-4605-9bd2-34210045c787.jfif
2	2024-05-30 10:27:33.193583+07	2024-06-03 17:39:50.348558+07	\N	umar	$2a$10$soqyLCk7zeHL5YGBnl9ovObDI330eHae6lE3P8r9tC0KOmcSQAXIe	admin	uploads/umar_8dff49985d0d8afa53751d9ba8907aed.jpg
33	2024-06-16 11:06:14.546126+07	2024-06-16 11:06:14.546126+07	2024-06-16 11:06:17.405412+07	ds	$2a$10$5fGIDs.xmfYvs1EHIKdDwu5oEm33xJz7pZ26s3uvgWsyW/lNK2s1S		./uploads/default.png
22	2024-05-31 22:54:36.924925+07	2024-06-16 11:08:55.272246+07	\N	rosyid	$2a$10$rBdTYD3vsilVAGnCFo0Mu.LIK2zi3zYuegmDb7/l228ez9ruVY766	user	./uploads/default.png
36	2024-06-16 11:09:20.684765+07	2024-06-16 11:09:20.684765+07	2024-06-16 11:09:25.047626+07	dssdfsd	$2a$10$gyhsKp7UfBDfRH0UflEzxuNrqN24yzKsAIazkvovyNwvGdrpIJKYS	asdf	./uploads/e47109b5-b15b-4ff0-a381-78f7c4d49181.png
32	2024-06-16 11:05:17.133795+07	2024-06-16 11:05:17.133795+07	2024-06-16 11:12:34.384509+07	karel	$2a$10$zKmVxOmLvTxYCxfxbWbj9OH64JPE4eYPqy5BxgB8kUqnUijlmk0Ra	user	./uploads/aff82982-04bf-4e3f-a5cf-a60f28f317a4.png
26	2024-06-02 13:07:43.001868+07	2024-06-16 11:12:42.753485+07	\N	deni	$2a$10$loZumHMPPxTdmI3uWI9tn.hp6at/.aPPdRfDCXYEuq8OwD.6O2pX2	user	uploads/deni_𝐀𝐌𝐀_.jfif
37	2024-06-16 11:15:23.636564+07	2024-06-16 11:15:23.636564+07	2024-06-16 11:15:29.489498+07		$2a$10$RmuiQotADL6PHGC6PZlypu15Cl1dnCxLoUkxHzaJm883HktLhDjte		./uploads/default.png
39	2024-06-16 11:16:39.63331+07	2024-06-16 11:16:39.63331+07	2024-06-16 11:16:42.206527+07	sadasdsssssssssss	$2a$10$nGuDuptognVZGjoQ56hTEunRUEG3G/oBA4UD0LiifJ9sRdjtL0X76		./uploads/default.png
29	2024-06-02 13:16:13.99138+07	2024-06-02 13:16:13.99138+07	\N	ocid	$2a$10$SzmnA5p0LSd1QfOgarYedeL8SwI.9F6goEcdbr9J9qi/TCyrlwSIy	admin	./uploads/08d9cd5e-68a0-4acd-9681-d46996cd94f2.png
\.


--
-- Name: todos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todos_id_seq', 226, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 39, true);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: idx_users_deleted_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_users_deleted_at ON public.users USING btree (deleted_at);


--
-- PostgreSQL database dump complete
--

