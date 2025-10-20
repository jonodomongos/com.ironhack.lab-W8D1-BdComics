-- Creación de la BD
CREATE DATABASE IF NOT EXISTS comics
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_spanish_ci;
USE comics;

-- Tabla PERSONAJES
DROP TABLE IF EXISTS personajes;
CREATE TABLE personajes (
  id              INT AUTO_INCREMENT PRIMARY KEY,
  nombre          VARCHAR(80) NOT NULL UNIQUE,
  especie         ENUM('Humano','Mutante','Extraterrestre','Robot','Otro') DEFAULT 'Otro',
  frase_favorita  VARCHAR(255) NULL
);

-- Instertamos personajes
INSERT INTO personajes (nombre, especie, frase_favorita) VALUES
('Batman',       'Humano',         'I''m Batman.'),
('Spider-Man',   'Humano',         'Un gran poder conlleva una gran responsabilidad.'),
('Wolverine',    'Mutante',        'Grr!'),
('Groot',        'Extraterrestre', 'I am Groot.'),
('R2-D2',        'Robot',          'Beep-bee-bee-boop-bee-doo-weep.');

SELECT * FROM personajes;

-- Corregir un personaje
UPDATE personajes
   SET especie = 'Mutante'
 WHERE nombre = 'Spider-Man';

SELECT * FROM personajes WHERE nombre='Spider-Man';

-- Borramos un personaje
DELETE FROM personajes
 WHERE nombre = 'R2-D2';

SELECT * FROM personajes;