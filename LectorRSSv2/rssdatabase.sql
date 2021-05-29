-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2021 a las 17:12:40
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rssdatabase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `ID` int(11) NOT NULL,
  `Titulo` text COLLATE utf8_bin NOT NULL,
  `Descripcion` text COLLATE utf8_bin NOT NULL,
  `Categoria` text COLLATE utf8_bin NOT NULL,
  `Link` text COLLATE utf8_bin NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`ID`, `Titulo`, `Descripcion`, `Categoria`, `Link`, `Fecha`) VALUES
(109, 'Invita EU a CSP a mesa sobre cambio climático', 'El Gobierno de Estados Unidos invitó a la Jefa de Gobierno, Claudia Sheinbaum, a participar en un diálogo virtual sobre cambio climático.', '', 'http://www.reforma.com/invita-eu-a-csp-a-mesa-sobre-cambio-climatico/ar2161675', '2021-04-12'),
(110, 'Reciben segunda dosis anti-Covid en cinco alcaldías', 'Este lunes se aplican segundas dosis contra Covid a adultos mayores en  Azcapotzalco, Cuajimalpa, Magdalena Contreras, MH y Milpa Alta.', '', 'http://www.reforma.com/reciben-segunda-dosis-anti-covid-en-cinco-alcaldias/ar2161613', '2021-04-12'),
(111, 'Queda Alcalde de Ecatepec en mira de MP', 'El Ministerio Público inició una carpeta de investigación en contra del morenista Fernando Vilchis, Alcalde de Ecatepec con licencia.', '', 'http://www.reforma.com/queda-alcalde-de-ecatepec-en-mira-de-mp/ar2161420', '2021-04-12'),
(112, 'Un año sin fiestas', 'En una pequeña pensión de Buenavista, 8 limusinas tipo Hummer, vehículo predilecto en las fiestas de 15 años, llevan un año estacionadas.', '', 'http://www.reforma.com/un-ano-sin-fiestas/ar2161321', '2021-04-12'),
(113, 'Propone UNAM carril reversible y adaptable', 'Sin invertir en más infraestructura para autos, se podría reducir tráfico mediante carriles reversibles que se adapten a la carga vehicular.', '', 'http://www.reforma.com/propone-unam-carril-reversible-y-adaptable/ar2161421', '2021-04-12'),
(114, 'Aplican este lunes segundas dosis en 5 alcaldías', 'Personas de más de 60 años de edad que recibieron su primera dosis de vacuna contra Covid-19 podrán recibir la segunda desde mañana.', '', 'http://www.reforma.com/aplican-este-lunes-segundas-dosis-en-5-alcaldias/ar2161297', '2021-04-12'),
(115, 'Reubican quioscos de pruebas Covid-19', 'Los quioscos para realización de pruebas para detección de Covid-19 fueron reubicados.', '', 'http://www.reforma.com/reubican-quioscos-de-pruebas-covid-19/ar2161285', '2021-04-12'),
(116, 'Lo importante es que maestros serán vacunados.-CSP', 'Tras plantear la posibilidad de que alumnos vuelvan a las aulas en semáforo amarillo, la Jefa de Gobierno, evadió reiterar si sigue vigente.', '', 'http://www.reforma.com/lo-importante-es-que-maestros-seran-vacunados-csp/ar2161245', '2021-04-11'),
(117, 'Fallan 413 altavoces durante prueba de audio', 'Durante la prueba de audio de este domingo fallaron 413 altavoces que emiten la alerta sísmica del C5, es decir 3.2%.', '', 'http://www.reforma.com/fallan-413-altavoces-durante-prueba-de-audio/ar2161174', '2021-04-11'),
(118, 'Niños del Estado Islámico asesinan a 25 soldados sirios', '\n<img src=\"http://www.eluniversal.com.mx/img/2015/07/Int/estado_silamico_ejecuin_menores_old-web.jpg\" title=\"Niños del Estado Islámico asesinan a 25 soldados sirios\"> Yihadistas publican video donde aparecen las víctimas de rodillas y en fila en el escenario del teatro romano de Palmira', '', 'http://www.eluniversal.com.mx/el-mundo/2015/ninios-del-estado-islamico-asesinan-a-25-soldados-sirios-1111830.html', '2015-07-04'),
(119, 'Fidel reaparece en reunión de maestros queseros', '\n<img src=\"http://www.eluniversal.com.mx/img/2015/07/Int/fidel_reaparece_maestros_queseros_old-web.jpg\" title=\"Fidel reaparece en reunión de maestros queseros\"> Sostuvo un amplio intercambio de más de cuatro horas con 19 maestros queseros en un instituto en el poblado del Guatao', '', 'http://www.eluniversal.com.mx/el-mundo/2015/fidel-reaparece-en-reunion-de-maestros-queseros-1111829.html', '2015-07-04'),
(120, 'Enrique Iglesias complace a miles de fans', '\n<img src=\"http://www.eluniversal.com.mx/img/2015/07/Esp/enrique_iglesias_concierto-web.jpg\" title=\"Enrique Iglesias complace a miles de fans\"> Con I like it, el cantante finalizó su concierto de anoche', '', 'http://www.eluniversal.com.mx/espectaculos/2015/enrique-iglesias-complace-fans-auditorio-1111828.html', '2015-07-04'),
(121, 'Kutcher y Mila Kunis se casarían este fin de semana', '\n<img src=\"http://www.eluniversal.com.mx/img/2015/07/Esp/kutcher_kunis_boda-web.jpg\" title=\"Kutcher y Mila Kunis se casarían este fin de semana \"> Según el portal estadounidense Page Six, la pareja dará el sí en una ceremonia privada en Los Angeles', '', 'http://www.eluniversal.com.mx/espectaculos/2015/kutcher-kunis-boda-1111827.html', '2015-07-04'),
(122, 'Van 59 muertos en el último naufragio en Filipinas', 'La Policía de Ormoc, ciudad portuaria de la provincia de Leyte, presentó anoche cargos criminales contra los dueños, el capitán y la tripulación, de acuerdo con GMA', '', 'http://www.eluniversal.com.mx/el-mundo/2015/van-59-muertos-en-el-ultimo-naufragio-en-filipinas-1111826.html', '2015-07-04'),
(123, 'PC de Oaxaca busca reducir afectaciones por lluvias', 'Felipe Reyna exhortó a estar preparados para atender contingencias y emergencias ante la temporada de lluvias y ciclones tropicales en el estado a fin de implementar medidas que reduzcan los riesgos', '', 'http://www.eluniversal.com.mx/estados/2015/pc-de-oaxaca-busca-reducir-afectaciones-por-lluvias-1111825.html', '2015-07-04'),
(124, 'Video: Tiburón blanco ataca jaula de buzos en Sudáfrica', '\n<img src=\"http://www.eluniversal.com.mx/img/2015/07/Int/tiburon_jaula_buzos-web.jpg\" title=\"Video: Tiburón blanco ataca jaula de buzos en Sudáfrica\"> El tiburón arremetió contra la jaula en la que se protegía Hillary Rae Petroski quien captó con su cámara el momento del ataque', '', 'http://www.eluniversal.com.mx/el-mundo/2015/video-tiburon-blanco-ataca-jaula-de-buzos-en-sudafrica-1111818.html', '2015-07-04'),
(125, 'Manual privilegia DH, revira Sedena a Centro Prodh', 'Asegura la Secretaría de la Defensa Nacional que las instrucciones del personal que participó en el Caso Tlatlaya siempre buscaron proteger la vida de las personas y de la tropa', '', 'http://www.eluniversal.com.mx/nacion-mexico/2015/manual-operativo-privilegia-dh-revira-sedena-a-centro-prodh-1111824.html', '2015-07-04'),
(151, 'Evalúan marcha LGBT+ híbrida', 'Organizadores de la marcha LGBTI evalúan que se realice este año en formato híbrido.', '', 'http://www.reforma.com/evaluan-marcha-lgbt-hibrida/ar2184837', '2021-05-17'),
(152, 'Participa CDMX en fase de ensayo de vacuna vs VIH', 'La Ciudad de México participa en la fase tres del ensayo de una vacuna contra VIH.', '', 'http://www.reforma.com/participa-cdmx-en-fase-de-ensayo-de-vacuna-vs-vih/ar2184814', '2021-05-17'),
(153, 'Alistan carril para el Metrobús en Av. Tláhuac', 'Cuadrillas de trabajadores balizan con pintura amarilla un carril exclusivo para unidades de transporte público.', '', 'http://www.reforma.com/alistan-carril-para-el-metrobus-en-av-tlahuac/ar2184815', '2021-05-17'),
(154, 'Toman muestras de concreto en zona cero', 'Peritos de la empresa noruega DNV empezaron la toma de muestras de concreto en la zona cero, en Avenida Tláhuac.', '', 'http://www.reforma.com/toman-muestras-de-concreto-en-zona-cero/ar2184771', '2021-05-17'),
(155, 'Omite planta Atotonilco detallar manejo de agua', 'A pesar de la sequía, 60 mil litros de agua son desechados como aguas residuales pero se desconoce cómo los distribuye planta de Atotonilco.', '', 'http://www.reforma.com/omite-planta-atotonilco-detallar-manejo-de-agua/ar2184457', '2021-05-17'),
(156, 'Definirán muestras de concreto', 'Expertos de la empresa noruega DNV realizarán recorrido en la zona del desplome de una trabe de la L-12 para tomar muestras de concreto.', '', 'http://www.reforma.com/definiran-muestras-de-concreto/ar2184521', '2021-05-17'),
(157, 'Por el derecho a transitar seguros', 'Una valla de concreto sobre la México-Tacuba fue el motor para que inconformes acudieran a protestar para exigir sus derechos peatonales.', '', 'http://www.reforma.com/por-el-derecho-a-transitar-seguros/ar2184554', '2021-05-17'),
(158, 'Tienen alta morosidad microcréditos locales', 'Microcréditos como los entregados por CDMX a comercios y particulares, como apoyo por la pandemia, tienen altos niveles de incumplimiento.', '', 'http://www.reforma.com/tienen-alta-morosidad-microcreditos-locales/ar2184464', '2021-05-17'),
(159, 'Acuerdan revisar descargas en Presa Madín', 'Integrantes de la Comisión de Cuenca de Presa Madín acordaron realizar recorridos de inspección donde hay reportes de descargas ilegales.', '', 'http://www.reforma.com/acuerdan-revisar-descargas-en-presa-madin/ar2184525', '2021-05-17'),
(160, 'Señalan obra ilegal en Tecamachalco', 'Vecinos de Tecamachalco, en Naucalpan, denunciaron la construcción de un edificio de siete niveles en una zona donde sólo se permiten tres.', '', 'http://www.reforma.com/senalan-obra-ilegal-en-tecamachalco/ar2184419', '2021-05-17'),
(161, 'Dará UNAM becas para víctimas de L-12', 'La Universidad Nacional Autónoma de México (UNAM) ofreció brindar becas para las víctimas del desplome de una trabe y convoy en la L-12.', '', 'http://www.reforma.com/dara-unam-becas-para-victimas-de-l-12/ar2185018', '2021-05-18'),
(162, 'Licita Sacmex laboratorio de análisis', 'Sacmex publicó convocatoria para implementar laboratorio de análisis para apoyo en sistemas de macromedición de agua potable.', '', 'http://www.reforma.com/licita-sacmex-laboratorio-de-analisis/ar2184984', '2021-05-18'),
(163, 'Denuncia mamá de Brandon a Sheinbaum y Ebrard', 'Marisol Tapia presentó ante Contraloría local una denuncia contra funcionarios y ex funcionarios involucrados en el siniestro de la L12.', '', 'http://www.reforma.com/denuncia-mama-de-brandon-a-sheinbaum-y-ebrard/ar2184863', '2021-05-17'),
(164, 'Boletín: Primer ataque de EE.UU. y aliados árabes contra Estado Islámico en Siria y otras noticias', 'Además, Israel mata a dos palestinos que presuntamente asesinaron a tres jóvenes israelíes en junio, OMS advierte que para noviembre podría haber 20.000 casos de ébola, y arranca cumbre del clima de la ONU en Nueva York. La actualidad en 1 minuto.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/video_fotos/2014/09/140923_video_boletin_noticias_re.shtml', '2014-09-23'),
(165, 'Santos: \"No le estoy dando el país a las FARC\"', 'El presidente envió desde Nueva York a los potenciales inversores en el país negando que vaya hacia el \"castrochavismo\".', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140923_ultnot_colombia_farc_santos_az.shtml', '2014-09-23'),
(166, 'Fernández denuncia que con caso \"fondos buitres\" quieren poner de rodillas a Argentina', 'La presidenta de Argentina está en Nueva York para participar en la Asamblea General de Naciones Unidas.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140922_ultnot_argentina_cristina_fernandez_fondos_az.shtml', '2014-09-23'),
(167, '¿Por qué internet en Venezuela es tan lento?', 'Recientes estudios han revelado que la conexión de internet en Venezuela es de las más lentas de América Latina. BBC Mundo le explica por qué ver un video de corrido es un lujo de pocos en el país.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140922_venezuela_internet_lento_dp.shtml', '2014-09-23'),
(168, 'Vuelven a posponer el juicio a Leopoldo López', 'El mal estado de salud de uno de los estudiantes que también están siendo juzgados junto al líder opositor venezolano llevó a la suspensión de la audiencia hasta el próximo 30 de septiembre.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140922_ultnot_venezuela_leopolod_lopez_az.shtml', '2014-09-22'),
(169, 'Chile: roban US$3,3 millones a la casa de empeño \"Tía Rica\"', 'Se trataría del segundo robo más grande en lo que va del año después del ocurrido en agosto cuando sustrajeron cerca de US$10 millones de un camión de valores cerca del aeropuerto de Santiago.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140922_ultnot_chile_tia_rica_robo_millones_amv.shtml', '2014-09-22'),
(170, 'Boletín: más de 130.000 sirios kurdos cruzan a Turquía huyendo de Estado Islámico y otras noticias', 'Además, estudiantes inician boicot por los planes de China de vetar candidatos en comicios de Hong Kong en 2017, nuevo derrame en mina de cobre en México y la nave Maven comienza a orbitar Marte para estudiar su atmósfera. La actualidad en 1 minuto.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/video_fotos/2014/09/140922_video_boletin_noticias_re.shtml', '2014-09-22'),
(171, 'Maduro anuncia un plan de desarme de civiles en Venezuela', 'El presidente de Venezuela, el segundo país por tasa de homicidios del mundo según la ONU, lanzó el programa para incentivar la entrega voluntaria de armas.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140922_ultnot_venezuela_plan_desarme_az.shtml', '2014-09-22'),
(172, 'Alertan sobre nuevo derrame tóxico en México', 'Las autoridades mexicanas emitieron una nueva alerta sobre un derrame tóxico en el río Bacanuchi desde una mina de cobre administrada por el gigante minero Grupo México, en Sonora.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140921_ultnot_mexico_alerta_toxica_jgc.shtml', '2014-09-22'),
(173, 'Establecen comisión para investigar tala ilegal en Perú', 'La primera ministra peruana, Ana Jara Velásquez, dijo que la comisión tendrá todos los poderes necesarios para detener la extracción ilegal de madera.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140921_ultnot_peru_comision_tala_ilegal_jgc.shtml', '2014-09-21'),
(174, 'Los consejos del Nobel mexicano que descubrió gases del agujero de ozono', 'El Nobel mexicano Mario Molina, quien identificó los gases que destruyen la capa de ozono y ayudó a resolver uno de los grandes desafíos del planeta, respondió a las preguntas de los lectores de BBC Mundo.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140921_ciencia_nobel_mario_molina_nobel_ozono_responde_lectores_np.shtml', '2014-09-21'),
(175, 'México: encuentran cadáver de británica desaparecida por huracán Odile', 'La mujer había desaparecido junto a su marido, con quien vivía en un barco en Baja California. El hombre continúa en paradero desconocido.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_odile_encuentran_cadaver_britanica_az.shtml', '2014-09-21'),
(176, 'Cristina Fernández dice estar amenazada por el grupo radical Estado Islámico', 'La presidenta argentina reveló poco después de entrevistarse con el papa en el Vaticano que dos policías denunciaron la existencia de amenazas contra su persona.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_argentina_fernandez_estado_islamico_az.shtml', '2014-09-21'),
(177, 'Colombia: policía incauta más de dos toneladas de droga', 'La policía desarticuló una banda de narcotraficantes con 34 detenciones. Los cabecillas estaban en Medellín.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_colombia_drogas_operacion_az.shtml', '2014-09-21'),
(178, 'Guatemala: seis muertos en enfrentamiento por construcción de carretera', 'Una discusión sobre un proyecto carretero derivó en un enfrentacimento entre los miembros de una comunidad a unos 30 kilómetros de Ciudad de Guatemala.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_guatemala_violencia_carretera_az.shtml', '2014-09-20'),
(179, 'Qué significa la liberación de Iván Simonovis, el \"preso político\" más simbólico de Venezuela', 'La salida de la cárcel de Iván Simonovis, condenado por las muertes del golpe contra Hugo Chávez en 2002, era una de las condiciones de la oposición para dialogar con el gobierno. ¿Qué repercusiones tendrá este movimiento?', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140920_ultnot_venezuela_simonovis_significado_liberacion_lav.shtml', '2014-09-20'),
(180, 'Las dos vidas de Cantinflas', 'Cantinflas fue el actor cómico más querido de México. Pero su intérprete, Mario Moreno, tuvo una vida lejana a la imagen de la pantalla. El paso del blanco y negro al color también cambió al personaje.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140920_cantinflas_mexico_doble_vida_an.shtml', '2014-09-20'),
(412, 'Venezuela: casa por cárcel para el comisario Iván Simonovis, prominente símbolo opositor', 'El ex jefe policial, condenado por las muertes del golpe contra Hugo Chávez en 2002, recibió medida de casa por cárcel por razones de salud. Para la oposición se trata de uno de los más prominentes \"presos políticos\".', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_venezuela_oposicion_simonovis_yv.shtml', '2014-09-20'),
(413, 'Dos británicos desaparecidos en México por huracán Odile', 'BBC Mundo confirmó que una pareja británica se encuentra desaparecida desde hace varios días luego de que el huracán Odile la sorprendiera en su velero en Baja California, México.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140920_ultnot_mexico_huracan_odile_britanicos_desaparecidos_jcps.shtml', '2014-09-20'),
(414, 'Evo Morales dice que le gustaría abrir un restaurante cuando deje el poder', 'En una entrevista, Morales mostró su preocupación por la falta de un sucesor en el liderazgo de su partido, el Movimiento Al Socialismo (MAS) una vez que él se retire.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140919_ultnot_bolivia_morales_elecciones_restaurante_lav.shtml', '2014-09-20'),
(415, 'Trasladan a expresidente salvadoreño a celda común', 'El exmandatario de El Salvador Franciso Flores, acusado de apoderarse de varios millones de dólares, fue trasladado desde su casa a una celda común.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140919_ultnot_el_salvador_trasladan_francisco_flores_carcel_jcps.shtml', '2014-09-19'),
(416, 'México: hallan muerto a hermano del líder de los Templarios', 'Aquiles Gómez Martínez, hermano de Servando Gómez, alias \"La Tuta\", fue encontrado muerto en el puerto de Lázaro Cárdenas, Michoacán. Las autoridades dicen que se suicidó', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140919_ultnot_caballeros_templarios_hermano_tuta_amv.shtml', '2014-09-19'),
(417, 'Polémica por las Barbie y Ken religiosos en Argentina', 'Una muestra que retrata las figuras de Barbie y Ken adaptados como figuras católicas desató la polémica en Argentina.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140919_cultura_argentina_barbie_ken_irm_lav.shtml', '2014-09-19'),
(418, 'Estrato 1, estrato 6: cómo los colombianos hablan de sí mismos divididos en clases sociales', 'Con la factura de servicios públicos en Colombia llega un recordatorio mensual del estrato socioeconómico al que uno pertenece. Nuestro corresponsal en Bogotá reflexiona sobre esta práctica.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140919_colombia_fooc_estratos_aw.shtml', '2014-09-19'),
(419, 'Conexión precoz: una aventura con Nauta', 'En nuestras \"Voces desde Cuba\", Alejandro Rodríguez nos cuenta cómo es vivir con tan solo 13 minutos de conexión a Internet.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/blogs/2014/09/140919_voces_desde_cuba_alejandro_rodriguez_conexion_precoz.shtml', '2014-09-19'),
(465, 'Corte chilena rechaza dejar en libertad a acusado de muerte de Víctor Jara', 'El exmayor del Ejército Hernán Chacón Soto deberá permanecer en prisión, luego de la decisión de la Corte de Apelaciones de Santiago.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140915_ultnot_chile_rechazo_libertad_muerte_victor_jara_en.shtml', '2014-09-15'),
(466, 'EE.UU. dice que Venezuela y Bolivia han fallado en sus acuerdos antinarcóticos', 'Así queda registrado en un memorando que Obama le envió a su secretario de Estado, John Kerry, y que fue publicado este lunes por la Casa Blanca.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140915_ultnot_eeuu_obama_memorando_drogas_venezuela_bolivia_tsb.shtml', '2014-09-15'),
(467, 'Brasil: operativo para desmantelar red de policías envueltos en casos de soborno', 'Entre los detenidos está el coronel Alexandre Fontanelle Ribeiro, el jefe de operaciones especiales en Río de Janeiro y lidera las fuerzas de choque de la ciudad.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140915_ultnot_operacion_contra_policia_rio_janeiro_bd.shtml', '2014-09-15'),
(468, 'México: sigue escándalo por insulto racista contra Ronaldinho', 'Un político de Querétaro, ciudad sede del equipo que contrató al astro, calificó al brasileño de \"simio\", por lo que se desató una tormenta en las redes sociales.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140915_ultnot_mexico_ronaldinho_insulto_racista_jcps.shtml', '2014-09-15'),
(469, 'Lo que se sabe sobre la \"misteriosa enfermedad\" que desconcierta a los médicos en Venezuela', 'Mientras doctores informan de una enfermedad desconocida que apareció en un hospital de la ciudad de Maracay y ha causado más de 10 muertos en el país, el gobierno dice que eso es \"absolutamente falso\".', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140915_venezuela_enfermedad_maracay_dp.shtml', '2014-09-15'),
(470, 'Colombia: matan a dos contratistas que reparaban oleoducto de Ecopetrol', 'La petrolera colombiana confirmó que este domingo se registró el suceso donde perdieron la vida los dos trabajadores, mientras inspeccionaban el oleoducto Caño Limón Coveás, ubicado en la provincia Norte Santander.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140915_ultnot_ecopetrol_colombia_asesinados_egn.shtml', '2014-09-15'),
(471, 'Boletín: EE.UU. lleva a cabo ejercicios militares en Ucrania y otras noticias', 'Además, cumbre internacional en París intenta acordar estrategia contra Estado Islámico, México en alerta por huracán Odile y anuncian dónde se producirá el aterrizaje de la sonda Rosetta sobre un cometa. La actualidad en 1 minuto.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/video_fotos/2014/09/140915_video_boletin_notis_new_sc.shtml', '2014-09-15'),
(472, '¿Por qué Brasil construye una torre más alta que la Eiffel en medio del Amazonas?', 'En el corazón de la Amazonía, Brasil comenzó a alzar una estructura altísima. Te contamos para qué servirá este enorme armazón de acero, un vigía de la selva tropical.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140915_ciencia_observatorio_torre_alta_amazonas_np.shtml', '2014-09-15'),
(473, 'Huracán Odile toca tierra en México y cae a categoría 2', 'Las autoridades mexicanas prepararon refugios para más de 30.000 personas en las zonas costeras más vulnerables, entre las que se cuentan áreas populares con los turistas.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140914_ultnot_mexico_huracan_odile_en.shtml', '2014-09-15'),
(474, 'El vestido de la mujer más odiada de México', 'El Instituto de Antropología resguarda un huipil o blusa adornada que se cree perteneció a La Malinche, traductora y pareja de Hernán Cortés y una de las mujeres más controvertidas de México.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140915_malinche_mujer_mas_odiada_mexico_an.shtml', '2014-09-15'),
(475, 'Brasil construye torre en el Amazonas para monitorear el clima', 'La Torre Atto tendrá 325 metros de altura y en ella habrá un observatorio que permitirá monitorear las condiciones climáticas así como recolectar información sobre los gases del efecto invernadero.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140914_ultnot_amazonas_torre_observatorio_clima_ng.shtml', '2014-09-14'),
(476, 'Ecuador: Correa convoca a sus partidarios a marcha de apoyo a su gestión', 'La idea es hacer frente a una manifestación contra la política laboral del gobierno ecuatoriano. \"Si el miércoles ellos son 3.000, nosotros seremos 30.000 en la Plaza Grande\", dijo el presidente.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140913_ultnot_rafael_correa_convoca_marcha_simpatizanres_bd.shtml', '2014-09-14'),
(477, 'Inauguran memorial de Víctor Jara en Santiago de Chile', 'Joan Jara, la viuda del cantautor, fue la encargada de presentar el mural en el que se puede leer \"Por el derecho a vivir en paz\", en una ceremonia a la que también asistió la ministra de Cutlura de Chile.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140913_ultnot_inauguran_memorial_victor_jara_bd.shtml', '2014-09-14'),
(478, 'La bebé brasileña con dos madres y un padre', 'BBC Mundo le explica el caso de una recién nacida que figurará en el registro como hija de tres personas.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140913_ultnot_brasil_bebe_dos_madres_un_padre_bd.shtml', '2014-09-13'),
(479, 'Protestas violentas en Caracas dejan más de 20 detenidos', 'Una protesta en Caracas fue dispersada con gases lacrimógenos y dejó 24 detenidos. También se reportaron protestas y violencia en la ciudad de Barquisimeto, estado Lara.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_venezuela_protestas_bello_monte_dp.shtml', '2014-09-13'),
(480, 'Loma Miranda: el controvertido veto que dejó en shock a los dominicanos', 'Un movimiento liderado por un sacerdote pretende frenar el proyecto minero de Loma Miranda, en República Dominicana. El presidente Medina dio mediante un veto luz verde a la iniciativa. ¿Le pasará factura?', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/noticias/2014/09/140912_alatina_rdominicana_loma_miranda_lav.shtml', '2014-09-13'),
(481, 'Manifestación en Bogotá por la muerte del joven Sergio Urrego', 'Los allegados al estudiante de 16 años que se suicidó el pasado 4 de agosto mostraron su rechazo al acoso y la discriminación que sufrió desde que reconoció tener una relación sentimental con un compañero.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_colombia_bogota_manifestacion_en.shtml', '2014-09-12'),
(482, 'Suspenden un vuelo en Argentina por una falsa amenaza de bomba', 'La policía argentina arrestó en la mañana del viernes a un hombre que hizo una falsa amenaza de bomba antes del despegue de un vuelo de la aerolínea LAN entre Mendoza y Buenos Aires, según informa la prensa argentina.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_suspenden_vuelo_argentina_falsa_amenaza_bomba_fp.shtml', '2014-09-12'),
(483, 'Arrestan a tres personas que portaban explosivos en Chile', 'Las autoridades chilenas arrestaron en la norteña ciudad de Antofagasta a tres personas que portaban materiales explosivos más destructivos que los utilizados en el atentado del lunes que dejó 14 heridos en Santiago, según in', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_chile_explosivos_arrestos_fp.shtml', '2014-09-12'),
(484, 'Río seguirá con pacificación de favelas tras muerte de comandante policial', 'Autoridades en Brasil informaron que seguirán adelante con el proyecto que establecería una presencia policial permanente en las favelas de Río de Janeiro, a pesar de la muerte de un comandante de policía.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_brasil_policia_rio_favelas_fp.shtml', '2014-09-12'),
(485, 'Chile: liberan a diputado procesado por muerte a opositores de Pinochet', 'Miembro del partido conservador Renovación Nacional (RN), Martínez cumplía detención provisional en Valdivia desde el jueves por su presunta participación en la muerte de tres activistas políticos ocurrida en 1981.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_chile_liberan_rosauro_martinez_lav.shtml', '2014-09-12'),
(486, 'Boletín: Pistorius, culpable de homicidio culposo y otras noticias', 'Además, la CIA afirma que Estado Islámico tiene el triple de combatientes de lo pensado, entran en efecto nuevas sanciones contra Rusia  y Cuba anuncia envío de contingente de médicos a Sierra Leona por la crisis del ébola. La actualidad en 1 minuto.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/video_fotos/2014/09/140912_video_boletin_noticias_re.shtml', '2014-09-12'),
(487, 'Cuba enviará asistencia médica a Sierra Leona para combatir ébola', 'Cuba enviará más de 160 trabajadores de la salud a Sierra Leona, incluyendo médicos, enfermeros, epidemiólogos y otros especialistas en control de infecciones para asistir en el tratamiento de las víctimas de ébola.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/ultimas_noticias/2014/09/140912_ultnot_cuba_ebola_wbm.shtml', '2014-09-12'),
(488, 'Colombia: \"Somos unos vivientes muertos\"', 'Un grupo de valerosas mujeres del municipo colombiano de Buenaventura fue reconocido con el Premio Nansen para los Refugiados, con el que ACNUR celebra heroes y heroínas del quehacer humanitario.', '838c4a35646a30e5c3514edd0fb53928', 'http://www.bbc.co.uk/mundo/video_fotos/2014/09/140912_video_colombia_mujeres_buenaventura_am.shtml', '2014-09-12'),
(495, 'Sufren personas LGBT+ secuelas por pandemia', 'Durante la pandemia al menos 40% de personas LGBT+ de 18 y 19 años de edad tuvo pensamientos suicidas y 15 por ciento intentó hacerlo.', '', 'http://www.reforma.com/sufren-personas-lgbt-secuelas-por-pandemia/ar2185182', '2021-05-18'),
(496, 'Avanza proceso en INE por spots de Sheinbaum', 'El proceso de investigación por las acusaciones de spots ilegales de la Jefa de Gobierno, Claudia Sheinbaum, avanza.', '', 'http://www.reforma.com/avanza-proceso-en-ine-por-spots-de-sheinbaum/ar2185195', '2021-05-18'),
(497, 'Evidencia obra ilegal PDU de Naucalpan', 'El nuevo PDU de Naucalpan será impugnado por los vecinos, expuso el presidente de la Asociación de Colonos de Tecamachalco, Meni Cohen.', '', 'http://www.reforma.com/evidencia-obra-ilegal-pdu-de-naucalpan/ar2185076', '2021-05-18'),
(498, 'Operarán 15 trenes de Atlalilco a Mixcoac', 'La revisión del túnel subterráneo de la L-12 ya va al 93% y, cuando concluya, se estima que el Metro reabrirá el tramo Atlalilco-Mixcoac.', '', 'http://www.reforma.com/operaran-15-trenes-de-atlalilco-a-mixcoac/ar2185107', '2021-05-18'),
(499, 'Lo extrañamos...queremos Metro', 'Usuarios de la L-12 no entienden de levantamientos de concreto, pero en camiones llenos, aseguran que un carril exclusivo les vendría bien.', '', 'http://www.reforma.com/lo-extranamos-queremos-metro/ar2185102', '2021-05-18'),
(500, 'Arranca vacunación de maestros en CDMX', 'Personal de salud ha empezado a inmunizar contra Covid-19 a profesores y personal educativo en 8 sedes de la Ciudad.', '', 'http://www.reforma.com/arranca-vacunacion-de-maestros-en-cdmx/ar2185396', '2021-05-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feeds`
--

CREATE TABLE `feeds` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feeds`
--

INSERT INTO `feeds` (`id`, `link`) VALUES
(6, 'http://archivo.eluniversal.com.mx/rss/universalmxm.xml'),
(8, 'https://www.reforma.com/rss/ciudad.xml'),
(11, 'http://www.bbc.co.uk/mundo/temas/america_latina/index.xmle');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
