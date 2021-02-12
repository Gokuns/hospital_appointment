INSERT INTO HOSPITAL(NAME) VALUES('Acıbadem Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Medicine Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Batıbahat Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Amerikan Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Kanuni Sultan Süleyman Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Medipol Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Şişli Etfal Haastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Paşabahçe Devlet Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Mehmet Akif Ersoy Hastanesi');
INSERT INTO HOSPITAL(NAME) VALUES('Çam Sakura Şehir Hastanesi');


INSERT INTO UNIT(NAME) VALUES('Dahiliye');
INSERT INTO UNIT(NAME) VALUES('Optik');
INSERT INTO UNIT(NAME) VALUES('Ortopedi');
INSERT INTO UNIT(NAME) VALUES('Kardiyoloji');
INSERT INTO UNIT(NAME) VALUES('KBB');
INSERT INTO UNIT(NAME) VALUES('Radyoloji');
INSERT INTO UNIT(NAME) VALUES('Nöroloji');
INSERT INTO UNIT(NAME) VALUES('Enfeksiyon Hastalıkları');
INSERT INTO UNIT(NAME) VALUES('Fizik Tedavi');
INSERT INTO UNIT(NAME) VALUES('Dermatoloji');

INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9);
INSERT INTO HOSPITAL_UNITS (HOSPITAL_ID, UNIT_ID) VALUES (1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10);

INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Cleo Griffith',500955,2,10),('Minerva Mason',730067,9,9),('Karina Jacobson',919222,7,6),('Joshua Lowe',965278,3,7),('Bethany Atkins',100472,1,10),('Raphael Key',570708,7,5),('Charles Shields',636578,6,7),('Xyla Nolan',809298,6,7),('Autumn Wooten',639346,8,2),('Cade Cortez',259699,7,8);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Orlando Osborne',462570,2,9),('Germaine Fry',604666,9,7),('Scarlett Rollins',369662,1,9),('Imelda Donaldson',854525,3,1),('Nerea Chase',144561,5,4),('Howard Brennan',641069,10,2),('Cleo Hale',283810,6,4),('Nell Higgins',586765,3,1),('Jelani Conley',984918,9,8),('Reece Mcconnell',908231,2,2);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Shelly Jefferson',985141,9,8),('Jonah Peck',804200,8,8),('Fitzgerald Lee',950196,1,7),('Jacqueline Hudson',676839,4,4),('Inez Gross',597788,4,3),('Ivan Barrett',723550,6,5),('Lillian Potts',181530,4,10),('Buckminster Mccarty',270451,7,3),('Kylee Rice',375134,8,8),('Ali Hubbard',693334,3,9);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Illana Gamble',677569,5,8),('Rudyard Bowers',398860,6,10),('Cathleen Shaffer',584041,4,8),('Alana Anthony',269488,9,1),('Zachary Rodriquez',487815,8,3),('Geraldine Love',456932,9,6),('Reed Hubbard',783205,10,7),('Fulton Tyler',477949,2,5),('Benedict Simpson',687224,9,8),('Scarlet Beach',219172,9,10);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Emily Tanner',800053,1,9),('Ora Waller',647510,4,8),('Dane Owen',890488,4,7),('Gail Watson',588411,8,9),('Daria Keith',328140,7,6),('Stuart Cervantes',355186,7,10),('Leah Miller',930717,7,3),('Jelani Orr',628028,3,2),('Thor Mcbride',817927,2,8),('Zephr Robertson',822638,7,5);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('September Park',635838,2,2),('Faith Reed',550413,2,1),('Jocelyn Quinn',578836,2,10),('Hollee Shaw',460615,9,1),('Kyle Harvey',862164,6,4),('Dieter Harper',883814,7,7),('Alden Barry',549658,8,3),('Luke Hawkins',942689,10,1),('Blake Rivers',511344,9,7),('Gannon Rivera',456951,4,4);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Kimberly Patrick',599811,10,9),('Dana Moran',327275,2,8),('Fulton Strickland',743479,7,3),('Lane Moore',955753,9,6),('Ivor Kramer',266951,2,5),('Veronica Sosa',872065,5,5),('Sonia Doyle',487767,8,3),('Jana Rosa',312626,1,9),('Danielle Fulton',868722,3,5),('Damian King',559098,1,4);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Louis Matthews',332325,3,2),('Rebekah Bates',918256,6,4),('Jason Day',991669,1,2),('Carol Alvarado',981296,10,1),('Chaney Sampson',264812,7,10),('Hilary Tyson',493461,7,3),('Linus David',524710,1,4),('Keiko Mathis',959903,9,10),('Kirsten Kirkland',150904,5,4),('Herrod Barrett',574409,5,7);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Mary Garcia',332877,7,9),('Wanda Shepherd',587745,8,9),('Chiquita Crane',411682,10,8),('Raymond Sharpe',357148,4,7),('Sasha Whitaker',332883,1,4),('Brett Juarez',693926,8,5),('Scarlet Shields',475125,4,5),('Matthew David',290833,8,3),('Cedric Austin',635689,6,8),('Tana Levy',230879,6,7);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Madeson West',614173,6,4),('Larissa Woods',177410,2,6),('Steven Maddox',220098,7,4),('Ira Soto',596779,1,4),('Austin Rivera',468888,6,6),('Gary Blair',919940,7,5),('Venus Stokes',823902,10,9),('Clarke Witt',386259,3,3),('Joelle Finch',951140,10,2),('Yael Vega',964678,4,10);

INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Jescie Turner',121545,3,9),('Noelani Ferrell',241835,9,5),('Declan Burris',983895,3,10),('Ryder Frazier',306652,4,9),('Deanna Hood',785928,1,6),('Simon Combs',787114,1,2),('Doris Fernandez',971987,1,5),('Callum Lawrence',195041,1,9),('Tatum Schneider',919474,9,1),('Cleo Colon',513209,4,1);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Tanya Randolph',400300,2,4),('Melvin Gilliam',905526,5,6),('Wyatt Herrera',942665,4,7),('Quamar Watts',660890,2,3),('Zane Sims',764454,10,1),('Ralph Santiago',578222,9,9),('Asher White',194264,6,5),('Burke Faulkner',816534,3,9),('Mariko Carey',142846,1,7),('Fritz Romero',538000,10,2);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Cathleen Gallagher',588965,1,10),('Xyla Dickson',329105,4,5),('Shaine Mcbride',522847,2,10),('Kylee Harper',924763,6,9),('Wayne Tyler',583782,9,6),('Evangeline Nichols',244740,7,5),('Octavius Sargent',520125,9,10),('Hasad Hudson',738839,6,5),('Evelyn Rollins',814956,5,1),('Tasha Jensen',268643,1,4);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Phoebe Wright',405457,8,1),('Judah Molina',670962,8,10),('Nola Rasmussen',892246,10,9),('Kato Norris',120889,9,4),('Mariko Meyers',572816,7,9),('Quail Flowers',167708,1,1),('Abbot Pacheco',476814,6,4),('Hop Gibbs',190525,5,3),('Reed Hamilton',771016,1,3),('Lysandra Kramer',635510,5,3);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Dillon Moses',486751,1,4),('Bo Mcdonald',545586,1,7),('Hamish Reed',460945,9,2),('Sandra Pugh',664677,2,4),('Nicole Frederick',684783,6,6),('Robert Farmer',781884,9,1),('Emi Dorsey',120305,8,2),('Amaya Conway',920737,3,1),('Melinda Cameron',748279,1,5),('Felix Koch',666922,5,10);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Dominique Hyde',566448,7,7),('Tobias Dyer',764871,4,6),('Hayes Meyer',286164,7,5),('Micah Bailey',514245,1,9),('Kibo Velez',294292,5,8),('Helen Sanchez',710776,6,10),('Marcia Flores',805312,10,6),('Diana Burt',424297,6,4),('Nichole Chase',720789,8,5),('Dante Vasquez',131337,1,5);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Whitney Cooley',684584,5,4),('Charity Wilkinson',240779,9,2),('Mikayla Miller',200497,6,7),('Lani Wong',489211,9,2),('Bernard Marsh',955366,2,9),('Kay Price',193914,9,3),('Wyatt Pope',726979,5,3),('Ila Pitts',396352,9,3),('Autumn Patterson',507480,1,8),('Ayanna Jefferson',933810,1,10);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Nash Berger',268556,9,4),('Xander Henry',363610,7,3),('Mallory Williamson',243479,3,4),('Bruno Perkins',714564,9,5),('Susan White',993707,10,1),('Graiden Gates',235953,3,6),('Hadley Nieves',264608,9,2),('Colette Cummings',704316,1,8),('Burke Bentley',465890,5,9),('Lionel Wolfe',432353,5,1);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Blaine Cleveland',653728,3,9),('Miranda Workman',824781,6,2),('Lunea Rose',491751,8,9),('Rooney Small',557650,8,2),('Sade Sims',109713,8,9),('Risa Burt',591803,6,9),('Sigourney Bates',632905,1,7),('Jolene Parsons',818843,10,9),('Cailin Norris',762536,1,2),('Thor Ratliff',671143,6,2);
INSERT INTO DOCTOR (NAME,USER_ID,UNIT_ID,HOSPITAL_ID) VALUES ('Audra Talley',247408,8,2),('Lilah Ochoa',603495,3,9),('Gage Davidson',198544,5,5),('Madeson Johnston',151650,5,8),('Geraldine Garrett',408856,6,9),('Joshua Russo',416097,9,5),('Elmo Lee',165245,8,8),('Reese Bowen',768287,2,7),('Price Spencer',158031,10,6),('Felix Chaney',949676,3,10);

INSERT INTO USERS (NAME,USERNAME, PASSWORD, ENABLED) VALUES ('Gokalp Unsal', '123', '{noop}123', 1);

INSERT INTO AUTHORITIES(USERNAME, AUTHORITY) VALUES ('123', 'ROLE_PATIENT');