--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: webshop; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA webshop;


ALTER SCHEMA webshop OWNER TO postgres;

--
-- Name: category; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.category AS ENUM (
    'Apparel',
    'Footwear',
    'Sportswear',
    'Traditional',
    'Formal Wear',
    'Accessories',
    'Watches & Jewelry',
    'Luggage',
    'Cosmetics'
);


ALTER TYPE public.category OWNER TO postgres;

--
-- Name: TYPE category; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TYPE public.category IS 'Sizes for US, UK and EU';


--
-- Name: gender; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.gender AS ENUM (
    'male',
    'female',
    'unisex'
);


ALTER TYPE public.gender OWNER TO postgres;

--
-- Name: TYPE gender; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TYPE public.gender IS 'Gender of customer or clothes';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: public_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.public_table (
);


ALTER TABLE public.public_table OWNER TO postgres;

--
-- Name: address_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.address_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.articles_id_seq OWNER TO postgres;

--
-- Name: colors; Type: TABLE; Schema: webshop; Owner: postgres
--

CREATE TABLE webshop.colors (
    id integer NOT NULL,
    name text,
    rgb text
);


ALTER TABLE webshop.colors OWNER TO postgres;

--
-- Name: TABLE colors; Type: COMMENT; Schema: webshop; Owner: postgres
--

COMMENT ON TABLE webshop.colors IS 'Colors with name and rgb value';


--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.colors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.colors_id_seq OWNER TO postgres;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: webshop; Owner: postgres
--

ALTER SEQUENCE webshop.colors_id_seq OWNED BY webshop.colors.id;


--
-- Name: customer_id_seq1; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.customer_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.customer_id_seq1 OWNER TO postgres;

--
-- Name: labels_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.labels_id_seq OWNER TO postgres;

--
-- Name: order_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.order_id_seq OWNER TO postgres;

--
-- Name: order_positions_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.order_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.order_positions_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.products_id_seq OWNER TO postgres;

--
-- Name: sizes; Type: TABLE; Schema: webshop; Owner: postgres
--

CREATE TABLE webshop.sizes (
    id integer NOT NULL,
    gender public.gender,
    category public.category,
    size text,
    size_us int4range,
    size_uk int4range,
    size_eu int4range
);


ALTER TABLE webshop.sizes OWNER TO postgres;

--
-- Name: TABLE sizes; Type: COMMENT; Schema: webshop; Owner: postgres
--

COMMENT ON TABLE webshop.sizes IS 'Colors with name and rgb value';


--
-- Name: sizes_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.sizes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.sizes_id_seq OWNER TO postgres;

--
-- Name: sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: webshop; Owner: postgres
--

ALTER SEQUENCE webshop.sizes_id_seq OWNED BY webshop.sizes.id;


--
-- Name: stock_id_seq; Type: SEQUENCE; Schema: webshop; Owner: postgres
--

CREATE SEQUENCE webshop.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE webshop.stock_id_seq OWNER TO postgres;

--
-- Name: colors id; Type: DEFAULT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.colors ALTER COLUMN id SET DEFAULT nextval('webshop.colors_id_seq'::regclass);


--
-- Name: sizes id; Type: DEFAULT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.sizes ALTER COLUMN id SET DEFAULT nextval('webshop.sizes_id_seq'::regclass);


--
-- Data for Name: public_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.public_table  FROM stdin;
\.


--
-- Data for Name: colors; Type: TABLE DATA; Schema: webshop; Owner: postgres
--

COPY webshop.colors (id, name, rgb) FROM stdin;
3	INDIANRED	#CD5C5C
4	LIGHTCORAL	#F08080
5	SALMON	#FA8072
6	DARKSALMON	#E9967A
7	LIGHTSALMON	#FFA07A
8	CRIMSON	#DC143C
9	RED	#FF0000
10	FIREBRICK	#B22222
11	DARKRED	#8B0000
12	PINK	#FFC0CB
13	LIGHTPINK	#FFB6C1
14	HOTPINK	#FF69B4
15	DEEPPINK	#FF1493
16	MEDIUMVIOLETRED	#C71585
17	PALEVIOLETRED	#DB7093
18	LIGHTSALMON	#FFA07A
19	CORAL	#FF7F50
20	TOMATO	#FF6347
21	ORANGERED	#FF4500
22	DARKORANGE	#FF8C00
23	ORANGE	#FFA500
24	GOLD	#FFD700
25	YELLOW	#FFFF00
26	LIGHTYELLOW	#FFFFE0
27	LEMONCHIFFON	#FFFACD
28	LIGHTGOLDENRODYELLOW	#FAFAD2
29	PAPAYAWHIP	#FFEFD5
30	MOCCASIN	#FFE4B5
31	PEACHPUFF	#FFDAB9
32	PALEGOLDENROD	#EEE8AA
33	KHAKI	#F0E68C
34	DARKKHAKI	#BDB76B
35	LAVENDER	#E6E6FA
36	THISTLE	#D8BFD8
37	PLUM	#DDA0DD
38	VIOLET	#EE82EE
39	ORCHID	#DA70D6
40	FUCHSIA	#FF00FF
41	MAGENTA	#FF00FF
42	MEDIUMORCHID	#BA55D3
43	MEDIUMPURPLE	#9370DB
44	REBECCAPURPLE	#663399
45	BLUEVIOLET	#8A2BE2
46	DARKVIOLET	#9400D3
47	DARKORCHID	#9932CC
48	DARKMAGENTA	#8B008B
49	PURPLE	#800080
50	INDIGO	#4B0082
51	SLATEBLUE	#6A5ACD
52	DARKSLATEBLUE	#483D8B
53	MEDIUMSLATEBLUE	#7B68EE
54	GREENYELLOW	#ADFF2F
55	CHARTREUSE	#7FFF00
56	LAWNGREEN	#7CFC00
57	LIME	#00FF00
58	LIMEGREEN	#32CD32
59	PALEGREEN	#98FB98
60	LIGHTGREEN	#90EE90
61	MEDIUMSPRINGGREEN	#00FA9A
62	SPRINGGREEN	#00FF7F
63	MEDIUMSEAGREEN	#3CB371
64	SEAGREEN	#2E8B57
65	FORESTGREEN	#228B22
66	GREEN	#008000
67	DARKGREEN	#006400
68	YELLOWGREEN	#9ACD32
69	OLIVEDRAB	#6B8E23
70	OLIVE	#808000
71	DARKOLIVEGREEN	#556B2F
72	MEDIUMAQUAMARINE	#66CDAA
73	DARKSEAGREEN	#8FBC8B
74	LIGHTSEAGREEN	#20B2AA
75	DARKCYAN	#008B8B
76	TEAL	#008080
77	AQUA	#00FFFF
78	CYAN	#00FFFF
79	LIGHTCYAN	#E0FFFF
80	PALETURQUOISE	#AFEEEE
81	AQUAMARINE	#7FFFD4
82	TURQUOISE	#40E0D0
83	MEDIUMTURQUOISE	#48D1CC
84	DARKTURQUOISE	#00CED1
85	CADETBLUE	#5F9EA0
86	STEELBLUE	#4682B4
87	LIGHTSTEELBLUE	#B0C4DE
88	POWDERBLUE	#B0E0E6
89	LIGHTBLUE	#ADD8E6
90	SKYBLUE	#87CEEB
91	LIGHTSKYBLUE	#87CEFA
92	DEEPSKYBLUE	#00BFFF
93	DODGERBLUE	#1E90FF
94	CORNFLOWERBLUE	#6495ED
95	MEDIUMSLATEBLUE	#7B68EE
96	ROYALBLUE	#4169E1
97	BLUE	#0000FF
98	MEDIUMBLUE	#0000CD
99	DARKBLUE	#00008B
100	NAVY	#000080
101	MIDNIGHTBLUE	#191970
102	CORNSILK	#FFF8DC
103	BLANCHEDALMOND	#FFEBCD
104	BISQUE	#FFE4C4
105	NAVAJOWHITE	#FFDEAD
106	WHEAT	#F5DEB3
107	BURLYWOOD	#DEB887
108	TAN	#D2B48C
109	ROSYBROWN	#BC8F8F
110	SANDYBROWN	#F4A460
111	GOLDENROD	#DAA520
112	DARKGOLDENROD	#B8860B
113	PERU	#CD853F
114	CHOCOLATE	#D2691E
115	SADDLEBROWN	#8B4513
116	SIENNA	#A0522D
117	BROWN	#A52A2A
118	MAROON	#800000
119	WHITE	#FFFFFF
120	SNOW	#FFFAFA
121	HONEYDEW	#F0FFF0
122	MINTCREAM	#F5FFFA
123	AZURE	#F0FFFF
124	ALICEBLUE	#F0F8FF
125	GHOSTWHITE	#F8F8FF
126	WHITESMOKE	#F5F5F5
127	SEASHELL	#FFF5EE
128	BEIGE	#F5F5DC
129	OLDLACE	#FDF5E6
130	FLORALWHITE	#FFFAF0
131	IVORY	#FFFFF0
132	ANTIQUEWHITE	#FAEBD7
133	LINEN	#FAF0E6
134	LAVENDERBLUSH	#FFF0F5
135	MISTYROSE	#FFE4E1
136	GAINSBORO	#DCDCDC
137	LIGHTGRAY	#D3D3D3
138	SILVER	#C0C0C0
139	DARKGRAY	#A9A9A9
140	GRAY	#808080
141	DIMGRAY	#696969
142	LIGHTSLATEGRAY	#778899
143	SLATEGRAY	#708090
144	DARKSLATEGRAY	#2F4F4F
145	BLACK	#000000
\.


--
-- Data for Name: sizes; Type: TABLE DATA; Schema: webshop; Owner: postgres
--

COPY webshop.sizes (id, gender, category, size, size_us, size_uk, size_eu) FROM stdin;
1	female	Apparel	XS	[2,4)	[4,6)	[32,36)
2	female	Apparel	S	[4,6)	[6,10)	[36,40)
3	female	Apparel	M	[6,8)	[10,14)	[40,44)
4	female	Apparel	L	[8,10)	[14,18)	[44,46)
5	female	Apparel	XL	[10,12)	[18,22)	[46,50)
6	male	Apparel	XS	[30,32)	[30,32)	[40,42)
7	male	Apparel	S	[32,36)	[32,36)	[42,48)
8	male	Apparel	M	[36,40)	[36,40)	[48,50)
9	male	Apparel	L	[40,44)	[40,44)	[50,54)
10	male	Apparel	XL	[44,50)	[44,50)	[54,58)
11	unisex	Footwear	XS	[6,7)	[5,6)	[38,40)
12	unisex	Footwear	S	[7,8)	[6,7)	[40,42)
13	unisex	Footwear	M	[7,9)	[7,8)	[42,43)
14	unisex	Footwear	L	[9,10)	[8,9)	[43,44)
15	unisex	Footwear	XL	[10,11)	[9,10)	[44,45)
\.


--
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.address_id_seq', 1132, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.articles_id_seq', 18522, true);


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.colors_id_seq', 145, true);


--
-- Name: customer_id_seq1; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.customer_id_seq1', 1101, true);


--
-- Name: labels_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.labels_id_seq', 1170, true);


--
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.order_id_seq', 2010, true);


--
-- Name: order_positions_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.order_positions_id_seq', 5994, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.products_id_seq', 1049, true);


--
-- Name: sizes_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.sizes_id_seq', 15, true);


--
-- Name: stock_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.stock_id_seq', 17730, true);


--
-- Name: colors colors_pkey; Type: CONSTRAINT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- Name: sizes sizes_pkey; Type: CONSTRAINT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.sizes
    ADD CONSTRAINT sizes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

