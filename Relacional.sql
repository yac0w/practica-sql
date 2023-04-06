Create table lista(
    Idtabla int,
    PRIMARY KEY (Idtabla)
);

Create table personas(
    dni int,
    nombre varchar(30),
    PRIMARY KEY (dni),
    FOREIGN KEY (nombre) references registro(nombre)
);
