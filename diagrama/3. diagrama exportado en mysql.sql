CREATE TABLE `Cabania` (
  `id` integer PRIMARY KEY,
  `alquilada` boolean,
  `capacidad` integer,
  `descripcion` varchar(500)
);

CREATE TABLE `Alquiler` (
  `id` integer PRIMARY KEY,
  `Cabania_id` integer,
  `Cliente_id` integer,
  `inicio` date,
  `final` date,
  `precio` integer
);

CREATE TABLE `Cliente` (
  `id` integer PRIMARY KEY,
  `dni` integer,
  `cuit` integer,
  `nombre` varchar(100),
  `localidad` varchar(100)
);

CREATE TABLE `Factura` (
  `id` integer PRIMARY KEY,
  `Alquiler_id` integer
);

ALTER TABLE `Cabania` ADD FOREIGN KEY (`id`) REFERENCES `Alquiler` (`Cabania_id`);

ALTER TABLE `Alquiler` ADD FOREIGN KEY (`Cliente_id`) REFERENCES `Cliente` (`id`);

ALTER TABLE `Alquiler` ADD FOREIGN KEY (`id`) REFERENCES `Factura` (`Alquiler_id`);
