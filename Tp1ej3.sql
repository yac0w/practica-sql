create table tipo(
    idTipo int,
    nombre varchar,
    valorCuota int,
    PRIMARY KEY (idTipo)
);
Create table socio(
    nombre varchar,
    idSocio int,
    apellido varchar,
    domicilio varchar,
    telefono int,
    Idtipo int,
    idSocio int;
    PRIMARY KEY (idSocio),
    FOREIGN KEY (Idtipo) references tipo(Idtipo),
    FOREIGN KEY (idSocio) references socio(idSocio)
);
create table factura(
    id int,
    fechaEmision date,
    montoTotal int,
    montoDeportes int,
    montoCuota int,
    idSocio int
    PRIMARY KEY (id),
    FOREIGN KEY (idSocio) references socio(idSocio)
);
create table evento(
    idEvento int,
    fechaEvento date,
    cantidadHoras int,
    idSocio int,
    PRIMARY KEY (idEvento),
    FOREIGN KEY (idSocio) references socio(idSocio)
);

