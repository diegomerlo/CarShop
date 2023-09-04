DROP DATABASE IF EXISTS CarShop;

CREATE DATABASE CarShop;
USE CarShop;
CREATE TABLE Usuarios(
ID_U INT AUTO_INCREMENT
PRIMARY KEY
NOT NULL ,
Gmail varchar(150) 
NOT NULL,
Contraseña varchar(150)
NOT NULL,
Nombre char(100),
Apellido1 char(100),
Apellido2 char(100),
Apellido3 char(100)
);

CREATE TABLE Vehiculos(
ID_V int
PRIMARY KEY
NOT NULL,
Nombre char(150),
Precio float(13.2),
Marca char(100),
Año_Creacion int(4),
Descripcion varchar(500)
);

INSERT INTO `vehiculos`(`ID_V`, `Nombre`, `Precio`, `Marca`, `Año_Creacion`, `Descripcion`) VALUES 
('1','Phantom II','520000','Rolls-Royce','2023','Rolls-Royce presenta la actualización del Phantom Series II, el auto más lujoso del mundo. Esta vez, la marca no develó una renovación profunda, sino todo lo contrario, al agregarle unos leves retoques en su diseño y equipamiento.En cuanto al motor tiene un 6.5 L V12 twin turbo que eroga 563 CV y 900 Nm de torque'),
('2','Chiron','2400000','bugatti','2023','El Bugatti Chiron es el sucesor del Bugatti Veyron y el máximo exponente automotriz de la cultura de los excesos. Con una producción limitada a 500 ejemplares, este superdeportivo fabricado de manera artesanal, equipa un propulsor de 1.500 CV que le permite alcanzar una velcidad máxima de 420 km/h'),
('3','Taycan Turbo S','201400','Porsche','2023','Un sedán eléctrico de 2.3 toneladas de peso que puede hacer el 0-100 km/h en sólo 2.8 segundos, además alcanza los 260 km/h como velocidad punta. Todo esto gracias a una potencia de hasta 750 hp y 774 lb-pie de par.'),
('4','488 gtb','238077','Ferrari','2023','El 488 GTB está propulsado por el nuevo motor V8 de 3902 centímetros cúbicos que entrega 670CV a 8.000 vueltas y que ofrece un par máximo de 760 Nm. Acelera de 0 a 200 km/h en 8,3 segundos y es capaz de realizar una vuelta rápida al trazado de Fiorano en un minuto y veintitrés segundos.');

USE CarShop;

CREATE TABLE Registros(
ID_R INT
NOT NULL
PRIMARY KEY,
Usuario INT,
FOREIGN KEY (Usuario) REFERENCES Usuarios(ID_U),
Vehiculo INT,
FOREIGN KEY (Vehiculo) REFERENCES Vehiculos(ID_V),
fecha DATETIME,
Visualizacion int(100)
);


/*crear otra tabla registro 
registro cada que vez que haga un click 
un procedimiento que agrupe la visulazaciones por auto y por usuario (que el usuario pueda ver).*/