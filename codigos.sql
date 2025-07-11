
#NOTAS DE ALUMNOS

create database pc4;
use pc4;

create table alumnos (
    id_alumno int primary key,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    fecha_nacimiento date not null,
    correo varchar(100) not null unique,
    celular varchar(15) not null unique,
    direccion varchar(255) not null
    carrera varchar(100) not null,
    situacion_academica varchar(50) not null,
    
);

create table carrera(
    id_carrera int primary key,
    nombre_carrera varchar(100) not null,
    duracion int not null, -- Duración en años
    descripcion text
)

create table matricula (
    id_matricula int primary key,
    id_alumno int not null,
    id_carrera int not null,
    fecha_matricula date not null,
    estado varchar(20) not null, -- Ejemplo: 'Activo', 'Inactivo'
    foreign key (id_alumno) references alumnos(id_alumno),
    foreign key (id_carrera) references carrera(id_carrera)
);















