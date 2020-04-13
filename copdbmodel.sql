--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 12.0

-- Started on 2020-03-13 20:34:18

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
-- TOC entry 3565 (class 1262 OID 16384)
-- Name: monica_wt2019; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE monica_copdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE monica_copdb OWNER TO postgres;

\connect monica_copdb

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
-- TOC entry 3453 (class 0 OID 16386)
-- Dependencies: 197
-- Data for Name: FFFriends; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica."FFFriends" ("Friend1", "Friend2") FROM stdin;
\.


--
-- TOC entry 3454 (class 0 OID 16389)
-- Dependencies: 198
-- Data for Name: FriendfinderReg; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica."FriendfinderReg" ("ID", "NickName") FROM stdin;
\.


--
-- TOC entry 3455 (class 0 OID 16392)
-- Dependencies: 199
-- Data for Name: action; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.action (actionid, title, description, actortype, actiontype, actiontime, reportid, personid, status, metadata) FROM stdin;
\.


--
-- TOC entry 3458 (class 0 OID 16402)
-- Dependencies: 202
-- Data for Name: admin_layer; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.admin_layer (layerid, name) FROM stdin;
\.


--
-- TOC entry 3459 (class 0 OID 16405)
-- Dependencies: 203
-- Data for Name: admin_layer_dets; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.admin_layer_dets (layerdetid, layerid, thingids, obspropertyids) FROM stdin;
\.


--
-- TOC entry 3464 (class 0 OID 16419)
-- Dependencies: 208
-- Data for Name: admin_menu; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.admin_menu (menuid, const, name) FROM stdin;
\.


--
-- TOC entry 3467 (class 0 OID 16426)
-- Dependencies: 211
-- Data for Name: admin_menu_roles; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.admin_menu_roles (menuid, roleid, hasaccess) FROM stdin;
\.


--
-- TOC entry 3468 (class 0 OID 16429)
-- Dependencies: 212
-- Data for Name: datastream; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.datastream (datastreamid, thingid, sensorid, observedpropertyid, name, description, unitofmeasurement) FROM stdin;
\.


--
-- TOC entry 3471 (class 0 OID 16439)
-- Dependencies: 215
-- Data for Name: event; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.event (eventid, name, description, fromdate, todate, lat, lon, zoom) FROM stdin;
1	MONICA Sound	Example	2019-07-06 09:00:00	2019-07-08 00:00:00	45.7969909999999985	4.95668000000000042	10
\.


--
-- TOC entry 3474 (class 0 OID 16449)
-- Dependencies: 218
-- Data for Name: event_locations; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.event_locations (eventid, locationid) FROM stdin;
\.


--
-- TOC entry 3475 (class 0 OID 16452)
-- Dependencies: 219
-- Data for Name: event_organizations; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.event_organizations (eventid, organizationid) FROM stdin;
\.


--
-- TOC entry 3477 (class 0 OID 16457)
-- Dependencies: 221
-- Data for Name: event_services_properties; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.event_services_properties (eventservicepropertyid, eventserviceid, propertytypeid, metadata) FROM stdin;
\.


--
-- TOC entry 3480 (class 0 OID 16467)
-- Dependencies: 224
-- Data for Name: facility; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.facility (facilityid, name, facilitytype) FROM stdin;
\.


--
-- TOC entry 3482 (class 0 OID 16475)
-- Dependencies: 226
-- Data for Name: feature_of_interest; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.feature_of_interest (featureofinterestid, name, description) FROM stdin;
\.


--
-- TOC entry 3485 (class 0 OID 16485)
-- Dependencies: 229
-- Data for Name: incident; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.incident (incidentid, description, type, "position", prio, status, probability, interventionplan, incidenttime, "WearablePhysicalId", "PhoneNumber", "AdditionalMedia", "AdditionalMediaTYpe", "Area") FROM stdin;
\.


--
-- TOC entry 3487 (class 0 OID 16498)
-- Dependencies: 231
-- Data for Name: intervention_actions; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.intervention_actions (interventionactionid, interventionplanid, name, priority) FROM stdin;
\.


--
-- TOC entry 3489 (class 0 OID 16503)
-- Dependencies: 233
-- Data for Name: intervention_plan; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.intervention_plan (interventionplanid, interventiontype, name) FROM stdin;
\.


--
-- TOC entry 3491 (class 0 OID 16508)
-- Dependencies: 235
-- Data for Name: latest_observation; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.latest_observation (thingid, datastreamid, phenomentime, observationresult, type, personid, locationid) FROM stdin;
\.


--
-- TOC entry 3492 (class 0 OID 16515)
-- Dependencies: 236
-- Data for Name: location; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.location (locationid, locationtypeid, name, description, parentid, boundingpolygon, metadata, locationtemplateid, capacity) FROM stdin;
\.


--
-- TOC entry 3495 (class 0 OID 16525)
-- Dependencies: 239
-- Data for Name: location_restrictions; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.location_restrictions (locationrestrictionid, locationid, restrictionid) FROM stdin;
\.


--
-- TOC entry 3497 (class 0 OID 16530)
-- Dependencies: 241
-- Data for Name: location_services; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.location_services (locationid, serviceid) FROM stdin;
\.


--
-- TOC entry 3498 (class 0 OID 16533)
-- Dependencies: 242
-- Data for Name: location_templates; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.location_templates (locationtemplateid, name, templateimage, public_access) FROM stdin;
1	Toilets	\N	t
2	Handicapp Toilet	\N	t
3	Stage	\N	t
4	Entrance	\N	t
5	Command Center	\N	f
6	Emergency Exit	\N	t
7	First Aid Point	\N	t
8	Beer Stand	\N	t
9	Cocktail Stand	\N	t
11	Event Area	\N	t
50	Ride	\N	t
65	Fast Food	\N	t
81	Attraction	\N	t
135	EventMapPoly	\N	f
155	EventMapCircle	\N	f
116	ATM	\N	f
182	EventMapLine	\N	f
23	Restaurant	\N	f
10	Zone	\N	f
36	Quiet Zone	\N	f
98	Shop	\N	f
\.


--
-- TOC entry 3501 (class 0 OID 16544)
-- Dependencies: 245
-- Data for Name: location_things; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.location_things (locationid, thingid, timepoint) FROM stdin;
\.


--
-- TOC entry 3502 (class 0 OID 16547)
-- Dependencies: 246
-- Data for Name: observation; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.observation (observationid, datastreamid, phenomenontime, observationresult, resulttime, featureofinterestid) FROM stdin;
\.


--
-- TOC entry 3505 (class 0 OID 16557)
-- Dependencies: 249
-- Data for Name: observed_property; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.observed_property (observedpropertyid, name, description, metadata) FROM stdin;
\.


--
-- TOC entry 3508 (class 0 OID 16567)
-- Dependencies: 252
-- Data for Name: organization; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.organization (organizationid, name) FROM stdin;
1	Not used 
\.


--
-- TOC entry 3511 (class 0 OID 16574)
-- Dependencies: 255
-- Data for Name: person; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.person (personid, fullname, email, gender, isactive, phone, organizationid) FROM stdin;
94	MONICA Admin	none@none.com	1	t	Hmm	1
\.


--
-- TOC entry 3514 (class 0 OID 16581)
-- Dependencies: 258
-- Data for Name: person_roles; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.person_roles (personid, roleid) FROM stdin;
\.


--
-- TOC entry 3515 (class 0 OID 16584)
-- Dependencies: 259
-- Data for Name: person_things; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.person_things (personid, thingid, timepoint) FROM stdin;
\.


--
-- TOC entry 3516 (class 0 OID 16587)
-- Dependencies: 260
-- Data for Name: pro_acoustic_feedback; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.pro_acoustic_feedback (id, pro_acoustic_feedback_type, phoneid, lat, lon, report_type, textmessage) FROM stdin;
18	8	B37E4A3F-CB8F-4C2B-95AD-F77D556644EC	55.6741583068442267	12.5689094793168525	8	High interference between south and west stages
19	7	6B2D8F02-7482-4A81-9ADE-EEBA3C9B6FFB	55.674126536057706	12.5688015869248755	9	Background noise coming from truck 
20	7	6B2D8F02-7482-4A81-9ADE-EEBA3C9B6FFB	55.6734521158092903	12.566260917255816	9	Truck 
21	10	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	7	
22	5	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	5	
23	4	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	5	
24	10	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	8	
25	11	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	7	
26	13	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	10	
27	12	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	8	
28	13	CEA1AF15-512E-467B-ACB7-48FB779C789B	45.7977009471932419	4.95345331728919636	9	
\.


--
-- TOC entry 3518 (class 0 OID 16595)
-- Dependencies: 262
-- Data for Name: pro_acoustic_feedback_types; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.pro_acoustic_feedback_types (id, name, description) FROM stdin;
4	Too loud sound level	Value low=0, high=10
5	Too quiet sound level	Value low=0, high=10
6	Non homogeneous sound field	Non homogeneous = 0, homogeneous = 10
7	Background noise	Any kind of noise internering with the venue. No noise = 0, lot of noise = 10
8	Interference with other stages	Multi-stages like in Nuit sonores or in KFF where the Burn stageâs sound engineer could hear the sound coming from the Dora or Jagger stage.\n\nNo interference = 0, High interference = 10
9	Reverberation or echo affecting sound quality 	Low = 0, High = 10
10	Spectrum balance bass	Too little bass = 0, Too much bass = 10\n\n
11	Spectrum balance frequency	Too low frequency = 0, too high frequency = 10
12	seb 	
13	beer	
\.


--
-- TOC entry 3520 (class 0 OID 16603)
-- Dependencies: 264
-- Data for Name: public_feedback; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.public_feedback (phoneid, feedback_type, feedback_value) FROM stdin;
\.


--
-- TOC entry 3521 (class 0 OID 16609)
-- Dependencies: 265
-- Data for Name: report; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.report (reportid, eventid, reporttype, reporttime, description, status, thingid, evidence, "From", "To", allowmultiuserhandle, priority, reportcode) FROM stdin;
\.


--
-- TOC entry 3524 (class 0 OID 16619)
-- Dependencies: 268
-- Data for Name: restriction; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.restriction (restrictionid, name, typeid, metadata) FROM stdin;
\.


--
-- TOC entry 3527 (class 0 OID 16629)
-- Dependencies: 271
-- Data for Name: role; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.role (roleid, const, description) FROM stdin;
5	MONICA	MONICA Person
6	Mascot	Furry animal
4	Guard	Event guard
3	Crew	Event staff
2	Police	POLICE
1	Paramedic	Paramedical staff
21	publicorderofficer	POO
13	Fireman	Fire brigade
46	Security	security
56	Staff	Event staff
\.


--
-- TOC entry 3530 (class 0 OID 16636)
-- Dependencies: 274
-- Data for Name: sensor; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.sensor (sensorid, templateid, name, description, metadata, status) FROM stdin;
\.


--
-- TOC entry 3533 (class 0 OID 16646)
-- Dependencies: 277
-- Data for Name: sensor_templates; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.sensor_templates (sensortemplateid, sensortype, name, templateschema) FROM stdin;
\.


--
-- TOC entry 3536 (class 0 OID 16656)
-- Dependencies: 280
-- Data for Name: service_properties; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.service_properties (servicepropertyid, serviceid, propertytypeid, metadata) FROM stdin;
\.


--
-- TOC entry 3539 (class 0 OID 16666)
-- Dependencies: 283
-- Data for Name: service_repository; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.service_repository (serviceid, name, description, enabled) FROM stdin;
\.


--
-- TOC entry 3542 (class 0 OID 16676)
-- Dependencies: 286
-- Data for Name: thing; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing (thingid, templateid, templatevalues, thingtype, name, description, status, lat, lon, ogcid) FROM stdin;
\.


--
-- TOC entry 3543 (class 0 OID 16682)
-- Dependencies: 287
-- Data for Name: thing_connections; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing_connections (thingconid, thingid, refthingid) FROM stdin;
\.


--
-- TOC entry 3546 (class 0 OID 16689)
-- Dependencies: 290
-- Data for Name: thing_restrictions; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing_restrictions (thingrestrictionid, thingid, restrictionid) FROM stdin;
\.


--
-- TOC entry 3549 (class 0 OID 16696)
-- Dependencies: 293
-- Data for Name: thing_services; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing_services (thingserviceid, thingid, serviceid) FROM stdin;
\.


--
-- TOC entry 3552 (class 0 OID 16703)
-- Dependencies: 296
-- Data for Name: thing_templates; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing_templates (thingtemplateid, name, templateschema) FROM stdin;
1	wearables UWB	
2	Soundmeter	\N
3	Environmental	\N
4	Temperature	\N
5	Windspeed	\N
6	Humidity	\N
7	Solar Irradiation	\N
8	Wearable Smartphone	\N
9	Camera	\N
10	Aggregate	\N
21	SoundHeatmap	\N
33	PeopleHeatmap	\N
46	incidentreporter	\N
60	button_press	\N
75	SoundmeterAggregate	\N
\.


--
-- TOC entry 3557 (class 0 OID 16717)
-- Dependencies: 301
-- Data for Name: thing_to_phoneid; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.thing_to_phoneid (thingid, phoneid, phone_number) FROM stdin;
\.


--
-- TOC entry 3558 (class 0 OID 16720)
-- Dependencies: 302
-- Data for Name: user_auth; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.user_auth (userid, username, userpassword) FROM stdin;
94	admin@monica-cop.com	admin
\.


--
-- TOC entry 3559 (class 0 OID 16723)
-- Dependencies: 303
-- Data for Name: user_authtoken; Type: TABLE DATA; Schema: monica; Owner: postgres
--

COPY monica.user_authtoken (userid, authtoken, dateissued) FROM stdin;
\.


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 200
-- Name: action_actionid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.action_actionid_seq', 1, false);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 201
-- Name: action_actionid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.action_actionid_seq1', 1, false);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 204
-- Name: admin_layer_dets_layerdetid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_layer_dets_layerdetid_seq', 1, false);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 205
-- Name: admin_layer_dets_layerdetid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_layer_dets_layerdetid_seq1', 1, false);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 206
-- Name: admin_layer_layerid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_layer_layerid_seq', 1, false);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 207
-- Name: admin_layer_layerid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_layer_layerid_seq1', 1, false);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 209
-- Name: admin_menu_menuid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_menu_menuid_seq', 1, false);


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 210
-- Name: admin_menu_menuid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.admin_menu_menuid_seq1', 1, false);


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 213
-- Name: datastream_datastreamid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.datastream_datastreamid_seq', 1, false);


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 214
-- Name: datastream_datastreamid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.datastream_datastreamid_seq1', 1, false);


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 216
-- Name: event_eventid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.event_eventid_seq', 1, false);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 217
-- Name: event_eventid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.event_eventid_seq1', 5, true);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 220
-- Name: event_services_eventserviceid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.event_services_eventserviceid_seq', 1, false);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 222
-- Name: event_services_properties_eventservicepropertyid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.event_services_properties_eventservicepropertyid_seq', 1, false);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 223
-- Name: event_services_properties_eventservicepropertyid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.event_services_properties_eventservicepropertyid_seq1', 1, false);


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 225
-- Name: facility_facilityid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.facility_facilityid_seq', 1, false);


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 227
-- Name: feature_of_interest_featureofinterestid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.feature_of_interest_featureofinterestid_seq', 1, false);


--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 228
-- Name: feature_of_interest_featureofinterestid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.feature_of_interest_featureofinterestid_seq1', 1, false);


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 230
-- Name: incident_incidentid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.incident_incidentid_seq', 3790, true);


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 232
-- Name: intervention_actions_interventionactionid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.intervention_actions_interventionactionid_seq', 1, false);


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 234
-- Name: intervention_plan_interventionplanid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.intervention_plan_interventionplanid_seq', 1, false);


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 237
-- Name: location_locationid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.location_locationid_seq', 1, false);


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 238
-- Name: location_locationid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.location_locationid_seq1', 1732, true);


--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 240
-- Name: location_restrictions_locationrestrictionid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.location_restrictions_locationrestrictionid_seq', 1, false);


--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 243
-- Name: location_templates_locationtemplateid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.location_templates_locationtemplateid_seq', 1, false);


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 244
-- Name: location_templates_locationtemplateid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.location_templates_locationtemplateid_seq1', 214, true);


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 247
-- Name: observation_observationid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.observation_observationid_seq', 1, false);


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 248
-- Name: observation_observationid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.observation_observationid_seq1', 1, false);


--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 250
-- Name: observed_property_observedpropertyid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.observed_property_observedpropertyid_seq', 1, false);


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 251
-- Name: observed_property_observedpropertyid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.observed_property_observedpropertyid_seq1', 1, false);


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 253
-- Name: organization_organizationid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.organization_organizationid_seq', 1, false);


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 254
-- Name: organization_organizationid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.organization_organizationid_seq1', 2, true);


--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 256
-- Name: person_personid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.person_personid_seq', 1, false);


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 257
-- Name: person_personid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.person_personid_seq1', 125, true);


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 261
-- Name: pro_acoustic_feedback_id_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.pro_acoustic_feedback_id_seq', 53, true);


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 263
-- Name: pro_acoustic_feedback_types_id_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.pro_acoustic_feedback_types_id_seq', 44, true);


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 266
-- Name: report_reportid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.report_reportid_seq', 1, false);


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 267
-- Name: report_reportid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.report_reportid_seq1', 1, false);


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 269
-- Name: restriction_restrictionid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.restriction_restrictionid_seq', 1, false);


--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 270
-- Name: restriction_restrictionid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.restriction_restrictionid_seq1', 1, false);


--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 272
-- Name: role_roleid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.role_roleid_seq', 1, false);


--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 273
-- Name: role_roleid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.role_roleid_seq1', 78, true);


--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 275
-- Name: sensor_sensorid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.sensor_sensorid_seq', 1, false);


--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 276
-- Name: sensor_sensorid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.sensor_sensorid_seq1', 1, false);


--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 278
-- Name: sensor_templates_sensortemplateid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.sensor_templates_sensortemplateid_seq', 1, false);


--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 279
-- Name: sensor_templates_sensortemplateid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.sensor_templates_sensortemplateid_seq1', 1, false);


--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 281
-- Name: service_properties_servicepropertyid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.service_properties_servicepropertyid_seq', 1, false);


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 282
-- Name: service_properties_servicepropertyid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.service_properties_servicepropertyid_seq1', 1, false);


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 284
-- Name: service_repository_serviceid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.service_repository_serviceid_seq', 1, false);


--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 285
-- Name: service_repository_serviceid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.service_repository_serviceid_seq1', 1, false);


--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 288
-- Name: thing_connections_thingconid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_connections_thingconid_seq', 1, false);


--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 289
-- Name: thing_connections_thingconid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_connections_thingconid_seq1', 1, false);


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 291
-- Name: thing_restrictions_thingrestrictionid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_restrictions_thingrestrictionid_seq', 1, false);


--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 292
-- Name: thing_restrictions_thingrestrictionid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_restrictions_thingrestrictionid_seq1', 1, false);


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 294
-- Name: thing_services_thingserviceid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_services_thingserviceid_seq', 1, false);


--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 295
-- Name: thing_services_thingserviceid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_services_thingserviceid_seq1', 1, false);


--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 297
-- Name: thing_templates_thingtemplateid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_templates_thingtemplateid_seq', 1, false);


--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 298
-- Name: thing_templates_thingtemplateid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_templates_thingtemplateid_seq1', 107, true);


--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 299
-- Name: thing_thingid_seq; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_thingid_seq', 1, false);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 300
-- Name: thing_thingid_seq1; Type: SEQUENCE SET; Schema: monica; Owner: postgres
--

SELECT pg_catalog.setval('monica.thing_thingid_seq1', 707, true);


-- Completed on 2020-03-13 20:34:19

--
-- PostgreSQL database dump complete
--

