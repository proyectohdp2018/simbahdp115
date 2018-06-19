/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     19/06/2018 15:39:08                          */
/*==============================================================*/


drop table if exists COSECHA;

drop table if exists PRODUCCION;

drop table if exists SIMULACIONCOSTOPRODUCCION;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: COSECHA                                               */
/*==============================================================*/
create table COSECHA
(
   IDCOSECHA            char(20) not null,
   IDPRODUCCION         char(10),
   GROSORTALLO          float,
   NUMEROHOJAS          int,
   PESORACIMO           float,
   ALTURAPLANTA         float,
   primary key (IDCOSECHA)
);

/*==============================================================*/
/* Table: PRODUCCION                                            */
/*==============================================================*/
create table PRODUCCION
(
   IDPRODUCCION         char(10) not null,
   IDCOSECHA            char(20),
   KGCOSECHADOS         float,
   PRECIOKG             float,
   UTILIDADESPERADA     float,
   COSTOHECTAREA        float,
   primary key (IDPRODUCCION)
);

/*==============================================================*/
/* Table: SIMULACIONCOSTOPRODUCCION                             */
/*==============================================================*/
create table SIMULACIONCOSTOPRODUCCION
(
   IDSIMULACIONCOSTOPRODU char(10) not null,
   NOMBRE               char(50),
   IDCOSECHA            char(20),
   TIPOSUELO            char(15),
   PROFUNDIDAD          float,
   SISTEMADRENAJE       char(15),
   PLAGAS               char(20),
   DESHOJE              char(10),
   EMBOLSE              char(15),
   LVLMAR               float,
   TEMPERATURA          float,
   PLUVIOSIDAD          float,
   LUMINOSIDAD          float,
   DENSIDADSIEMBRA      float,
   FOSFORO              float,
   POTASIO              float,
   CALCIO               float,
   MAGNESIO             float,
   BORO                 float,
   ZINC                 float,
   PH                   float,
   primary key (IDSIMULACIONCOSTOPRODU)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   NOMBRE               char(50) not null,
   APELLIDOS            char(25),
   NOMBREDEUSUARIO      char(20),
   CORREO               char(20),
   CONTRASENA           char(15),
   primary key (NOMBRE)
);

alter table COSECHA add constraint FK_PRODUCE foreign key (IDPRODUCCION)
      references PRODUCCION (IDPRODUCCION) on delete restrict on update restrict;

alter table PRODUCCION add constraint FK_PRODUCE2 foreign key (IDCOSECHA)
      references COSECHA (IDCOSECHA) on delete restrict on update restrict;

alter table SIMULACIONCOSTOPRODUCCION add constraint FK_DETERMINADA foreign key (IDCOSECHA)
      references COSECHA (IDCOSECHA) on delete restrict on update restrict;

alter table SIMULACIONCOSTOPRODUCCION add constraint FK_REALIZA foreign key (NOMBRE)
      references USUARIO (NOMBRE) on delete restrict on update restrict;

