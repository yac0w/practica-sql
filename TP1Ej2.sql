
Create table Categoria(
    IdCategoria int,
    descripcion varchar,
    PRIMARY KEY (IdCategoria)
);
Create table Libro(
    titulo varchar,
    categoria varchar,
    direccionTelefono int,
    ISBN int,
    Autor varchar,
    fechaPublicacion date,
    direccionEditorial varchar,
    IdCategoria int,
    PRIMARY KEY (ISBN),
    FOREIGN KEY (IdCategoria) references Categoria(IdCategoria)
);
Create table ejemplar(
    IdEjemplar int,
    codigoUbicacion int,
    fechaAlta date,
    ISBN int,
    PRIMARY KEY (IdEjemplar),
    FOREIGN KEY (ISBN) references Libro(ISBN)
);
Create table prestamo(
    fechaEntrega date,
    fechaLimite date,
    cantidad int,
    entregado boolean,
    IdPrestamo int,
    IdEjemplar int,
    PRIMARY KEY (IdPrestamo),
    FOREIGN KEY (IdEjemplar) references ejemplar(IdEjemplar)
);
Create table usuario(
    idusuario int,
    nombre varchar,
    telefono int,
    direccion varchar,
    PRIMARY KEY (idusuario)
);
Create table solicitudRechazada(
    idSolicitudRechazada int,
    fecha date,
    PRIMARY KEY (idSolicitudRechazada)
);
Create table estudiante(
    idusuario int,
    nombre varchar,
    telefono int,
    direccion varchar,
    legajo, int,
    fechainicio date,
    materias varchar,
    PRIMARY KEY (idusuario),
    UNIQUE (legajo)
);
Create table docente(
    idusuario int,
    nombre varchar,
    telefono int,
    direccion varchar,
    legajo int,
    carrera varchar,
    fechaInicio date,
    PRIMARY KEY (idusuario),
    UNIQUE (legajo)
);
Create table investigador(
    idusuario int,
    nombre varchar,
    telefono int,
    direccion varchar,
    idInvestigador int,
    participaEnProyecto varchar,
    departamentoDelProyecto varchar,
    PRIMARY KEY (idusuario),
    UNIQUE (idInvestigador)
);
