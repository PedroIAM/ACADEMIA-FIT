--
-- PostgreSQL database dump
--

\restrict DhS5zw1xEaGHorFaXIupdinsrKjmRO2LhgrIrpOURsiMPVj1sPlWbYnAG5oJa1c

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-05-28 14:15:12

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
-- TOC entry 220 (class 1259 OID 25076)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    id_aluno integer NOT NULL,
    nome character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    nascimento date NOT NULL,
    telefone character varying(25) NOT NULL
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25075)
-- Name: alunos_id_aluno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alunos_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alunos_id_aluno_seq OWNER TO postgres;

--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 219
-- Name: alunos_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alunos_id_aluno_seq OWNED BY public.alunos.id_aluno;


--
-- TOC entry 224 (class 1259 OID 25102)
-- Name: matriculas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculas (
    id_matricula integer NOT NULL,
    aluno_id integer NOT NULL,
    plano_id integer NOT NULL,
    data_inicio date NOT NULL,
    data_fim date
);


ALTER TABLE public.matriculas OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 25101)
-- Name: matriculas_id_matricula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matriculas_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.matriculas_id_matricula_seq OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 223
-- Name: matriculas_id_matricula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matriculas_id_matricula_seq OWNED BY public.matriculas.id_matricula;


--
-- TOC entry 226 (class 1259 OID 25124)
-- Name: pagamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pagamentos (
    id_pagamento integer NOT NULL,
    matricula_id integer NOT NULL,
    valor_pago numeric(10,2) NOT NULL,
    data_pagamento date NOT NULL
);


ALTER TABLE public.pagamentos OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 25123)
-- Name: pagamentos_id_pagamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pagamentos_id_pagamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pagamentos_id_pagamento_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 225
-- Name: pagamentos_id_pagamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pagamentos_id_pagamento_seq OWNED BY public.pagamentos.id_pagamento;


--
-- TOC entry 222 (class 1259 OID 25092)
-- Name: planos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planos (
    id_plano integer NOT NULL,
    nome_plano character varying(50) NOT NULL,
    valor numeric(10,2) NOT NULL
);


ALTER TABLE public.planos OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25091)
-- Name: planos_id_plano_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planos_id_plano_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.planos_id_plano_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 221
-- Name: planos_id_plano_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planos_id_plano_seq OWNED BY public.planos.id_plano;


--
-- TOC entry 228 (class 1259 OID 25140)
-- Name: treinos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treinos (
    id_treino integer NOT NULL,
    aluno_id integer NOT NULL,
    tipo_treino character varying(100) NOT NULL,
    personal character varying(50) NOT NULL
);


ALTER TABLE public.treinos OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25139)
-- Name: treinos_id_treino_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treinos_id_treino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.treinos_id_treino_seq OWNER TO postgres;

--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 227
-- Name: treinos_id_treino_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treinos_id_treino_seq OWNED BY public.treinos.id_treino;


--
-- TOC entry 4876 (class 2604 OID 25079)
-- Name: alunos id_aluno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos ALTER COLUMN id_aluno SET DEFAULT nextval('public.alunos_id_aluno_seq'::regclass);


--
-- TOC entry 4878 (class 2604 OID 25105)
-- Name: matriculas id_matricula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas ALTER COLUMN id_matricula SET DEFAULT nextval('public.matriculas_id_matricula_seq'::regclass);


--
-- TOC entry 4879 (class 2604 OID 25127)
-- Name: pagamentos id_pagamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamentos ALTER COLUMN id_pagamento SET DEFAULT nextval('public.pagamentos_id_pagamento_seq'::regclass);


--
-- TOC entry 4877 (class 2604 OID 25095)
-- Name: planos id_plano; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planos ALTER COLUMN id_plano SET DEFAULT nextval('public.planos_id_plano_seq'::regclass);


--
-- TOC entry 4880 (class 2604 OID 25143)
-- Name: treinos id_treino; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treinos ALTER COLUMN id_treino SET DEFAULT nextval('public.treinos_id_treino_seq'::regclass);


--
-- TOC entry 5047 (class 0 OID 25076)
-- Dependencies: 220
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alunos (id_aluno, nome, email, nascimento, telefone) FROM stdin;
3994	Lívia Pereira Santos	liviapereira282@hotmail.com	1978-01-23	(92)92375-6669
1	Rodrigo Alvarenga	rodrigoalvaa277@gmail.com	1987-02-27	(27)98851-1226
3995	Alice Cruz Ferreira	alice.cruz605@gmail.com	1985-10-01	(21)94122-7216
3996	Heloísa Santos Correia	santos.heloisa719@outlook.com	1981-12-26	(21)97029-1817
3997	Wesley Silva Medeiros	wesley_silva715@yahoo.com	1998-10-05	(31)93086-8105
3998	Denise Dias Alves	denise_dias100@yahoo.com	1972-03-19	(81)94550-3389
3999	Felipe Pires Freitas	pires.felipe945@outlook.com	1995-04-08	(28)98409-3639
4000	Karla Monteiro Andrade	karla.monteiro592@gmail.com	1973-09-28	(85)94058-7988
4001	Júlio Ferreira Almeida	ferreira.julio285@outlook.com	2001-02-14	(85)95896-6946
4002	Edson Nascimento Carvalho	edson.nascimento687@gmail.com	2000-09-28	(81)99522-5343
4003	Cristina Pires Lopes	cristinapires474@hotmail.com	1970-08-11	(85)95352-4491
4004	Erika Batista Souza	erika_batista33@yahoo.com	2005-06-13	(51)94593-5572
4005	Marcos Teixeira Moraes	teixeira.marcos512@outlook.com	2002-01-04	(85)97158-6053
4006	Adriano Lima Lopes	lima.adriano270@outlook.com	1992-03-07	(81)96360-6628
4007	Daniel Lima Gonçalves	daniel.lima506@gmail.com	2001-03-29	(11)99421-4382
4008	Sandra Machado Cavalcanti	machado.sandra611@outlook.com	1983-08-08	(71)94374-4231
4009	Pedro Castro Pires	pedro_castro907@yahoo.com	2003-06-01	(85)95565-7579
4010	Júlio Machado Costa	julio_machado977@yahoo.com	1985-08-24	(71)93397-8249
4011	Fernando Rezende Barbosa	fernandorezende655@hotmail.com	1974-03-20	(11)96018-5867
4012	Vinícius Cruz Batista	vinicius_cruz941@yahoo.com	2003-05-27	(61)91261-4124
4013	Rogério Barbosa Lopes	rogerio.barbosa60@gmail.com	1971-10-25	(28)97522-8535
4014	Henrique Medeiros Cruz	medeiros.henrique676@outlook.com	1996-07-12	(71)93216-2965
4015	Simone Cavalcanti Machado	simonecavalcanti217@hotmail.com	1990-07-09	(92)95183-7852
4016	Pamela Azevedo Andrade	pamela.azevedo449@gmail.com	2005-07-18	(21)94015-8366
4017	Elton Santos Pinto	elton.santos568@gmail.com	2005-10-11	(28)99470-5205
4018	Igor Rodrigues Oliveira	igorrodrigues339@hotmail.com	1986-08-23	(31)99978-8677
4019	Marcos Cruz Lima	cruz.marcos585@outlook.com	1972-03-12	(21)97348-1353
4020	Mariana Martins Alves	martins.mariana363@outlook.com	1969-09-01	(51)97268-2989
4021	Zélia Souza Castro	souza.zelia63@outlook.com	1972-07-04	(92)95554-0424
4022	Fernando Lopes Martins	lopes.fernando144@outlook.com	1987-09-01	(11)94738-5696
4023	Sérgio Rodrigues Mendes	sergio.rodrigues828@gmail.com	1984-03-03	(27)99752-9405
4024	Pedro Ferreira Medeiros	ferreira.pedro417@outlook.com	1969-08-19	(61)93868-8676
4025	Julia Souza Costa	souza.julia272@outlook.com	1977-03-04	(31)96677-5103
4026	Zélia Correia Campos	zelia_correia159@yahoo.com	1982-06-09	(21)91784-9494
4027	Alice Cruz Souza	cruz.alice52@outlook.com	2001-05-10	(71)98128-6543
4028	Gustavo Gonçalves Ferreira	gustavo.goncalves872@gmail.com	1990-04-22	(85)94156-8532
4029	Carlos Teixeira Lopes	carlos.teixeira593@gmail.com	1982-03-28	(51)99823-1132
4030	Carolina Araújo Rocha	carolina_araujo210@yahoo.com	1990-08-31	(21)94565-0176
4031	André Campos Azevedo	andre.campos308@gmail.com	1980-07-21	(27)97151-0041
4032	Carolina Alves Rodrigues	carolinaalves219@hotmail.com	1968-12-23	(41)91923-3013
4033	Sérgio Andrade Vieira	sergio_andrade854@yahoo.com	1984-09-09	(81)99777-5215
4034	Pedro Campos Correia	pedrocampos955@hotmail.com	1968-07-04	(31)92549-2573
4035	Fernando Cunha Correia	fernandocunha279@hotmail.com	1999-04-15	(92)95602-0613
4036	Sandra Rezende Sousa	sandra.rezende518@gmail.com	1989-06-02	(28)99513-2217
4037	Wesley Oliveira Silva	wesley_oliveira134@yahoo.com	1983-09-03	(11)96930-2158
4038	Viviane Machado Correia	vivianemachado115@hotmail.com	1970-12-24	(71)91483-5614
4039	Edson Pinto Correia	edson_pinto131@yahoo.com	1968-02-05	(41)91535-4599
4040	Vanderlei Carvalho Castro	carvalho.vanderlei363@outlook.com	1966-11-22	(81)93074-3797
4041	Otávio Costa Ribeiro	otavio_costa26@yahoo.com	1969-08-29	(51)99991-3412
4042	Alice Lopes Fernandes	lopes.alice111@outlook.com	1998-06-10	(27)97317-4945
4043	Fábio Freitas Nascimento	fabiofreitas841@hotmail.com	1978-10-24	(21)91317-6186
4044	Renato Nunes Dias	renato_nunes72@yahoo.com	1985-07-26	(41)99609-8221
4045	Julia Castro Cruz	julia_castro29@yahoo.com	1996-07-05	(11)98792-5434
4046	Rafael Alves Cavalcanti	rafael_alves747@yahoo.com	1985-06-23	(51)99136-3974
4047	Eduardo Moreira Teixeira	moreira.eduardo726@outlook.com	1966-11-25	(27)97978-2527
4048	Cristina Castro Pires	cristinacastro760@hotmail.com	2005-04-12	(41)96788-7757
4049	Pamela Dias Monteiro	pamela_dias869@yahoo.com	1978-07-03	(71)95151-1484
4050	Mariana Rocha Nunes	marianarocha303@hotmail.com	1991-05-31	(51)99924-5317
4051	Raquel Cunha Ribeiro	raquel.cunha631@gmail.com	1998-12-28	(31)94850-8907
4052	Beatriz Pinto Cavalcanti	pinto.beatriz453@outlook.com	1985-06-27	(85)93868-2516
4053	Isabela Cunha Costa	isabela_cunha291@yahoo.com	1978-03-28	(28)94152-3529
4054	Alan Almeida Martins	almeida.alan251@outlook.com	1987-12-28	(81)91977-4839
4055	Fernanda Rezende Teixeira	rezende.fernanda394@outlook.com	2001-10-19	(51)94274-7037
4056	Nathalia Fonseca Silva	nathalia.fonseca915@gmail.com	2000-07-12	(51)93937-2360
4057	Úrsula Araújo Freitas	ursula.araujo52@gmail.com	1972-06-20	(61)92789-6471
4058	Gabriela Campos Araújo	campos.gabriela973@outlook.com	1989-04-11	(81)97775-0178
4059	Jéssica Mendes Costa	jessica_mendes487@yahoo.com	1995-12-24	(21)99558-5469
4060	Erika Batista Araújo	batista.erika282@outlook.com	1997-11-25	(28)94834-9783
4061	Danilo Dias Rocha	danilodias554@hotmail.com	1977-04-16	(21)96141-0126
4062	Alexandre Moraes Carvalho	moraes.alexandre339@outlook.com	1999-02-21	(51)91835-7162
4063	Fernanda Moreira Batista	moreira.fernanda21@outlook.com	1992-08-21	(61)91079-1358
4064	Roberto Medeiros Moreira	medeiros.roberto856@outlook.com	1972-07-15	(71)98330-0637
4065	Heloísa Almeida Ramos	heloisa.almeida225@gmail.com	1978-06-01	(51)95511-4543
4066	Raquel Nunes Pires	raquelnunes861@hotmail.com	2007-03-18	(81)98168-8860
4067	Ana Pinto Teixeira	pinto.ana659@outlook.com	2000-04-07	(11)97196-8116
4068	Bruno Sousa Moreira	bruno_sousa466@yahoo.com	1974-09-08	(51)94734-6970
4069	Fernanda Sousa Ferreira	fernanda.sousa482@gmail.com	1979-04-04	(41)94009-4589
4070	Henrique Batista Azevedo	henriquebatista773@hotmail.com	1980-07-19	(21)91273-5359
4071	Alexandre Lopes Lima	alexandrelopes686@hotmail.com	1974-01-07	(61)94439-2446
4072	Edson Costa Cavalcanti	edson.costa622@gmail.com	2003-07-27	(11)95174-6937
4073	Elaine Santos Barbosa	santos.elaine982@outlook.com	2005-01-03	(51)93661-9372
4074	Fabiana Fonseca Rezende	fabiana_fonseca714@yahoo.com	1972-04-14	(85)99058-5882
4075	Carlos Teixeira Oliveira	carlos_teixeira439@yahoo.com	1979-05-16	(28)97790-8907
4076	Elton Silva Marques	elton_silva109@yahoo.com	1976-09-09	(85)97170-5170
4077	Alexandre Machado Ribeiro	alexandre_machado989@yahoo.com	1973-09-02	(81)98223-2344
4078	Natalia Freitas Machado	natalia_freitas607@yahoo.com	1995-11-28	(21)92163-1697
4079	Amanda Lopes Medeiros	lopes.amanda685@outlook.com	1986-03-31	(41)91385-2048
4080	Tiago Ribeiro Ramos	tiago_ribeiro817@yahoo.com	1976-12-18	(31)99001-4570
4081	Wesley Correia Silva	wesleycorreia971@hotmail.com	1986-07-03	(92)96454-9859
4082	Bruna Medeiros Lopes	medeiros.bruna729@outlook.com	2004-03-30	(61)91231-4351
4083	Júlio Almeida Nunes	julio_almeida314@yahoo.com	1984-08-08	(61)98428-5882
4084	Cléber Machado Cunha	machado.cleber720@outlook.com	1997-02-21	(31)95115-4241
4085	Igor Pereira Pires	igorpereira324@hotmail.com	1975-04-15	(21)93904-2654
4086	Natalia Fernandes Pires	natalia_fernandes538@yahoo.com	1995-02-17	(28)93605-4020
4087	Igor Andrade Ribeiro	igorandrade15@hotmail.com	2005-12-21	(31)91610-9013
4088	Jéssica Vieira Fonseca	vieira.jessica890@outlook.com	1982-09-01	(28)91164-6234
4089	Cristiano Cardoso Cardoso	cristiano.cardoso452@gmail.com	2003-04-20	(31)97411-9726
4090	Henrique Nunes Ramos	henrique.nunes76@gmail.com	1972-01-13	(11)93002-4960
4091	Carolina Barbosa Ferreira	barbosa.carolina783@outlook.com	1972-12-12	(81)99001-0790
4092	Joana Almeida Batista	almeida.joana931@outlook.com	1989-03-08	(31)98899-0506
4093	Alan Teixeira Monteiro	alan.teixeira62@gmail.com	1998-12-14	(21)99395-5206
4094	Adriano Campos Ferreira	adriano.campos161@gmail.com	1990-02-03	(11)91035-9129
4095	Amanda Fonseca Cavalcanti	amanda_fonseca34@yahoo.com	1976-11-19	(92)94794-5817
4096	Leticia Rodrigues Castro	leticiarodrigues947@hotmail.com	1983-12-28	(51)92540-5014
4097	Daniel Azevedo Gomes	daniel.azevedo931@gmail.com	1972-11-11	(27)93226-9779
4098	Alan Cavalcanti Cunha	cavalcanti.alan296@outlook.com	1977-07-11	(28)97290-7576
4099	Roberto Fonseca Nunes	fonseca.roberto553@outlook.com	1981-08-04	(61)92079-6722
4100	Felipe Machado Cunha	felipe.machado331@gmail.com	1982-01-30	(21)98720-1917
4101	Gabriel Medeiros Castro	gabrielmedeiros276@hotmail.com	1979-03-12	(61)97965-4147
4102	Larissa Fernandes Ribeiro	fernandes.larissa834@outlook.com	1992-10-23	(28)97308-3727
4103	Mariana Dias Rocha	mariana_dias879@yahoo.com	1995-06-28	(51)97650-0726
4104	Olivia Nunes Medeiros	olivia_nunes466@yahoo.com	2003-03-21	(31)95338-9073
4105	Erika Nunes Gonçalves	nunes.erika891@outlook.com	2000-01-02	(51)91727-5149
4106	Renata Andrade Monteiro	renata.andrade775@gmail.com	1983-10-13	(21)94584-3681
4107	André Vieira Mendes	andre.vieira902@gmail.com	1972-07-25	(85)99172-1371
4108	Otávio Moraes Costa	moraes.otavio566@outlook.com	1970-09-04	(28)94015-8811
4109	Eduardo Freitas Pereira	eduardo_freitas158@yahoo.com	1989-10-12	(71)94669-8468
4110	Natalia Cardoso Lopes	nataliacardoso565@hotmail.com	1974-12-10	(81)97821-4937
4111	Paulo Rodrigues Fernandes	paulo_rodrigues875@yahoo.com	1971-08-12	(71)94585-9307
4112	Lucas Vieira Pires	vieira.lucas594@outlook.com	1984-04-04	(11)96993-4576
4113	Natalia Nascimento Dias	nascimento.natalia387@outlook.com	1977-02-17	(41)93532-0492
4114	Otávio Teixeira Moreira	otavio.teixeira240@gmail.com	1976-10-13	(41)97348-1797
4115	Willian Moreira Campos	moreira.willian156@outlook.com	1985-11-20	(27)92694-4487
4116	Fabiana Dias Alves	dias.fabiana103@outlook.com	1990-01-10	(27)92934-8212
4117	Nathalia Gomes Rodrigues	nathalia_gomes993@yahoo.com	1979-04-09	(81)96334-9308
4118	Rodrigo Dias Castro	rodrigo_dias390@yahoo.com	1969-04-14	(85)97549-1202
4119	Patrícia Oliveira Monteiro	patricia_oliveira647@yahoo.com	1988-12-13	(21)92213-0508
4120	Leonardo Medeiros Rezende	leonardomedeiros894@hotmail.com	1967-11-23	(92)95019-3656
4121	Matheus Oliveira Rocha	matheus_oliveira301@yahoo.com	1997-06-19	(51)92953-8047
4122	Simone Marques Teixeira	simonemarques812@hotmail.com	1969-05-10	(28)99180-4602
4123	Willian Monteiro Castro	willianmonteiro510@hotmail.com	1979-10-21	(21)97189-4493
4124	Márcio Freitas Sousa	freitas.marcio824@outlook.com	2001-05-01	(31)98336-3160
4125	Diego Mendes Nascimento	mendes.diego986@outlook.com	1987-12-05	(92)94356-7615
4126	Roberto Martins Moreira	martins.roberto243@outlook.com	1982-08-20	(81)95817-8682
4127	Júlio Fonseca Vieira	julio_fonseca675@yahoo.com	1969-08-12	(27)98595-7706
4128	Sandra Batista Cunha	batista.sandra621@outlook.com	1981-03-09	(31)94088-5967
4129	Vanderlei Almeida Rezende	vanderleialmeida636@hotmail.com	1967-11-23	(85)92304-1121
4130	Karla Azevedo Oliveira	karla_azevedo452@yahoo.com	2004-05-17	(92)92763-7794
4131	Júlio Rocha Cunha	julio_rocha206@yahoo.com	1967-06-11	(71)97734-9752
4132	Danilo Costa Sousa	danilo_costa967@yahoo.com	1972-05-05	(92)95546-1591
4133	Eduardo Freitas Rodrigues	freitas.eduardo232@outlook.com	2004-05-14	(71)95909-3496
4134	Ana Silva Sousa	ana_silva466@yahoo.com	1971-07-12	(81)96114-0376
4135	Lívia Andrade Alves	livia_andrade483@yahoo.com	1979-05-14	(81)93971-1402
4136	Henrique Rezende Freitas	rezende.henrique665@outlook.com	2006-05-21	(28)92876-0553
4137	Rafael Barbosa Ramos	rafaelbarbosa100@hotmail.com	1991-10-11	(51)97088-7034
4138	Pamela Cunha Fonseca	pamelacunha554@hotmail.com	2003-12-23	(51)99790-2129
4139	Priscila Monteiro Marques	priscila_monteiro287@yahoo.com	1988-06-21	(21)96950-9870
4140	Otávio Andrade Alves	otavio_andrade558@yahoo.com	1996-01-16	(27)96343-7398
4141	Renato Pereira Freitas	renato.pereira94@gmail.com	1997-06-29	(27)95476-2841
4142	André Teixeira Carvalho	andreteixeira850@hotmail.com	1971-12-12	(81)93898-4499
4143	Igor Dias Batista	igor.dias152@gmail.com	2002-08-03	(31)92941-9691
4144	Patrícia Sousa Ribeiro	patriciasousa677@hotmail.com	1972-12-24	(27)95808-2464
4145	Otávio Pinto Rocha	otaviopinto179@hotmail.com	1984-10-26	(92)96650-0369
4146	Eduardo Cunha Rodrigues	eduardo.cunha488@gmail.com	1998-06-25	(61)97762-4084
4147	Ingrid Oliveira Pires	ingrid_oliveira888@yahoo.com	2007-01-08	(61)99634-7724
4148	Gustavo Cardoso Nunes	cardoso.gustavo503@outlook.com	1993-12-20	(28)92084-3514
4149	Heloísa Gomes Rodrigues	heloisa_gomes640@yahoo.com	1984-08-14	(51)99018-0577
4150	Júlio Freitas Gonçalves	julio.freitas620@gmail.com	1969-01-17	(85)99736-4555
4151	Erika Correia Pires	erikacorreia221@hotmail.com	1971-04-21	(51)95549-0631
4152	Leticia Nunes Marques	leticia_nunes321@yahoo.com	1991-08-18	(85)94421-0729
4153	Alexandre Castro Cardoso	alexandre.castro69@gmail.com	1975-01-07	(51)92296-0658
4154	Alice Andrade Lima	alice_andrade601@yahoo.com	1989-12-28	(85)92640-5605
4155	Vanderlei Campos Medeiros	vanderlei.campos434@gmail.com	1994-05-27	(31)99058-5678
4156	Vanderlei Alves Teixeira	alves.vanderlei673@outlook.com	1992-09-17	(21)92452-4825
4157	Bruna Andrade Pereira	andrade.bruna232@outlook.com	1980-11-23	(71)99344-6356
4158	Raquel Azevedo Correia	raquel_azevedo952@yahoo.com	1996-02-28	(27)93421-5035
4159	Úrsula Medeiros Barbosa	ursulamedeiros348@hotmail.com	1978-12-07	(11)98601-0330
4160	Julia Rodrigues Gomes	julia.rodrigues759@gmail.com	1998-10-08	(92)98120-0181
4161	Willian Marques Freitas	willian_marques379@yahoo.com	2004-08-10	(81)99002-3800
4162	Bruno Gomes Costa	bruno.gomes773@gmail.com	1978-09-22	(31)96947-3616
4163	Camila Ramos Cavalcanti	camila.ramos453@gmail.com	2003-06-12	(41)96770-2031
4164	Cristiano Castro Castro	cristiano_castro540@yahoo.com	1990-09-09	(27)93959-7483
4165	Gisele Souza Silva	giselesouza309@hotmail.com	1993-09-13	(31)94884-8936
4166	Carlos Silva Ramos	silva.carlos133@outlook.com	1985-12-23	(71)94088-4937
4167	Bruna Campos Nascimento	bruna.campos74@gmail.com	1987-10-18	(51)91251-5446
4168	Diego Rocha Teixeira	rocha.diego727@outlook.com	1990-04-01	(31)92545-8308
4169	Gabriel Rocha Costa	gabriel_rocha633@yahoo.com	1970-07-15	(28)96861-4462
4170	Fernando Lopes Machado	lopes.fernando81@outlook.com	1998-06-24	(31)95556-8701
4171	Flávio Batista Costa	flaviobatista523@hotmail.com	1975-10-16	(41)95712-3808
4172	Mônica Gomes Lopes	monicagomes150@hotmail.com	1974-04-26	(81)93051-7835
4173	Denise Azevedo Rodrigues	azevedo.denise644@outlook.com	1974-05-02	(61)98566-3295
4174	Elaine Mendes Castro	elaine_mendes579@yahoo.com	2001-08-24	(85)95243-1444
4175	Larissa Rodrigues Cardoso	larissa_rodrigues311@yahoo.com	1992-08-18	(81)91753-9294
4176	Vanessa Rodrigues Barbosa	vanessa_rodrigues39@yahoo.com	1979-07-02	(31)92029-8660
4177	Thiago Monteiro Cavalcanti	thiago.monteiro520@gmail.com	1979-03-07	(61)98672-6461
4178	Renato Rocha Cavalcanti	renato.rocha488@gmail.com	1972-01-16	(61)92389-1786
4179	Elton Moraes Ferreira	eltonmoraes662@hotmail.com	1988-09-15	(92)96875-4920
4180	Simone Araújo Monteiro	simone_araujo382@yahoo.com	1973-09-05	(51)96486-4099
4181	Elton Castro Cavalcanti	elton_castro647@yahoo.com	2004-03-06	(28)95425-0344
4182	Bruna Castro Moreira	brunacastro259@hotmail.com	1982-04-12	(41)92093-9011
4183	Olivia Gomes Nascimento	gomes.olivia716@outlook.com	1976-08-15	(11)98986-5081
4184	Rodrigo Barbosa Correia	rodrigobarbosa659@hotmail.com	2004-03-23	(85)98065-1318
4185	Mônica Campos Machado	monica_campos19@yahoo.com	1993-02-02	(11)93874-8452
4186	Erika Ramos Martins	erika_ramos159@yahoo.com	1973-11-02	(28)97814-0959
4187	Patrícia Cunha Araújo	patriciacunha678@hotmail.com	2001-07-01	(81)96056-2485
4188	Vinícius Ribeiro Fonseca	viniciusribeiro640@hotmail.com	2006-06-17	(92)96874-3530
4189	Mariana Andrade Castro	mariana_andrade993@yahoo.com	1997-12-03	(92)97025-4091
4190	Cristina Lopes Barbosa	cristinalopes829@hotmail.com	1988-08-27	(41)98656-0394
4191	Gabriela Batista Vieira	batista.gabriela541@outlook.com	1972-06-23	(11)93680-2975
4192	Heloísa Lima Sousa	heloisa_lima493@yahoo.com	1976-07-04	(71)92376-9360
4193	Renata Pereira Vieira	pereira.renata280@outlook.com	1971-02-21	(71)92977-6801
4194	Beatriz Ferreira Almeida	beatriz.ferreira837@gmail.com	1990-08-20	(51)91714-8018
4195	Vanessa Andrade Lopes	vanessa.andrade396@gmail.com	1970-10-10	(41)92329-8711
4196	Wanessa Azevedo Dias	wanessa_azevedo141@yahoo.com	1974-05-19	(61)92862-8439
4197	Viviane Cardoso Mendes	viviane.cardoso631@gmail.com	1970-12-18	(31)93894-4689
4198	Alexandre Correia Pires	alexandre_correia434@yahoo.com	2002-12-14	(21)95041-9829
4199	Bruno Lopes Marques	bruno.lopes655@gmail.com	1981-08-26	(28)97708-5942
4200	Cristina Santos Rezende	cristinasantos589@hotmail.com	2008-05-07	(31)96761-1469
4201	Ingrid Nascimento Lopes	ingrid.nascimento585@gmail.com	2005-05-20	(71)95839-9417
4202	Simone Cruz Gonçalves	cruz.simone21@outlook.com	1979-11-27	(61)91584-3091
4203	Patrick Andrade Sousa	patrick.andrade766@gmail.com	1975-07-17	(41)94236-3373
4204	Olivia Rezende Alves	olivia_rezende753@yahoo.com	1992-08-12	(11)91595-0635
4205	Patrícia Dias Azevedo	dias.patricia702@outlook.com	1980-01-30	(92)97422-7366
4206	Murilo Lima Rodrigues	murilo.lima734@gmail.com	2006-06-15	(31)93705-7085
4207	Fábio Oliveira Rocha	oliveira.fabio408@outlook.com	1974-08-18	(31)91491-5156
4208	Mônica Martins Vieira	monica_martins800@yahoo.com	1972-07-24	(31)92670-6752
4209	Edson Machado Nunes	machado.edson980@outlook.com	1986-02-28	(41)93507-4182
4210	Taís Ramos Andrade	tais.ramos947@gmail.com	2004-11-16	(92)96697-5380
4211	Beatriz Cavalcanti Ribeiro	beatriz.cavalcanti559@gmail.com	1995-02-27	(41)99870-7076
4212	Alan Mendes Cavalcanti	mendes.alan707@outlook.com	2006-07-09	(41)97001-2727
4213	Zélia Nascimento Monteiro	zelia.nascimento446@gmail.com	1990-03-13	(28)99556-5484
4214	Rogério Gonçalves Cunha	rogeriogoncalves164@hotmail.com	2006-11-09	(81)96881-0561
4215	André Rodrigues Lopes	rodrigues.andre371@outlook.com	1981-04-11	(81)91434-6684
4216	Alexandre Castro Mendes	alexandre.castro972@gmail.com	1984-09-01	(81)92848-1124
4217	Rogério Nunes Rocha	rogerio.nunes666@gmail.com	1986-01-12	(27)93497-0946
4218	Renata Moreira Correia	moreira.renata267@outlook.com	1995-08-11	(21)99212-4765
4219	Taís Ramos Martins	ramos.tais76@outlook.com	2004-06-24	(11)96974-1812
4220	Sandra Rocha Campos	sandra_rocha67@yahoo.com	1976-06-27	(31)93113-9996
4221	Viviane Fonseca Rezende	vivianefonseca813@hotmail.com	1972-11-20	(28)93697-5128
4222	Paulo Lopes Ramos	paulo_lopes568@yahoo.com	2002-08-06	(61)98404-0798
4223	Ingrid Ferreira Rodrigues	ferreira.ingrid737@outlook.com	1973-12-01	(71)96513-5987
4224	Mariana Teixeira Rodrigues	mariana.teixeira129@gmail.com	1977-11-29	(61)97252-3073
4225	Renata Nascimento Lima	renatanascimento849@hotmail.com	1985-11-11	(11)96806-5043
4226	Gustavo Pereira Araújo	gustavo_pereira169@yahoo.com	1992-11-23	(92)94026-2109
4227	Renata Vieira Ferreira	renata_vieira651@yahoo.com	1994-11-01	(11)99388-9081
4228	Ingrid Cruz Ferreira	ingridcruz657@hotmail.com	1980-05-28	(11)99841-3629
4229	Yasmin Cavalcanti Dias	yasmin.cavalcanti863@gmail.com	1979-08-24	(28)91610-1779
4230	Erika Teixeira Sousa	teixeira.erika586@outlook.com	2007-01-22	(81)99576-3946
4231	Aline Rezende Cruz	rezende.aline310@outlook.com	1995-01-28	(21)96450-4816
4232	Leticia Rodrigues Fonseca	rodrigues.leticia426@outlook.com	1993-02-27	(61)93738-3505
4233	Heloísa Gomes Rocha	heloisa_gomes327@yahoo.com	1974-04-19	(51)92755-1135
4234	Edson Gonçalves Correia	edson.goncalves109@gmail.com	1997-04-19	(31)97034-3755
4235	Ricardo Alves Souza	alves.ricardo885@outlook.com	1971-12-05	(21)93143-4525
4236	Tiago Teixeira Pires	teixeira.tiago164@outlook.com	1986-01-17	(71)97265-4864
4237	Alan Ramos Santos	ramos.alan518@outlook.com	1982-04-02	(21)93887-6195
4238	Vanderlei Souza Souza	souza.vanderlei904@outlook.com	2008-01-20	(31)98203-3413
4239	Fernando Machado Lima	machado.fernando375@outlook.com	1990-06-13	(41)91607-2331
4240	Bruno Teixeira Correia	bruno.teixeira200@gmail.com	1988-03-20	(51)97768-0031
4241	Denise Correia Fernandes	denise.correia846@gmail.com	1990-10-01	(11)92297-6369
4242	Edson Dias Correia	edsondias375@hotmail.com	1990-05-31	(81)97833-3267
4243	Vanessa Oliveira Oliveira	oliveira.vanessa342@outlook.com	2001-09-26	(71)97133-5966
4244	Heloísa Gonçalves Lima	heloisagoncalves954@hotmail.com	1975-04-03	(51)99274-5294
4245	Roberto Pinto Dias	pinto.roberto546@outlook.com	1994-12-21	(92)98555-4415
4246	Isabela Santos Andrade	isabela_santos113@yahoo.com	2007-03-23	(92)99445-7912
4247	Gisele Cardoso Sousa	giselecardoso672@hotmail.com	1982-03-30	(92)91689-2773
4248	Natalia Costa Araújo	costa.natalia794@outlook.com	2007-01-01	(11)94250-7072
4249	Débora Fonseca Pereira	fonseca.debora322@outlook.com	1977-06-11	(11)96542-6567
4250	Leandro Marques Gonçalves	leandro.marques794@gmail.com	1985-02-24	(92)92853-3117
4251	Leandro Correia Rocha	leandro_correia539@yahoo.com	1967-07-03	(11)97169-4994
4252	Cristina Dias Cruz	cristina_dias791@yahoo.com	1999-10-17	(81)97498-5553
4253	Sérgio Fernandes Correia	sergio_fernandes965@yahoo.com	1977-06-16	(31)93782-0354
4254	Viviane Ramos Rocha	viviane_ramos574@yahoo.com	1982-09-11	(31)92635-7665
4255	Raquel Cruz Moreira	raquelcruz405@hotmail.com	1995-07-08	(31)91564-6068
4256	Wanessa Ferreira Nascimento	ferreira.wanessa263@outlook.com	1971-04-12	(21)93712-1108
4257	Cristina Fernandes Correia	cristinafernandes279@hotmail.com	1978-05-16	(21)91681-3620
4258	Simone Almeida Rezende	simone_almeida103@yahoo.com	2003-11-28	(92)97340-4979
4259	Sandra Batista Lima	sandrabatista988@hotmail.com	1966-06-23	(51)99762-9787
4260	Isabela Cardoso Azevedo	isabela_cardoso988@yahoo.com	2005-10-06	(31)99669-0951
4261	Erika Ferreira Azevedo	erika.ferreira588@gmail.com	1968-11-04	(11)96608-7572
4262	Arthur Oliveira Nunes	arthur_oliveira191@yahoo.com	1995-01-13	(27)91124-3818
4263	Carolina Cavalcanti Alves	cavalcanti.carolina466@outlook.com	1987-06-04	(11)97767-4279
4264	Danilo Martins Pereira	danilo_martins749@yahoo.com	2007-10-15	(92)93499-1216
4265	Alice Dias Vieira	alicedias691@hotmail.com	1968-03-06	(81)99572-8324
4266	Julia Machado Gonçalves	julia.machado336@gmail.com	1987-01-01	(11)92887-2606
4267	Tiago Lopes Silva	tiago_lopes242@yahoo.com	1982-04-16	(41)95052-6484
4268	Yasmin Teixeira Silva	yasminteixeira670@hotmail.com	2003-02-12	(27)99962-8735
4269	Gabriela Barbosa Costa	gabriela_barbosa515@yahoo.com	1979-10-08	(92)92575-9274
4270	Júlio Andrade Monteiro	andrade.julio137@outlook.com	1974-11-17	(11)97106-6203
4271	Heloísa Andrade Marques	heloisaandrade563@hotmail.com	1969-04-02	(21)98996-8863
4272	Rodrigo Araújo Mendes	rodrigo.araujo541@gmail.com	1967-12-02	(27)98350-4237
4273	Vanessa Martins Teixeira	martins.vanessa336@outlook.com	1976-04-05	(28)93756-8520
4274	Elaine Ramos Ferreira	elaine.ramos921@gmail.com	1985-05-24	(61)92770-9269
4275	Fernanda Freitas Teixeira	fernanda_freitas474@yahoo.com	1990-08-28	(92)91292-1981
4276	Márcio Silva Cunha	silva.marcio47@outlook.com	1984-02-22	(41)91855-7710
4277	Gustavo Rodrigues Cardoso	gustavorodrigues294@hotmail.com	1989-07-24	(85)99668-8655
4278	Edson Moreira Mendes	moreira.edson387@outlook.com	1969-03-10	(28)99882-4290
4279	Patrícia Lima Azevedo	lima.patricia183@outlook.com	1975-10-08	(71)92709-2236
4280	Daniel Silva Medeiros	silva.daniel690@outlook.com	1971-06-27	(71)96090-5625
4281	Igor Lopes Freitas	igor.lopes355@gmail.com	1989-08-12	(27)99861-0233
4282	Ingrid Batista Santos	ingrid.batista247@gmail.com	1978-04-10	(61)99023-3330
4283	Viviane Souza Lopes	vivianesouza46@hotmail.com	1974-07-31	(71)93916-1379
4284	Flávia Souza Lima	flavia_souza240@yahoo.com	1973-10-06	(81)99025-1151
4285	Raquel Rocha Lopes	raquelrocha898@hotmail.com	1996-01-28	(51)95033-2555
4286	Gustavo Correia Pinto	correia.gustavo180@outlook.com	2006-04-25	(71)97652-1096
4287	Cléber Azevedo Campos	azevedo.cleber327@outlook.com	1994-12-19	(51)93002-7648
4288	Willian Ribeiro Medeiros	willianribeiro485@hotmail.com	1972-04-10	(31)92937-4563
4289	Gabriela Souza Correia	gabrielasouza992@hotmail.com	1996-12-24	(51)94259-5918
4290	Leandro Dias Azevedo	leandro_dias461@yahoo.com	1975-12-01	(28)98189-1784
4291	Renato Souza Fernandes	renato.souza387@gmail.com	1972-04-28	(28)93525-4849
4292	Denise Pinto Pires	denisepinto573@hotmail.com	1967-08-24	(41)95069-3207
4293	Pedro Carvalho Martins	carvalho.pedro765@outlook.com	1976-11-06	(21)99112-1400
4294	Leandro Nunes Lopes	nunes.leandro290@outlook.com	1979-04-27	(61)98162-5307
4295	Vanderlei Barbosa Sousa	barbosa.vanderlei510@outlook.com	1974-04-03	(28)97301-3937
4296	Evandro Carvalho Andrade	evandrocarvalho424@hotmail.com	2007-09-10	(92)92958-5415
4297	Adriano Correia Pinto	adrianocorreia738@hotmail.com	1998-02-06	(21)95427-3769
4298	Willian Teixeira Lopes	willian_teixeira671@yahoo.com	1975-12-18	(31)97558-1613
4299	Mônica Cunha Ramos	monica_cunha751@yahoo.com	1976-02-09	(11)92878-4915
4300	Patrícia Ramos Ribeiro	patricia.ramos939@gmail.com	1970-10-12	(71)91453-9747
4301	Diego Campos Souza	diegocampos7@hotmail.com	2008-01-04	(28)93027-0856
4302	Marcos Gonçalves Freitas	goncalves.marcos654@outlook.com	2007-09-18	(85)97547-8707
4303	Lucas Cruz Correia	lucas_cruz18@yahoo.com	2007-08-26	(71)94847-8684
4304	Vanessa Fonseca Castro	vanessafonseca826@hotmail.com	1984-11-23	(28)92292-7031
4305	Alexandre Lopes Martins	alexandre_lopes259@yahoo.com	2004-11-15	(31)96327-0536
4306	Edson Nunes Freitas	edson_nunes714@yahoo.com	1979-02-04	(85)92082-0219
4307	Nathalia Medeiros Oliveira	medeiros.nathalia387@outlook.com	2007-12-30	(27)99546-2880
4308	Úrsula Costa Ferreira	ursula_costa445@yahoo.com	1968-04-12	(81)92279-9248
4309	Simone Oliveira Almeida	oliveira.simone709@outlook.com	1966-12-18	(31)91624-9441
4310	Diego Castro Fernandes	diego.castro921@gmail.com	2007-09-19	(11)95220-9421
4311	Leandro Pinto Gomes	pinto.leandro841@outlook.com	2001-02-17	(28)95016-8264
4312	Carolina Lopes Teixeira	carolina_lopes399@yahoo.com	1972-12-16	(51)92878-3850
4313	Taís Pires Ferreira	tais.pires513@gmail.com	1998-01-02	(28)96866-4992
4314	Diego Dias Cavalcanti	dias.diego610@outlook.com	1979-12-22	(41)91397-6288
4315	Danilo Mendes Ramos	mendes.danilo964@outlook.com	1977-12-05	(51)93492-9311
4316	Elaine Campos Moreira	elainecampos791@hotmail.com	2004-09-26	(92)91986-5900
4317	Danilo Gomes Moreira	gomes.danilo158@outlook.com	2003-08-22	(41)95841-2365
4318	Thiago Silva Barbosa	thiago.silva456@gmail.com	2000-01-05	(11)92171-6836
4319	Beatriz Mendes Correia	beatriz.mendes569@gmail.com	1983-07-23	(28)95750-1571
4320	Thiago Cavalcanti Cavalcanti	thiago.cavalcanti804@gmail.com	1991-01-09	(31)96554-0647
4321	Flávia Ferreira Pires	flaviaferreira573@hotmail.com	2000-10-24	(85)96110-0987
4322	Paulo Fernandes Barbosa	paulofernandes505@hotmail.com	1989-07-12	(51)94703-8975
4323	Roberto Cardoso Rodrigues	cardoso.roberto253@outlook.com	1999-08-25	(81)99276-7884
4324	Leticia Alves Lima	leticia_alves972@yahoo.com	1972-05-08	(81)96098-7966
4325	Flávio Mendes Dias	flaviomendes836@hotmail.com	1981-05-11	(31)95303-8948
4326	Taís Martins Cardoso	tais_martins988@yahoo.com	1986-05-24	(31)99494-6730
4327	Débora Lopes Rocha	lopes.debora805@outlook.com	1966-08-11	(41)92528-5764
4328	Carolina Martins Pinto	carolina.martins559@gmail.com	1976-08-23	(92)97195-7885
4329	Leandro Mendes Vieira	mendes.leandro839@outlook.com	2002-03-05	(85)97701-5343
4330	Lívia Barbosa Lopes	barbosa.livia733@outlook.com	1988-04-10	(51)91992-7432
4331	Gisele Cardoso Pinto	cardoso.gisele946@outlook.com	1972-12-12	(71)91493-4536
4332	Rogério Fonseca Cruz	rogerio.fonseca609@gmail.com	1978-08-08	(21)99826-1798
4333	Vanderlei Costa Azevedo	costa.vanderlei661@outlook.com	2003-09-01	(41)96777-4765
4334	Pedro Alves Sousa	pedroalves523@hotmail.com	1990-11-15	(61)96021-3478
4335	Gabriela Batista Castro	gabriela_batista513@yahoo.com	2003-09-24	(27)97479-6438
4336	Júlio Marques Ferreira	juliomarques852@hotmail.com	1993-01-11	(41)95186-1213
4337	Leticia Carvalho Araújo	carvalho.leticia100@outlook.com	1994-02-10	(92)97072-6434
4338	Henrique Barbosa Oliveira	henrique_barbosa118@yahoo.com	1978-01-16	(85)92467-8410
4339	Caio Cunha Lopes	caio_cunha566@yahoo.com	1987-09-10	(71)96722-6329
4340	Igor Nunes Rezende	nunes.igor674@outlook.com	1975-05-05	(51)91391-8120
4341	Ingrid Martins Mendes	ingridmartins440@hotmail.com	1974-09-02	(21)94735-8810
4342	Viviane Rodrigues Teixeira	vivianerodrigues819@hotmail.com	1999-07-31	(41)95375-2954
4343	Leticia Pereira Sousa	leticia_pereira502@yahoo.com	1980-12-30	(81)96216-2278
4344	Ana Pinto Pereira	anapinto361@hotmail.com	1967-03-18	(85)94992-2369
4345	Ingrid Pinto Ferreira	ingridpinto138@hotmail.com	2000-03-16	(31)92569-6616
4346	Edson Fonseca Gomes	edsonfonseca398@hotmail.com	1989-06-10	(81)96150-0679
4347	Murilo Ramos Rezende	muriloramos711@hotmail.com	1986-06-15	(71)93239-6311
4348	Cristiano Lima Ribeiro	cristiano.lima323@gmail.com	1986-09-06	(41)91128-6267
4349	Paulo Martins Moreira	martins.paulo669@outlook.com	1989-10-10	(51)97599-8330
4350	Viviane Mendes Ramos	vivianemendes85@hotmail.com	1996-02-02	(31)91438-8260
4351	Daniel Cruz Vieira	cruz.daniel580@outlook.com	2003-05-05	(71)97855-9218
4352	Débora Pereira Fernandes	debora.pereira794@gmail.com	1983-11-29	(92)96923-9219
4353	Marcos Machado Alves	marcosmachado850@hotmail.com	1988-03-30	(31)91432-5890
4354	Adriano Nascimento Ferreira	adrianonascimento887@hotmail.com	1977-07-04	(21)98890-9809
4355	Cléber Moraes Monteiro	clebermoraes439@hotmail.com	1972-04-15	(21)93777-5381
4356	Gustavo Teixeira Nascimento	gustavoteixeira288@hotmail.com	1995-06-10	(41)94927-6764
4357	Débora Fernandes Gonçalves	deborafernandes696@hotmail.com	1995-12-24	(51)91795-7216
4358	Nathalia Lima Fonseca	nathalia_lima256@yahoo.com	1986-06-18	(21)96270-7402
4359	Ricardo Teixeira Rezende	teixeira.ricardo385@outlook.com	1972-10-10	(28)99504-4078
4360	Erika Ferreira Nunes	erika_ferreira285@yahoo.com	1993-09-26	(61)97550-4221
4361	Elaine Silva Batista	silva.elaine749@outlook.com	1977-02-20	(85)99913-9874
4362	Vanderlei Rodrigues Cruz	vanderleirodrigues224@hotmail.com	1993-12-08	(61)94604-2404
4363	Cristiano Dias Correia	dias.cristiano873@outlook.com	2006-05-11	(41)91649-7381
4364	Leonardo Rezende Freitas	leonardorezende128@hotmail.com	2008-05-21	(61)97127-2827
4365	Camila Martins Fonseca	camila_martins904@yahoo.com	2004-03-25	(11)94677-8269
4366	Nathalia Andrade Sousa	nathaliaandrade381@hotmail.com	1980-05-10	(27)96319-6064
4367	Alan Pires Fonseca	alan.pires774@gmail.com	2008-05-15	(92)92277-5337
4368	Marcos Cardoso Rodrigues	cardoso.marcos532@outlook.com	1977-03-20	(27)91108-2139
4369	Elton Pereira Machado	eltonpereira136@hotmail.com	1975-08-22	(51)92198-9814
4370	Fernando Alves Rocha	alves.fernando141@outlook.com	1978-01-16	(11)99611-0892
4371	Ricardo Rodrigues Araújo	ricardorodrigues9@hotmail.com	1976-01-05	(61)95713-5617
4372	Marcos Rezende Cunha	rezende.marcos631@outlook.com	1968-03-14	(21)92163-5070
4373	Leonardo Lima Medeiros	leonardo_lima748@yahoo.com	1972-12-06	(51)95221-1967
4374	Paulo Lopes Fernandes	paulo_lopes255@yahoo.com	1970-05-21	(92)91360-0310
4375	Olivia Barbosa Carvalho	barbosa.olivia194@outlook.com	2005-12-20	(31)99672-7439
4376	Otávio Ramos Moreira	otavio.ramos116@gmail.com	1992-03-21	(71)91161-9606
4377	Evandro Lima Moreira	evandro_lima583@yahoo.com	1974-03-16	(71)93318-8838
4378	Isabela Batista Rodrigues	isabela_batista70@yahoo.com	1967-01-13	(21)91534-5470
4379	Gustavo Nunes Gonçalves	nunes.gustavo514@outlook.com	2004-09-20	(51)96399-2760
4380	Lívia Cruz Cruz	livia_cruz285@yahoo.com	1967-02-09	(28)97862-6154
4381	Leandro Gomes Cruz	leandro.gomes335@gmail.com	1975-09-04	(31)96871-8382
4382	Otávio Souza Lopes	souza.otavio119@outlook.com	2005-12-13	(81)99171-6102
4383	Alan Campos Cunha	alan.campos674@gmail.com	1976-12-13	(92)92841-6255
4384	Pedro Costa Ramos	pedro_costa536@yahoo.com	2002-09-22	(11)95991-1470
4385	Bianca Batista Fernandes	bianca.batista751@gmail.com	1996-03-20	(41)96762-2968
4386	Simone Rodrigues Sousa	simone.rodrigues730@gmail.com	1985-07-04	(61)97109-5611
4387	Rogério Souza Ramos	rogeriosouza581@hotmail.com	1968-04-21	(31)92381-1663
4388	Débora Castro Pires	debora.castro119@gmail.com	1997-06-13	(27)91164-9277
4389	Felipe Cardoso Andrade	felipe.cardoso393@gmail.com	1989-08-10	(71)99800-7006
4390	Daniel Rocha Lopes	daniel_rocha738@yahoo.com	1991-09-11	(28)98671-0258
4391	Carlos Gonçalves Castro	carlos.goncalves924@gmail.com	1969-01-29	(51)91925-1149
4392	Gabriela Vieira Batista	vieira.gabriela89@outlook.com	1999-06-02	(27)95951-5518
4393	Júlio Teixeira Barbosa	julio_teixeira249@yahoo.com	1973-10-05	(81)97621-7748
4394	Flávia Martins Pires	flaviamartins560@hotmail.com	1966-08-05	(11)91085-6024
4395	Mariana Santos Almeida	mariana.santos555@gmail.com	1974-05-17	(41)91019-6231
4396	Olivia Moreira Cunha	oliviamoreira315@hotmail.com	2005-09-24	(51)97603-8997
4397	Ricardo Moraes Fernandes	moraes.ricardo238@outlook.com	1987-11-08	(92)95999-5026
4398	Bianca Ferreira Pinto	ferreira.bianca653@outlook.com	1982-12-12	(28)98944-2904
4399	Gustavo Machado Campos	gustavo_machado243@yahoo.com	1976-12-26	(41)96274-1214
4400	Alice Rocha Rocha	alicerocha279@hotmail.com	2003-07-13	(11)98847-8184
4401	Alexandre Alves Costa	alexandre.alves461@gmail.com	1973-11-11	(71)95808-8526
4402	Leandro Mendes Barbosa	leandro.mendes475@gmail.com	1971-05-08	(11)95083-1043
4403	Viviane Fonseca Cavalcanti	viviane_fonseca856@yahoo.com	1976-07-08	(11)92224-2388
4404	Sérgio Nascimento Nunes	sergio_nascimento694@yahoo.com	1990-04-12	(11)91417-1767
4405	Amanda Correia Cunha	amanda.correia564@gmail.com	2007-11-19	(11)92630-1180
4406	Gustavo Batista Almeida	gustavo_batista844@yahoo.com	1979-07-02	(85)99459-7104
4407	Rodrigo Pinto Pinto	rodrigo.pinto266@gmail.com	1967-12-08	(28)93654-1600
4408	Mônica Mendes Lima	monica_mendes868@yahoo.com	1987-09-28	(28)91573-0602
4409	Bruno Costa Teixeira	costa.bruno405@outlook.com	1977-10-09	(27)96136-9075
4410	Camila Ribeiro Nascimento	camila_ribeiro192@yahoo.com	2006-11-12	(61)92994-8970
4411	Ingrid Monteiro Monteiro	monteiro.ingrid511@outlook.com	2005-09-06	(71)97429-4443
4412	Thiago Fernandes Moreira	thiagofernandes430@hotmail.com	1972-10-06	(85)98296-8364
4413	Gabriel Moreira Moraes	moreira.gabriel801@outlook.com	1985-11-18	(41)98592-0407
4414	Tiago Moreira Fernandes	tiagomoreira27@hotmail.com	2005-10-16	(27)94770-6144
4415	Isabela Araújo Nascimento	isabelaaraujo599@hotmail.com	1978-12-14	(28)94326-6810
4416	Otávio Fernandes Cruz	otavio.fernandes836@gmail.com	1970-06-12	(21)98726-8086
4417	Patrick Nascimento Ribeiro	patrick_nascimento607@yahoo.com	1976-11-11	(81)91378-5821
4418	Úrsula Nascimento Teixeira	ursulanascimento146@hotmail.com	1994-07-22	(61)98276-2732
4419	Arthur Ramos Oliveira	arthurramos58@hotmail.com	1986-12-23	(27)98065-8723
4420	Lucas Dias Monteiro	lucasdias826@hotmail.com	2007-06-08	(41)91799-3466
4421	Ricardo Pinto Moraes	ricardo_pinto793@yahoo.com	1976-10-24	(28)96014-2505
4422	Olivia Nunes Pinto	olivianunes345@hotmail.com	1972-11-24	(11)96863-5481
4423	Lívia Ramos Azevedo	livia_ramos725@yahoo.com	1981-12-31	(21)99932-6148
4424	Arthur Moreira Barbosa	arthurmoreira706@hotmail.com	1976-12-05	(92)91024-1310
4425	Débora Nunes Batista	debora_nunes34@yahoo.com	1979-09-23	(81)93964-8058
4426	Carolina Alves Ramos	carolinaalves340@hotmail.com	2000-11-20	(41)95288-5071
4427	Lívia Ferreira Moraes	livia_ferreira747@yahoo.com	1996-07-09	(61)91152-9494
4428	Leandro Lopes Fonseca	leandro.lopes70@gmail.com	2006-04-05	(92)91017-1954
4429	Patrick Mendes Pires	mendes.patrick906@outlook.com	1992-08-30	(61)96082-9941
4430	Patrícia Moreira Alves	patriciamoreira491@hotmail.com	2005-02-10	(11)97057-0772
4431	Rafael Vieira Santos	rafael.vieira327@gmail.com	1968-08-03	(41)93283-1133
4432	Willian Costa Pires	willian.costa77@gmail.com	1980-11-22	(41)98972-9429
4433	Natalia Moraes Santos	moraes.natalia169@outlook.com	2003-11-16	(11)91718-8130
4434	Flávio Carvalho Martins	flavio_carvalho568@yahoo.com	1995-01-29	(85)94778-5387
4435	Otávio Alves Souza	alves.otavio861@outlook.com	1992-03-26	(11)91731-5517
4436	Lucas Machado Ferreira	machado.lucas641@outlook.com	2007-04-07	(21)92301-7361
4437	Leandro Costa Rezende	leandro.costa299@gmail.com	1987-04-18	(31)96334-7164
4438	Priscila Campos Sousa	priscilacampos658@hotmail.com	1991-11-06	(41)96119-6706
4439	Murilo Mendes Oliveira	murilomendes451@hotmail.com	2005-08-27	(31)98573-1895
4440	Alexandre Medeiros Fonseca	alexandre_medeiros88@yahoo.com	1974-06-27	(71)96556-4347
4441	Fabiana Almeida Correia	almeida.fabiana839@outlook.com	1982-09-23	(71)97372-9850
4442	Otávio Cardoso Barbosa	otavio.cardoso81@gmail.com	1968-01-10	(71)98666-7841
4443	Renata Teixeira Castro	teixeira.renata973@outlook.com	1998-11-30	(11)93243-6477
4444	Renato Lima Oliveira	renatolima81@hotmail.com	1971-01-01	(85)92984-7882
4445	Gisele Sousa Rocha	gisele.sousa933@gmail.com	1983-06-18	(28)96208-9786
4446	Ana Correia Rocha	ana.correia878@gmail.com	1982-01-23	(92)99362-5419
4447	Renata Marques Pereira	renata.marques425@gmail.com	1973-06-13	(28)98552-2135
4448	Leonardo Vieira Cruz	leonardo_vieira899@yahoo.com	1986-08-21	(51)99788-4113
4449	Débora Cavalcanti Cardoso	deboracavalcanti177@hotmail.com	1977-11-17	(81)99169-2326
4450	Taís Nunes Oliveira	taisnunes911@hotmail.com	1967-02-11	(27)97378-2705
4451	Danilo Andrade Santos	danilo_andrade813@yahoo.com	1969-12-02	(31)97598-4013
4452	Úrsula Castro Alves	ursula_castro234@yahoo.com	1973-09-12	(92)96947-3299
4453	Tiago Fernandes Pires	tiagofernandes620@hotmail.com	1967-06-12	(61)93837-2352
4454	Mariana Cunha Ramos	mariana.cunha778@gmail.com	2005-06-22	(71)93133-6920
4455	Alan Moraes Gonçalves	alan.moraes414@gmail.com	1969-02-28	(11)93587-2271
4456	Fábio Souza Lopes	fabio_souza52@yahoo.com	1996-02-17	(92)93672-4061
4457	Edson Freitas Gonçalves	edson.freitas407@gmail.com	1986-06-29	(21)95999-1642
4458	Gisele Mendes Ribeiro	gisele_mendes486@yahoo.com	1970-11-04	(41)93194-6425
4459	Adriano Cunha Fonseca	adriano.cunha93@gmail.com	1973-06-09	(11)98680-7176
4460	Marcos Almeida Azevedo	almeida.marcos276@outlook.com	1969-08-19	(71)91269-1381
4461	Flávia Batista Castro	flaviabatista486@hotmail.com	1998-05-19	(81)91113-5982
4462	Márcio Cavalcanti Barbosa	marcio_cavalcanti727@yahoo.com	1970-03-21	(51)96052-9679
4463	Cléber Freitas Sousa	freitas.cleber694@outlook.com	2008-02-02	(81)92373-2098
4464	Tatiane Campos Andrade	tatiane_campos609@yahoo.com	1986-10-23	(31)92450-9544
4465	Henrique Dias Fernandes	henrique_dias883@yahoo.com	1995-01-06	(85)99743-8349
4466	Renato Gomes Araújo	gomes.renato59@outlook.com	1977-11-18	(85)95289-4071
4467	Paulo Pires Santos	pires.paulo266@outlook.com	1975-05-16	(51)96211-3377
4468	Rafael Pinto Moraes	rafaelpinto836@hotmail.com	1979-10-14	(85)98175-7508
4469	Isabela Campos Nascimento	isabelacampos308@hotmail.com	1987-04-20	(31)92310-0061
4470	André Cunha Sousa	andrecunha828@hotmail.com	1979-01-23	(85)95504-7826
4471	Thiago Almeida Nascimento	almeida.thiago315@outlook.com	1996-09-23	(41)95988-6371
4472	Elaine Vieira Freitas	elaine.vieira872@gmail.com	1985-12-20	(61)93611-1227
4473	Carlos Castro Moreira	carloscastro306@hotmail.com	1993-01-17	(11)93688-3353
4474	Mariana Teixeira Freitas	marianateixeira324@hotmail.com	1993-07-01	(28)97544-1993
4475	Karla Ribeiro Rocha	karla_ribeiro5@yahoo.com	1982-07-27	(21)93262-9881
4476	Denise Costa Ramos	denisecosta782@hotmail.com	1980-01-01	(81)96821-1760
4477	Camila Nunes Machado	camila.nunes989@gmail.com	1975-08-23	(71)93676-4927
4478	Edson Silva Rocha	edson.silva776@gmail.com	1980-04-22	(85)91055-3491
4479	Zélia Lopes Almeida	zelialopes899@hotmail.com	1985-11-03	(28)96147-9273
4480	Fabiana Barbosa Costa	fabiana_barbosa47@yahoo.com	1981-09-01	(61)97983-1928
4481	Simone Dias Machado	dias.simone351@outlook.com	2001-01-08	(41)93529-0114
4482	Julia Santos Almeida	julia.santos230@gmail.com	2000-11-02	(81)97773-0769
4483	Carlos Andrade Moraes	carlos_andrade39@yahoo.com	2006-03-28	(71)99363-5734
4484	Gisele Souza Campos	gisele.souza111@gmail.com	1989-09-21	(92)92554-1047
4485	Larissa Moreira Pereira	larissamoreira259@hotmail.com	2008-01-01	(21)99459-8956
4486	Roberto Marques Campos	robertomarques679@hotmail.com	1985-06-21	(51)92408-1350
4487	Yasmin Monteiro Pereira	monteiro.yasmin109@outlook.com	1999-06-17	(21)99173-8839
4488	Flávia Sousa Araújo	sousa.flavia721@outlook.com	2006-08-26	(31)93152-4980
4489	Jéssica Ramos Carvalho	jessicaramos956@hotmail.com	1978-04-16	(27)91171-1195
4490	Thiago Pereira Teixeira	thiago.pereira686@gmail.com	1975-12-18	(71)92007-2800
4491	Yasmin Alves Sousa	yasmin_alves468@yahoo.com	2003-12-10	(61)91672-1650
4492	Arthur Oliveira Vieira	oliveira.arthur321@outlook.com	2004-02-27	(92)92555-5976
\.


--
-- TOC entry 5051 (class 0 OID 25102)
-- Dependencies: 224
-- Data for Name: matriculas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculas (id_matricula, aluno_id, plano_id, data_inicio, data_fim) FROM stdin;
6	1	1	2026-05-28	\N
522	3994	58	2026-05-02	\N
523	1	60	2025-10-11	2026-01-01
524	3995	58	2024-09-30	\N
525	3996	1	2026-02-21	\N
526	3997	1	2024-10-30	2025-10-27
527	3998	63	2025-10-14	\N
528	3999	61	2026-05-21	\N
529	4000	59	2024-06-12	\N
530	4001	61	2025-12-19	\N
531	4002	62	2026-02-12	2026-05-02
532	4003	62	2025-06-09	\N
533	4004	1	2025-02-11	\N
534	4005	63	2026-03-08	\N
535	4006	62	2024-10-13	2024-12-17
536	4007	1	2024-07-19	\N
537	4008	61	2026-03-07	\N
538	4009	58	2025-05-03	\N
539	4010	62	2025-12-12	\N
540	4011	60	2024-07-10	\N
541	4012	58	2024-09-11	\N
542	4013	60	2025-12-11	\N
543	4014	61	2024-08-10	\N
544	4015	60	2024-06-25	\N
545	4016	1	2025-10-05	\N
546	4017	62	2025-04-12	\N
547	4018	60	2024-10-24	\N
548	4019	62	2025-10-22	\N
549	4020	63	2024-08-07	\N
550	4021	61	2026-01-05	\N
551	4022	61	2024-10-06	\N
552	4023	63	2025-05-22	\N
553	4024	59	2024-12-22	\N
554	4025	1	2026-02-04	2026-05-26
555	4026	63	2024-09-24	2025-05-07
556	4027	64	2024-12-02	\N
557	4028	1	2024-06-30	\N
558	4029	61	2024-08-09	\N
559	4030	61	2025-03-08	2025-04-08
560	4031	61	2024-12-31	\N
561	4032	58	2024-08-25	\N
562	4033	60	2025-12-22	\N
563	4034	59	2024-11-21	\N
564	4035	1	2024-09-21	\N
565	4036	1	2026-02-02	\N
566	4037	61	2025-09-24	2026-05-27
567	4038	58	2026-03-01	\N
568	4039	58	2024-11-28	\N
569	4040	59	2024-07-21	\N
570	4041	59	2025-08-29	\N
571	4042	63	2025-10-23	\N
572	4043	60	2025-07-12	\N
573	4044	62	2025-03-05	\N
574	4045	64	2026-01-24	\N
575	4046	58	2025-06-15	2026-04-24
576	4047	60	2024-10-02	\N
577	4048	58	2024-06-02	\N
578	4049	60	2026-03-19	\N
579	4050	62	2026-03-16	\N
580	4051	61	2024-07-11	\N
581	4052	59	2024-10-20	\N
582	4053	60	2025-01-28	\N
583	4054	60	2026-02-20	2026-05-27
584	4055	62	2025-03-20	\N
585	4056	1	2024-07-07	\N
586	4057	58	2026-03-26	\N
587	4058	62	2026-02-05	\N
588	4059	60	2024-11-24	\N
589	4060	63	2025-11-21	\N
590	4061	60	2026-03-11	\N
591	4062	58	2026-04-06	\N
592	4063	1	2026-02-21	\N
593	4064	60	2025-12-08	\N
594	4065	64	2025-10-21	\N
595	4066	1	2025-12-10	\N
596	4067	63	2025-08-29	\N
597	4068	64	2025-08-08	\N
598	4069	64	2025-12-20	2026-05-10
599	4070	1	2024-10-11	\N
600	4071	1	2025-07-10	2026-05-27
601	4072	64	2024-12-29	\N
602	4073	59	2026-03-30	\N
603	4074	58	2025-11-18	2026-01-21
604	4075	60	2025-04-09	2026-02-24
605	4076	60	2024-10-12	\N
606	4077	58	2025-03-24	\N
607	4078	62	2025-09-02	\N
608	4079	62	2025-09-25	\N
609	4080	59	2024-07-09	\N
610	4081	64	2025-07-08	\N
611	4082	58	2026-05-18	\N
612	4083	58	2026-03-13	\N
613	4084	61	2026-01-12	\N
614	4085	58	2025-09-19	\N
615	4086	59	2025-03-05	\N
616	4087	61	2024-09-08	\N
617	4088	1	2024-07-13	\N
618	4089	61	2024-07-17	2024-10-23
619	4090	61	2026-01-29	\N
620	4091	59	2025-08-22	\N
621	4092	60	2025-06-10	\N
622	4093	61	2024-12-26	\N
623	4094	1	2026-02-22	\N
624	4095	61	2026-04-12	2026-05-27
625	4096	61	2025-12-13	\N
626	4097	63	2024-10-30	2025-01-06
627	4098	59	2024-11-15	2025-06-22
628	4099	59	2025-03-13	2025-09-16
629	4100	62	2026-04-17	\N
630	4101	60	2024-06-28	\N
631	4102	58	2025-05-30	\N
632	4103	63	2024-08-30	\N
633	4104	60	2025-12-12	\N
634	4105	59	2025-03-31	2025-10-17
635	4106	63	2024-07-11	\N
636	4107	60	2025-08-27	2025-11-20
637	4108	63	2026-04-18	\N
638	4109	60	2025-11-04	\N
639	4110	64	2025-06-03	\N
640	4111	60	2025-10-11	2026-02-16
641	4112	63	2025-06-25	\N
642	4113	58	2025-08-15	\N
643	4114	63	2024-07-01	\N
644	4115	62	2026-04-29	2026-05-27
645	4116	59	2024-10-10	\N
646	4117	61	2026-04-18	2026-05-27
647	4118	62	2025-07-10	\N
648	4119	58	2025-04-28	\N
649	4120	60	2025-09-09	2026-05-20
650	4121	1	2024-12-11	\N
651	4122	60	2025-05-20	\N
652	4123	62	2024-08-27	\N
653	4124	58	2025-07-24	\N
654	4125	63	2025-06-27	\N
655	4126	61	2024-11-06	2025-07-09
656	4127	63	2024-07-03	\N
657	4128	59	2024-09-04	\N
658	4129	63	2024-11-12	\N
659	4130	61	2025-08-07	\N
660	4131	62	2025-02-05	\N
661	4132	60	2024-12-20	\N
662	4133	59	2024-07-22	2025-05-11
663	4134	62	2026-02-21	\N
664	4135	60	2024-07-08	\N
665	4136	60	2025-12-28	2026-05-27
666	4137	64	2024-09-09	\N
667	4138	58	2025-02-15	\N
668	4139	60	2024-06-13	\N
669	4140	63	2025-09-20	2025-10-22
670	4141	58	2025-03-18	\N
671	4142	64	2026-04-06	\N
672	4143	58	2025-02-14	2025-11-08
673	4144	62	2025-02-28	\N
674	4145	63	2024-11-12	\N
675	4146	59	2025-01-26	\N
676	4147	60	2024-08-13	\N
677	4148	64	2024-08-24	\N
678	4149	64	2026-03-09	\N
679	4150	60	2025-08-22	\N
680	4151	58	2026-01-06	2026-05-27
681	4152	59	2024-06-03	\N
682	4153	63	2025-04-05	\N
683	4154	64	2025-03-28	2025-11-28
684	4155	63	2024-10-06	\N
685	4156	1	2024-10-15	\N
686	4157	1	2025-06-01	\N
687	4158	63	2025-03-24	\N
688	4159	60	2025-01-13	\N
689	4160	63	2025-01-15	2025-08-05
690	4161	63	2025-12-09	\N
691	4162	59	2024-08-28	\N
692	4163	63	2024-09-28	\N
693	4164	1	2026-03-03	\N
694	4165	59	2025-02-09	2025-07-22
695	4166	63	2025-06-26	\N
696	4167	62	2025-06-16	\N
697	4168	63	2025-08-16	\N
698	4169	63	2025-09-11	\N
699	4170	64	2026-05-08	\N
700	4171	1	2025-06-03	\N
701	4172	58	2024-07-29	2024-09-12
702	4173	60	2025-11-04	\N
703	4174	59	2025-09-25	2025-12-22
704	4175	60	2025-02-05	\N
705	4176	62	2025-12-07	\N
706	4177	58	2025-12-11	\N
707	4178	58	2024-10-12	2025-04-19
708	4179	63	2025-04-16	\N
709	4180	60	2026-03-11	\N
710	4181	60	2026-02-12	\N
711	4182	61	2024-06-26	\N
712	4183	58	2024-10-25	\N
713	4184	62	2024-11-28	\N
714	4185	62	2026-03-18	\N
715	4186	62	2026-05-15	\N
716	4187	64	2026-02-08	\N
717	4188	62	2024-08-15	\N
718	4189	64	2024-06-02	2024-09-30
719	4190	61	2024-09-04	\N
720	4191	64	2025-02-05	\N
721	4192	61	2025-07-01	\N
722	4193	58	2025-08-15	\N
723	4194	60	2025-02-06	\N
724	4195	63	2025-06-17	2025-12-30
725	4196	59	2025-01-13	\N
726	4197	61	2025-06-13	\N
727	4198	61	2024-11-04	2025-03-11
728	4199	58	2025-09-22	\N
729	4200	64	2024-11-05	\N
730	4201	64	2024-08-04	\N
731	4202	64	2026-05-10	2026-05-27
732	4203	63	2024-06-18	\N
733	4204	62	2025-01-28	\N
734	4205	62	2025-03-18	\N
735	4206	62	2025-06-01	\N
736	4207	61	2025-07-18	\N
737	4208	58	2025-11-11	\N
738	4209	59	2025-11-12	\N
739	4210	64	2025-08-17	\N
740	4211	61	2026-02-14	\N
741	4212	61	2025-10-07	\N
742	4213	61	2026-05-13	\N
743	4214	59	2025-08-20	2025-10-16
744	4215	61	2024-06-12	\N
745	4216	64	2026-02-11	\N
746	4217	61	2025-02-01	\N
747	4218	62	2025-11-20	\N
748	4219	61	2025-01-23	2025-03-27
749	4220	63	2025-01-09	2025-12-27
750	4221	1	2025-12-23	2026-05-27
751	4222	61	2026-03-01	\N
752	4223	58	2024-11-02	\N
753	4224	60	2024-12-08	\N
754	4225	64	2025-07-27	\N
755	4226	63	2025-07-19	\N
756	4227	1	2024-09-10	\N
757	4228	58	2025-10-27	\N
758	4229	61	2024-07-20	2024-12-19
759	4230	59	2024-11-08	2024-12-09
760	4231	63	2025-02-20	\N
761	4232	64	2025-08-02	2026-01-26
762	4233	61	2024-06-07	\N
763	4234	58	2024-06-23	\N
764	4235	61	2024-08-25	\N
765	4236	60	2025-03-18	2025-08-10
766	4237	59	2025-08-28	\N
767	4238	58	2026-03-27	2026-05-27
768	4239	61	2025-03-04	2025-09-05
769	4240	63	2025-08-22	\N
770	4241	64	2025-03-05	2025-04-24
771	4242	63	2025-07-01	\N
772	4243	1	2026-02-23	\N
773	4244	1	2024-07-08	\N
774	4245	1	2025-11-29	\N
775	4246	64	2025-08-16	2026-05-27
776	4247	63	2024-08-15	\N
777	4248	58	2025-01-31	\N
778	4249	62	2025-07-03	\N
779	4250	59	2025-06-24	\N
780	4251	64	2025-08-05	\N
781	4252	63	2024-11-10	2025-01-24
782	4253	62	2025-09-11	\N
783	4254	63	2024-12-17	\N
784	4255	1	2024-07-23	\N
785	4256	64	2025-03-30	2026-01-19
786	4257	62	2024-08-28	\N
787	4258	64	2026-04-05	\N
788	4259	59	2025-08-06	\N
789	4260	64	2026-01-23	2026-05-27
790	4261	60	2024-05-31	2025-04-08
791	4262	1	2024-11-08	\N
792	4263	60	2026-01-31	\N
793	4264	58	2024-08-02	\N
794	4265	64	2025-08-02	\N
795	4266	61	2025-03-28	\N
796	4267	64	2025-09-20	\N
797	4268	59	2025-04-30	2026-04-01
798	4269	59	2026-03-17	\N
799	4270	63	2025-06-13	\N
800	4271	61	2026-05-25	\N
801	4272	61	2024-10-03	\N
802	4273	64	2025-12-26	\N
803	4274	64	2025-06-08	\N
804	4275	63	2025-02-15	\N
805	4276	60	2024-06-12	\N
806	4277	63	2025-09-30	\N
807	4278	63	2026-04-13	\N
808	4279	64	2024-06-04	\N
809	4280	63	2025-04-27	\N
810	4281	59	2025-01-05	\N
811	4282	59	2024-12-29	\N
812	4283	62	2026-02-14	\N
813	4284	64	2026-02-14	\N
814	4285	64	2026-05-12	\N
815	4286	63	2024-07-26	\N
816	4287	58	2025-02-01	\N
817	4288	61	2025-06-15	\N
818	4289	63	2024-07-31	2025-02-14
819	4290	63	2025-07-07	\N
820	4291	64	2024-11-19	2025-01-23
821	4292	60	2024-08-19	\N
822	4293	61	2025-10-07	\N
823	4294	63	2026-02-16	\N
824	4295	58	2025-02-27	2025-08-29
825	4296	1	2026-04-10	\N
826	4297	1	2025-07-31	\N
827	4298	63	2025-12-29	\N
828	4299	63	2024-10-25	\N
829	4300	59	2025-12-04	2026-05-27
830	4301	63	2024-08-31	\N
831	4302	64	2024-10-07	2025-06-30
832	4303	61	2025-02-11	\N
833	4304	1	2025-02-05	\N
834	4305	59	2026-03-13	\N
835	4306	62	2024-10-03	\N
836	4307	63	2024-06-20	\N
837	4308	61	2025-11-05	\N
838	4309	64	2026-02-07	\N
839	4310	62	2024-10-16	\N
840	4311	61	2026-05-05	\N
841	4312	63	2025-08-19	2025-10-13
842	4313	64	2025-08-07	\N
843	4314	60	2024-09-13	\N
844	4315	60	2024-08-14	2025-01-19
845	4316	59	2024-08-22	2025-08-08
846	4317	1	2025-07-15	\N
847	4318	1	2024-10-11	\N
848	4319	59	2026-02-24	\N
849	4320	62	2025-03-28	2025-07-03
850	4321	62	2024-11-30	\N
851	4322	61	2025-12-10	\N
852	4323	64	2025-07-29	\N
853	4324	62	2026-01-30	\N
854	4325	58	2026-01-03	\N
855	4326	60	2024-07-04	\N
856	4327	63	2024-11-03	\N
857	4328	63	2026-05-13	\N
858	4329	58	2025-02-16	\N
859	4330	61	2024-10-06	\N
860	4331	62	2026-02-06	\N
861	4332	64	2026-05-02	\N
862	4333	62	2024-09-10	\N
863	4334	58	2024-08-15	\N
864	4335	61	2024-08-01	\N
865	4336	59	2026-04-11	\N
866	4337	61	2025-01-08	2025-06-07
867	4338	59	2025-04-25	\N
868	4339	63	2024-10-03	\N
869	4340	59	2025-03-29	\N
870	4341	64	2024-09-04	\N
871	4342	61	2026-04-24	\N
872	4343	60	2025-02-27	\N
873	4344	60	2025-05-21	2025-12-25
874	4345	62	2026-03-26	\N
875	4346	60	2026-01-22	\N
876	4347	64	2026-02-23	\N
877	4348	1	2026-04-06	\N
878	4349	60	2026-01-19	\N
879	4350	60	2026-03-18	\N
880	4351	60	2024-10-04	\N
881	4352	60	2025-06-25	\N
882	4353	1	2025-08-17	\N
883	4354	59	2026-01-14	\N
884	4355	59	2026-02-04	\N
885	4356	1	2026-01-13	2026-05-27
886	4357	62	2026-05-11	2026-05-27
887	4358	59	2025-03-22	\N
888	4359	58	2025-01-25	\N
889	4360	62	2024-12-18	\N
890	4361	64	2024-12-28	\N
891	4362	1	2024-07-22	\N
892	4363	64	2024-08-07	\N
893	4364	1	2025-01-22	\N
894	4365	63	2024-06-24	2025-03-08
895	4366	58	2026-03-06	\N
896	4367	59	2026-03-21	2026-05-27
897	4368	62	2025-05-02	\N
898	4369	61	2025-02-17	\N
899	4370	63	2026-02-15	\N
900	4371	58	2024-07-26	\N
901	4372	60	2025-03-13	\N
902	4373	60	2025-03-30	\N
903	4374	64	2025-04-14	\N
904	4375	58	2025-07-11	\N
905	4376	61	2025-05-09	\N
906	4377	64	2026-03-20	2026-05-27
907	4378	58	2025-03-11	2025-10-17
908	4379	59	2024-11-04	2025-09-17
909	4380	62	2024-07-10	2025-02-06
910	4381	63	2026-04-05	\N
911	4382	61	2025-06-01	2026-03-17
912	4383	60	2025-12-20	\N
913	4384	60	2026-02-06	\N
914	4385	62	2026-01-30	\N
915	4386	60	2025-03-14	\N
916	4387	1	2024-09-11	\N
917	4388	61	2026-04-28	2026-05-27
918	4389	62	2025-06-02	2025-09-13
919	4390	63	2026-03-17	2026-05-27
920	4391	1	2026-02-23	\N
921	4392	60	2025-05-07	\N
922	4393	62	2025-12-17	\N
923	4394	62	2024-10-23	\N
924	4395	1	2025-12-19	2026-05-27
925	4396	1	2024-07-06	2025-03-19
926	4397	63	2025-01-15	\N
927	4398	63	2025-08-21	\N
928	4399	58	2025-06-08	\N
929	4400	61	2024-07-02	\N
930	4401	64	2024-12-04	\N
931	4402	1	2025-10-14	\N
932	4403	1	2026-05-20	\N
933	4404	60	2026-01-07	\N
934	4405	61	2025-06-26	2026-04-06
935	4406	63	2025-11-29	2026-05-27
936	4407	60	2024-12-31	\N
937	4408	62	2026-03-15	\N
938	4409	1	2025-03-07	2025-05-15
939	4410	62	2024-10-15	\N
940	4411	63	2024-05-31	\N
941	4412	61	2026-01-30	\N
942	4413	62	2025-12-03	\N
943	4414	64	2024-06-20	\N
944	4415	58	2025-03-06	\N
945	4416	60	2025-03-07	\N
946	4417	58	2025-04-17	\N
947	4418	62	2025-10-13	\N
948	4419	59	2026-03-10	\N
949	4420	58	2024-11-30	\N
950	4421	62	2025-06-02	\N
951	4422	59	2025-09-28	2026-03-08
952	4423	60	2025-12-01	\N
953	4424	58	2025-11-27	\N
954	4425	64	2025-02-06	\N
955	4426	64	2024-06-29	\N
956	4427	62	2024-08-23	\N
957	4428	64	2026-03-19	\N
958	4429	61	2025-08-19	\N
959	4430	62	2024-12-24	2025-09-16
960	4431	64	2026-04-19	2026-05-27
961	4432	58	2024-08-05	\N
962	4433	58	2024-09-05	\N
963	4434	63	2025-02-08	\N
964	4435	1	2025-02-21	\N
965	4436	60	2025-07-02	\N
966	4437	59	2026-03-25	\N
967	4438	62	2026-03-02	\N
968	4439	59	2026-04-17	\N
969	4440	64	2025-03-04	\N
970	4441	59	2025-05-20	\N
971	4442	61	2025-04-26	\N
972	4443	62	2024-07-01	\N
973	4444	62	2026-03-21	\N
974	4445	63	2025-08-10	\N
975	4446	59	2025-06-20	2025-09-30
976	4447	62	2025-07-14	\N
977	4448	63	2026-01-15	\N
978	4449	58	2025-07-14	\N
979	4450	62	2026-01-17	\N
980	4451	58	2024-08-04	\N
981	4452	62	2026-05-09	\N
982	4453	59	2025-10-20	\N
983	4454	64	2025-11-12	\N
984	4455	59	2025-12-20	2026-03-11
985	4456	1	2024-07-19	\N
986	4457	59	2024-09-23	\N
987	4458	59	2025-11-23	\N
988	4459	59	2025-03-05	2025-10-07
989	4460	60	2025-02-27	\N
990	4461	64	2025-09-30	\N
991	4462	61	2025-02-01	\N
992	4463	60	2025-05-16	\N
993	4464	64	2025-02-09	\N
994	4465	63	2024-12-29	\N
995	4466	59	2025-11-04	\N
996	4467	59	2025-09-13	2026-05-27
997	4468	62	2024-11-06	\N
998	4469	58	2025-08-09	2025-11-29
999	4470	61	2025-02-21	\N
1000	4471	59	2025-03-06	2025-07-27
1001	4472	64	2025-06-04	\N
1002	4473	63	2026-04-03	\N
1003	4474	62	2025-09-28	\N
1004	4475	58	2025-05-09	\N
1005	4476	62	2026-02-15	\N
1006	4477	62	2025-12-29	2026-05-27
1007	4478	64	2024-06-14	\N
1008	4479	64	2025-02-22	\N
1009	4480	58	2026-05-08	\N
1010	4481	59	2024-11-12	\N
1011	4482	63	2026-02-03	\N
1012	4483	60	2025-07-23	2025-12-22
1013	4484	63	2024-08-11	\N
1014	4485	64	2026-03-24	2026-05-27
1015	4486	1	2024-08-18	\N
1016	4487	60	2025-12-31	\N
1017	4488	1	2024-09-05	\N
1018	4489	63	2025-11-17	\N
1019	4490	58	2024-12-07	\N
1020	4491	58	2024-12-05	\N
1021	4492	1	2025-04-23	\N
\.


--
-- TOC entry 5053 (class 0 OID 25124)
-- Dependencies: 226
-- Data for Name: pagamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pagamentos (id_pagamento, matricula_id, valor_pago, data_pagamento) FROM stdin;
8	6	199.99	2026-05-25
10	522	119.99	2026-04-30
11	523	179.99	2025-10-07
12	524	119.99	2024-09-25
13	525	199.99	2026-02-16
14	526	199.99	2024-10-26
15	527	349.99	2025-10-10
16	528	229.99	2026-05-17
17	529	149.99	2024-06-08
18	530	229.99	2025-12-15
19	531	279.99	2026-02-08
20	532	279.99	2025-06-07
21	533	199.99	2025-02-10
22	534	349.99	2026-03-03
23	535	279.99	2024-10-12
24	536	199.99	2024-07-17
25	537	229.99	2026-03-04
26	538	119.99	2025-05-02
27	539	279.99	2025-12-09
28	540	179.99	2024-07-08
29	541	119.99	2024-09-06
30	542	179.99	2025-12-08
31	543	229.99	2024-08-08
32	544	179.99	2024-06-21
33	545	199.99	2025-09-30
34	546	279.99	2025-04-08
35	547	179.99	2024-10-19
36	548	279.99	2025-10-17
37	549	349.99	2024-08-06
38	550	229.99	2025-12-31
39	551	229.99	2024-10-05
40	552	349.99	2025-05-19
41	553	149.99	2024-12-17
42	554	199.99	2026-02-01
43	555	349.99	2024-09-19
44	556	499.99	2024-12-01
45	557	199.99	2024-06-26
46	558	229.99	2024-08-04
47	559	229.99	2025-03-06
48	560	229.99	2024-12-27
49	561	119.99	2024-08-24
50	562	179.99	2025-12-20
51	563	149.99	2024-11-18
52	564	199.99	2024-09-20
53	565	199.99	2026-01-29
54	566	229.99	2025-09-21
55	567	119.99	2026-02-26
56	568	119.99	2024-11-27
57	569	149.99	2024-07-17
58	570	149.99	2025-08-28
59	571	349.99	2025-10-21
60	572	179.99	2025-07-10
61	573	279.99	2025-02-28
62	574	499.99	2026-01-21
63	575	119.99	2025-06-10
64	576	179.99	2024-09-28
65	577	119.99	2024-05-31
66	578	179.99	2026-03-14
67	579	279.99	2026-03-14
68	580	229.99	2024-07-09
69	581	149.99	2024-10-18
70	582	179.99	2025-01-27
71	583	179.99	2026-02-15
72	584	279.99	2025-03-17
73	585	199.99	2024-07-02
74	586	119.99	2026-03-23
75	587	279.99	2026-01-31
76	588	179.99	2024-11-19
77	589	349.99	2025-11-19
78	590	179.99	2026-03-08
79	591	119.99	2026-04-03
80	592	199.99	2026-02-18
81	593	179.99	2025-12-03
82	594	499.99	2025-10-18
83	595	199.99	2025-12-05
84	596	349.99	2025-08-28
85	597	499.99	2025-08-06
86	598	499.99	2025-12-16
87	599	199.99	2024-10-10
88	600	199.99	2025-07-07
89	601	499.99	2024-12-27
90	602	149.99	2026-03-28
91	603	119.99	2025-11-16
92	604	179.99	2025-04-07
93	605	179.99	2024-10-09
94	606	119.99	2025-03-22
95	607	279.99	2025-08-29
96	608	279.99	2025-09-21
97	609	149.99	2024-07-07
98	610	499.99	2025-07-03
99	611	119.99	2026-05-15
100	612	119.99	2026-03-09
101	613	229.99	2026-01-08
102	614	119.99	2025-09-15
103	615	149.99	2025-03-04
104	616	229.99	2024-09-07
105	617	199.99	2024-07-09
106	618	229.99	2024-07-12
107	619	229.99	2026-01-26
108	620	149.99	2025-08-19
109	621	179.99	2025-06-06
110	622	229.99	2024-12-22
111	623	199.99	2026-02-19
112	624	229.99	2026-04-07
113	625	229.99	2025-12-12
114	626	349.99	2024-10-29
115	627	149.99	2024-11-11
116	628	149.99	2025-03-10
117	629	279.99	2026-04-16
118	630	179.99	2024-06-23
119	631	119.99	2025-05-26
120	632	349.99	2024-08-28
121	633	179.99	2025-12-08
122	634	149.99	2025-03-29
123	635	349.99	2024-07-07
124	636	179.99	2025-08-24
125	637	349.99	2026-04-15
126	638	179.99	2025-11-01
127	639	499.99	2025-05-31
128	640	179.99	2025-10-06
129	641	349.99	2025-06-20
130	642	119.99	2025-08-13
131	643	349.99	2024-06-26
132	644	279.99	2026-04-25
133	645	149.99	2024-10-07
134	646	229.99	2026-04-17
135	647	279.99	2025-07-09
136	648	119.99	2025-04-27
137	649	179.99	2025-09-05
138	650	199.99	2024-12-10
139	651	179.99	2025-05-19
140	652	279.99	2024-08-25
141	653	119.99	2025-07-20
142	654	349.99	2025-06-23
143	655	229.99	2024-11-05
144	656	349.99	2024-06-29
145	657	149.99	2024-09-02
146	658	349.99	2024-11-10
147	659	229.99	2025-08-04
148	660	279.99	2025-02-03
149	661	179.99	2024-12-17
150	662	149.99	2024-07-21
151	663	279.99	2026-02-18
152	664	179.99	2024-07-05
153	665	179.99	2025-12-27
154	666	499.99	2024-09-06
155	667	119.99	2025-02-13
156	668	179.99	2024-06-12
157	669	349.99	2025-09-16
158	670	119.99	2025-03-15
159	671	499.99	2026-04-04
160	672	119.99	2025-02-10
161	673	279.99	2025-02-27
162	674	349.99	2024-11-11
163	675	149.99	2025-01-25
164	676	179.99	2024-08-11
165	677	499.99	2024-08-20
166	678	499.99	2026-03-08
167	679	179.99	2025-08-20
168	680	119.99	2026-01-01
169	681	149.99	2024-06-01
170	682	349.99	2025-03-31
171	683	499.99	2025-03-24
172	684	349.99	2024-10-05
173	685	199.99	2024-10-14
174	686	199.99	2025-05-29
175	687	349.99	2025-03-23
176	688	179.99	2025-01-09
177	689	349.99	2025-01-13
178	690	349.99	2025-12-05
179	691	149.99	2024-08-27
180	692	349.99	2024-09-26
181	693	199.99	2026-02-27
182	694	149.99	2025-02-08
183	695	349.99	2025-06-25
184	696	279.99	2025-06-15
185	697	349.99	2025-08-13
186	698	349.99	2025-09-08
187	699	499.99	2026-05-05
188	700	199.99	2025-06-01
189	701	119.99	2024-07-25
190	702	179.99	2025-11-02
191	703	149.99	2025-09-23
192	704	179.99	2025-02-04
193	705	279.99	2025-12-02
194	706	119.99	2025-12-06
195	707	119.99	2024-10-11
196	708	349.99	2025-04-11
197	709	179.99	2026-03-09
198	710	179.99	2026-02-08
199	711	229.99	2024-06-23
200	712	119.99	2024-10-23
201	713	279.99	2024-11-26
202	714	279.99	2026-03-14
203	715	279.99	2026-05-10
204	716	499.99	2026-02-04
205	717	279.99	2024-08-13
206	718	499.99	2024-06-01
207	719	229.99	2024-09-03
208	720	499.99	2025-02-03
209	721	229.99	2025-06-30
210	722	119.99	2025-08-10
211	723	179.99	2025-02-02
212	724	349.99	2025-06-14
213	725	149.99	2025-01-09
214	726	229.99	2025-06-10
215	727	229.99	2024-11-02
216	728	119.99	2025-09-20
217	729	499.99	2024-11-02
218	730	499.99	2024-08-03
219	731	499.99	2026-05-08
220	732	349.99	2024-06-13
221	733	279.99	2025-01-23
222	734	279.99	2025-03-13
223	735	279.99	2025-05-27
224	736	229.99	2025-07-15
225	737	119.99	2025-11-10
226	738	149.99	2025-11-09
227	739	499.99	2025-08-15
228	740	229.99	2026-02-09
229	741	229.99	2025-10-02
230	742	229.99	2026-05-08
231	743	149.99	2025-08-18
232	744	229.99	2024-06-08
233	745	499.99	2026-02-08
234	746	229.99	2025-01-31
235	747	279.99	2025-11-18
236	748	229.99	2025-01-19
237	749	349.99	2025-01-05
238	750	199.99	2025-12-22
239	751	229.99	2026-02-27
240	752	119.99	2024-10-29
241	753	179.99	2024-12-03
242	754	499.99	2025-07-26
243	755	349.99	2025-07-14
244	756	199.99	2024-09-09
245	757	119.99	2025-10-24
246	758	229.99	2024-07-17
247	759	149.99	2024-11-06
248	760	349.99	2025-02-16
249	761	499.99	2025-07-28
250	762	229.99	2024-06-03
251	763	119.99	2024-06-20
252	764	229.99	2024-08-20
253	765	179.99	2025-03-16
254	766	149.99	2025-08-24
255	767	119.99	2026-03-26
256	768	229.99	2025-03-03
257	769	349.99	2025-08-17
258	770	499.99	2025-03-04
259	771	349.99	2025-06-30
260	772	199.99	2026-02-20
261	773	199.99	2024-07-06
262	774	199.99	2025-11-28
263	775	499.99	2025-08-15
264	776	349.99	2024-08-11
265	777	119.99	2025-01-26
266	778	279.99	2025-06-30
267	779	149.99	2025-06-19
268	780	499.99	2025-08-01
269	781	349.99	2024-11-06
270	782	279.99	2025-09-07
271	783	349.99	2024-12-16
272	784	199.99	2024-07-18
273	785	499.99	2025-03-25
274	786	279.99	2024-08-23
275	787	499.99	2026-04-03
276	788	149.99	2025-08-03
277	789	499.99	2026-01-22
278	790	179.99	2024-05-28
279	791	199.99	2024-11-07
280	792	179.99	2026-01-26
281	793	119.99	2024-07-31
282	794	499.99	2025-07-31
283	795	229.99	2025-03-23
284	796	499.99	2025-09-17
285	797	149.99	2025-04-26
286	798	149.99	2026-03-12
287	799	349.99	2025-06-12
288	800	229.99	2026-05-22
289	801	229.99	2024-09-29
290	802	499.99	2025-12-24
291	803	499.99	2025-06-07
292	804	349.99	2025-02-13
293	805	179.99	2024-06-11
294	806	349.99	2025-09-26
295	807	349.99	2026-04-12
296	808	499.99	2024-05-31
297	809	349.99	2025-04-22
298	810	149.99	2024-12-31
299	811	149.99	2024-12-28
300	812	279.99	2026-02-11
301	813	499.99	2026-02-12
302	814	499.99	2026-05-11
303	815	349.99	2024-07-25
304	816	119.99	2025-01-30
305	817	229.99	2025-06-14
306	818	349.99	2024-07-29
307	819	349.99	2025-07-03
308	820	499.99	2024-11-16
309	821	179.99	2024-08-14
310	822	229.99	2025-10-02
311	823	349.99	2026-02-13
312	824	119.99	2025-02-25
313	825	199.99	2026-04-07
314	826	199.99	2025-07-29
315	827	349.99	2025-12-26
316	828	349.99	2024-10-24
317	829	149.99	2025-12-03
318	830	349.99	2024-08-28
319	831	499.99	2024-10-03
320	832	229.99	2025-02-08
321	833	199.99	2025-01-31
322	834	149.99	2026-03-12
323	835	279.99	2024-09-30
324	836	349.99	2024-06-15
325	837	229.99	2025-11-04
326	838	499.99	2026-02-03
327	839	279.99	2024-10-12
328	840	229.99	2026-04-30
329	841	349.99	2025-08-16
330	842	499.99	2025-08-06
331	843	179.99	2024-09-09
332	844	179.99	2024-08-09
333	845	149.99	2024-08-20
334	846	199.99	2025-07-12
335	847	199.99	2024-10-09
336	848	149.99	2026-02-21
337	849	279.99	2025-03-27
338	850	279.99	2024-11-25
339	851	229.99	2025-12-09
340	852	499.99	2025-07-27
341	853	279.99	2026-01-25
342	854	119.99	2026-01-02
343	855	179.99	2024-07-03
344	856	349.99	2024-11-02
345	857	349.99	2026-05-11
346	858	119.99	2025-02-15
347	859	229.99	2024-10-02
348	860	279.99	2026-02-03
349	861	499.99	2026-04-28
350	862	279.99	2024-09-08
351	863	119.99	2024-08-13
352	864	229.99	2024-07-31
353	865	149.99	2026-04-06
354	866	229.99	2025-01-04
355	867	149.99	2025-04-23
356	868	349.99	2024-09-30
357	869	149.99	2025-03-27
358	870	499.99	2024-08-31
359	871	229.99	2026-04-21
360	872	179.99	2025-02-24
361	873	179.99	2025-05-20
362	874	279.99	2026-03-21
363	875	179.99	2026-01-19
364	876	499.99	2026-02-22
365	877	199.99	2026-04-01
366	878	179.99	2026-01-18
367	879	179.99	2026-03-16
368	880	179.99	2024-10-02
369	881	179.99	2025-06-20
370	882	199.99	2025-08-16
371	883	149.99	2026-01-10
372	884	149.99	2026-02-03
373	885	199.99	2026-01-09
374	886	279.99	2026-05-08
375	887	149.99	2025-03-19
376	888	119.99	2025-01-22
377	889	279.99	2024-12-17
378	890	499.99	2024-12-23
379	891	199.99	2024-07-18
380	892	499.99	2024-08-06
381	893	199.99	2025-01-19
382	894	349.99	2024-06-22
383	895	119.99	2026-03-03
384	896	149.99	2026-03-16
385	897	279.99	2025-04-29
386	898	229.99	2025-02-12
387	899	349.99	2026-02-13
388	900	119.99	2024-07-22
389	901	179.99	2025-03-10
390	902	179.99	2025-03-25
391	903	499.99	2025-04-10
392	904	119.99	2025-07-09
393	905	229.99	2025-05-04
394	906	499.99	2026-03-18
395	907	119.99	2025-03-09
396	908	149.99	2024-11-03
397	909	279.99	2024-07-06
398	910	349.99	2026-04-04
399	911	229.99	2025-05-30
400	912	179.99	2025-12-15
401	913	179.99	2026-02-03
402	914	279.99	2026-01-29
403	915	179.99	2025-03-11
404	916	199.99	2024-09-10
405	917	229.99	2026-04-24
406	918	279.99	2025-05-30
407	919	349.99	2026-03-16
408	920	199.99	2026-02-21
409	921	179.99	2025-05-02
410	922	279.99	2025-12-15
411	923	279.99	2024-10-19
412	924	199.99	2025-12-15
413	925	199.99	2024-07-05
414	926	349.99	2025-01-13
415	927	349.99	2025-08-18
416	928	119.99	2025-06-07
417	929	229.99	2024-07-01
418	930	499.99	2024-12-02
419	931	199.99	2025-10-09
420	932	199.99	2026-05-16
421	933	179.99	2026-01-04
422	934	229.99	2025-06-22
423	935	349.99	2025-11-28
424	936	179.99	2024-12-26
425	937	279.99	2026-03-14
426	938	199.99	2025-03-02
427	939	279.99	2024-10-13
428	940	349.99	2024-05-27
429	941	229.99	2026-01-29
430	942	279.99	2025-11-28
431	943	499.99	2024-06-15
432	944	119.99	2025-03-05
433	945	179.99	2025-03-03
434	946	119.99	2025-04-15
435	947	279.99	2025-10-11
436	948	149.99	2026-03-07
437	949	119.99	2024-11-27
438	950	279.99	2025-05-30
439	951	149.99	2025-09-24
440	952	179.99	2025-11-28
441	953	119.99	2025-11-24
442	954	499.99	2025-02-02
443	955	499.99	2024-06-26
444	956	279.99	2024-08-21
445	957	499.99	2026-03-18
446	958	229.99	2025-08-17
447	959	279.99	2024-12-22
448	960	499.99	2026-04-14
449	961	119.99	2024-08-04
450	962	119.99	2024-09-03
451	963	349.99	2025-02-07
452	964	199.99	2025-02-19
453	965	179.99	2025-06-28
454	966	149.99	2026-03-21
455	967	279.99	2026-02-27
456	968	149.99	2026-04-13
457	969	499.99	2025-03-03
458	970	149.99	2025-05-15
459	971	229.99	2025-04-23
460	972	279.99	2024-06-29
461	973	279.99	2026-03-17
462	974	349.99	2025-08-07
463	975	149.99	2025-06-16
464	976	279.99	2025-07-11
465	977	349.99	2026-01-14
466	978	119.99	2025-07-13
467	979	279.99	2026-01-15
468	980	119.99	2024-08-01
469	981	279.99	2026-05-04
470	982	149.99	2025-10-19
471	983	499.99	2025-11-10
472	984	149.99	2025-12-17
473	985	199.99	2024-07-17
474	986	149.99	2024-09-22
475	987	149.99	2025-11-21
476	988	149.99	2025-03-02
477	989	179.99	2025-02-23
478	990	499.99	2025-09-25
479	991	229.99	2025-01-31
480	992	179.99	2025-05-13
481	993	499.99	2025-02-06
482	994	349.99	2024-12-27
483	995	149.99	2025-11-03
484	996	149.99	2025-09-09
485	997	279.99	2024-11-02
486	998	119.99	2025-08-04
487	999	229.99	2025-02-16
488	1000	149.99	2025-03-04
489	1001	499.99	2025-06-03
490	1002	349.99	2026-03-30
491	1003	279.99	2025-09-27
492	1004	119.99	2025-05-07
493	1005	279.99	2026-02-14
494	1006	279.99	2025-12-28
495	1007	499.99	2024-06-13
496	1008	499.99	2025-02-20
497	1009	119.99	2026-05-06
498	1010	149.99	2024-11-10
499	1011	349.99	2026-01-30
500	1012	179.99	2025-07-20
501	1013	349.99	2024-08-10
502	1014	499.99	2026-03-19
503	1015	199.99	2024-08-13
504	1016	179.99	2025-12-28
505	1017	199.99	2024-09-04
506	1018	349.99	2025-11-16
507	1019	119.99	2024-12-06
508	1020	119.99	2024-12-03
509	1021	199.99	2025-04-19
\.


--
-- TOC entry 5049 (class 0 OID 25092)
-- Dependencies: 222
-- Data for Name: planos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planos (id_plano, nome_plano, valor) FROM stdin;
1	Fit Plus	199.99
58	Start Plus	119.99
59	Active	149.99
60	Pro Fit	179.99
61	Premium	229.99
62	Elite	279.99
63	Black	349.99
64	VIP Total	499.99
\.


--
-- TOC entry 5055 (class 0 OID 25140)
-- Dependencies: 228
-- Data for Name: treinos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.treinos (id_treino, aluno_id, tipo_treino, personal) FROM stdin;
502	3994	Emagrecimento	Nathalia
2	1	Emagrecimento	Murilo
503	1	Condicionamento Físico	Rezende
504	3995	Emagrecimento	Rezende
505	3996	Ganho de Massa	Rezende
506	3997	Funcional	Murilo
507	3998	Condicionamento Físico	Danilo
508	3999	Emagrecimento	Rezende
509	4000	Condicionamento Físico	Danilo
510	4001	Reabilitação	Nathalia
511	4002	Musculação	Danilo
512	4003	Ganho de Massa	Nathalia
513	4004	Emagrecimento	Rezende
514	4005	Funcional	Murilo
515	4006	Funcional	Murilo
516	4007	Condicionamento Físico	Rezende
517	4008	Crossfit	Nathalia
518	4009	Hipertrofia	Murilo
519	4010	Funcional	Rezende
520	4011	Condicionamento Físico	Murilo
521	4012	Condicionamento Físico	Rezende
522	4013	Ganho de Massa	Rezende
523	4014	Crossfit	Nathalia
524	4015	Reabilitação	Nathalia
525	4016	Condicionamento Físico	Danilo
526	4017	Reabilitação	Nathalia
527	4018	Condicionamento Físico	Rezende
528	4019	Ganho de Massa	Nathalia
529	4020	Ganho de Massa	Nathalia
530	4021	Musculação	Rezende
531	4022	Condicionamento Físico	Murilo
532	4023	Ganho de Massa	Rezende
533	4024	Hipertrofia	Rezende
534	4025	Reabilitação	Nathalia
535	4026	Musculação	Nathalia
536	4027	Condicionamento Físico	Nathalia
537	4028	Emagrecimento	Rezende
538	4029	Crossfit	Rezende
539	4030	Emagrecimento	Murilo
540	4031	Crossfit	Rezende
541	4032	Musculação	Murilo
542	4033	Musculação	Nathalia
543	4034	Emagrecimento	Danilo
544	4035	Ganho de Massa	Danilo
545	4036	Condicionamento Físico	Rezende
546	4037	Crossfit	Murilo
547	4038	Musculação	Nathalia
548	4039	Condicionamento Físico	Rezende
549	4040	Reabilitação	Murilo
550	4041	Musculação	Rezende
551	4042	Crossfit	Rezende
552	4043	Hipertrofia	Danilo
553	4044	Ganho de Massa	Murilo
554	4045	Musculação	Nathalia
555	4046	Crossfit	Murilo
556	4047	Hipertrofia	Rezende
557	4048	Reabilitação	Danilo
558	4049	Hipertrofia	Nathalia
559	4050	Funcional	Murilo
560	4051	Musculação	Murilo
561	4052	Reabilitação	Danilo
562	4053	Reabilitação	Murilo
563	4054	Condicionamento Físico	Rezende
564	4055	Ganho de Massa	Rezende
565	4056	Hipertrofia	Danilo
566	4057	Musculação	Rezende
567	4058	Funcional	Murilo
568	4059	Funcional	Danilo
569	4060	Funcional	Nathalia
570	4061	Emagrecimento	Rezende
571	4062	Condicionamento Físico	Nathalia
572	4063	Musculação	Murilo
573	4064	Ganho de Massa	Rezende
574	4065	Crossfit	Nathalia
575	4066	Crossfit	Nathalia
576	4067	Ganho de Massa	Danilo
577	4068	Condicionamento Físico	Murilo
578	4069	Reabilitação	Nathalia
579	4070	Condicionamento Físico	Danilo
580	4071	Musculação	Danilo
581	4072	Crossfit	Murilo
582	4073	Ganho de Massa	Danilo
583	4074	Hipertrofia	Danilo
584	4075	Musculação	Rezende
585	4076	Funcional	Rezende
586	4077	Hipertrofia	Murilo
587	4078	Hipertrofia	Danilo
588	4079	Hipertrofia	Danilo
589	4080	Hipertrofia	Murilo
590	4081	Musculação	Danilo
591	4082	Musculação	Rezende
592	4083	Emagrecimento	Murilo
593	4084	Ganho de Massa	Murilo
594	4085	Hipertrofia	Danilo
595	4086	Crossfit	Murilo
596	4087	Reabilitação	Rezende
597	4088	Hipertrofia	Nathalia
598	4089	Funcional	Nathalia
599	4090	Hipertrofia	Nathalia
600	4091	Ganho de Massa	Murilo
601	4092	Musculação	Nathalia
602	4093	Crossfit	Nathalia
603	4094	Reabilitação	Danilo
604	4095	Condicionamento Físico	Danilo
605	4096	Condicionamento Físico	Rezende
606	4097	Condicionamento Físico	Nathalia
607	4098	Musculação	Rezende
608	4099	Ganho de Massa	Rezende
609	4100	Funcional	Nathalia
610	4101	Ganho de Massa	Rezende
611	4102	Reabilitação	Danilo
612	4103	Musculação	Murilo
613	4104	Emagrecimento	Rezende
614	4105	Crossfit	Nathalia
615	4106	Funcional	Danilo
616	4107	Condicionamento Físico	Rezende
617	4108	Funcional	Danilo
618	4109	Reabilitação	Nathalia
619	4110	Reabilitação	Rezende
620	4111	Reabilitação	Murilo
621	4112	Ganho de Massa	Nathalia
622	4113	Reabilitação	Danilo
623	4114	Funcional	Rezende
624	4115	Emagrecimento	Murilo
625	4116	Hipertrofia	Nathalia
626	4117	Reabilitação	Rezende
627	4118	Emagrecimento	Murilo
628	4119	Crossfit	Danilo
629	4120	Hipertrofia	Rezende
630	4121	Crossfit	Rezende
631	4122	Emagrecimento	Nathalia
632	4123	Emagrecimento	Danilo
633	4124	Condicionamento Físico	Rezende
634	4125	Ganho de Massa	Nathalia
635	4126	Reabilitação	Rezende
636	4127	Ganho de Massa	Danilo
637	4128	Ganho de Massa	Nathalia
638	4129	Condicionamento Físico	Rezende
639	4130	Condicionamento Físico	Danilo
640	4131	Funcional	Nathalia
641	4132	Emagrecimento	Murilo
642	4133	Emagrecimento	Danilo
643	4134	Condicionamento Físico	Nathalia
644	4135	Reabilitação	Danilo
645	4136	Musculação	Rezende
646	4137	Condicionamento Físico	Danilo
647	4138	Crossfit	Rezende
648	4139	Condicionamento Físico	Nathalia
649	4140	Hipertrofia	Nathalia
650	4141	Emagrecimento	Rezende
651	4142	Condicionamento Físico	Murilo
652	4143	Crossfit	Rezende
653	4144	Emagrecimento	Nathalia
654	4145	Hipertrofia	Danilo
655	4146	Emagrecimento	Nathalia
656	4147	Musculação	Nathalia
657	4148	Musculação	Danilo
658	4149	Emagrecimento	Murilo
659	4150	Funcional	Murilo
660	4151	Reabilitação	Rezende
661	4152	Crossfit	Danilo
662	4153	Crossfit	Danilo
663	4154	Crossfit	Nathalia
664	4155	Emagrecimento	Danilo
665	4156	Funcional	Rezende
666	4157	Reabilitação	Nathalia
667	4158	Condicionamento Físico	Danilo
668	4159	Reabilitação	Rezende
669	4160	Condicionamento Físico	Rezende
670	4161	Reabilitação	Danilo
671	4162	Funcional	Rezende
672	4163	Hipertrofia	Danilo
673	4164	Hipertrofia	Rezende
674	4165	Funcional	Nathalia
675	4166	Condicionamento Físico	Nathalia
676	4167	Condicionamento Físico	Rezende
677	4168	Hipertrofia	Murilo
678	4169	Crossfit	Nathalia
679	4170	Condicionamento Físico	Danilo
680	4171	Hipertrofia	Murilo
681	4172	Hipertrofia	Murilo
682	4173	Condicionamento Físico	Nathalia
683	4174	Hipertrofia	Nathalia
684	4175	Funcional	Danilo
685	4176	Hipertrofia	Rezende
686	4177	Musculação	Murilo
687	4178	Funcional	Danilo
688	4179	Emagrecimento	Danilo
689	4180	Funcional	Murilo
690	4181	Ganho de Massa	Nathalia
691	4182	Condicionamento Físico	Nathalia
692	4183	Ganho de Massa	Danilo
693	4184	Emagrecimento	Danilo
694	4185	Crossfit	Nathalia
695	4186	Reabilitação	Danilo
696	4187	Hipertrofia	Rezende
697	4188	Hipertrofia	Murilo
698	4189	Ganho de Massa	Danilo
699	4190	Emagrecimento	Danilo
700	4191	Crossfit	Danilo
701	4192	Emagrecimento	Nathalia
702	4193	Reabilitação	Danilo
703	4194	Hipertrofia	Murilo
704	4195	Emagrecimento	Rezende
705	4196	Ganho de Massa	Rezende
706	4197	Hipertrofia	Nathalia
707	4198	Reabilitação	Danilo
708	4199	Reabilitação	Rezende
709	4200	Funcional	Murilo
710	4201	Condicionamento Físico	Danilo
711	4202	Reabilitação	Rezende
712	4203	Musculação	Murilo
713	4204	Condicionamento Físico	Rezende
714	4205	Funcional	Danilo
715	4206	Crossfit	Nathalia
716	4207	Condicionamento Físico	Murilo
717	4208	Crossfit	Murilo
718	4209	Musculação	Danilo
719	4210	Reabilitação	Rezende
720	4211	Funcional	Murilo
721	4212	Hipertrofia	Nathalia
722	4213	Funcional	Nathalia
723	4214	Hipertrofia	Rezende
724	4215	Hipertrofia	Murilo
725	4216	Hipertrofia	Rezende
726	4217	Funcional	Murilo
727	4218	Ganho de Massa	Nathalia
728	4219	Hipertrofia	Danilo
729	4220	Crossfit	Rezende
730	4221	Ganho de Massa	Rezende
731	4222	Condicionamento Físico	Danilo
732	4223	Funcional	Danilo
733	4224	Reabilitação	Danilo
734	4225	Reabilitação	Rezende
735	4226	Crossfit	Nathalia
736	4227	Funcional	Danilo
737	4228	Ganho de Massa	Nathalia
738	4229	Condicionamento Físico	Murilo
739	4230	Ganho de Massa	Murilo
740	4231	Funcional	Danilo
741	4232	Musculação	Rezende
742	4233	Reabilitação	Murilo
743	4234	Funcional	Nathalia
744	4235	Ganho de Massa	Nathalia
745	4236	Emagrecimento	Nathalia
746	4237	Musculação	Nathalia
747	4238	Reabilitação	Murilo
748	4239	Reabilitação	Rezende
749	4240	Emagrecimento	Nathalia
750	4241	Hipertrofia	Murilo
751	4242	Funcional	Murilo
752	4243	Emagrecimento	Nathalia
753	4244	Condicionamento Físico	Murilo
754	4245	Emagrecimento	Murilo
755	4246	Reabilitação	Murilo
756	4247	Hipertrofia	Nathalia
757	4248	Musculação	Danilo
758	4249	Crossfit	Rezende
759	4250	Crossfit	Nathalia
760	4251	Crossfit	Nathalia
761	4252	Ganho de Massa	Danilo
762	4253	Condicionamento Físico	Murilo
763	4254	Musculação	Nathalia
764	4255	Musculação	Danilo
765	4256	Emagrecimento	Murilo
766	4257	Hipertrofia	Nathalia
767	4258	Crossfit	Nathalia
768	4259	Funcional	Danilo
769	4260	Reabilitação	Rezende
770	4261	Musculação	Rezende
771	4262	Funcional	Murilo
772	4263	Emagrecimento	Nathalia
773	4264	Emagrecimento	Danilo
774	4265	Funcional	Murilo
775	4266	Ganho de Massa	Murilo
776	4267	Reabilitação	Murilo
777	4268	Funcional	Murilo
778	4269	Crossfit	Nathalia
779	4270	Funcional	Danilo
780	4271	Emagrecimento	Danilo
781	4272	Hipertrofia	Danilo
782	4273	Condicionamento Físico	Rezende
783	4274	Funcional	Rezende
784	4275	Musculação	Danilo
785	4276	Crossfit	Rezende
786	4277	Hipertrofia	Murilo
787	4278	Musculação	Nathalia
788	4279	Reabilitação	Murilo
789	4280	Condicionamento Físico	Nathalia
790	4281	Condicionamento Físico	Nathalia
791	4282	Crossfit	Danilo
792	4283	Hipertrofia	Nathalia
793	4284	Musculação	Nathalia
794	4285	Funcional	Danilo
795	4286	Hipertrofia	Danilo
796	4287	Reabilitação	Murilo
797	4288	Crossfit	Nathalia
798	4289	Musculação	Nathalia
799	4290	Funcional	Rezende
800	4291	Funcional	Rezende
801	4292	Ganho de Massa	Nathalia
802	4293	Condicionamento Físico	Murilo
803	4294	Funcional	Murilo
804	4295	Hipertrofia	Nathalia
805	4296	Emagrecimento	Murilo
806	4297	Funcional	Danilo
807	4298	Reabilitação	Danilo
808	4299	Condicionamento Físico	Rezende
809	4300	Emagrecimento	Danilo
810	4301	Funcional	Murilo
811	4302	Reabilitação	Danilo
812	4303	Funcional	Nathalia
813	4304	Funcional	Rezende
814	4305	Hipertrofia	Nathalia
815	4306	Reabilitação	Rezende
816	4307	Hipertrofia	Rezende
817	4308	Condicionamento Físico	Nathalia
818	4309	Reabilitação	Murilo
819	4310	Reabilitação	Rezende
820	4311	Funcional	Rezende
821	4312	Condicionamento Físico	Nathalia
822	4313	Emagrecimento	Danilo
823	4314	Musculação	Murilo
824	4315	Hipertrofia	Nathalia
825	4316	Hipertrofia	Danilo
826	4317	Funcional	Rezende
827	4318	Funcional	Nathalia
828	4319	Funcional	Nathalia
829	4320	Condicionamento Físico	Rezende
830	4321	Reabilitação	Nathalia
831	4322	Reabilitação	Danilo
832	4323	Condicionamento Físico	Danilo
833	4324	Musculação	Nathalia
834	4325	Musculação	Murilo
835	4326	Emagrecimento	Murilo
836	4327	Emagrecimento	Murilo
837	4328	Crossfit	Danilo
838	4329	Funcional	Murilo
839	4330	Musculação	Murilo
840	4331	Funcional	Nathalia
841	4332	Condicionamento Físico	Murilo
842	4333	Reabilitação	Nathalia
843	4334	Emagrecimento	Murilo
844	4335	Crossfit	Murilo
845	4336	Emagrecimento	Rezende
846	4337	Hipertrofia	Murilo
847	4338	Crossfit	Danilo
848	4339	Ganho de Massa	Murilo
849	4340	Musculação	Danilo
850	4341	Funcional	Rezende
851	4342	Condicionamento Físico	Rezende
852	4343	Crossfit	Murilo
853	4344	Condicionamento Físico	Nathalia
854	4345	Reabilitação	Danilo
855	4346	Funcional	Rezende
856	4347	Ganho de Massa	Murilo
857	4348	Ganho de Massa	Nathalia
858	4349	Crossfit	Nathalia
859	4350	Reabilitação	Murilo
860	4351	Emagrecimento	Danilo
861	4352	Ganho de Massa	Nathalia
862	4353	Crossfit	Rezende
863	4354	Ganho de Massa	Murilo
864	4355	Funcional	Danilo
865	4356	Reabilitação	Rezende
866	4357	Emagrecimento	Murilo
867	4358	Hipertrofia	Murilo
868	4359	Musculação	Rezende
869	4360	Emagrecimento	Danilo
870	4361	Musculação	Nathalia
871	4362	Ganho de Massa	Rezende
872	4363	Musculação	Danilo
873	4364	Crossfit	Rezende
874	4365	Crossfit	Danilo
875	4366	Ganho de Massa	Rezende
876	4367	Emagrecimento	Murilo
877	4368	Crossfit	Danilo
878	4369	Ganho de Massa	Rezende
879	4370	Crossfit	Rezende
880	4371	Emagrecimento	Rezende
881	4372	Reabilitação	Nathalia
882	4373	Funcional	Rezende
883	4374	Crossfit	Nathalia
884	4375	Musculação	Nathalia
885	4376	Ganho de Massa	Rezende
886	4377	Funcional	Murilo
887	4378	Ganho de Massa	Rezende
888	4379	Musculação	Nathalia
889	4380	Musculação	Nathalia
890	4381	Condicionamento Físico	Rezende
891	4382	Ganho de Massa	Murilo
892	4383	Emagrecimento	Rezende
893	4384	Reabilitação	Rezende
894	4385	Hipertrofia	Murilo
895	4386	Musculação	Murilo
896	4387	Musculação	Nathalia
897	4388	Reabilitação	Nathalia
898	4389	Ganho de Massa	Murilo
899	4390	Ganho de Massa	Rezende
900	4391	Ganho de Massa	Rezende
901	4392	Crossfit	Murilo
902	4393	Hipertrofia	Nathalia
903	4394	Crossfit	Murilo
904	4395	Funcional	Danilo
905	4396	Crossfit	Danilo
906	4397	Musculação	Rezende
907	4398	Hipertrofia	Rezende
908	4399	Reabilitação	Danilo
909	4400	Ganho de Massa	Danilo
910	4401	Crossfit	Rezende
911	4402	Crossfit	Rezende
912	4403	Reabilitação	Murilo
913	4404	Condicionamento Físico	Rezende
914	4405	Funcional	Nathalia
915	4406	Funcional	Nathalia
916	4407	Ganho de Massa	Danilo
917	4408	Hipertrofia	Murilo
918	4409	Crossfit	Rezende
919	4410	Crossfit	Rezende
920	4411	Reabilitação	Rezende
921	4412	Crossfit	Danilo
922	4413	Hipertrofia	Rezende
923	4414	Funcional	Nathalia
924	4415	Condicionamento Físico	Danilo
925	4416	Crossfit	Rezende
926	4417	Hipertrofia	Nathalia
927	4418	Funcional	Rezende
928	4419	Crossfit	Rezende
929	4420	Crossfit	Rezende
930	4421	Ganho de Massa	Danilo
931	4422	Musculação	Murilo
932	4423	Reabilitação	Danilo
933	4424	Reabilitação	Rezende
934	4425	Ganho de Massa	Nathalia
935	4426	Reabilitação	Danilo
936	4427	Hipertrofia	Danilo
937	4428	Hipertrofia	Danilo
938	4429	Crossfit	Nathalia
939	4430	Ganho de Massa	Nathalia
940	4431	Reabilitação	Nathalia
941	4432	Crossfit	Murilo
942	4433	Condicionamento Físico	Murilo
943	4434	Ganho de Massa	Danilo
944	4435	Condicionamento Físico	Danilo
945	4436	Emagrecimento	Nathalia
946	4437	Condicionamento Físico	Nathalia
947	4438	Ganho de Massa	Murilo
948	4439	Ganho de Massa	Rezende
949	4440	Funcional	Danilo
950	4441	Reabilitação	Rezende
951	4442	Crossfit	Nathalia
952	4443	Musculação	Rezende
953	4444	Emagrecimento	Nathalia
954	4445	Ganho de Massa	Rezende
955	4446	Crossfit	Murilo
956	4447	Ganho de Massa	Danilo
957	4448	Condicionamento Físico	Rezende
958	4449	Condicionamento Físico	Nathalia
959	4450	Funcional	Nathalia
960	4451	Condicionamento Físico	Nathalia
961	4452	Ganho de Massa	Nathalia
962	4453	Reabilitação	Rezende
963	4454	Ganho de Massa	Rezende
964	4455	Emagrecimento	Murilo
965	4456	Emagrecimento	Rezende
966	4457	Ganho de Massa	Danilo
967	4458	Funcional	Danilo
968	4459	Musculação	Rezende
969	4460	Crossfit	Nathalia
970	4461	Funcional	Nathalia
971	4462	Musculação	Danilo
972	4463	Crossfit	Nathalia
973	4464	Emagrecimento	Danilo
974	4465	Reabilitação	Nathalia
975	4466	Crossfit	Murilo
976	4467	Funcional	Danilo
977	4468	Hipertrofia	Murilo
978	4469	Ganho de Massa	Danilo
979	4470	Condicionamento Físico	Rezende
980	4471	Funcional	Nathalia
981	4472	Ganho de Massa	Rezende
982	4473	Reabilitação	Rezende
983	4474	Crossfit	Nathalia
984	4475	Ganho de Massa	Rezende
985	4476	Condicionamento Físico	Nathalia
986	4477	Musculação	Rezende
987	4478	Ganho de Massa	Danilo
988	4479	Condicionamento Físico	Murilo
989	4480	Funcional	Rezende
990	4481	Ganho de Massa	Danilo
991	4482	Condicionamento Físico	Danilo
992	4483	Crossfit	Nathalia
993	4484	Musculação	Nathalia
994	4485	Crossfit	Danilo
995	4486	Reabilitação	Danilo
996	4487	Musculação	Nathalia
997	4488	Hipertrofia	Danilo
998	4489	Musculação	Rezende
999	4490	Reabilitação	Murilo
1000	4491	Condicionamento Físico	Murilo
1001	4492	Reabilitação	Danilo
\.


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 219
-- Name: alunos_id_aluno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alunos_id_aluno_seq', 4492, true);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 223
-- Name: matriculas_id_matricula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matriculas_id_matricula_seq', 1021, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 225
-- Name: pagamentos_id_pagamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pagamentos_id_pagamento_seq', 509, true);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 221
-- Name: planos_id_plano_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planos_id_plano_seq', 64, true);


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 227
-- Name: treinos_id_treino_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treinos_id_treino_seq', 1001, true);


--
-- TOC entry 4882 (class 2606 OID 25088)
-- Name: alunos alunos_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_email_key UNIQUE (email);


--
-- TOC entry 4884 (class 2606 OID 25086)
-- Name: alunos alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id_aluno);


--
-- TOC entry 4886 (class 2606 OID 25090)
-- Name: alunos alunos_telefone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_telefone_key UNIQUE (telefone);


--
-- TOC entry 4890 (class 2606 OID 25112)
-- Name: matriculas matriculas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_pkey PRIMARY KEY (id_matricula);


--
-- TOC entry 4892 (class 2606 OID 25133)
-- Name: pagamentos pagamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamentos
    ADD CONSTRAINT pagamentos_pkey PRIMARY KEY (id_pagamento);


--
-- TOC entry 4888 (class 2606 OID 25100)
-- Name: planos planos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planos
    ADD CONSTRAINT planos_pkey PRIMARY KEY (id_plano);


--
-- TOC entry 4894 (class 2606 OID 25149)
-- Name: treinos treinos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treinos
    ADD CONSTRAINT treinos_pkey PRIMARY KEY (id_treino);


--
-- TOC entry 4895 (class 2606 OID 25113)
-- Name: matriculas matriculas_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id_aluno);


--
-- TOC entry 4896 (class 2606 OID 25118)
-- Name: matriculas matriculas_plano_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculas
    ADD CONSTRAINT matriculas_plano_id_fkey FOREIGN KEY (plano_id) REFERENCES public.planos(id_plano);


--
-- TOC entry 4897 (class 2606 OID 25134)
-- Name: pagamentos pagamentos_matricula_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pagamentos
    ADD CONSTRAINT pagamentos_matricula_id_fkey FOREIGN KEY (matricula_id) REFERENCES public.matriculas(id_matricula);


--
-- TOC entry 4898 (class 2606 OID 25150)
-- Name: treinos treinos_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treinos
    ADD CONSTRAINT treinos_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(id_aluno);


-- Completed on 2026-05-28 14:15:12

--
-- PostgreSQL database dump complete
--

\unrestrict DhS5zw1xEaGHorFaXIupdinsrKjmRO2LhgrIrpOURsiMPVj1sPlWbYnAG5oJa1c

