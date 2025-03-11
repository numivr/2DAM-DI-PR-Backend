SET search_path TO bbdd_speedquiz;

CREATE TABLE jugador (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puntos INT DEFAULT 0
);

CREATE TABLE pregunta (
    id SERIAL PRIMARY KEY,
    enunciado TEXT NOT NULL
);

CREATE TABLE respuesta (
    id SERIAL PRIMARY KEY,
    id_pregunta INT REFERENCES pregunta(id) ON DELETE CASCADE,
    opcion TEXT NOT NULL,
    es_correcta BOOLEAN NOT NULL
);


---

-- Insertar preguntas y respuestas en la tabla 'pregunta' y 'respuesta'
INSERT INTO pregunta (enunciado) VALUES 
('¿Quién fundó la Compañía de Jesús?'),
('¿En qué año nació San Ignacio de Loyola?'),
('¿Cuál fue el primer país al que viajó San Ignacio en su peregrinaje?'),
('¿Qué lugar fue clave en la conversión de San Ignacio?'),
('¿En qué batalla San Ignacio resultó herido gravemente?'),
('¿Cuál es la principal obra escrita por San Ignacio de Loyola?'),
('¿Qué significa el término "Ejercicios Espirituales" en la espiritualidad ignaciana?'),
('¿Cuál es el lema más conocido de los jesuitas?'),
('¿Dónde se encuentra el lugar de nacimiento de San Ignacio de Loyola?'),
('¿Cómo se llama el Papa que aprobó la Compañía de Jesús?'),
('¿En qué año se fundó la Compañía de Jesús?'),
('¿Qué tipo de formación era central para los jesuitas desde su fundación?'),
('¿Qué ciudad es considerada la "ciudad natal" de la Compañía de Jesús?'),
('¿Qué significa "Magis" en la espiritualidad ignaciana?'),
('¿En qué ciudad Ignacio de Loyola fundó su primera comunidad de jesuitas?'),
('¿Cómo se llaman los sacerdotes de la Compañía de Jesús?'),
('¿Qué país fue la primera misión jesuita en América?'),
('¿Cómo se llama el lugar donde San Ignacio tuvo su conversión espiritual?'),
('¿Cuál de estos conceptos ignacianos representa la búsqueda del "bien mayor"?'),
('¿Qué significa la palabra "Ad Majorem Dei Gloriam"?'),
('¿Qué lugar fue sede de la primera congregación general de la Compañía de Jesús?'),
('¿Qué grupo histórico fue principal en la obra de los jesuitas durante los primeros siglos?'),
('¿En qué continente empezó la expansión misionera de los jesuitas?'),
('¿Qué actividad ignaciana busca ayudar a discernir la voluntad de Dios?'),
('¿Qué filósofo se asocia con la filosofía jesuita?'),
('¿Qué significa el "discernimiento espiritual" según Ignacio de Loyola?'),
('¿Cuál es la obra que inspiró a San Ignacio para los Ejercicios Espirituales?'),
('¿En qué batalla comenzó la conversión de San Ignacio de Loyola?'),
('¿Qué significa la frase "Encontrar a Dios en todas las cosas"?'),
('¿En qué lugar de España San Ignacio fundó el primer colegio jesuita?'),
('¿Cómo se llaman las misiones jesuitas en América?'),
('¿Qué orden religiosa fundó San Ignacio de Loyola?'),
('¿Qué importancia tiene la Virgen María en la vida de San Ignacio de Loyola?'),
('¿Qué cualidad es esencial para ser un "Jesuita" según San Ignacio?'),
('¿Qué filósofo se refiere a la espiritualidad ignaciana?'),
('¿Dónde vivió San Ignacio durante su juventud?'),
('¿Qué relación tiene San Ignacio con la Universidad de París?'),
('¿Cuál es el origen del nombre "Compañía de Jesús"?'),
('¿Qué constituciones jesuitas fueron fundamentales para la Compañía?'),
('¿Qué significa "El Cura" en la vida de San Ignacio?'),
('¿Cuándo fueron aprobadas las Constituciones de los Jesuitas?'),
('¿Cómo define San Ignacio el amor en sus ejercicios?'),
('¿Qué instituciones jesuitas son conocidas por su enfoque en la educación?'),
('¿Qué es la "Promoción Social" en la Compañía de Jesús?'),
('¿Qué significa ser "místico" en la espiritualidad ignaciana?'),
('¿Qué relación tienen los "Ejercicios Espirituales" con la práctica de la oración?'),
('¿Qué importancia tiene la "fe" en el camino espiritual ignaciano?'),
('¿Qué características tienen los "Ejercicios Espirituales" en su estructura?'),
('¿En qué siglo vivió San Ignacio de Loyola?'),
('¿Cómo se llama el sacerdote que fue compañero de San Ignacio en la fundación de la Compañía?');

-- Insertar respuestas con opciones correctas e incorrectas
INSERT INTO respuesta (id_pregunta, opcion, es_correcta) VALUES
(1, 'San Francisco Javier', FALSE),
(1, 'San Ignacio de Loyola', TRUE),
(1, 'San Pedro', FALSE),
(1, 'San Juan Bautista', FALSE),

(2, '1500', FALSE),
(2, '1491', TRUE),
(2, '1485', FALSE),
(2, '1470', FALSE),

(3, 'Italia', FALSE),
(3, 'Francia', FALSE),
(3, 'España', FALSE),
(3, 'Israel', TRUE),

(4, 'La batalla de Pavia', FALSE),
(4, 'La batalla de Lepanto', FALSE),
(4, 'La cueva de Manresa', TRUE),
(4, 'La fortaleza de Loyola', FALSE),

(5, 'Batalla de Azpeitia', FALSE),
(5, 'Batalla de Pamplona', TRUE),
(5, 'Batalla de Lepanto', FALSE),
(5, 'Batalla de San Sebastián', FALSE),

(6, 'La Vida de los Santos', FALSE),
(6, 'La Biblia', FALSE),
(6, 'Los Ejercicios Espirituales', TRUE),
(6, 'La Historia de San Ignacio', FALSE),

(7, 'Meditaciones sobre la Biblia', FALSE),
(7, 'Ejercicios Espirituales', TRUE),
(7, 'Retiro de silencio', FALSE),
(7, 'Cursos de teología', FALSE),

(8, 'Ad Majorem Dei Gloriam', TRUE),
(8, 'Veni, Vidi, Vici', FALSE),
(8, 'Fides et Ratio', FALSE),
(8, 'Ora et Labora', FALSE),

(9, 'Loyola', TRUE),
(9, 'Madrid', FALSE),
(9, 'Roma', FALSE),
(9, 'Barcelona', FALSE),

(10, 'Juan Pablo II', FALSE),
(10, 'Pedro de Ribadeneyra', FALSE),
(10, 'Pío V', TRUE),
(10, 'San Pedro Claver', FALSE),

(11, '1512', FALSE),
(11, '1540', TRUE),
(11, '1590', FALSE),
(11, '1600', FALSE),

(12, 'Educación laica', FALSE),
(12, 'Educación de fe y razón', TRUE),
(12, 'Educación solo religiosa', FALSE),
(12, 'Educación para la aristocracia', FALSE),

(13, 'París', TRUE),
(13, 'Roma', FALSE),
(13, 'Madrid', FALSE),
(13, 'Venecia', FALSE),

(14, 'Oración', FALSE),
(14, 'Discernimiento', TRUE),
(14, 'Estudio', FALSE),
(14, 'Ayuno', FALSE),

(15, 'Manresa', TRUE),
(15, 'Roma', FALSE),
(15, 'Loyola', FALSE),
(15, 'Madrid', FALSE),

(16, 'Jesuitas', TRUE),
(16, 'Franciscanos', FALSE),
(16, 'Dominicos', FALSE),
(16, 'Agustinos', FALSE),

(17, 'Fe en Dios', TRUE),
(17, 'Obediencia a los superiores', FALSE),
(17, 'Pobreza material', FALSE),
(17, 'Introspección religiosa', FALSE),

(18, 'Encuentro con Dios en todo', TRUE),
(18, 'Autodisciplina', FALSE),
(18, 'Introspección continua', FALSE),
(18, 'Ascetismo extremo', FALSE),

(19, 'En la Iglesia de Roma', FALSE),
(19, 'En el Monasterio de Manresa', TRUE),
(19, 'En el Santuario de Loyola', FALSE),
(19, 'En el Palacio Episcopal de Barcelona', FALSE),

(20, 'Estudios bíblicos', FALSE),
(20, 'Estudios en filosofía', TRUE),
(20, 'Trabajo manual', FALSE),
(20, 'Ayunos prolongados', FALSE),

(21, 'Meditar sobre los escritos de los santos', FALSE),
(21, 'Llevar una vida austera', FALSE),
(21, 'Estudios filosóficos y teológicos', TRUE),
(21, 'Ayunar constantemente', FALSE),

(22, 'Italia', FALSE),
(22, 'España', TRUE),
(22, 'Francia', FALSE),
(22, 'México', FALSE),

(23, 'Bajo la dirección de un sacerdote', FALSE),
(23, 'Orando y meditando', TRUE),
(23, 'Haciendo ejercicios físicos', FALSE),
(23, 'Estudiando teología', FALSE),

(24, 'Retiro espiritual en Loyola', FALSE),
(24, 'Ejercicios Espirituales', TRUE),
(24, 'Escuela de Filosofía', FALSE),
(24, 'Reuniones de oración', FALSE),

(25, 'Fundación de colegios', TRUE),
(25, 'Ayudar en misiones en Asia', FALSE),
(25, 'Practicar el ayuno religioso', FALSE),
(25, 'Oraciones constantes', FALSE),

(26, 'Abstenerse de comida y bebida', FALSE),
(26, 'Búsqueda de discernimiento', TRUE),
(26, 'Meditar sobre las escrituras', FALSE),
(26, 'Realizar penitencia', FALSE),

(27, 'A través de las ciencias humanas', TRUE),
(27, 'A través de la mística', FALSE),
(27, 'Por medio del sacrificio', FALSE),
(27, 'Conociendo las tradiciones religiosas', FALSE),

(28, 'Estudio y meditación', TRUE),
(28, 'Rezos constantes', FALSE),
(28, 'Vivir en pobreza', FALSE),
(28, 'Viajar en peregrinación', FALSE),

(29, 'Fe en los milagros', FALSE),
(29, 'Magis, búsqueda del bien mayor', TRUE),
(29, 'Vivir con el mínimo posible', FALSE),
(29, 'Meditación sobre el sacrificio', FALSE),

(30, 'Los Ejercicios Espirituales', TRUE),
(30, 'La Regla de San Benito', FALSE),
(30, 'La obra de San Francisco de Asís', FALSE),
(30, 'Las cartas de San Agustín', FALSE),

(31, 'Compañía de Jesús', TRUE),
(31, 'Jesuitas', TRUE),
(31, 'Clérigos Ignacianos', FALSE),
(31, 'Sociedad de Loyola', FALSE),

(32, 'Propagar el amor de Dios', TRUE),
(32, 'Buscar riqueza y bienestar', FALSE),
(32, 'Explicar la vida de los santos', FALSE),
(32, 'Desarrollar la fe por el sacrificio', FALSE),

(33, 'A través de la contemplación', TRUE),
(33, 'En la soledad absoluta', FALSE),
(33, 'Por la práctica continua de penitencia', FALSE),
(33, 'Mediante el estudio y la oración', FALSE),

(34, '1540', TRUE),
(34, '1600', FALSE),
(34, '1700', FALSE),
(34, '1800', FALSE),

(35, 'Meditación y reflexión', TRUE),
(35, 'Ayuno y sacrificio', FALSE),
(35, 'Trabajo constante', FALSE),
(35, 'Estudios en el extranjero', FALSE),

(36, 'Santos Padres', FALSE),
(36, 'Compañía de Jesús', TRUE),
(36, 'Padres Jesuitas', FALSE),
(36, 'Fraternidad Ignaciana', FALSE),

(37, 'Por medio del sacrificio material', FALSE),
(37, 'Vivir con la mayor austeridad posible', FALSE),
(37, 'Realizar una meditación profunda cada día', FALSE),
(37, 'Buscar el bien mayor o "Magis"', TRUE),

(38, 'La vida de San Francisco de Asís', FALSE),
(38, 'El libro de los Ejercicios Espirituales', TRUE),
(38, 'La regla de los franciscanos', FALSE),
(38, 'Las meditaciones de Teresa de Ávila', FALSE),

(39, 'En las montañas de los Pirineos', FALSE),
(39, 'En la fortaleza de Loyola', TRUE),
(39, 'En la batalla de Pavia', FALSE),
(39, 'En el Monasterio de Montserrat', FALSE),

(40, 'Caridad y pobreza', FALSE),
(40, 'La búsqueda de la fe a través de la meditación', TRUE),
(40, 'Rezar sin descanso', FALSE),
(40, 'Vivir de acuerdo a la regla de San Benito', FALSE),

(41, 'Estudio sobre las Escrituras', FALSE),
(41, 'Discernir la voluntad de Dios', TRUE),
(41, 'Realizar sacrificios extremos', FALSE),
(41, 'Meditar sin interrupciones', FALSE),

(42, 'Francisco de Sales', FALSE),
(42, 'Pedro Canisio', FALSE),
(42, 'Ignacio de Loyola', TRUE),
(42, 'San Benito', FALSE),

(43, 'San Francisco Javier', TRUE),
(43, 'San Pedro Claver', FALSE),
(43, 'San Luis Gonzaga', FALSE),
(43, 'San Juan de la Cruz', FALSE),

(44, 'La Inquisición', FALSE),
(44, 'La Santa Alianza', FALSE),
(44, 'El Concilio de Trento', TRUE),
(44, 'La Fundación de Loyola', FALSE),

(45, 'La fundación de la Compañía de Jesús', TRUE),
(45, 'La creación de las Escuelas Jesuíticas', FALSE),
(45, 'La evangelización en América', FALSE),
(45, 'La lucha contra la Reforma Protestante', FALSE),

(46, 'La oración diaria', FALSE),
(46, 'Las prácticas de ayuno', FALSE),
(46, 'El voto de pobreza', TRUE),
(46, 'La enseñanza de la religión', FALSE),

(47, 'Discernimiento y decisiones sabias', TRUE),
(47, 'Ejercicios de penitencia', FALSE),
(47, 'Ascetismo extremo', FALSE),
(47, 'Vivir en soledad', FALSE),

(48, 'Ignacio de Loyola y Francisco de Sales', FALSE),
(48, 'Ignacio de Loyola y Juan de Mariana', FALSE),
(48, 'Ignacio de Loyola y Pedro Canisio', TRUE),
(48, 'Francisco de Sales y Juan de la Cruz', FALSE),

(49, 'Meditaciones sobre los Evangelios', FALSE),
(49, 'Los Ejercicios Espirituales', TRUE),
(49, 'Las meditaciones de Santa Teresa de Jesús', FALSE),
(49, 'Las visiones de Santa Teresa de Ávila', FALSE),

(50, 'Inglaterra', FALSE),
(50, 'Italia', FALSE),
(50, 'Francia', FALSE),
(50, 'España', TRUE);

