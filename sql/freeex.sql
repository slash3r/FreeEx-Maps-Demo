-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 04, 2012 at 08:43 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `freeex`
--

-- --------------------------------------------------------

--
-- Table structure for table `fe_alert`
--

CREATE TABLE IF NOT EXISTS `fe_alert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_id` int(11) NOT NULL,
  `title` varchar(500) CHARACTER SET utf32 NOT NULL,
  `content` text CHARACTER SET utf32 NOT NULL,
  `contact` text CHARACTER SET utf32,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loc_id` (`loc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fe_case`
--

CREATE TABLE IF NOT EXISTS `fe_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `loc_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(200) CHARACTER SET utf32 NOT NULL,
  `summary` varchar(1000) CHARACTER SET utf32 DEFAULT NULL,
  `content` text CHARACTER SET utf32 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loc_id` (`loc_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `fe_case`
--

INSERT INTO `fe_case` (`id`, `cat_id`, `loc_id`, `date`, `title`, `summary`, `content`) VALUES
(1, 1, 84, '2011-01-07', 'The chairman of the Cara&#537;-Severin County Council hit journalist Vali Popovici', '', '<p>Victim(s): Antena 1 reporter Vali Popovici</p>\r\n<p>Attacker(s): Ionesie Ghiorghioni, vice&#8208;president of the Cara&#537;&#8208;Severin County Council</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In January, Antena 1 reporter Vali Popovici fainted and was taken to the hospital, after&nbsp;being assaulted by Ionesie Ghiorghioni, vice-president of the Cara&#537;-Severin County Council,&nbsp;at the General Meeting held at the Bucova "Joint Properties''Administration". Bothered by&nbsp;the journalists'' presence at the event, Ghiorghioni lunged at them, to kick them out of the&nbsp;premises. "I think he was foaming at the mouth, he was transfigured, his face was deformed by&nbsp;an inexplicable hatred, his eyes were bulging, his face was red and he was trying to kick us out.&nbsp;He was hitting me, shoving me in my left shoulder. I was kicked in the ribs, in my abdomen and&nbsp;pushed by him like you would be hitting something that is stuck in a door. I felt a very strong&nbsp;pain in the right shoulder, there was some decoration on the wall that jabbed into my shoulder.&nbsp;Following Mr. Ghiorghioni''s advice, other youngsters, whom I had seen earlier at the door of&nbsp;the pub across the road, junged at us, at the camera operator and at myself, shouted abuse at&nbsp;me, pushed me around. I was assaulted both physically and verbally&rdquo;<sup>1</sup>, stated journalist Vali&nbsp;Popovici. Initially, the aggressor denied the events: &bdquo;I never assaulted anyone in my life. If he''s&nbsp;got the guts to say that I did, I''ll bring a hundred people who were in the room, as witnesses. If&nbsp;he wants war, I''ll give him war. I politely invited him to lease the room. When the bustle at the&nbsp;door occurred, I went there too, but to protect him, not to hit him&rdquo;<sup>2</sup>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;Contacted by FreeEx, journalist Vali Popovici recounted that, shortly afterwards, Ionesie&nbsp;Ghorghioni publicly apologized, for which reason the journalist refrained from pressing charges&nbsp;at the Police. &bdquo;He has been much more cooperative since the incident. It was a conjuncture, a&nbsp;tense situation&rdquo;, the journalist declared for FreeEx.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup>The&nbsp;Vice&#8208;president of the County Council to the journalist he assaulted: &lt;&lt;If you want war, I''ll give you war&gt;&gt;", Daniel Stanciu,&nbsp;Adev&#259;rul.ro, January 15, 2011.</p>\r\n<p><sup>2</sup>Ibidem.</p>'),
(2, 1, 1, '2011-02-17', 'The contempt of Euro-parliamentarians Vadim Tudor and George Becali for journalists', '', '<p>Attacker(s): Corneliu Vadim Tudor, George Becali</p>\r\n<p>Victim(s): journalist Lauren&#539;iu Mihu, from Rom&acirc;nia Liber&#259; Newspaper</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;Contacted by journalist Lauren&#539;iu Mihu, of Rom&acirc;nia Liber&#259;, in order to state their&nbsp;opinions with respect to a legislative initiative that proposed the implementing of psychologic&nbsp;and psychiatric control for all candidates to public positions, Euro-parliamentarians Corneliu&nbsp;Vadim Tudor and George Becali shouted abuse at the journalist, in February.</p>\r\n<p>&nbsp;&nbsp;&nbsp;Euro-parliamentarian Vadim Tudor flared up immediately after journalist Lauren&#539;iu&nbsp;Mihu''s introduction, by invoking a critical article about himself, published by Rom&acirc;nia&nbsp;Liber&#259;: &bdquo;Mr. Mihu, how dare you call me after insulting me like that? [...] After calling your&nbsp;article &lt;&lt;Who is this Vadim Tudor?&gt;&gt;, you motherfucking punk!&rdquo;<sup>1</sup>.</p>\r\n<p>&nbsp;&nbsp;&nbsp;With a more "patient" approach, Euro-parliamentarian George Becali started by asking the&nbsp;journalist to never contact him again. "Don''t you ever call me again, this is my point of view! (...)&nbsp;If you are crazy, you have no idea, I have been saying for two years and I have been organizing&nbsp;press conferences, I do not talk to journalists. I only talk live, on television. Don''t you know&nbsp;that?"<sup>2</sup>&nbsp;&ndash; Becali told the Rom&acirc;nia Liber&#259; journalist. Irritated that Lauren&#539;iu Mihu insisted on&nbsp;obtaining a point of view, Becali continued by insulting him: &bdquo;You''re a retard! That''s what you&nbsp;are! You don''t understand this, you don''t want to understand! [&hellip;] If you''re an idiot and you&nbsp;don''t understand that I don''t talk to any journalist... [&hellip;] You are all a bunch of gits! Whatever&nbsp;a man might answer, you add your own words to it! [&hellip;]&rdquo;. Asked by the journalist whether he&nbsp;talks the same way to foreign journalists, Becali added more insults: &bdquo;Exactly the same, because</p>\r\n<p>&nbsp;</p>\r\n<p>I don''t give a shit talking to them! Do you realize that? I don''t give a shit how I talk to them. I&nbsp;don''t pay any attention to them! [&hellip;] I don''t pay any attention to them! (...) If you''re an ass, keep&nbsp;on calling, if you''re human, you won''t be calling again, you hear me? In your stupid mind, you&nbsp;thought I have to answer to you, you thought you had to have my telephone number, huh? [&hellip;]&nbsp;Because it''s interesting, you can suck my dick! (...) Fuck off! [&hellip;] Yes, blow me! Goodbye!&rdquo;<sup>3</sup>.</p>\r\n<p>&nbsp;</p>\r\n<p>Attacker(s): Corneliu Vadim Tudor, George Becali</p>\r\n<p>&nbsp;</p>\r\n<p>Victim(s): Ioan M. Ioni&#539;&#259;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In September 2011, George Becali shouted abuse at another journalist, by telephone, live&nbsp;on the "The last hour": show of Realitatea TV: "You know what I propose? You''re too stupid to&nbsp;be on TV. You fool, you jackass, you idiot... Don''t you ever appear on TV, you''re too stupid to&nbsp;do that. Never invite that jackass again. Stop inviting all the fools", Becali told journalist Ioan M.&nbsp;Ioni&#355;&#259; in response to an irony that the latter directed at him. A few days later, Becali relapsed and&nbsp;he shouted abuse at a female journalist who called to obtain a statement regarding the lawsuit&nbsp;in which Becali was accused of unlawful deprivation of freedom of the people who had stolen&nbsp;his car. "Are you crazy? Have I deprived anybody of freedom? [...] Get out of here. There is no&nbsp;accusation against me. This is a lie, it''s bullshit. My car was stolen and I went to get my car and&nbsp;they arrested me. These are lies, I don''t pay any attention to them [...] Well, then you suck my&nbsp;dick, ok?&rdquo;<sup>4</sup>, said the Euro-parliamentarian.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;<strong>Public reaction(s):</strong> In October 2011, starting from the repeated attacks directed by</p>\r\n<p>Corneliu Vadim Tudor and George Becali at the press, author Br&acirc;ndu&#537;a Armanca wrote an&nbsp;article in which she criticized both their behavior and the journalists'' passivity with respect to&nbsp;the assaults. &bdquo;I don''t understand how the Romanian journalists put up with the most unpalatable&nbsp;vulgarities with a smile on their faces and how they cannot live without the presence of the&nbsp;biggest roughnecks who, right now, are Gigi Becali and Vadim Tudor, the latter one being&nbsp;assiduously "repaired" by some channels. The excuse that he increases ratings does not stand, as&nbsp;the audience comparisons are rather unfavorable for them. But even if they do bring an audience,&nbsp;it still isn''t acceptable that the trade should fall down, humiliated by the insults of the two. The&nbsp;appeal &lt;&lt;stop inviting them on the show!&gt;&gt; should be urgently applied both to Becali, and to&nbsp;Vadim, for a draining of the media space, as well as for the recovery of a minimum of dignity. It&nbsp;should be mandatory to summon them to court&rdquo;<sup>5</sup>, Br&acirc;ndu&#537;a Armanca wrote.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.romanialibera.ro/actualitate/politica/audio-cum-injura-presa-doi-parlamentari-europeni-vadim-si-becali-english-version-216298.html">&bdquo;Audio: How two Euro&#8208;parliamentarians, Vadim and Becali, shout abuse at the press (English version)&rdquo;</a>, Lauren&#539;iu Mihu,&nbsp;Andreea Pocotil&#259;, Cristian C&acirc;mpeanu, Rom&acirc;niaLiber&#259;.ro, February 10, 2011.</p>\r\n<p><sup>2</sup><a href="http://www.realitatea.net/presa-injurata-ca-la-usa-cortului-de-doi-europarlamentari-becali-si-vadim_801940.html">&bdquo;Becali and Vadim shout profanities at the press. Listen to the recording&rdquo;</a>, Realitatea TV, Realitatea.net, February 10, 2011.</p>\r\n<p><sup>3</sup>Ibidem.</p>\r\n<p><sup>4</sup><a href="http://www.e-politic.ro/Eveniment/Gigi-Becali-injura-cand-e-intrebat-despre-posibila-condamnare-Asculta-reactia-europarlamentarului_123045_12.html">&bdquo;Gigi&nbsp;Becali shouts abuse when asked about his possible sentencing. Listen to the Euro&#8208;parliamentarian''s reaction&rdquo;</a>, Elena&nbsp;Dumitrache, E&#8208;Politic.ro, September 30, 2011.</p>\r\n<p><sup>5</sup><a href="http://www.revista22.ro/articol.php?id=11736">&bdquo;Stop inviting all the fools on television&rdquo;</a>, Br&acirc;ndu&#537;a Armanca, Revista22.ro, October 25, 2011.</p>'),
(3, 1, 320, '2011-05-01', 'Journalists attacked in Vama Veche', '', '<p>Victim(s): Pro TV Constan&#539;a correspondent Ilknur Pintilie, operator</p>\r\n<p>Attacker: Unknown</p>\r\n<p>&nbsp;</p>\r\n<p>On May the 1st, journalist Ilknur Pintilie, 4 months pregnant, was doing a live&nbsp;transmission from Vama Veche, when she was knocked to the ground by a young man. The&nbsp;ProTv Constan&#539;a correspondent was forced to end the transmission for an emergency medical&nbsp;examination<sup>1</sup>. The operator who was with her tried to catch the attacker, but he was assaulted&nbsp;himself.</p>\r\n<p>&nbsp;</p>\r\n<p>Victim(s): Adrian Olariu, Ionu&#355; Samoil&#259;, from Realitatea TV</p>\r\n<p>Attacker(s): Unknown attacker</p>\r\n<p>&nbsp;</p>\r\n<p>Adrian Olariu and Ionu&#355; Samoil&#259;, from Realitatea TV, were assaulted shortly before&nbsp;going on the air. "We were getting ready to go live, we only had 30 more seconds to go. A guy&nbsp;came to us and we could see that he wasn''t drunk, but he was on drugs, because his eyes were&nbsp;blurry. He started shouting, cursing and asking for money. He was telling us he wanted 1 Leu,&nbsp;that that was all he wanted. He grabbed the camera operator by the throat, he threatened him and&nbsp;then ne came to me and head-butted me&rdquo;<sup>2</sup>, journalist Adrian Olariu recounted.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.realitatea.net/incredibil-corespondenta-protv-ilknur-pintilie-atacata-in-direct-la-vama-veche_830269.html">&bdquo;Incredible!&nbsp;ProTv correspondent Ilknur Pintilie, attacked during live transmission in Vama Veche VIDEO&rdquo;</a>, Realitatea.net, May&nbsp;1, 2011.</p>\r\n<p><sup>2</sup><a href="http://www.uups.ro/49261/video-jurnalisti-agresati-in-vama-veche.html">&bdquo;VIDEO/ Journalists assaulted in Vama Veche&rdquo;</a>, Valentin Ispas, Uups.ro, May 3, 2011.</p>'),
(4, 1, 17, '2011-05-13', 'The presence of the camera, a sign of megalomania, violently sanctioned', '', '<p>Victim(s): editor-in-chief of the publication ZiarMM.ro, Ciprian Drago&#537;</p>\r\n<p>Attacker(s): Maria Breban, the sister in law of Mircea Dolha, candidate for the Baia Mare&nbsp;mayor''s office</p>\r\n<p>&nbsp;</p>\r\n<p>In May 2011, the editor-in-chief of the publication ZiarMM.ro, Ciprian Drago&#537;, filed a&nbsp;criminal complaint for assault against Maria Breban, the sister in law of Mircea Dolha, candidate&nbsp;for the Baia Mare mayor''s office<sup>1</sup>. Journalist Ciprian Drago&#537; was filming, from the public space,&nbsp;an event that raised suspicions of election bribery: several persons allegedly received, for free,&nbsp;products from the store managed by the family of Maria Breban, one nigt before the elections&nbsp;in which her brother in law ran for office<sup>2</sup>. Maria Breban asked the journalist to stop filming&nbsp;her and hit his camera and his hands. &bdquo;I''m not giving you any interview, please, because there''s&nbsp;nothing you can [do &ndash; editor''s note]. Come when it''s over and I''ll tell you absolutely anything&nbsp;you want, ok? Don''t be like that... Let me tell you something: you aren''t allowed to film. This is&nbsp;my store, I pay here on the sidewalk. Is it normal for you to film me? Please, go away! What''s&nbsp;your problem? Stop it! Stop the camera. Then I will do exactly as I please, if you come here all&nbsp;callous, I will respond in a callous manner, as you wish. If you come nicely and talk to me, I''ll&nbsp;answer all your questions. If you come here to film, to act all megalomaniacal, I can''t answer&nbsp;you. I''ll act megalomaniacal too and we''re even&rdquo;, Maria Breban told journalist Ciprian Drago&#537;.</p>\r\n<p>&nbsp;&nbsp;&nbsp;Contacted by FreeEx, journalist Ciprian Drago&#537; stated that the Public Prosecutor''s Office&nbsp;decided not to commence the criminal prosecution of aggressor Maria Breban. &bdquo;The gentlemen&nbsp;at the Public Prosecutor''s Office said that it is not subject to criminal prosecution, even though&nbsp;my right to do my job was limited and I was offended, which could also be seen in my recording.&nbsp;Even though there was no material prejudice and my head wasn''t cracked, that doesn''t mean that&nbsp;what happened was all right&rdquo;, the journalist declared.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.ziarmm.ro/redactorul-sef-al-ziarmm-ro-agresat-de-cumnata-candidatului-mircea-dolha-fapta-a-fost-sesizata-politiei-baia-mare-video/">&bdquo;Remember:&nbsp;The editor&#8208;in&#8208;chief of ZiarMM.ro, assaulted by the sister in law of candidate Mircea Dolha &ndash; The event was&nbsp;notified to the Baia Mare Police (VIDEO)&rdquo;</a>, Ciprian Drago&#537;, ZiarMM.ro, August 19, 2011.</p>\r\n<p><sup>2</sup><a href="http://www.realitatea.net/un-jurnalist-agresat-de-cumnata-unui-candidat-la-primaria-baia-mare-video_832976.html">&bdquo;Journalist, assaulted by the sister in law of a candidate at the Baia Mare mayor''s office VIDEO&rdquo;</a>, Realitatea.net, May 9, 2011.</p>'),
(5, 1, 11, '2011-05-18', 'The president of the Br&#259;ila County Council talked to the journalists in a suburban  manner', '', '<p>Victim(s): journalist Aura Costea</p>\r\n<p>Attacker(s): Gheorghe Bunea Stancu, the president of the Br&#259;ila County Council</p>\r\n<p>&nbsp;</p>\r\n<p>On May 31, Gheorghe Bunea Stancu, the president of the Br&#259;ila County Council,&nbsp;committed a series of abuses with respect to the press, using an offensive language&nbsp;with several journalists present at a press conference<sup>1</sup>. The dignitary used words such&nbsp;as &bdquo;slut&rdquo;, &bdquo;imbecile&rdquo;, &bdquo;impertinent&rdquo; with respect to a female journalist and told a male&nbsp;journalist: &bdquo;I don''t know how serious you are. Looking at your face, I don''t think you are a&nbsp;very serious man&rdquo;. He claimed, about another female journalist, that &bdquo;She''s probably good at&nbsp;staying with her breasts in the sunlight, so that the mayors can fondle her. (...) Not at writing&nbsp;newspapers&rdquo;<sup>2</sup>. Gheorghe Bunea Stancu then threatened the journalists who recounted about&nbsp;him in a critical manner that he would withdraw their accreditation: &bdquo;And to those who come&nbsp;here to speculate, I hereby categorically announce you that if you fail to get a normal approach,&nbsp;as a media instrument, with respect to us, as the Social Democratic Part, I shall withdraw your&nbsp;accreditation. I want to make this very clear to you. Stop all this punk nonsense&rdquo;.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Public reaction(s):</strong> ActiveWatch &ndash; Media Monitoring Agency sent to dignitary Gheorghe&nbsp;Bunea Stancu an open letter<sup>3</sup> in which it drew his attention to the fact that the suburban&nbsp;language that he had used is not appropriate for the title and the public position that he&nbsp;holds. &bdquo;Moreover, we are concerned to find out that you, a person holding an important public&nbsp;position in the Br&#259;ila county, are unaware of some elementary provisions of the Law on the&nbsp;access to information of public interest. Thus, we must remind you that &lt;&lt;Public authorities are&nbsp;obligated to grant, without discrimination, accreditation to journalists and representatives of the&nbsp;media &gt;&gt; (article 18, paragraph 1, Law 544/2001) and that &lt;&lt;Public authorities may refuse to&nbsp;grant accreditation or may withdraw the accreditation of a journalist only for actions that prevent&nbsp;the normal performance of the public authority''s activity and that do not concern the opinions&nbsp;expressed by such journalist in the press, in accordance with, and to the extent of the law &gt;&gt;&nbsp;(article 18, paragraph 3, Law 544/2001). You also threatened that you shall no longer organize&nbsp;press conferences and that you shall force journalists to obtain information by filing applications&nbsp;for information, which you shall only answer within 30 days. We must also remind you that&nbsp;article 17 of the Law on the access to information of public interests states that: &lt;&lt;Public&nbsp;authorities are obligated to organize press conferences periodically, usually once a month, in&nbsp;order to communicate information of public interest &gt;&gt;&rdquo; &ndash; the ActiveWatch specified in the open&nbsp;letter addressed to the dignitary.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.activewatch.ro/stiri/FreeEx/ABUZURI-IMPOTRIVA-PRESEI-ALESI-LOCALI-AI-USL-DIN-BAIA-MARE-SI-BRAILA-9-iun-2011-317.html">&bdquo;Abuses&nbsp;against the press &ndash; Local electees of USL in Baia Mare and Br&#259;ila&rdquo;</a>, ActiveWatch &ndash; Media Monitoring Agency,&nbsp;ActiveWatch.ro, June 9, 2011.</p>\r\n<p><sup>2</sup><a href="http://www.adevarul.ro/actualitate/politica/Presedinte-Consiliul-Judetean-Braila-injura-jurnaliste_0_494951105.html">&bdquo;Video The President of the Br&#259;ila County Council shouts abuse at the journalists during a press conference&rdquo;</a>, Adev&#259;rul.ro,&nbsp;June 7, 2011.</p>\r\n<p><sup>3</sup><a href="http://www.activewatch.ro/stiri/FreeEx/ABUZURI-IMPOTRIVA-PRESEI-ALESI-LOCALI-AI-USL-DIN-BAIA-MARE-SI-BRAILA-9-iun-2011-317.html">&bdquo;Abuses against the press &ndash; Local electees of USL in Baia Mare and Br&#259;ila&rdquo;</a>, ActiveWatch &ndash; Media Monitoring Agency,&nbsp;ActiveWatch.ro, June 9, 2011.</p>'),
(6, 5, 1, '2011-06-02', 'Cristi Tab&#259;r&#259;, in conflict with a paparazzo', '', '<p>Victim(s): a paparazzo</p>\r\n<p>Attacker: journalist Cristi Tab&#259;r&#259;</p>\r\n<p>&nbsp;</p>\r\n<p>During the night between June 2 and 3, journalist Cristian Tab&#259;r&#259; had an altercation&nbsp;with a paparazzo who insistently photographed him in traffic<sup>1</sup>. Pursuant to the photographer''s&nbsp;telephone call to the emergency number 112, on the grounds that journalist Cristian Tab&#259;r&#259;&nbsp;allegedly took this camera''s memory card, the Police questioned the two<sup>2</sup>.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p>&nbsp;</p>\r\n<p><sup>1</sup><a href="http://www.adevarul.ro/locale/bucuresti/Cristi_Tabara_face_scandal_in_traficul_din_Bucuresti_0_492550845.html">&bdquo;Update&nbsp;Cristi Tab&#259;r&#259; signed a statement al the police precinct. The TV star quarreled with a paparazzo and grabbed the&nbsp;camera from his hand&rdquo;</a>, Andrei Rizescu, Adev&#259;rul.ro, June 3, 2011.</p>\r\n<p><sup>2</sup><a href="http://life.hotnews.ro/stiri-showbiz-8763758-cristi-tabara-audiat-politie-urma-unei-sicanari-trafic-fotograf.htm">&bdquo;Cristi Tab&#259;r&#259;, interrogated by the police pursuant to a traffic baffle with a photographer&rdquo;</a>, V.M., HotNews.ro, June 3, 2011.</p>\r\n<p>&nbsp;</p>'),
(7, 1, 16, '2011-06-16', 'Camera operator Ovidiu Ro&#537;ca, beat up in front of the police', '', '<p>Victim(s): ProTv T&acirc;rgu-Mure&#537; camera operator Ovidiu Marian Ro&#537;ca</p>\r\n<p>Attacker(s): several villagers</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;ProTv T&acirc;rgu-Mure&#537; camera operator Ovidiu Marian Ro&#537;ca was beat up by several&nbsp;villagers and required medical assistance in June, while filming a fire in the Eremitu&nbsp;Commune<sup>1</sup>. As a result of the fire, a man died and a few close friends of the deceased assaulted&nbsp;the camera operator and prohibited him from filming. All of this happened in the presence of&nbsp;a policeman, who not only did not come to the journalist''s aid, but recommended his to stop&nbsp;filming. &bdquo;The person that was assaulted should send me an official notification, so that I can&nbsp;further take the necessary steps&rdquo;<sup>2</sup>, the prefect declared, at that time, as a sign of solidarity with&nbsp;the journalist.</p>\r\n<p>&nbsp;&nbsp;&nbsp;Ovidiu Ro&#537;ca obtained a forensic examination report and filed a complaint with the&nbsp;police against his aggressors, two of which were identified. &bdquo;I was on the public domain and&nbsp;I hadn''t even begun to film when they started hitting me. I filed a complaint with the police&nbsp;and the aggressors were identified, but so far I have not been any results. I haven''t been&nbsp;announced what sanctions were pronounced against them and against the policeman who failed&nbsp;to intervene&rdquo;, Ovidiu Ro&#537;ca stated for FreeEx. The camera operator did not sue his aggressors. &bdquo;I&nbsp;would have wasted even more time and money in the trial and, with the laws in Romania being&nbsp;what they are, they wouldn''t have gotten more than a fine anyway&rdquo;, Ovidiu Ro&#537;ca also stated.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.adevarul.ro/locale/targu-mures/Targu-Mures-Jurnalist-batut-ochii-politistilor_0_496150857.html">&bdquo;T&acirc;rgu&#8208;Mure&#537;: Journalist beat up in the presence of the police&rdquo;</a>, Claudia Sas, Adev&#259;rul.ro, June 9, 2011.</p>\r\n<p><sup>2</sup><a href="http://bucuresti.citynews.ro/eveniment-29/un-jurnalist-fost-batut-de-fata-cu-un-politist-122110">&bdquo;A journalist was beat up in the presence of a policeman&rdquo;</a>, A.B., CityNews.ro, June 9, 2011.</p>'),
(8, 5, 5, '2011-07-16', 'Female journalists assaulted after a raid in the Chiliei Square in Constan&#539;a', '', '<p>&nbsp;</p>\r\n<p>Victim(s): Journalists Diana Sobaru (ProTv Constan&#539;a correspondent) and Iulia Stanciu (Antena&nbsp;3)</p>\r\n<p>Attacker(s): 20 persons</p>\r\n<p>&nbsp;</p>\r\n<p>Journalists Diana Sobaru (ProTv Constan&#539;a correspondent) and Iulia Stanciu (Antena 3)&nbsp;were assaulted, in July, after the gendarmes and the officers of the Brigade for the Prevention&nbsp;of Organized Crime (BCCO) in Constan&#539;a raided a building in Chiliei Square and took into&nbsp;custody several persons suspected as being members of a human traffic network21. Immediately&nbsp;after the law enforcement agents left, the journalists who had remained to film on site, were&nbsp;surrounded by 20 persons, hit and pushed around. &bdquo;The incident occurred when the cars of&nbsp;the law enforcement agents left. I tried to hail a cab, but nobody helped. Eventually, it was the&nbsp;gendarmes who stopped, turned around and escorted us&ldquo;22, Iulia Stanciu declared. The police&nbsp;managed to identify two female aggressors and ordered each of them to pay a civil fine of Lei</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p>&nbsp;</p>\r\n<p><sup>1</sup><a href="http://www.telegrafonline.ro/1310590800/articol/167381/descindere_cu_scandal_si_jurnalisti_agresati.html">&bdquo;Raid followed by a scandal and the assault of journalists&rdquo;</a>, R&#259;zvan Mih&#259;ilescu, TelegrafOnline.ro, July 14, 2011 .</p>\r\n<p><sup>2</sup>Ibidem.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(9, 1, 21, '2011-08-13', 'The manager of Oltchim Rmnicu Vlcea assaulted journalist Tiberiu Prn&#259;u', '', '<p>Victim(s): journalist Tiberiu P&acirc;rn&#259;u, the manager of Ziarul de V&acirc;lcea</p>\r\n<p>Attacker(s): the manager of S.C. Oltchim R&acirc;mnicu V&acirc;lcea, Constantin Roibu</p>\r\n<p>&nbsp;</p>\r\n<p>In August, the manager of S.C. Oltchim R&acirc;mnicu V&acirc;lcea, Constantin Roibu, assaulted&nbsp;journalist Tiberiu P&acirc;rn&#259;u, the manager of Ziarul de V&acirc;lcea, who was filming a spontaneous&nbsp;protest taking place in the factory''s yard, initiated by the employers sent on technical&nbsp;unemployment<sup>1</sup>. Constantin Roibu hit the journalist''s camera and ejected him from among the&nbsp;protesters. &bdquo;I was filming the trade union''s protest, when Roibu suddenly lunged at me, to take&nbsp;the phone off my hands. He was mad and I was lucky that I quickly averted him. The Arpechim&nbsp;employees defended me, some even booed Constantin Roibu&rdquo;<sup>2</sup>, Tiberiu P&acirc;rn&#259;u declared.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.realitatea.net/managerul-oltchim-ramnicu-valcea-a-agresat-jurnalistii-care-filmau-un-protest-video_861234.html">&bdquo;The&nbsp;manager of Oltchim R&acirc;mnicu V&acirc;lcea assaulted the journalists who were filming a protest&rdquo;</a>, Realitatea.net, August 12,&nbsp;2011.</p>\r\n<p><sup>2</sup>&bdquo;The Oltchim manager, Constantin Roibu, assaulted a journalist during a protest taking place at Oltchim&rdquo;, EvZ.ro, August 11,&nbsp;2011.</p>'),
(10, 5, 1, '2011-08-25', 'Elena Udrea''s brother threatens a journalist with a head-butt', '', '<p>Victim(s): a crew of Antena3 journalists</p>\r\n<p>Attacker(s): Adrian Valentin Udrea, the brother of the minister (at the time) of Development,</p>\r\n<p>Elena Udrea</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In August 2011, Adrian Valentin Udrea, the brother of the minister (at the time) of&nbsp;Development, Elena Udrea, threatened a crew of Antena3 journalists who were trying to&nbsp;interview him in front of his residence. &bdquo;Why are you filming me? Tell me, or I''ll head-butt&nbsp;you!&rdquo;<sup>1</sup>, he said to one of the reporters. Adrian Udrea ran after the Antena 3 crew, for the&nbsp;purpose of discouraging the filming.</p>\r\n<p>&nbsp;&nbsp;&nbsp;<strong>Public reaction(s):</strong> After the incident, Elena Udrea published on her blog an &bdquo;Open&nbsp;letter to Mr. Dan Voiculescu&rdquo;, the owner of the Intact corporation, whom she accused of &bdquo;secret&nbsp;police maneuvers&rdquo; and of the fact that he harasses her relatives with the help of his employees. "I&nbsp;demand that you cease following, intimidating and provoking my family. They are ordinary&nbsp;people, with normal reactions, who do not have the secret police practice of dissimulation and&nbsp;who wish for nothing else than to leave peacefully, away from the cameras"<sup>2</sup>, the Minister&nbsp;wrote.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.impactnews.ro/News/Fratele-Elenei-Udrea-agreseaz%C4%83-o-echip%C4%83-de-jurnali%C5%9Fti.-Udrea-reac%C5%A3ioneaz%C4%83-pe-blog-56496">&bdquo; Elena Udrea''s brother assaults a crew of journalists. Udrea reacts on her blog&rdquo;</a>, Florin Ciocoti&#537;an, ImpactNews.ro, August 18,&nbsp;2011.</p>\r\n<p><sup>2</sup><a href="http://www.elenaudrea.ro/scrisoare-deschisa-catre-domnul-dan-voiculescu.html">&bdquo;Open letter to Mr. Dan Voiculescu&rdquo;</a>, Elena Udrea, ElenaUdrea.ro, August 18, 2011.</p>'),
(11, 6, 4, '2011-09-02', 'Tennis player insulted a female journalist', '', '<p>Victim(s): female journalist</p>\r\n<p>Attacker(s): Ilie N&#259;stase, former tennis player</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In September 2011, former tennis player N&#259;stase insulted a female journalist, offended&nbsp;that she had asked him about the lawsuit filed against a company that allegedly owed him&nbsp;money. "How can you ask me about that? The man who made you ask me is an idiot. I can see&nbsp;that you''re blonde, and you know what they say about blondes, right? Take all the case files, not&nbsp;just mine. Aren''t you a little bit ashamed? You asshole!&rdquo;<sup>1</sup>, said the famous former tennis player&nbsp;Ilie N&#259;stase, well-known for his outbreaks against persistent journalists.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p>&nbsp;</p>\r\n<p><sup>1</sup><a href="http://www.adevarul.ro/locale/iasi/Ilie-Nastase-Iasi-jignit-ziarista_0_559144707.html">&bdquo;Video&nbsp;Ilie N&#259;stase relapses in Ia&#537;i. He called a female journalist an asshole in front of dozens of children&rdquo;</a>, Ionu&#539; Benea,&nbsp;Adev&#259;rul.ro, September 22, 2011.</p>\r\n<p>&nbsp;</p>'),
(12, 3, 1, '2011-10-07', 'Gabriel Bugnar, threatened by C&#259;t&#259;lin Popa', '', '<p>Victim(s): Realitatea TV producer Gabriel Bugnar</p>\r\n<p>Attacker(s): Realitatea TV head of the news department C&#259;t&#259;lin Popa</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In 2011, Realitatea TV producer Gabriel Bugnar reported, several times, about the&nbsp;tensions to which the journalists in the editorial office were subjected &bdquo;by ricochet&rdquo;, because of&nbsp;the conflicts between Sorin Ovidiu V&icirc;ntu and Sebastian Ghi&#539;&#259; (details in the &bdquo;Media market&rdquo;&nbsp;chaper of this report). In September, Bugnar wrote a sarcastic article on his blog, in which he&nbsp;claimed that Sebastian Ghi&#539;&#259; was trying &bdquo;to steal Realitatea TV&rdquo;, an article pursuant to which he&nbsp;was threatened by C&#259;t&#259;lin Popa, head of the news department. &bdquo;I don''t need any correction, you&nbsp;didn''t do your homework, you''re a hick, a boor [&hellip;], I''ll sue you for slander and if I ever catch&nbsp;you on the street, I''ll beat you up!&rdquo;<sup>1</sup>, C&#259;t&#259;lin Popa allegedly told him, bothered, not by the fact&nbsp;that Gabriel Bugnar had written in his article that Realitatea TV &bdquo;was being stolen&rdquo; with his help,&nbsp;but because Bugnar wrote that Popa had never been a reporter, which was false. A few days&nbsp;later, the Realitatea TV and Rom&acirc;nia TV split occurred (details in the &bdquo;Media market&rdquo; chapter of&nbsp;this report), and Gabriel Bugnar chose to work for Realitatea, while C&#259;t&#259;lin Popa chose Rom&acirc;nia&nbsp;TV.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://gabrielbugnar.blogspot.ro/2011/09/domnul-catalin-popa-daca-te-prind-pe.html">&bdquo;Mr. C&#259;t&#259;lin Popa: &lt;&lt;If I ever catch you on the street, I''ll beat you up!&gt;&gt;&rdquo;</a>,Gabriel Bugnar, GabrielBugnar.blogspot.com,&nbsp;September 29, 2011.</p>'),
(13, 6, 321, '2011-10-13', 'Journalists assaulted by the employees of a restaurant in Eforie Nord', '', '<p>&nbsp;</p>\r\n<p>Victim(s): two crews of journalists from TVR and TV Neptun</p>\r\n<p>Attacker(s): Adrian Sandu (39 years old), Daniel Florian Mantea (35 years old), Gheorghe Tudor&nbsp;(38 years old) and Mircea Simionescu (26 years old)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In October, two crews of journalists from TVR and TV Neptun, who were filming a fire, were assaulted by the employees of a restaurant in Eforie Nord. Adrian Sandu (39 years old),&nbsp;Daniel Florian Mantea (35 years old), Gheorghe Tudor (38 years old) and Mircea Simionescu&nbsp;(26 years old) chased the journalists away, shouted abuse at them and pushed them around,&nbsp;despite the fact that a police crew was in the area. "Why are you filming us, man? Get out of&nbsp;here. Do you have any right to film us? I''ll kick your teeth in, get out of here or I''ll fuck you&nbsp;up... If you don''t leave, I''ll beat you senseless&rdquo;<sup>1</sup>, the journalists were told by Adrian Sandu, one&nbsp;of the aggressors. According to a press release of Constan&#539;a County Police Inspectorate, the&nbsp;police identified the aggressors, commenced an investigation with respect to the perpetration&nbsp;of the deed of indecent behavior and disturbance of public peace and started an administrative&nbsp;investigation with respect to the passivity of the police crew who witnessed the incident <sup><span style="font-size: 8px;">2</span></sup>. The&nbsp;Constan&#539;a County Police Inspectorate also announced that none of the journalists filed a criminal&nbsp;complaint against the aggressors.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup><a href="http://www.reporterntv.ro/stire/barbatii-care-i-au-agresat-pe-jurnalisti-pe-plaja-belona-din-eforie-nord-au-fost-identificati">&bdquo;The&nbsp;men who assaulted the journalists on the Belona beach in Eforie Nord have been identified&rdquo;</a>, M&#259;d&#259;lina Poenaru,&nbsp;ReporterNTV.ro, October 20, 2011.</p>\r\n<p><sup>2</sup><a href="http://www.jurnaldeconstantaonline.ro/2011/10/20/indivizii-care-au-agresat-jurnalisti-pe-plaja-belona-au-fost-identificati/">&bdquo;The men who assaulted the journalists on the Belona beach have been identified&rdquo;</a>, Poliana Barabanciuc C&#259;pitan,&nbsp;JurnalDeConstan&#539;aOnline.ro, October 20, 2011.</p>\r\n<p>&nbsp;</p>'),
(14, 5, 1, '2011-10-28', 'Crin Antonescu insulted several TVR journalists', '', '<p>&nbsp;</p>\r\n<p>Victim(s): TVR News Department, Rodica Culcer &amp; journalists Ioana Lupea and Mircea Marian</p>\r\n<p>Attacker(s): PNL leader Crin Antonescu</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;In October 2011, PNL leader Crin Antonescu called the head of the TVR News department, Rodica Culcer &bdquo;a shameless pensioner&rdquo; and called journalists Ioana Lupea and&nbsp;Mircea Marian "losers". The politician accused the journalists that they criticize him on public&nbsp;television &bdquo;without any argument, inn awful manner&rdquo;<sup>1</sup>. &bdquo;What Crin Antonescu is doing, Victor&nbsp;Ponta is doing with him, represents nothing else than an attempt to intimidate an uncomfortable&nbsp;journalist. Actually, I''m not their only target. Do are my colleagues Ioana Lupea and Mircea&nbsp;Marian, whom he called &lt;&lt;losers&gt;&gt;. It is a political pressure of the purest essence&rdquo; <sup>2</sup>, Rodica&nbsp;Culcer wrote on her blog. In March 2012, Crin Antonescu accepted the invitation of TVR Info&nbsp;and participated in a show the anchor of which was Ioana Lupea<sup>3</sup>.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p><sup>1</sup> <a href="http://revistapresei.hotnews.ro/stiri-radio_tv-10554583-crin-antonescu-rodica-culcer-pensionara-nesimtita.htm">&bdquo;Crin Antonescu: Rodica Culcer, &lt;&lt;a shameless pensioner&gt;&gt;&rdquo;</a>, C.C., HotNews.ro, October 28, 2011.</p>\r\n<p>&nbsp;</p>\r\n<p><sup>2</sup>&bdquo;Shameless pensioner&rdquo;, Rodica Culcer, RodicaCulcer.ro, October 29, 2011.</p>\r\n<p><sup>3</sup><a href="http://www.evz.ro/detalii/stiri/crin-antonescu-in-dialog-cu-ratatii-presei-972884/pagina-comentarii/2.html">&bdquo;Crin Antonescu, in a dialogue with the &lt;&lt;losers of the press&gt;&gt;&rdquo;</a>, Carmen Vintil&#259;, EvZ.ro, March 22, 2012.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>'),
(15, 5, 1, '2011-10-30', 'Mitic&#259; Dragomir, the League''s hooligan', '', '<p>&nbsp;</p>\r\n<p>Victim(s): several journalists</p>\r\n<p>Attacker(s): Dumitru (&bdquo;Mitic&#259;&rdquo;) Dragomir, president of the Professional Football League (LPF)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;Freshly out of the hearings of the National Anti-Corruption Department, in a case file&nbsp;in which he was accused of abuse of office, Dumitru (&bdquo;Mitic&#259;&rdquo;) Dragomir, president of the&nbsp;Professional Football League (LPF), acted like a hooligan in his relationship with the press,&nbsp;in October. &bdquo;Line up here!&rdquo;, he told the journalists. &bdquo;I have been accused, crazy people, not&nbsp;indicted!! I''m too handsome, too sexy, this is why the criminal investigation began in the first&nbsp;place! You want blood, man, that''s what you want!&rdquo;, Dragomir continued. &bdquo;Why are you coming&nbsp;after me? What do you have against me, why are you not letting me get out of here? Damn you&nbsp;all to hell! Who are you to commit such abuse? Stepping on my shoes, punching me in the back!&nbsp;Look what you did to my shoes, man!&rdquo;<sup>1</sup> &ndash; the LPF president also said.</p>\r\n<p>&nbsp;</p>\r\n<p>Notes:</p>\r\n<p>&nbsp;</p>\r\n<p><sup>1</sup> <a href="http://www.prosport.ro/fotbal-intern/fir-ati-ai-dracu-sa-va-ia-reactia-incredibila-a-sefului-lpf-la-adresa-jurnalistilor-vezi-aici-filmul-tuturor-evenimentelor-8909803">&bdquo;&lt;&lt;Damn&nbsp;you all to hell!&gt;&gt; Incredible reaction of the LPF head towards the journalists! Watch a recording of all the events&rdquo;</a>,&nbsp;Costin Negraru, ProSport.ro, October 28, 2011.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `fe_category`
--

CREATE TABLE IF NOT EXISTS `fe_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf32 NOT NULL,
  `descr` varchar(500) CHARACTER SET utf32 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `fe_category`
--

INSERT INTO `fe_category` (`id`, `name`, `descr`) VALUES
(1, 'Aggressions, threats, insults', 'Aggressions, threats, insults'),
(2, 'The Media Market', 'The Media Market'),
(3, 'Political and economic pressures', 'Political and economic pressures'),
(4, 'Pressures of the authorities', 'Pressures of the authorities'),
(5, 'Access to information of public interest', 'Access to information of public interest'),
(6, 'Insult, slander, the right to private life', 'Insult, slander, the right to private life'),
(7, 'Workplace conflicts', 'Workplace conflicts'),
(8, 'Ethics', 'Ethics'),
(9, 'Public television', 'Public television'),
(10, 'Legislation', 'Legislation');

-- --------------------------------------------------------

--
-- Table structure for table `fe_county`
--

CREATE TABLE IF NOT EXISTS `fe_county` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf32 NOT NULL,
  `code` varchar(2) CHARACTER SET utf32 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `fe_county`
--

INSERT INTO `fe_county` (`id`, `name`, `code`) VALUES
(1, 'Alba', 'AB'),
(2, 'Arad', 'AR'),
(3, 'Argeș', 'AG'),
(4, 'Bacău', 'BC'),
(5, 'Bihor', 'BH'),
(6, 'Bistrița-Năsăud', 'BN'),
(7, 'Botoșani', 'BT'),
(8, 'Brașov', 'BV'),
(9, 'Brăila', 'BR'),
(10, 'București', 'B'),
(11, 'Buzău', 'BZ'),
(12, 'Caraș-Severin', 'CS'),
(13, 'Călărași', 'CL'),
(14, 'Cluj', 'CJ'),
(15, 'Constanța', 'CT'),
(16, 'Covasna', 'CV'),
(17, 'Dâmbovița', 'DB'),
(18, 'Dolj', 'DJ'),
(19, 'Galați', 'GL'),
(20, 'Giurgiu', 'GR'),
(21, 'Gorj', 'GJ'),
(22, 'Harghita', 'HR'),
(23, 'Hunedoara', 'HD'),
(24, 'Ialomița', 'IL'),
(25, 'Iași', 'IS'),
(26, 'Ilfov', 'IF'),
(27, 'Maramureș', 'MM'),
(28, 'Mehedinți', 'MH'),
(29, 'Mureș', 'MS'),
(30, 'Neamț', 'NT'),
(31, 'Olt', 'OT'),
(32, 'Prahova', 'PH'),
(33, 'Satu Mare', 'SM'),
(34, 'Sălaj', 'SJ'),
(35, 'Sibiu', 'SB'),
(36, 'Suceava', 'SV'),
(37, 'Teleorman', 'TR'),
(38, 'Timiş', 'TM'),
(39, 'Tulcea', 'TL'),
(40, 'Vaslui', 'VS'),
(41, 'Vâlcea', 'VL'),
(42, 'Vrancea', 'VN');

-- --------------------------------------------------------

--
-- Table structure for table `fe_location`
--

CREATE TABLE IF NOT EXISTS `fe_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `county_id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf32 NOT NULL,
  `lat` double(9,7) NOT NULL,
  `lng` double(9,7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `county_id` (`county_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `fe_location`
--

INSERT INTO `fe_location` (`id`, `county_id`, `name`, `lat`, `lng`) VALUES
(1, 10, 'București', 44.4377110, 26.0973670),
(2, 14, 'Cluj-Napoca', 46.7772480, 23.5998899),
(3, 38, 'Timișoara', 45.7555390, 21.2374990),
(4, 25, 'Iași', 47.1569444, 27.5902778),
(5, 15, 'Constanța', 44.1733333, 28.6383333),
(6, 18, 'Craiova', 44.3247600, 23.8134710),
(7, 19, 'Galați', 45.4257200, 28.0310440),
(8, 8, 'Brașov', 45.6556510, 25.6108000),
(9, 32, 'Ploiești', 44.9400000, 26.0300000),
(10, 5, 'Oradea', 47.0722222, 21.9211111),
(11, 9, 'Brăila', 45.2691944, 27.9574722),
(12, 3, 'Pitești', 44.8605556, 24.8677778),
(13, 2, 'Arad', 46.1666667, 21.3166667),
(14, 35, 'Sibiu', 45.7874410, 24.1432590),
(15, 4, 'Bacău', 46.5712890, 26.9251710),
(16, 29, 'Târgu Mureș', 46.5455556, 24.5625000),
(17, 27, 'Baia Mare', 47.6666667, 23.5833333),
(18, 11, 'Buzău', 45.1480600, 26.8233390),
(19, 7, 'Botoșani', 47.7462310, 26.6668090),
(20, 33, 'Satu Mare', 47.7920910, 22.8851890),
(21, 41, 'Râmnicu Vâlcea', 45.1047222, 24.3755556),
(22, 28, 'Drobeta-Turnu Severin', 44.6356530, 22.6601790),
(23, 36, 'Suceava', 47.6513889, 26.2555556),
(24, 21, 'Târgu Jiu', 45.0341667, 23.2747222),
(25, 30, 'Piatra Neamț', 46.9275000, 26.3708333),
(26, 17, 'Târgoviște', 44.9241667, 25.4566667),
(27, 42, 'Focșani', 45.7005000, 27.1888100),
(28, 6, 'Bistrița', 47.1383400, 24.5132410),
(29, 39, 'Tulcea', 45.1799320, 28.8063390),
(30, 12, 'Reșița', 45.3000000, 21.8902778),
(31, 31, 'Slatina', 44.4346200, 24.3714810),
(32, 1, 'Alba Iulia', 46.0669444, 23.5700000),
(33, 13, 'Călărași', 44.2020160, 27.3300390),
(34, 23, 'Deva', 45.8770490, 22.9130170),
(35, 23, 'Hunedoara', 45.7664300, 22.9206790),
(36, 20, 'Giurgiu', 43.9004080, 25.9716610),
(37, 16, 'Sfântu Gheorghe', 45.8636111, 25.7875000),
(38, 34, 'Zalău', 47.1833333, 23.0500000),
(39, 40, 'Vaslui', 46.6383333, 27.7291667),
(40, 40, 'Bârlad', 46.2291180, 27.6682300),
(41, 30, 'Roman', 46.9300000, 26.9300000),
(42, 35, 'Mediaș', 46.1638889, 24.3508333),
(43, 14, 'Turda', 46.5662800, 23.7906400),
(44, 24, 'Slobozia', 44.5638889, 27.3661111),
(45, 37, 'Alexandria', 43.9686111, 25.3333333),
(46, 26, 'Voluntari', 44.4899310, 26.1794470),
(47, 22, 'Miercurea Ciuc', 46.3670010, 25.8094499),
(48, 38, 'Lugoj', 45.6861111, 21.9005556),
(49, 15, 'Medgidia', 44.2502778, 28.2613889),
(50, 4, 'Onești', 46.2499260, 26.7714760),
(51, 27, 'Sighetu Marmației', 47.9277830, 23.9008660),
(52, 23, 'Petroșani', 45.4122222, 23.3733333),
(53, 15, 'Mangalia', 43.8172222, 28.5827778),
(54, 22, 'Odorheiu Secuiesc', 46.3130110, 25.3009000),
(55, 32, 'Câmpina', 45.1300000, 25.7400000),
(56, 14, 'Dej', 47.1484790, 23.8903900),
(57, 29, 'Reghin', 46.7758333, 24.7083333),
(58, 25, 'Pașcani', 47.2494444, 26.7272222),
(59, 15, 'Năvodari', 44.3211111, 28.6133333),
(60, 11, 'Râmnicu Sărat', 45.3800000, 27.0600000),
(61, 19, 'Tecuci', 45.8421945, 27.4287415),
(62, 3, 'Mioveni', 44.9569444, 24.9405556),
(63, 3, 'Câmpulung', 45.2677778, 25.0463889),
(64, 31, 'Caracal', 44.1125000, 24.3472220),
(65, 8, 'Făgăraș', 45.8433420, 24.9778710),
(66, 24, 'Fetești', 44.3687237, 27.8285646),
(67, 27, 'Borșa', 47.6552778, 24.6630556),
(68, 8, 'Săcele', 45.6170500, 25.7115000),
(69, 29, 'Sighișoara', 46.2169444, 24.7911111),
(70, 3, 'Curtea de Argeș', 45.1391667, 24.6791667),
(71, 40, 'Huși', 46.6741667, 28.0597222),
(72, 36, 'Fălticeni', 47.4597222, 26.3000000),
(73, 37, 'Roșiorii de Vede', 44.1113889, 24.9941667),
(74, 1, 'Sebeș', 45.9589500, 23.5708689),
(75, 26, 'Pantelimon', 44.4537520, 26.2219930),
(76, 23, 'Vulcan', 45.3785590, 23.2946800),
(77, 13, 'Oltenița', 44.0866667, 26.6366667),
(78, 7, 'Dorohoi', 47.9583000, 26.3997950),
(79, 1, 'Aiud', 46.3122222, 23.7291667),
(80, 37, 'Turnu Măgurele', 43.7516667, 24.8708333),
(81, 36, 'Rădăuți', 47.8475990, 25.9212210),
(82, 23, 'Lupeni', 45.3602778, 23.2383333),
(83, 26, 'Buftea', 44.5700000, 25.9500000),
(84, 12, 'Caransebeș', 45.4213889, 22.2219444),
(85, 8, 'Zărnești', 45.5666667, 25.3333333),
(86, 23, 'Petrila', 45.4500000, 23.4166667),
(87, 4, 'Moinești', 46.4826390, 26.4939590),
(88, 29, 'Târnăveni', 46.3265610, 24.2969610),
(89, 14, 'Câmpia Turzii', 46.5486111, 23.8800000),
(90, 26, 'Popești-Leordeni', 44.3833333, 26.1666667),
(91, 14, 'Gherla', 47.0200000, 23.9000000),
(92, 33, 'Carei', 47.6839667, 22.4668694),
(93, 1, 'Cugir', 45.8394010, 23.3745990),
(94, 1, 'Blaj', 46.1752778, 23.9144444),
(95, 8, 'Codlea', 45.6969444, 25.4438889),
(96, 4, 'Comănești', 46.4297222, 26.4500000),
(97, 30, 'Târgu Neamț', 47.2025000, 26.3586111),
(98, 21, 'Motru', 44.8036111, 22.9708333),
(99, 16, 'Târgu Secuiesc', 45.9969444, 26.1405556),
(100, 17, 'Moreni', 44.9802778, 25.6444444),
(101, 22, 'Gheorgheni', 46.7212112, 25.5855274),
(102, 32, 'Băicoi', 45.0383599, 25.8713929),
(103, 23, 'Orăștie', 45.8500000, 23.2000000),
(104, 5, 'Salonta', 46.8000000, 21.6500000),
(105, 31, 'Balș', 44.3500000, 24.0994444),
(106, 41, 'Drăgășani', 44.6611111, 24.2605556),
(107, 18, 'Băilești', 44.0281110, 23.3528800),
(108, 18, 'Calafat', 43.9897523, 22.9341150),
(109, 18, 'Filiași', 44.4000000, 23.5200000),
(110, 15, 'Cernavodă', 44.3380556, 28.0336111),
(111, 36, 'Câmpulung Moldovenesc', 47.5256169, 25.5604020),
(112, 32, 'Breaza', 45.1872222, 25.6622222),
(113, 5, 'Marghita', 47.3500000, 22.3333333),
(114, 27, 'Baia Sprie', 47.6608333, 23.6886111),
(115, 29, 'Luduș', 46.4777778, 24.0961111),
(116, 31, 'Corabia', 43.7736111, 24.5033333),
(117, 42, 'Adjud', 46.1000000, 27.1797220),
(118, 27, 'Vișeu de Sus', 47.7091667, 24.4238889),
(119, 26, 'Bragadiru', 44.3723420, 25.9694600),
(120, 12, 'Bocșa', 45.3719100, 21.7199190),
(121, 8, 'Râșnov', 45.5930600, 25.4602800),
(122, 24, 'Urziceni', 44.7180556, 26.6452778),
(123, 23, 'Brad', 46.1333333, 22.7833333),
(124, 3, 'Ștefănești', 44.7272526, 24.9713149),
(125, 17, 'Pucioasa', 45.0666667, 25.4333333),
(126, 36, 'Vatra Dornei', 47.3461111, 25.3594444),
(127, 35, 'Cisnădie', 45.7133600, 24.1516800),
(128, 32, 'Mizil', 45.0000000, 26.4405556),
(129, 22, 'Toplița', 46.9316480, 25.3602600),
(130, 26, 'Chitila', 44.5098920, 25.9845857),
(131, 34, 'Șimleu Silvaniei', 47.2306900, 22.8038900),
(132, 4, 'Buhuși', 46.7242270, 26.6961730),
(133, 36, 'Vicovu de Sus', 47.9268440, 25.6751460),
(134, 37, 'Zimnicea', 43.6522222, 25.3680556),
(135, 17, 'Găești', 44.7194444, 25.3197222),
(136, 36, 'Gura Humorului', 47.5538889, 25.8891667),
(137, 26, 'Otopeni', 44.5533290, 26.0766600),
(138, 1, 'Ocna Mureș', 46.3900000, 23.8600000),
(139, 15, 'Ovidiu', 44.2573830, 28.5696330),
(140, 35, 'Avrig', 45.7271800, 24.3907200),
(141, 23, 'Simeria', 45.8510289, 23.0134060),
(142, 2, 'Pecica', 46.1700000, 21.0700000),
(143, 18, 'Dăbuleni', 43.8011111, 24.0919444),
(144, 20, 'Bolintin-Vale', 44.4472222, 25.7572222),
(145, 21, 'Rovinari', 44.8979296, 23.1525731),
(146, 32, 'Comarnic', 45.2511111, 25.6352778),
(147, 32, 'Vălenii de Munte', 45.1855556, 26.0397222),
(148, 38, 'Sânnicolau Mare', 46.0722222, 20.6294444),
(149, 4, 'Dărmănești', 46.3700000, 26.4797222),
(150, 12, 'Moldova Nouă', 44.7264510, 21.6613030),
(151, 27, 'Târgu Lăpuș', 47.4534490, 23.8624990),
(152, 5, 'Săcueni', 47.3525000, 22.0914000),
(153, 37, 'Videle', 44.2663310, 25.5389600),
(154, 31, 'Scornicești', 44.5893073, 24.5486912),
(155, 32, 'Boldești-Scăeni', 45.0300000, 26.0300000),
(156, 2, 'Sântana', 46.3500000, 21.5000000),
(157, 4, 'Târgu Ocna', 46.2800000, 26.6200000),
(158, 26, 'Măgurele', 44.3504011, 26.0429427),
(159, 23, 'Călan', 45.7374445, 22.9917568),
(160, 6, 'Beclean', 47.1797222, 24.1797222),
(161, 24, 'Țăndărei', 44.6402778, 27.6586111),
(162, 29, 'Sovata', 46.5961111, 25.0744444),
(163, 12, 'Oravița', 45.0333333, 21.6833333),
(164, 34, 'Jibou', 47.2583333, 23.2583333),
(165, 32, 'Urlați', 44.9911111, 26.2305556),
(166, 3, 'Costești', 44.6697222, 24.8800000),
(167, 25, 'Hârlău', 47.4277778, 26.9113889),
(168, 5, 'Beiuș', 46.6614490, 22.3598590),
(169, 9, 'Ianca', 45.1350000, 27.4747222),
(170, 38, 'Jimbolia', 45.7996060, 20.7181280),
(171, 3, 'Topoloveni', 44.8069444, 25.0838889),
(172, 31, 'Drăgănești-Olt', 44.1697222, 24.5300000),
(173, 32, 'Sinaia', 45.3500000, 25.5513889),
(174, 11, 'Nehoiu', 45.4216920, 26.2962670),
(175, 16, 'Covasna', 45.8517000, 26.1829110),
(176, 33, 'Negrești-Oaș', 47.8694444, 23.4241667),
(177, 28, 'Strehaia', 44.6222222, 23.1972222),
(178, 36, 'Dolhasca', 47.4252778, 26.6097222),
(179, 28, 'Orșova', 44.7252778, 22.3961111),
(180, 5, 'Valea lui Mihai', 47.5200000, 22.1300000),
(181, 2, 'Lipova', 46.0916667, 21.6916667),
(182, 15, 'Murfatlar', 44.1736111, 28.4083333),
(183, 5, 'Aleșd', 47.0572222, 22.3969444),
(184, 7, 'Darabani', 48.1863889, 26.5891667),
(185, 22, 'Cristuru Secuiesc', 46.2916667, 25.0352778),
(186, 7, 'Flămânzi', 47.5500000, 26.8666667),
(187, 42, 'Mărășești', 45.8800000, 27.2300000),
(188, 6, 'Sângeorz-Băi', 47.3700000, 24.6800000),
(189, 36, 'Liteni', 47.5199890, 26.5318790),
(190, 25, 'Târgu Frumos', 47.2097222, 27.0130556),
(191, 17, 'Titu', 44.6622222, 25.5736111),
(192, 23, 'Hațeg', 45.6075000, 22.9500000),
(193, 12, 'Oțelu Roșu', 45.5158870, 22.3562220),
(194, 2, 'Ineu', 46.4333310, 21.8464910),
(195, 6, 'Năsăud', 47.2833333, 24.4066667),
(196, 14, 'Huedin', 46.8633690, 23.0330910),
(197, 42, 'Odobești', 45.7655720, 27.0718500),
(198, 15, 'Hârșova', 44.6918420, 27.9514810),
(199, 21, 'Bumbești-Jiu', 45.1786111, 23.3813889),
(200, 27, 'Seini', 47.7484510, 23.2870810),
(201, 36, 'Salcea', 47.6642129, 26.3363900),
(202, 25, 'Podu Iloaiei', 47.2166667, 27.2666667),
(203, 15, 'Eforie', 44.0491140, 28.6527270),
(204, 23, 'Uricani', 45.3363889, 23.1525000),
(205, 16, 'Baraolt', 46.0750000, 25.6000000),
(206, 32, 'Bușteni', 45.4116667, 25.5372222),
(207, 33, 'Tășnad', 47.4772222, 22.5838889),
(208, 29, 'Iernut', 46.4536111, 24.2333333),
(209, 35, 'Agnita', 45.9730556, 24.6172222),
(210, 30, 'Roznov', 46.8355556, 26.5116667),
(211, 39, 'Babadag', 44.8913109, 28.7172231),
(212, 41, 'Băbeni', 44.9750000, 24.2311111),
(213, 21, 'Târgu Cărbunești', 44.9583333, 23.5063889),
(214, 40, 'Negrești', 46.8365545, 27.4571657),
(215, 38, 'Recaș', 45.8013889, 21.5133333),
(216, 36, 'Siret', 47.9500000, 26.0600000),
(217, 39, 'Măcin', 45.2528500, 28.1370200),
(218, 2, 'Chișineu-Criș', 46.5225000, 21.5158333),
(219, 32, 'Plopeni', 45.0496600, 25.9525580),
(220, 20, 'Mihăilești', 44.3238889, 25.9069444),
(221, 27, 'Șomcuta Mare', 47.4994320, 23.4762900),
(222, 17, 'Fieni', 45.1222222, 25.4183333),
(223, 16, 'Întorsura Buzăului', 45.6727778, 26.0341667),
(224, 41, 'Călimănești', 45.2391667, 24.3433333),
(225, 42, 'Panciu', 45.9100000, 27.0900000),
(226, 2, 'Nădlac', 46.1704480, 20.7597690),
(227, 1, 'Zlatna', 46.1075128, 23.2311962),
(228, 11, 'Pătârlagele', 45.3188889, 26.3597222),
(229, 34, 'Cehu Silvaniei', 47.4062790, 23.1664550),
(230, 24, 'Amara', 44.6200000, 27.3200000),
(231, 27, 'Ulmeni', 47.4655556, 23.3002778),
(232, 8, 'Victoria', 45.7306587, 24.7009227),
(233, 13, 'Budești', 44.2370450, 26.4552270),
(234, 12, 'Anina', 45.0916667, 21.8533333),
(235, 35, 'Dumbrăveni', 46.2275000, 24.5758333),
(236, 1, 'Câmpeni', 46.3625000, 23.0455556),
(237, 11, 'Pogoanele', 44.9199600, 26.9887290),
(238, 27, 'Tăuții-Măgherăuș', 47.6678000, 23.4722000),
(239, 21, 'Tismana', 45.0505556, 22.9488889),
(240, 2, 'Curtici', 46.3419444, 21.3061111),
(241, 15, 'Techirghiol', 44.0575000, 28.5958333),
(242, 29, 'Sărmașu', 46.7536111, 24.1666667),
(243, 22, 'Vlăhița', 46.3500000, 25.5300000),
(244, 36, 'Cajvana', 47.7000000, 25.9666667),
(245, 7, 'Săveni', 47.9590435, 26.8592268),
(246, 18, 'Segarcea', 44.0942000, 23.7453000),
(247, 2, 'Pâncota', 46.3225000, 21.6869444),
(248, 33, 'Livada', 47.8626060, 23.1266570),
(249, 17, 'Răcari', 44.6247731, 25.7396523),
(250, 29, 'Ungheni', 46.4858333, 24.4608333),
(251, 38, 'Făget', 45.8527957, 22.1729057),
(252, 35, 'Tălmaciu', 45.6666667, 24.2611111),
(253, 38, 'Buziaș', 45.6500000, 21.6000000),
(254, 13, 'Fundulea', 44.4527778, 26.5152778),
(255, 40, 'Murgeni', 46.2122590, 28.0184830),
(256, 1, 'Teiuș', 46.2000000, 23.6800000),
(257, 9, 'Însurăței', 44.9250490, 27.6057610),
(258, 30, 'Bicaz', 46.9108333, 26.0911111),
(259, 19, 'Târgu Bujor', 45.8730080, 27.9090890),
(260, 5, 'Ștei', 46.5400000, 22.4700000),
(261, 13, 'Lehliu Gară', 44.4383333, 26.8533333),
(262, 41, 'Horezu', 45.1433333, 23.9916667),
(263, 38, 'Deta', 45.4000000, 21.2200000),
(264, 32, 'Slănic', 45.2333333, 25.9391667),
(265, 31, 'Piatra-Olt', 44.3666667, 24.2666667),
(266, 33, 'Ardud', 47.6422809, 22.8885590),
(267, 22, 'Bălan', 46.6497222, 25.8100000),
(268, 2, 'Sebiș', 46.3727778, 22.1294444),
(269, 36, 'Frasin', 47.5386000, 25.8006000),
(270, 41, 'Brezoi', 45.3370891, 24.2473143),
(271, 31, 'Potcoava', 44.4735992, 24.6422347),
(272, 38, 'Gătaia', 45.4333333, 21.4333333),
(273, 36, 'Broșteni', 47.2403368, 25.6976665),
(274, 21, 'Novaci', 45.1800000, 23.6700000),
(275, 29, 'Miercurea Nirajului', 46.5354920, 24.8002650),
(276, 28, 'Baia de Aramă', 44.9937350, 22.8151710),
(277, 35, 'Copșa Mică', 46.1125000, 24.2305556),
(278, 28, 'Vânju Mare', 44.4319444, 22.8769444),
(279, 7, 'Ștefănești', 47.7833333, 27.2000000),
(280, 29, 'Sângeorgiu de Pădure', 46.4302778, 24.8416667),
(281, 23, 'Geoagiu', 45.9200000, 23.2000000),
(282, 35, 'Săliște', 45.7941667, 23.8863889),
(283, 38, 'Ciacova', 45.5165409, 21.1349110),
(284, 15, 'Băneasa', 44.0618296, 27.6973927),
(285, 8, 'Rupea', 46.0388889, 25.2225000),
(286, 36, 'Milișăuți', 47.7833333, 26.0000000),
(287, 39, 'Isaccea', 45.2697222, 28.4597222),
(288, 1, 'Abrud', 46.2738889, 23.0633333),
(289, 15, 'Negru Vodă', 43.8200000, 28.2200000),
(290, 24, 'Fierbinți-Târg', 44.6833333, 26.3833333),
(291, 27, 'Cavnic', 47.6608333, 23.8777778),
(292, 27, 'Săliștea de Sus', 47.6500000, 24.3500000),
(293, 12, 'Băile Herculane', 44.8786111, 22.4141667),
(294, 41, 'Bălcești', 44.6167000, 23.9394000),
(295, 41, 'Berbești', 44.9881830, 23.8682200),
(296, 8, 'Ghimbav', 45.6666667, 25.5166667),
(297, 8, 'Predeal', 45.5044444, 25.5783333),
(298, 21, 'Țicleni', 44.8869479, 23.3975541),
(299, 32, 'Azuga', 45.4450000, 25.5552778),
(300, 23, 'Aninoasa', 45.3809737, 23.3323119),
(301, 7, 'Bucecea', 47.7755970, 26.4438140),
(302, 41, 'Băile Olănești', 45.2038996, 24.2427255),
(303, 4, 'Slănic Moldova', 46.2235940, 26.4764519),
(304, 35, 'Miercurea Sibiului', 45.8907560, 23.7937440),
(305, 39, 'Sulina', 45.1594444, 29.6527778),
(306, 1, 'Baia de Arieș', 46.3794444, 23.2797222),
(307, 9, 'Făurei', 45.0842000, 27.2728000),
(308, 35, 'Ocna Sibiului', 45.8747222, 24.0666667),
(309, 18, 'Bechet', 43.7803300, 23.9568000),
(310, 24, 'Căzănești', 44.6192000, 27.0100000),
(311, 27, 'Dragomirești', 47.6669000, 24.2914000),
(312, 41, 'Ocnele Mari', 45.0857476, 24.3049409),
(313, 19, 'Berești', 46.1000000, 27.8833333),
(314, 22, 'Borsec', 46.9666667, 25.5700000),
(315, 41, 'Băile Govora', 45.0800000, 24.1797222),
(316, 5, 'Vașcău', 46.4760400, 22.4774490),
(317, 5, 'Nucet', 46.4841667, 22.5613889),
(318, 36, 'Solca', 47.7000000, 25.8366667),
(319, 22, 'Băile Tușnad', 46.1469410, 25.8605630),
(320, 15, 'Vama Veche', 43.7527450, 28.5720060),
(321, 15, 'Eforie Nord', 44.0644000, 28.6269380),
(322, 15, 'Eforie Sud', 44.0229400, 28.6461640);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '\0\0', 'admin', '59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4', '9462e8eee0', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1348935746, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fe_alert`
--
ALTER TABLE `fe_alert`
  ADD CONSTRAINT `fe_alert_ibfk_1` FOREIGN KEY (`loc_id`) REFERENCES `fe_location` (`id`);

--
-- Constraints for table `fe_case`
--
ALTER TABLE `fe_case`
  ADD CONSTRAINT `fe_case_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `fe_category` (`id`),
  ADD CONSTRAINT `fe_case_ibfk_2` FOREIGN KEY (`loc_id`) REFERENCES `fe_location` (`id`);

--
-- Constraints for table `fe_location`
--
ALTER TABLE `fe_location`
  ADD CONSTRAINT `fe_location_ibfk_2` FOREIGN KEY (`county_id`) REFERENCES `fe_county` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
