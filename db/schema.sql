CREATE TABLE IF NOT EXISTS actividades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(120) NOT NULL,
  tipo ENUM('taller','visita','evento') NOT NULL,
  fecha DATETIME NOT NULL,
  plazas INT NOT NULL
);

CREATE TABLE IF NOT EXISTS reservas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  actividad_id INT NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL,
  personas INT NOT NULL DEFAULT 1,
  creada_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (actividad_id) REFERENCES actividades(id)
);

INSERT INTO actividades (titulo, tipo, fecha, plazas) VALUES
('Taller de cerámica trianera', 'taller', '2026-10-15 17:00:00', 12),
('Visita guiada al Real Alcázar', 'visita', '2026-10-18 10:30:00', 25),
('Concierto de flamenco en la Alameda', 'evento', '2026-10-24 21:00:00', 80);