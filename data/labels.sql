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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: labels; Type: TABLE; Schema: webshop; Owner: postgres
--

CREATE TABLE webshop.labels (
    id integer NOT NULL,
    name text,
    slugname text,
    icon bytea
);


ALTER TABLE webshop.labels OWNER TO postgres;

--
-- Name: TABLE labels; Type: COMMENT; Schema: webshop; Owner: postgres
--

COMMENT ON TABLE webshop.labels IS 'Brands / labels';


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
-- Name: labels_id_seq; Type: SEQUENCE OWNED BY; Schema: webshop; Owner: postgres
--

ALTER SEQUENCE webshop.labels_id_seq OWNED BY webshop.labels.id;


--
-- Name: labels id; Type: DEFAULT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.labels ALTER COLUMN id SET DEFAULT nextval('webshop.labels_id_seq'::regclass);


--
-- Data for Name: labels; Type: TABLE DATA; Schema: webshop; Owner: postgres
--

COPY webshop.labels (id, name, slugname, icon) FROM stdin;
1	A	A	\N
2	A.F.C.A	AFCA	\N
3	A.P.C.Absolut Joy	APCAbsolutJoy	\N
4	Acne Studios	AcneStudios	\N
5	Acqua Limone	AcquaLimone	\N
6	Add	Add	\N
7	adidas	adidas	\N
8	adidas Originals	adidasOriginals	\N
9	Advanta	Advanta	\N
10	Aglini	Aglini	\N
11	Aimé Leon Dore	AiméLeonDore	\N
12	AKOO	AKOO	\N
13	Alaia	Alaia	\N
14	Alain Figaret	AlainFigaret	\N
15	Alberta Ferretti	AlbertaFerretti	\N
16	Alessandro Dell´Acqua	AlessandroDell´Acqua	\N
17	Alessi	Alessi	\N
18	AlexaChung	AlexaChung	\N
19	Alexander McQueen	AlexanderMcQueen	\N
20	Alexander Wang	AlexanderWang	\N
21	Alice & Olivia	AliceOlivia	\N
22	AllSaints	AllSaints	\N
23	Alpha Studio	AlphaStudio	\N
24	Altuzarra	Altuzarra	\N
25	Alysi	Alysi	\N
26	American Eagle Outfitters	AmericanEagleOutfitters	\N
27	Americanflat	Americanflat	\N
28	Ami	Ami	\N
29	André Kim	AndréKim	\N
30	Ann Demeulemeester	AnnDemeulemeester	\N
31	Annarita N.	AnnaritaN	\N
32	Anne Fontaine	AnneFontaine	\N
33	Anne T. Hill	AnneTHill	\N
34	Anthropologie	Anthropologie	\N
35	Antony Morato	AntonyMorato	\N
36	Antthony Mark Hankins	AntthonyMarkHankins	\N
37	Anya Hindmarch	AnyaHindmarch	\N
38	Apalis	Apalis	\N
39	Aquazzura	Aquazzura	\N
40	Arckiv	Arckiv	\N
41	Armani	Armani	\N
42	Armoire Officielle	ArmoireOfficielle	\N
43	Arthur Galan AG	ArthurGalanAG	\N
44	Artopweb	Artopweb	\N
45	artPause	artPause	\N
46	Arty Pie	ArtyPie	\N
47	Ash	Ash	\N
48	Asics	Asics	\N
49	Asos	Asos	\N
50	Asos Petite	AsosPetite	\N
51	Aspesi	Aspesi	\N
52	AT.P. CO	ATPCO	\N
53	Atos Lombardini	AtosLombardini	\N
54	Bailey 44	Bailey44	\N
55	Balenciaga	Balenciaga	\N
56	Ballantyne	Ballantyne	\N
57	Bally	Bally	\N
58	Balmain	Balmain	\N
59	Banana Moon	BananaMoon	\N
60	Barba	Barba	\N
61	Barena	Barena	\N
62	Barneys New York	BarneysNewYork	\N
63	Bellerose	Bellerose	\N
64	Bellerose Belgium	BelleroseBelgium	\N
65	Belstaff	Belstaff	\N
66	Ben Sherman	BenSherman	\N
67	BenchBenetton	BenchBenetton	\N
68	Berna	Berna	\N
69	Berwich	Berwich	\N
70	Bestseller	Bestseller	\N
71	Betty Barclay	BettyBarclay	\N
72	Biba Apparels	BibaApparels	\N
73	Big Art Shop	BigArtShop	\N
74	Big Box Art	BigBoxArt	\N
75	Bigotti	Bigotti	\N
76	BILLIEBLUSH	BILLIEBLUSH	\N
77	Birkenstock	Birkenstock	\N
78	Blanc & Eclare	BlancEclare	\N
79	Blauer	Blauer	\N
80	Blaze of Sweden	BlazeofSweden	\N
81	Blend	Blend	\N
82	Bllack Noir	BllackNoir	\N
83	Bloch	Bloch	\N
84	Blue Les Copains	BlueLesCopains	\N
85	Bluenotes	Bluenotes	\N
86	Blugirl	Blugirl	\N
87	Blumarine	Blumarine	\N
88	Boglioli	Boglioli	\N
89	Bonia	Bonia	\N
90	Bosideng	Bosideng	\N
91	BOSS	BOSS	\N
92	Bottega Veneta	BottegaVeneta	\N
93	Boxfresh	Boxfresh	\N
94	BP Studio	BPStudio	\N
95	Brave Soul	BraveSoul	\N
96	Brax	Brax	\N
97	Brian Dales	BrianDales	\N
98	Brooks Brothers	BrooksBrothers	\N
99	Brooksfield	Brooksfield	\N
100	Brunello Cucinelli	BrunelloCucinelli	\N
101	Buffalo	Buffalo	\N
102	Bugatti	Bugatti	\N
103	Burberry	Burberry	\N
104	Byblos	Byblos	\N
105	C&A	CA	\N
106	Cafènoir	Cafènoir	\N
107	Caliban	Caliban	\N
108	Callisti	Callisti	\N
109	Calvin Klein	CalvinKlein	\N
110	CALVIN KLEIN 205W39NYC	CALVINKLEIN205W39NYC	\N
111	Camel Active	CamelActive	\N
112	Camper	Camper	\N
113	Canali	Canali	\N
114	Cantarelli	Cantarelli	\N
115	Canterbury of New Zealand	CanterburyofNewZealand	\N
116	Caraceni	Caraceni	\N
117	Carbrini Sportswear	CarbriniSportswear	\N
118	Carhartt Work in Progress	CarharttWorkinProgress	\N
119	Carla G.	CarlaG	\N
120	Carlo Palazzi	CarloPalazzi	\N
121	Carven	Carven	\N
122	Casadei	Casadei	\N
123	Cassidi	Cassidi	\N
124	Castro	Castro	\N
125	Catherine Lansfield	CatherineLansfield	\N
126	Catimini	Catimini	\N
127	Celine	Celine	\N
128	Cesare PaciottiChanel	CesarePaciottiChanel	\N
129	Charlotte Olympia	CharlotteOlympia	\N
130	Cheap Monday	CheapMonday	\N
131	Chervo	Chervo	\N
132	Chiara Ferragni	ChiaraFerragni	\N
133	China Heilan Group	ChinaHeilanGroup	\N
134	Chloé	Chloé	\N
135	Christian Louboutin	ChristianLouboutin	\N
136	Christopher Kane	ChristopherKane	\N
137	Clarks	Clarks	\N
138	Closed	Closed	\N
139	Coach	Coach	\N
140	Cockpit USA	CockpitUSA	\N
141	Colmar	Colmar	\N
142	Comma	Comma	\N
143	Comme Des Garçons	CommeDesGarçons	\N
144	Comptoir des Cotonniers	ComptoirdesCotonniers	\N
145	Converse	Converse	\N
146	CornelianiCostume National	CornelianiCostumeNational	\N
147	Countess Mara	CountessMara	\N
148	CristinaeEffe	CristinaeEffe	\N
149	Croc O' Shirt	CrocOShirt	\N
150	Crocs	Crocs	\N
151	Cruciani	Cruciani	\N
152	Cult	Cult	\N
153	Cuplé	Cuplé	\N
154	Current Elliott	CurrentElliott	\N
155	Cycle	Cycle	\N
156	Céline	Céline	\N
157	Dale of Norway	DaleofNorway	\N
158	Damani Dada	DamaniDada	\N
159	Daniel Hechter	DanielHechter	\N
160	Daniele Alessandrini	DanieleAlessandrini	\N
161	Daniele Fiesoli	DanieleFiesoli	\N
162	DC Comics	DCComics	\N
163	Deha	Deha	\N
164	Deknudt Frames	DeknudtFrames	\N
165	Deko Trends	DekoTrends	\N
166	Dekoria	Dekoria	\N
167	Denby	Denby	\N
168	Denver Hayes	DenverHayes	\N
169	Department 5	Department5	\N
170	Derek Lam	DerekLam	\N
171	Design Vicenza	DesignVicenza	\N
172	DesigualDiadora	DesigualDiadora	\N
173	Diane Von Fürstenberg	DianeVonFürstenberg	\N
174	Dickies	Dickies	\N
175	DieselDior	DieselDior	\N
176	Dirk Bikkembergs	DirkBikkembergs	\N
177	Disney	Disney	\N
178	DKNY	DKNY	\N
179	Dockers by Gerli	DockersbyGerli	\N
180	Dolce & Gabbana	DolceGabbana	\N
181	Dolfin Swimwear	DolfinSwimwear	\N
182	Domenico Tagliente	DomenicoTagliente	\N
183	Dondup	Dondup	\N
184	Doppiaa	Doppiaa	\N
185	Dorothee Schumacher	DorotheeSchumacher	\N
186	Dorothy Perkins	DorothyPerkins	\N
187	Doucal's	Doucals	\N
188	Douceur d'Intérieur	DouceurdIntérieur	\N
189	Douuod	Douuod	\N
190	Dr. Martens	DrMartens	\N
191	Draft:Kidbox	Draft:Kidbox	\N
192	Dries Van Noten	DriesVanNoten	\N
193	Drumohr	Drumohr	\N
194	Dsquared2	Dsquared2	\N
195	Dsquared2 Kids	Dsquared2Kids	\N
196	Duchamp	Duchamp	\N
197	Dutch Decor	DutchDecor	\N
198	Duvelleroy	Duvelleroy	\N
199	Duvetica	Duvetica	\N
200	Dwell	Dwell	\N
201	Eastpak	Eastpak	\N
202	Ebarrito	Ebarrito	\N
203	Ecco	Ecco	\N
204	EDC by Esprit	EDCbyEsprit	\N
205	EDUN	EDUN	\N
206	Edwin	Edwin	\N
207	Eglo	Eglo	\N
208	Eiffel Textile	EiffelTextile	\N
209	El Naturalista	ElNaturalista	\N
210	Elaine Kim	ElaineKim	\N
211	Eleventy	Eleventy	\N
212	Elie Tahari	ElieTahari	\N
213	Elisabetta Franchi	ElisabettaFranchi	\N
214	Elizabeth & James	ElizabethJames	\N
215	Ellery	Ellery	\N
216	Elsa Schiaparelli	ElsaSchiaparelli	\N
217	Emanuel Ungaro	EmanuelUngaro	\N
218	Emanuela Passeri	EmanuelaPasseri	\N
219	Emilia Lay	EmiliaLay	\N
220	Emilio Pucci	EmilioPucci	\N
221	Emporio Armani	EmporioArmani	\N
222	Emsa	Emsa	\N
223	English Eccentrics	EnglishEccentrics	\N
224	Entre Amis	EntreAmis	\N
225	Enza Costa	EnzaCosta	\N
226	Equipment	Equipment	\N
227	Erdem	Erdem	\N
228	Eres	Eres	\N
229	Erika Cavallini Semi Couture	ErikaCavalliniSemiCouture	\N
230	Ermanno Scervino	ErmannoScervino	\N
231	Ermenegildo Zegna	ErmenegildoZegna	\N
232	Escada	Escada	\N
233	Esprit	Esprit	\N
234	Essentiel	Essentiel	\N
235	Ethan James	EthanJames	\N
236	Ethika	Ethika	\N
237	Eton	Eton	\N
238	Etro	Etro	\N
239	Eurographics	Eurographics	\N
240	European Culture	EuropeanCulture	\N
241	EVANS	EVANS	\N
242	Excelsa	Excelsa	\N
243	Exclusive Home Curtains	ExclusiveHomeCurtains	\N
244	Exotic India	ExoticIndia	\N
245	Extè	Extè	\N
246	Eyelevel	Eyelevel	\N
247	Eysa	Eysa	\N
248	Fabi	Fabi	\N
249	Fabiana Filippi	FabianaFilippi	\N
250	Fackelmann	Fackelmann	\N
251	Faith Connexion	FaithConnexion	\N
252	Falke	Falke	\N
253	Fashion for Home	FashionforHome	\N
254	Fashion line	Fashionline	\N
255	Fat Face	FatFace	\N
256	FAUSTO PUGLISI	FAUSTOPUGLISI	\N
257	Fay	Fay	\N
258	Febland Group	FeblandGroup	\N
259	Fenchurch	Fenchurch	\N
260	FendiFenty Puma by Rihanna	FendiFentyPumabyRihanna	\N
261	Ferdinando Sarmi	FerdinandoSarmi	\N
262	Ferm Living	FermLiving	\N
263	Fila	Fila	\N
264	FILIPPO DE LAURENTIIS	FILIPPODELAURENTIIS	\N
265	Final Touch Interior Decor	FinalTouchInteriorDecor	\N
266	Firetrap	Firetrap	\N
267	First People First	FirstPeopleFirst	\N
268	Fisico	Fisico	\N
269	FitFlop	FitFlop	\N
270	Flash Furniture	FlashFurniture	\N
271	Fleur du Mal	FleurduMal	\N
272	Fleuresse	Fleuresse	\N
273	FLY London	FLYLondon	\N
274	Forever Lazy	ForeverLazy	\N
275	Fornarina	Fornarina	\N
276	Fornasetti	Fornasetti	\N
277	Forte_Forte	Forte_Forte	\N
278	Fossil	Fossil	\N
279	Fox	Fox	\N
280	Fradi	Fradi	\N
281	Frame Company	FrameCompany	\N
282	Frame Denim	FrameDenim	\N
283	Frames by Post	FramesbyPost	\N
284	Frankie Morello	FrankieMorello	\N
285	Franklin & Marshall	FranklinMarshall	\N
286	Fred Mello	FredMello	\N
287	Fred Perry	FredPerry	\N
288	Fred´s World By Green Cotton	Fred´sWorldByGreenCotton	\N
289	Free People	FreePeople	\N
290	French Connection	FrenchConnection	\N
291	Furla	Furla	\N
292	G-Star	G-Star	\N
293	G-Star Raw	G-StarRaw	\N
294	G2000	G2000	\N
295	Gabor	Gabor	\N
296	Gabs	Gabs	\N
297	Ganni	Ganni	\N
298	GANTGanter	GANTGanter	\N
299	Garage	Garage	\N
300	Garanimals	Garanimals	\N
301	Garcia	Garcia	\N
302	Garcia de Pou	GarciadePou	\N
303	Gas	Gas	\N
304	Gattinoni	Gattinoni	\N
305	Gaudì	Gaudì	\N
306	Gaëlle Paris	GaëlleParis	\N
307	GB Eye Limited	GBEyeLimited	\N
308	GCDS	GCDS	\N
309	Gebrüder Stitch	GebrüderStitch	\N
310	Genny	Genny	\N
311	Gentryportofino	Gentryportofino	\N
312	George J. Love	GeorgeJLove	\N
313	Geox	Geox	\N
314	Gerry Weber	GerryWeber	\N
315	Giambattista Valli	GiambattistaValli	\N
316	Giancarlo Paoli	GiancarloPaoli	\N
317	Gianvito Rossi	GianvitoRossi	\N
318	Giesswein	Giesswein	\N
319	Giorgia & Johns	GiorgiaJohns	\N
320	Giorgio Armani	GiorgioArmani	\N
321	Gioseppo	Gioseppo	\N
322	Giuseppe Zanotti	GiuseppeZanotti	\N
323	Givenchy	Givenchy	\N
324	Glamorous	Glamorous	\N
325	Globo Lighting	GloboLighting	\N
326	Gloria Vanderbilt	GloriaVanderbilt	\N
327	Go International	GoInternational	\N
328	Golden Goose	GoldenGoose	\N
329	Gotha	Gotha	\N
330	Gran Sasso	GranSasso	\N
331	Grishko	Grishko	\N
332	GRUND	GRUND	\N
333	GTA	GTA	\N
334	Gucci	Gucci	\N
335	Gucci Kids	GucciKids	\N
336	Guess	Guess	\N
337	Guglielminotti	Guglielminotti	\N
338	Gunhild	Gunhild	\N
339	Gunne Sax	GunneSax	\N
340	Gunze	Gunze	\N
341	Gözze	Gözze	\N
342	H&M	HM	\N
343	Hackett	Hackett	\N
344	Haider Ackermann	HaiderAckermann	\N
345	Haikure	Haikure	\N
346	Haku Möbel	HakuMöbel	\N
347	Halston Heritage	HalstonHeritage	\N
348	Hamaki-Ho	Hamaki-Ho	\N
349	Han Kjøbenhavn	HanKjøbenhavn	\N
350	Hanita	Hanita	\N
351	Hanro	Hanro	\N
352	Happiness Brand	HappinessBrand	\N
353	Harmont & Blaine	HarmontBlaine	\N
354	Harris Wharf London	HarrisWharfLondon	\N
355	Hartford	Hartford	\N
356	HatleyHaus Alkire	HatleyHausAlkire	\N
357	Havaianas	Havaianas	\N
358	Helmut LangHEMA	HelmutLangHEMA	\N
359	Henry Cotton´s	HenryCotton´s	\N
360	Heritage	Heritage	\N
361	Hermès	Hermès	\N
362	Herno	Herno	\N
363	Herschel	Herschel	\N
364	Hervé Leger	HervéLeger	\N
365	Hield	Hield	\N
366	High	High	\N
367	High Street Design	HighStreetDesign	\N
368	Historic	Historic	\N
369	Hogan	Hogan	\N
370	Hollyberry HomeHOME MAISON	HollyberryHomeHOMEMAISON	\N
371	Honigman	Honigman	\N
372	Honsel Leuchten	HonselLeuchten	\N
373	Hope Collection	HopeCollection	\N
374	HTC	HTC	\N
375	HTnaturals	HTnaturals	\N
376	Huber	Huber	\N
377	Hudson	Hudson	\N
378	HUGO BOSS	HUGOBOSS	\N
379	Hummel	Hummel	\N
380	Husky	Husky	\N
381	Hydrogen	Hydrogen	\N
382	Hérve Léger	HérveLéger	\N
383	Högl	Högl	\N
384	I Saw It First	ISawItFirst	\N
385	I'm Brian	ImBrian	\N
386	I'm Isola Marras	ImIsolaMarras	\N
387	I. & R. Morley	IRMorley	\N
388	Ian Snow	IanSnow	\N
389	IANUX	IANUX	\N
390	Ibili	Ibili	\N
391	iBlues	iBlues	\N
392	Iceberg	Iceberg	\N
393	Ichi	Ichi	\N
394	Icone	Icone	\N
395	Igi & Co	IgiCo	\N
396	Ih Nom Uh Nit	IhNomUhNit	\N
397	iittala	iittala	\N
398	Il Gufo	IlGufo	\N
399	Imperfect	Imperfect	\N
400	Imperial	Imperial	\N
401	Impressions	Impressions	\N
402	Incotex	Incotex	\N
403	Individual	Individual	\N
404	Ingram	Ingram	\N
405	Inov8	Inov8	\N
406	Inside	Inside	\N
407	Inspired Walls	InspiredWalls	\N
408	InterDesign	InterDesign	\N
409	Intropia	Intropia	\N
410	Invicta	Invicta	\N
411	IRIS & INK	IRISINK	\N
412	Iro	Iro	\N
413	Iron Heart	IronHeart	\N
414	Irregular Choice	IrregularChoice	\N
415	Isa Arfen	IsaArfen	\N
416	Isabel Benenato	IsabelBenenato	\N
417	Isabel Marant	IsabelMarant	\N
418	Isaia	Isaia	\N
419	ISC	ISC	\N
420	ISKO	ISKO	\N
421	Islo Isabella Lorusso	IsloIsabellaLorusso	\N
422	Issa	Issa	\N
423	Issey Miyake	IsseyMiyake	\N
424	Italian Bed Linen	ItalianBedLinen	\N
425	Italo Ottinetti	ItaloOttinetti	\N
426	Ivories	Ivories	\N
427	Izod Lacoste	IzodLacoste	\N
428	J Brand	JBrand	\N
429	J-Wear	J-Wear	\N
430	J.Lindeberg	JLindeberg	\N
431	J.W. SAX Milano	JWSAXMilano	\N
432	J.W.Anderson	JWAnderson	\N
433	Jack & Jones	JackJones	\N
434	Jacob Cohen	JacobCohen	\N
435	Jako	Jako	\N
436	James & Nicholson	JamesNicholson	\N
437	James Perse	JamesPerse	\N
438	Janet & Janet	JanetJanet	\N
439	Jean Machine	JeanMachine	\N
440	Jean Paul Gaultier	JeanPaulGaultier	\N
441	Jeckerson	Jeckerson	\N
442	Jeffrey Campbell	JeffreyCampbell	\N
443	Jenny Hellström	JennyHellström	\N
444	Jennyfer	Jennyfer	\N
445	Jeordie's	Jeordies	\N
446	Jigsaw	Jigsaw	\N
447	Jijil	Jijil	\N
448	Jijil Jolie	JijilJolie	\N
449	Jil Sander	JilSander	\N
450	Jimmy Choo London	JimmyChooLondon	\N
451	Joe Browns	JoeBrowns	\N
452	Joe Fresh	JoeFresh	\N
453	John Galliano	JohnGalliano	\N
454	JOHN GALLIANO KIDS	JOHNGALLIANOKIDS	\N
455	John Richmond	JohnRichmond	\N
456	John Varvatos	JohnVarvatos	\N
457	John Weitz	JohnWeitz	\N
458	Joie	Joie	\N
459	Jolie By Edward Spiers	JolieByEdwardSpiers	\N
460	Jon Richard	JonRichard	\N
461	Jonathan Simkhai	JonathanSimkhai	\N
462	Joop	Joop	\N
463	Josef Seibel	JosefSeibel	\N
464	JosephJoshua Sanders	JosephJoshuaSanders	\N
465	Joules	Joules	\N
466	Joykeep Jeans	JoykeepJeans	\N
467	Jucca	Jucca	\N
468	Judge	Judge	\N
469	Julian Bowen	JulianBowen	\N
470	Junya Watanabe	JunyaWatanabe	\N
471	Just Cavalli	JustCavalli	\N
472	Just Contempo	JustContempo	\N
473	JUSTyou	JUSTyou	\N
474	K-Way	K-Way	\N
475	Kahla	Kahla	\N
476	KAISER	KAISER	\N
477	Kalliste	Kalliste	\N
478	Kangaroos	Kangaroos	\N
479	Kangra Cashmere	KangraCashmere	\N
480	Kanz	Kanz	\N
481	Kaos	Kaos	\N
482	Kaporal	Kaporal	\N
483	Kappa	Kappa	\N
484	Karen Millen	KarenMillen	\N
485	Karl Kani	KarlKani	\N
486	Karl Lagerfeld	KarlLagerfeld	\N
487	Kartell	Kartell	\N
488	Katia G.	KatiaG	\N
489	KELA	KELA	\N
490	KEN BARRELL	KENBARRELL	\N
491	Ken Done	KenDone	\N
492	Kendall + Kylie	KendallKylie	\N
493	Kennel & Schmenger	KennelSchmenger	\N
494	Kenneth Cole	KennethCole	\N
495	Kenneth Cole Reaction	KennethColeReaction	\N
496	Kenneth Jay Lane	KennethJayLane	\N
497	Kent & Curwen	KentCurwen	\N
498	KESPER	KESPER	\N
499	Khaadi	Khaadi	\N
500	Khaite	Khaite	\N
501	Ki6? Who are you?	Ki6?Whoareyou?	\N
502	Kickers	Kickers	\N
503	Kidiliz	Kidiliz	\N
504	King Apparel	KingApparel	\N
505	Kipling	Kipling	\N
506	KitchenCraft	KitchenCraft	\N
507	KitonKleine Wolke	KitonKleineWolke	\N
508	Knot	Knot	\N
509	Kocca	Kocca	\N
510	Konstsmide	Konstsmide	\N
511	Kookai	Kookai	\N
512	Koon	Koon	\N
513	Koralline	Koralline	\N
514	Koton	Koton	\N
515	Koziol	Koziol	\N
516	Kudeta	Kudeta	\N
517	Kuhn Rikon	KuhnRikon	\N
518	Kurt Geiger	KurtGeiger	\N
519	L'autre Chose	LautreChose	\N
520	L.B.M. 1911	LBM1911	\N
521	L:Ú L:Ú	L:ÚL:Ú	\N
522	La Bonneterie Cevenole	LaBonneterieCevenole	\N
523	LA Linen	LALinen	\N
524	La Perla	LaPerla	\N
525	La Stupenderia	LaStupenderia	\N
526	La tennis Bensimon	LatennisBensimon	\N
527	Lacor	Lacor	\N
528	Lacoste	Lacoste	\N
529	Lamberto Losani	LambertoLosani	\N
530	Lands End	LandsEnd	\N
531	Laneus	Laneus	\N
532	Lanvin	Lanvin	\N
533	Lardini	Lardini	\N
534	Larusmiani	Larusmiani	\N
535	laviniaturra	laviniaturra	\N
536	Le Château	LeChâteau	\N
537	Le Coq Sportif	LeCoqSportif	\N
538	Le Mont Saint Michel	LeMontSaintMichel	\N
539	Le Silla	LeSilla	\N
540	Leather Crown	LeatherCrown	\N
541	Lee	Lee	\N
542	Lego Wear	LegoWear	\N
543	Leonisa	Leonisa	\N
544	Les Copains	LesCopains	\N
545	LeSportsac	LeSportsac	\N
546	Levi Strauss & Co.	LeviStraussCo	\N
547	Levi's	Levis	\N
548	Liebeskind	Liebeskind	\N
549	LITTLE MARC JACOBS	LITTLEMARCJACOBS	\N
550	LittleBig	LittleBig	\N
551	Liu Jo	LiuJo	\N
552	Liviana Conti	LivianaConti	\N
553	Loewe	Loewe	\N
554	Lonely	Lonely	\N
555	Loro Piana	LoroPiana	\N
556	Lost And Found Rooms	LostAndFoundRooms	\N
557	Louis Philippe	LouisPhilippe	\N
558	Louis Vuitton	LouisVuitton	\N
559	Love Moschino	LoveMoschino	\N
560	Lovely Casa	LovelyCasa	\N
561	Lover	Lover	\N
562	Lovers + Friends	LoversFriends	\N
563	low brand	lowbrand	\N
564	Loyandford	Loyandford	\N
565	LSA International	LSAInternational	\N
566	LTB Jeans	LTBJeans	\N
567	Lucléon	Lucléon	\N
568	Luigi Borrelli	LuigiBorrelli	\N
569	LUIGI BORRELLI NAPOLI	LUIGIBORRELLINAPOLI	\N
570	Lumberjack	Lumberjack	\N
571	Lush Décor	LushDécor	\N
572	Lygia & Nanny	LygiaNanny	\N
573	Lyle & Scott	LyleScott	\N
574	M Missoni	MMissoni	\N
575	Macchia j	Macchiaj	\N
576	Madonna fashion brands	Madonnafashionbrands	\N
577	Magnolia Box	MagnoliaBox	\N
578	Maison Martin Margiela	MaisonMartinMargiela	\N
579	Maison Scotch	MaisonScotch	\N
580	Majestic Filatures	MajesticFilatures	\N
581	Maliparmi	Maliparmi	\N
582	Mallzee	Mallzee	\N
583	Mandarina Duck	MandarinaDuck	\N
584	Mangano	Mangano	\N
585	Mango	Mango	\N
586	Manila Grace	ManilaGrace	\N
587	Manuel Ritz	ManuelRitz	\N
588	Marc Jacobs	MarcJacobs	\N
589	Marc O'Polo	MarcOPolo	\N
590	Marcelo Burlon	MarceloBurlon	\N
591	Marco Tozzi	MarcoTozzi	\N
592	Maria Grazia Severi	MariaGraziaSeveri	\N
593	Marimekko	Marimekko	\N
594	Marina Rinaldi	MarinaRinaldi	\N
595	Marni	Marni	\N
596	Marsèll	Marsèll	\N
597	Mauro Grifoni	MauroGrifoni	\N
598	Mavi Jeans	MaviJeans	\N
599	Max Mara	MaxMara	\N
600	Max Studio	MaxStudio	\N
601	MCS	MCS	\N
602	Meltin Pot	MeltinPot	\N
603	Merc Clothing	MercClothing	\N
604	Merci	Merci	\N
605	Messagerie	Messagerie	\N
606	Met	Met	\N
607	Mexx	Mexx	\N
608	Michael Coal	MichaelCoal	\N
609	Michael Kors	MichaelKors	\N
610	Michael Michael Kors	MichaelMichaelKors	\N
611	Microbe	Microbe	\N
612	Mih Jeans	MihJeans	\N
613	Minimum	Minimum	\N
614	Miss Grant	MissGrant	\N
615	Missoni	Missoni	\N
616	Miu Miu	MiuMiu	\N
617	Miuniku	Miuniku	\N
618	Moncler	Moncler	\N
619	Monica Vinader	MonicaVinader	\N
620	Monnalisa	Monnalisa	\N
621	Moods of Norway	MoodsofNorway	\N
622	Morgan	Morgan	\N
623	Morphsuits	Morphsuits	\N
624	MoschinoMsgm	MoschinoMsgm	\N
625	Mudd Jeans	MuddJeans	\N
626	Muddy Puddles	MuddyPuddles	\N
627	Mustang	Mustang	\N
628	Myths	Myths	\N
629	N.Peal	NPeal	\N
630	Nafnaf	Nafnaf	\N
631	Nakkna	Nakkna	\N
632	Name It	NameIt	\N
633	Nanán	Nanán	\N
634	Napapijri	Napapijri	\N
635	Natasha Zinko	NatashaZinko	\N
636	Naturino	Naturino	\N
637	NBD	NBD	\N
638	Neck & Neck	NeckNeck	\N
639	Neil Barrett	NeilBarrett	\N
640	Neill Katter	NeillKatter	\N
641	New Balance	NewBalance	\N
642	New Era	NewEra	\N
643	New Look	NewLook	\N
644	New York Industrie	NewYorkIndustrie	\N
645	Nicholas Kirkwood	NicholasKirkwood	\N
646	Nike	Nike	\N
647	Nila & Nila	NilaNila	\N
648	Nili Lotan	NiliLotan	\N
649	Nina RicciNine In The Morning	NinaRicciNineInTheMorning	\N
650	Nixon	Nixon	\N
651	No Ka'Oi	NoKaOi	\N
652	No Secrets World	NoSecretsWorld	\N
653	NOBODINOZ	NOBODINOZ	\N
654	Noir	Noir	\N
655	Noisy May	NoisyMay	\N
656	Noko Jeans	NokoJeans	\N
657	Nolita Lace	NolitaLace	\N
658	Noppies	Noppies	\N
659	Nora Barth	NoraBarth	\N
660	Norma Kamali	NormaKamali	\N
661	NORMANN COPENHAGEN	NORMANNCOPENHAGEN	\N
662	Norse Projects	NorseProjects	\N
663	North Sails	NorthSails	\N
664	Notch	Notch	\N
665	Nouvelles Images	NouvellesImages	\N
666	NR Rapisardi	NRRapisardi	\N
667	Nude	Nude	\N
668	Nudie Jeans	NudieJeans	\N
669	Numero 74	Numero74	\N
670	N°21	N°21	\N
671	Nümph	Nümph	\N
672	O.X.S.	OXS	\N
673	Oakley	Oakley	\N
674	Oaks	Oaks	\N
675	Oaks Lighting	OaksLighting	\N
676	OAMC	OAMC	\N
677	ObeyOBLIQUE CREATIONS	ObeyOBLIQUECREATIONS	\N
678	OBVIOUS BASIC	OBVIOUSBASIC	\N
679	Odd Molly	OddMolly	\N
680	Odi Et Amo	OdiEtAmo	\N
681	Off-white	Off-white	\N
682	Office Hippo	OfficeHippo	\N
683	Officina 36	Officina36	\N
684	Officine Creative	OfficineCreative	\N
685	Officine Creative Italia	OfficineCreativeItalia	\N
686	Officine Generale	OfficineGenerale	\N
687	OGGI	OGGI	\N
688	Oilily	Oilily	\N
689	Oliver Peoples	OliverPeoples	\N
690	Olsen	Olsen	\N
691	OLYMPIAH	OLYMPIAH	\N
692	OnePiece	OnePiece	\N
693	Ong Shunmugam	OngShunmugam	\N
694	Onia	Onia	\N
695	Only	Only	\N
696	Only & Sons	OnlySons	\N
697	Ontour	Ontour	\N
698	Opening Ceremony	OpeningCeremony	\N
699	OPUS	OPUS	\N
700	Orca	Orca	\N
701	Orciani	Orciani	\N
702	Original Penguin	OriginalPenguin	\N
703	Original Vintage Style	OriginalVintageStyle	\N
704	Orlebar Brown	OrlebarBrown	\N
705	Oroscuro	Oroscuro	\N
706	Oscar De La Renta	OscarDeLaRenta	\N
707	Osklen	Osklen	\N
708	Osman	Osman	\N
709	Osram	Osram	\N
710	ottod´Ame	ottod´Ame	\N
711	Our Legacy	OurLegacy	\N
712	Ovye By Cristina Lucchi	OvyeByCristinaLucchi	\N
713	Oxo	Oxo	\N
714	P.A.R.O.S.H.	PAROSH	\N
715	Pal Zileri	PalZileri	\N
716	Palm Angels	PalmAngels	\N
717	Paloma Barceló	PalomaBarceló	\N
718	Pantaloni Torino	PantaloniTorino	\N
719	Pantofola D'oro	PantofolaDoro	\N
720	Paola Frani	PaolaFrani	\N
721	Paolo Pecora	PaoloPecora	\N
722	Paoloni	Paoloni	\N
723	Patrizia Pepe	PatriziaPepe	\N
724	Paul & Joe	PaulJoe	\N
725	Paul Smith	PaulSmith	\N
726	Paule Ka	PauleKa	\N
727	Pendleton Woolen Mills	PendletonWoolenMills	\N
728	Pennyblack	Pennyblack	\N
729	People	People	\N
730	Pepe Jeans	PepeJeans	\N
731	Pepe Jeans London	PepeJeansLondon	\N
732	PESERICO	PESERICO	\N
733	Peter Hahn	PeterHahn	\N
734	Peter Pilotto	PeterPilotto	\N
735	Petit Bateau	PetitBateau	\N
736	Peuterey	Peuterey	\N
737	Philipp Plein	PhilippPlein	\N
738	Philippe Model	PhilippeModel	\N
739	Philips	Philips	\N
740	Philosophy di Lorenzo Serafini	PhilosophydiLorenzoSerafini	\N
741	Pianurastudio	Pianurastudio	\N
742	Pieces	Pieces	\N
743	Pierre Hardy	PierreHardy	\N
744	Pingoo Prints	PingooPrints	\N
745	Pinko	Pinko	\N
746	Plein Sport	PleinSport	\N
747	Plein Sud	PleinSud	\N
748	Police	Police	\N
749	Pollini	Pollini	\N
750	Polly Flinders	PollyFlinders	\N
751	Polo Ralph Lauren	PoloRalphLauren	\N
752	Prada	Prada	\N
753	Preen	Preen	\N
754	Premiata	Premiata	\N
755	Premier Housewares	PremierHousewares	\N
756	Proenza Schouler	ProenzaSchouler	\N
757	Project D	ProjectD	\N
758	PT01	PT01	\N
759	Puma	Puma	\N
760	Q/S designed by	QSdesignedby	\N
761	Q/S designed by - s.Oliver	QSdesignedby-sOliver	\N
762	Q1	Q1	\N
763	Q2	Q2	\N
764	Qasimi	Qasimi	\N
765	Qcqc	Qcqc	\N
766	Qdo	Qdo	\N
767	Qed London	QedLondon	\N
768	QEEBOO	QEEBOO	\N
769	Ql2 Quelledue	Ql2Quelledue	\N
770	Qu4ttro	Qu4ttro	\N
771	Quail	Quail	\N
772	Qualy	Qualy	\N
773	Quantum Courage	QuantumCourage	\N
774	QUATTRO.DECIMI	QUATTRODECIMI	\N
775	Quattrobarradodici	Quattrobarradodici	\N
776	Quax	Quax	\N
777	Quay Eyeware	QuayEyeware	\N
778	Quayside	Quayside	\N
779	Queen	Queen	\N
780	Queen Bee	QueenBee	\N
781	Queen Mum	QueenMum	\N
782	Queen Of Love	QueenOfLove	\N
783	Queene and Belle	QueeneandBelle	\N
784	Queens	Queens	\N
785	Queensway	Queensway	\N
786	Querini	Querini	\N
787	Quest	Quest	\N
788	Quetsche	Quetsche	\N
789	Quid	Quid	\N
790	Quiksilver	Quiksilver	\N
791	Quintessence	Quintessence	\N
792	QUIS QUIS	QUISQUIS	\N
793	Quiz	Quiz	\N
794	Quoddy	Quoddy	\N
795	Quodlibet	Quodlibet	\N
796	Qupid	Qupid	\N
797	QURE	QURE	\N
798	Quttin	Quttin	\N
799	R13	R13	\N
800	Rag & Bone	RagBone	\N
801	Rajrang	Rajrang	\N
802	Ralph Lauren	RalphLauren	\N
803	Raoul	Raoul	\N
804	Ray-Ban	Ray-Ban	\N
805	RBV BIRKMANN	RBVBIRKMANN	\N
806	Re-hash	Re-hash	\N
807	Re/Done	ReDone	\N
808	Real Gold	RealGold	\N
809	Rebecca Minkoff	RebeccaMinkoff	\N
810	Red Valentino	RedValentino	\N
811	Red(v)	Red(v)	\N
812	Reebok	Reebok	\N
813	Reflect-please	Reflect-please	\N
814	RefrigiWear	RefrigiWear	\N
815	Reiss	Reiss	\N
816	Relaxdays	Relaxdays	\N
817	Religion	Religion	\N
818	Relish	Relish	\N
819	Renaissance 2000	Renaissance2000	\N
820	Replay	Replay	\N
821	Rick Owens	RickOwens	\N
822	Rieker	Rieker	\N
823	Rip Curl	RipCurl	\N
824	Riva Paoletti	RivaPaoletti	\N
825	River Island	RiverIsland	\N
826	Robert Clergerie	RobertClergerie	\N
827	Roberto Cavalli	RobertoCavalli	\N
828	Roberto Collina	RobertoCollina	\N
829	Roberto Festa Milano	RobertoFestaMilano	\N
830	Rochas	Rochas	\N
831	Roda	Roda	\N
832	Rodo	Rodo	\N
833	Roger Vivier	RogerVivier	\N
834	Roksanda Ilincic	RoksandaIlincic	\N
835	Roland Mouret	RolandMouret	\N
836	Rosasen	Rosasen	\N
837	Rossopuro	Rossopuro	\N
838	Roy Rogers	RoyRogers	\N
839	Royal Republiq	RoyalRepubliq	\N
840	Rta	Rta	\N
841	Ruco Line	RucoLine	\N
842	Rufskin	Rufskin	\N
843	Rêve En Vert	RêveEnVert	\N
844	S.E.H Kelly	SEHKelly	\N
845	s.Oliver	sOliver	\N
846	SABA	SABA	\N
847	sacai	sacai	\N
848	Saint Laurent	SaintLaurent	\N
849	Saint Tropez	SaintTropez	\N
850	Sakis Rouvas Collection	SakisRouvasCollection	\N
851	Salvatore Ferragamo	SalvatoreFerragamo	\N
852	Salvatore Ferragamo S.p.A.	SalvatoreFerragamoSpA	\N
853	Sanetta	Sanetta	\N
854	Santoni	Santoni	\N
855	Schiesser	Schiesser	\N
856	Schutz	Schutz	\N
857	Scotch & Soda	ScotchSoda	\N
858	Scotch and Soda	ScotchandSoda	\N
859	See By Chloé	SeeByChloé	\N
860	Selected	Selected	\N
861	Sendmeamirror	Sendmeamirror	\N
862	Sergio Rossi	SergioRossi	\N
863	Seventy	Seventy	\N
864	Shiatzy Chen	ShiatzyChen	\N
865	Silver Jeans Co.	SilverJeansCo	\N
866	Silvian Heach	SilvianHeach	\N
867	Simonetta	Simonetta	\N
868	SINOIAN	SINOIAN	\N
869	Siviglia	Siviglia	\N
870	Six Deuce	SixDeuce	\N
871	Sixpack France	SixpackFrance	\N
872	Skechers	Skechers	\N
873	Snobby Sheep	SnobbySheep	\N
874	Soleil d'Ocre	SoleildOcre	\N
875	Sonia Rykiel	SoniaRykiel	\N
876	Sophie Paris Vietnam	SophieParisVietnam	\N
877	Space Style Concept	SpaceStyleConcept	\N
878	Springfield	Springfield	\N
879	Star in the Hood	StarintheHood	\N
880	Star Wars	StarWars	\N
881	Starworld	Starworld	\N
882	Stefanel	Stefanel	\N
883	Stella McCartney	StellaMcCartney	\N
884	Sterntaler	Sterntaler	\N
885	Steve Madden	SteveMadden	\N
886	Stick It On Your Wall	StickItOnYourWall	\N
887	Street One	StreetOne	\N
888	Strellson	Strellson	\N
889	Stuart Weitzman	StuartWeitzman	\N
890	Stupell Industries	StupellIndustries	\N
891	Sun 68	Sun68	\N
892	Sundek	Sundek	\N
893	Suoli	Suoli	\N
894	Super Cool Creations	SuperCoolCreations	\N
895	Superdry	Superdry	\N
896	Superga	Superga	\N
897	Swear	Swear	\N
898	T-fal	T-fal	\N
899	Tagliatore	Tagliatore	\N
900	Taifun	Taifun	\N
901	Takeo Kikuchi	TakeoKikuchi	\N
902	Tally WeijlTamaki niime	TallyWeijlTamakiniime	\N
903	Tamaris	Tamaris	\N
904	Tarocash	Tarocash	\N
905	Ted Baker	TedBaker	\N
906	Tescoma	Tescoma	\N
907	The Art Group	TheArtGroup	\N
908	The Fashion Bible	TheFashionBible	\N
909	The Oliver Gal Artist Co.	TheOliverGalArtistCo	\N
910	The Row	TheRow	\N
911	The Stupell Home Décor Collection	TheStupellHomeDécorCollection	\N
912	Theory	Theory	\N
913	Think	Think	\N
914	Thom Browne	ThomBrowne	\N
915	Thomas Sabo	ThomasSabo	\N
916	Three Gun	ThreeGun	\N
917	Tibi	Tibi	\N
918	Tiffany & Co.	TiffanyCo	\N
919	Tiger of Sweden	TigerofSweden	\N
920	Tigha	Tigha	\N
921	Timberland	Timberland	\N
922	TNT	TNT	\N
923	Tod's	Tods	\N
924	Tom Ford	TomFord	\N
925	Tom Tailor	TomTailor	\N
926	Tombolini	Tombolini	\N
927	Tommy Hilfiger	TommyHilfiger	\N
928	Tommy Jeans	TommyJeans	\N
929	Tonello	Tonello	\N
930	Tony Rubino	TonyRubino	\N
931	Tory Burch	ToryBurch	\N
932	Tosca Blu	ToscaBlu	\N
933	Toy G	ToyG	\N
934	Trands	Trands	\N
935	Trendhim	Trendhim	\N
936	Trio Leuchten	TrioLeuchten	\N
937	Triumph	Triumph	\N
938	True Religion	TrueReligion	\N
939	Truenyc	Truenyc	\N
940	Trussardi	Trussardi	\N
941	Twin-Set	Twin-Set	\N
942	Twisted Envy	TwistedEnvy	\N
943	U.S.Polo Association	USPoloAssociation	\N
944	UCLIC	UCLIC	\N
945	UGG	UGG	\N
946	Ugo Cacciatori	UgoCacciatori	\N
947	Ulla Johnson	UllaJohnson	\N
948	Ulla Popken	UllaPopken	\N
949	Ultra Chic	UltraChic	\N
950	Ultracor	Ultracor	\N
951	Uma	Uma	\N
952	Uma Wang	UmaWang	\N
953	Umbra	Umbra	\N
954	Umbro	Umbro	\N
955	Umd	Umd	\N
956	Umit Benan	UmitBenan	\N
957	Un-Namable	Un-Namable	\N
958	Unconditional	Unconditional	\N
959	Under Armour	UnderArmour	\N
960	Undercover	Undercover	\N
961	Uniform	Uniform	\N
962	Uniform Wares	UniformWares	\N
963	Unique21	Unique21	\N
964	Unisa	Unisa	\N
965	United Curtain Co.	UnitedCurtainCo	\N
966	United Nude	UnitedNude	\N
967	Unity	Unity	\N
968	Universal Works	UniversalWorks	\N
969	UNKL347	UNKL347	\N
970	UNLACE	UNLACE	\N
971	Unlimited	Unlimited	\N
972	Unravel	Unravel	\N
973	Unze	Unze	\N
974	Unützer	Unützer	\N
975	Uomolebole	Uomolebole	\N
976	Up Jeans	UpJeans	\N
977	Up To Be	UpToBe	\N
978	Urban Classic	UrbanClassic	\N
979	Urban Code	UrbanCode	\N
980	URBAN LES HOMMES	URBANLESHOMMES	\N
981	Urban Male	UrbanMale	\N
982	Uta Raasch	UtaRaasch	\N
983	Vagabond	Vagabond	\N
984	Valentino	Valentino	\N
985	Valextra	Valextra	\N
986	Vallila	Vallila	\N
987	Vanessa Bruno	VanessaBruno	\N
988	Vanessa Scott	VanessaScott	\N
989	Vans	Vans	\N
990	VB Rocks	VBRocks	\N
991	VDP Collection	VDPCollection	\N
992	Velvet	Velvet	\N
993	Vent du Sud	VentduSud	\N
994	Vero Moda	VeroModa	\N
995	VERSA	VERSA	\N
996	Versace	Versace	\N
997	Versace Jeans Couture	VersaceJeansCouture	\N
998	Versus	Versus	\N
999	VETEMENTS	VETEMENTS	\N
1000	Via Appia Due	ViaAppiaDue	\N
1001	Vic Matié	VicMatié	\N
1002	Vicini	Vicini	\N
1003	Vicolo	Vicolo	\N
1004	Victoria	Victoria	\N
1005	Victoria Beckham	VictoriaBeckham	\N
1006	VIDA	VIDA	\N
1007	Viking	Viking	\N
1008	Vila	Vila	\N
1009	VilebrequinVilla D'Este Home Tivoli	VilebrequinVillaDEsteHomeTivoli	\N
1010	Villeroy & Boch	VilleroyBoch	\N
1011	VILSHENKO	VILSHENKO	\N
1012	Vince	Vince	\N
1013	Vingino	Vingino	\N
1014	Vintage De Luxe	VintageDeLuxe	\N
1015	Vionnet	Vionnet	\N
1016	Visvim	Visvim	\N
1017	Vivance	Vivance	\N
1018	Vivetta	Vivetta	\N
1019	Vivienne Westwood	VivienneWestwood	\N
1020	Vix	Vix	\N
1021	Vneck	Vneck	\N
1022	W118 by Walter Baker	W118byWalterBaker	\N
1023	Waldläufer	Waldläufer	\N
1024	Wall Art	WallArt	\N
1025	Wall Smart Designs	WallSmartDesigns	\N
1026	Wallis	Wallis	\N
1027	Walplus	Walplus	\N
1028	Walter Baker	WalterBaker	\N
1029	Walther Design	WaltherDesign	\N
1030	Warehouse	Warehouse	\N
1031	Wash+Dry	WashDry	\N
1032	Weekday	Weekday	\N
1033	Weili Zheng	WeiliZheng	\N
1034	WENKO	WENKO	\N
1035	WESC	WESC	\N
1036	WESCO	WESCO	\N
1037	Westmark	Westmark	\N
1038	What For	WhatFor	\N
1039	Whats On Your Wall	WhatsOnYourWall	\N
1040	Wheat	Wheat	\N
1041	White Mountaineering	WhiteMountaineering	\N
1042	White Sand 88	WhiteSand88	\N
1043	White Stuff Clothing	WhiteStuffClothing	\N
1044	Who*s Who	Who*sWho	\N
1045	Whyred	Whyred	\N
1046	Wildfox	Wildfox	\N
1047	Wilton	Wilton	\N
1048	Windsor Smith	WindsorSmith	\N
1049	Wise Guy	WiseGuy	\N
1050	WMF	WMF	\N
1051	Wofi Leuchten	WofiLeuchten	\N
1052	Wolford	Wolford	\N
1053	Women'secret	Womensecret	\N
1054	Won Hundred	WonHundred	\N
1055	Wood Wood	WoodWood	\N
1056	Woodwick	Woodwick	\N
1057	Wool & Co	WoolCo	\N
1058	Woolrich	Woolrich	\N
1059	Wrangler	Wrangler	\N
1060	Wtr London	WtrLondon	\N
1061	Wyldr	Wyldr	\N
1062	Wåven	Wåven	\N
1063	X Bionic	XBionic	\N
1064	X by NBD	XbyNBD	\N
1065	X Loop	XLoop	\N
1066	X Socks	XSocks	\N
1067	X&B XAVEM	XBXAVEM	\N
1068	X-Cape	X-Cape	\N
1069	Xacus	Xacus	\N
1070	Xagon Man	XagonMan	\N
1071	Xander Zhou	XanderZhou	\N
1072	Xandres	Xandres	\N
1073	XAVAX	XAVAX	\N
1074	Xavier Danaud	XavierDanaud	\N
1075	XBAKKO	XBAKKO	\N
1076	XBRAND	XBRAND	\N
1077	Xc-Xacaret	Xc-Xacaret	\N
1078	XConcept	XConcept	\N
1079	Xenia	Xenia	\N
1080	XENIA BOUS	XENIABOUS	\N
1081	Xia Home Fashions	XiaHomeFashions	\N
1082	Ximena Kavalekas	XimenaKavalekas	\N
1083	Xirena	Xirena	\N
1084	Xoos	Xoos	\N
1085	Xs Milano	XsMilano	\N
1086	Xsensible	Xsensible	\N
1087	Xti	Xti	\N
1088	Xtreme	Xtreme	\N
1089	XTSY	XTSY	\N
1090	XX Coss Concept	XXCossConcept	\N
1091	Xyxyx	Xyxyx	\N
1092	XZX-Star	XZX-Star	\N
1093	Y / Project	YProject	\N
1094	Y.A.S	YAS	\N
1095	Y.A.S.	YAS	\N
1096	Y.A.S. Tall	YASTall	\N
1097	YAB	YAB	\N
1098	Yan Simmon	YanSimmon	\N
1099	Yang Li	YangLi	\N
1100	Yankee Candle Company	YankeeCandleCompany	\N
1101	Yasmine Eslami	YasmineEslami	\N
1102	Yeezy by Kanye West	YeezybyKanyeWest	\N
1103	Yellow Cab	YellowCab	\N
1104	Yep	Yep	\N
1105	Yeprem	Yeprem	\N
1106	Yerse	Yerse	\N
1107	Yes London	YesLondon	\N
1108	Yes-Zee	Yes-Zee	\N
1109	Yigal AzrouËl	YigalAzrouËl	\N
1110	Ylati	Ylati	\N
1111	Ymc You Must Create	YmcYouMustCreate	\N
1112	Yohji Yamamoto	YohjiYamamoto	\N
1113	Yoko Design	YokoDesign	\N
1114	Yoon	Yoon	\N
1115	YOSHII	YOSHII	\N
1116	Yosi Samra	YosiSamra	\N
1117	Yosuzi	Yosuzi	\N
1118	Young Versace	YoungVersace	\N
1119	Your Turn	YourTurn	\N
1120	Yours Clothing	YoursClothing	\N
1121	YPNO	YPNO	\N
1122	YPORQUÉ	YPORQUÉ	\N
1123	Yshey	Yshey	\N
1124	Yuliya Magdych	YuliyaMagdych	\N
1125	Yumi	Yumi	\N
1126	Yumi Kim	YumiKim	\N
1127	Yummie Tummie	YummieTummie	\N
1128	Yuul Yie	YuulYie	\N
1129	Yuzefi	Yuzefi	\N
1130	Yves Salomon	YvesSalomon	\N
1131	Yvonne Léon	YvonneLéon	\N
1132	Zac Posen	ZacPosen	\N
1133	Zack	Zack	\N
1134	Zadig & Voltaire	ZadigVoltaire	\N
1135	Zaida	Zaida	\N
1136	Zak designs	Zakdesigns	\N
1137	Zanella	Zanella	\N
1138	Zanellato	Zanellato	\N
1139	Zanetti	Zanetti	\N
1140	Zanetti 1965	Zanetti1965	\N
1141	Zanfrini	Zanfrini	\N
1142	Zanieri	Zanieri	\N
1143	Zanone	Zanone	\N
1144	Zassenhaus	Zassenhaus	\N
1145	Zeal	Zeal	\N
1146	Zebra	Zebra	\N
1147	ZEBRA TEXTIL	ZEBRATEXTIL	\N
1148	Zeferino	Zeferino	\N
1149	ZELLER	ZELLER	\N
1150	Zenker	Zenker	\N
1151	Zenobi	Zenobi	\N
1152	ZEP	ZEP	\N
1153	Zero + Maria Cornejo	ZeroMariaCornejo	\N
1154	Zero Construction	ZeroConstruction	\N
1155	Zeus + Dione	ZeusDione	\N
1156	Zeynep Arcay	ZeynepArcay	\N
1157	Zhelda	Zhelda	\N
1158	Ziggy Chen	ZiggyChen	\N
1159	Zilverstad	Zilverstad	\N
1160	Zimmerli	Zimmerli	\N
1161	Zimmermann	Zimmermann	\N
1162	Zinda	Zinda	\N
1163	Zippo	Zippo	\N
1164	Zippy	Zippy	\N
1165	Zizzi	Zizzi	\N
1166	Zoe Karssen	ZoeKarssen	\N
1167	Zucca	Zucca	\N
1168	Zuhair Murad	ZuhairMurad	\N
1169	Zwilling	Zwilling	\N
1170	Zyliss	Zyliss	\N
\.


--
-- Name: labels_id_seq; Type: SEQUENCE SET; Schema: webshop; Owner: postgres
--

SELECT pg_catalog.setval('webshop.labels_id_seq', 1170, true);


--
-- Name: labels labels_pkey; Type: CONSTRAINT; Schema: webshop; Owner: postgres
--

ALTER TABLE ONLY webshop.labels
    ADD CONSTRAINT labels_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

