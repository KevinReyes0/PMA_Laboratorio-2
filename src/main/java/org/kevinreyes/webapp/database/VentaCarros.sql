create database VentaCarros;

use VentaCarros;

create table Carros(
	carroId int not null auto_increment,
    marca varchar (50) not null,
    modelo varchar (50) not null,
    color varchar (50) not null,
    placa varchar (50) not null,
    primary key PK_carroId (carroId)
);

insert into Carros (marca, modelo, color, placa) values
	('Toyota', 'Yaris 2007', 'Gris', 'PE4CV'),
    ('BMW', 'M3 2019', 'Azul', 'PA4CV'),
    ('Ford', 'Fiesta 2002', 'Rojo', 'PE5CV'),
    ('Chevrolet', 'Silverado', 'Negro', 'P');
    
select * from Carros;
    