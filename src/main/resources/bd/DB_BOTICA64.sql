-- borra la bd si existe
DROP DATABASE IF EXISTS botica64;
-- creamos la bd
CREATE DATABASE botica64;
-- activamos la bd
USE botica64;

CREATE TABLE tb_usuario(
id_usuario int auto_increment primary key,
username varchar(255),
password varchar(255)
);

CREATE TABLE tb_cliente (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nombre_completo VARCHAR(255),
  direccion VARCHAR(255),
  telefono VARCHAR(255),
  correo_electronico VARCHAR(255),
  DNI VARCHAR(255),
  PRIMARY KEY (id_cliente)
);

CREATE TABLE tb_cargo (
id_cargo int primary key,
descripcion varchar(255)
);

CREATE TABLE tb_empleado (
  id_empleado int NOT NULL,
  nombre VARCHAR(255),
  id_cargo int not null,
  id_usuario int not null,
  salario DECIMAL(10,2),
  DNI VARCHAR(255),
  PRIMARY KEY (id_empleado),
  foreign key (id_cargo) references tb_cargo (id_cargo),
  foreign key (id_usuario) references tb_usuario (id_usuario)
);

CREATE TABLE tb_ifa (
id_ifa int not null,
nombre_ifa varchar(255),
primary key(id_ifa)
);

CREATE TABLE tb_categoria (
id_categoria int not null,
descripcion varchar(255),
primary key (id_categoria)
);

CREATE TABLE tb_laboratorio(
id_laboratorio int primary key,
nombre_laboratorio varchar(255)
);

CREATE TABLE tb_producto (
  id_producto int auto_increment NOT NULL,
  nombre_producto VARCHAR(255),
  id_laboratorio int not null,
  id_ifa int not null,
  stock_unidades INT,
  precio_unidad DECIMAL(10,2),
  precio_empaq DECIMAL(10,2),
  fecha_de_caducidad DATE,
  id_categoria int not null,
  PRIMARY KEY (id_producto),
  foreign key (id_categoria) references tb_categoria (id_categoria),
  foreign key (id_laboratorio) references tb_laboratorio (id_laboratorio),
  foreign key (id_ifa) references tb_ifa (id_ifa)
);

/*
CREATE TABLE tb_proveedor (
  id_proveedor INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255),
  direccion VARCHAR(255),
  telefono VARCHAR(255),
  correo_electronico VARCHAR(255),
  PRIMARY KEY (id_proveedor)
);
*/
CREATE TABLE tb_venta (
  id_venta INT NOT NULL AUTO_INCREMENT,
  id_empleado int not null,
  id_cliente INT not null,
  fecha_de_venta DATE,
  metodo_de_pago VARCHAR(255),
  total decimal(10,2),
  PRIMARY KEY (id_venta),
  FOREIGN KEY (id_empleado) REFERENCES tb_empleado(id_empleado),
  FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE tb_detalle_venta (
id_detalle_venta int auto_increment primary key,
id_venta int not null,
id_producto int not null,
cantidad INT,
precio decimal(10,2),
subtotal decimal(10,2),
foreign key (id_venta) references tb_venta (id_venta),
foreign key (id_producto) references tb_producto (id_producto)
);

select * from tb_producto;

insert into tb_cargo values(1,"Farmaceutico");
insert into tb_cargo values(2,"Cajero");

insert into tb_usuario values(1,"U001","123456");
insert into tb_usuario values(2,"U002","123456");

insert into tb_empleado values(1,"Rodriguez Fernandez Maria","1",1,1500,725671);
insert into tb_empleado values(2,"Marcheveli Rios Vanesa","2",2,1000,45121495);

insert into tb_ifa values(1,"NO REGISTRADO");
insert into tb_ifa values(2,"ACETILCISTEINA");
insert into tb_ifa values(3,"ACICLOVIR");
insert into tb_ifa values(4,"ACIDO ACETILSALICILICO");
insert into tb_ifa values(5,"ACIDO FOLICO");
insert into tb_ifa values(6,"ACIDO FOSFORICO");
insert into tb_ifa values(7,"ACIDO GAMMA AMINOBUTIRICO");
insert into tb_ifa values(8,"ACIDO SALICILICO");
insert into tb_ifa values(9,"ACIDO TRANEXAMICO");
insert into tb_ifa values(10,"ALBENDAZOL");
insert into tb_ifa values(11,"ALGESTONA");
insert into tb_ifa values(12,"AMBROXOL");
insert into tb_ifa values(13,"AMIKACINA");
insert into tb_ifa values(14,"AMOXICILINA");
insert into tb_ifa values(15,"AMPICILINA");
insert into tb_ifa values(16,"ASPARTAMO");
insert into tb_ifa values(17,"ATORVASTATINA");
insert into tb_ifa values(18,"AZITROMICINA");
insert into tb_ifa values(19,"BACITRACINA");
insert into tb_ifa values(20,"BENCIDAMINA");
insert into tb_ifa values(21,"BENZATINA BENCILPENICILINA");
insert into tb_ifa values(22,"BENZOCAINA");
insert into tb_ifa values(23,"BETAMETASONA");
insert into tb_ifa values(24,"BISACODILO");
insert into tb_ifa values(25,"BISMUTO SUBSALICILATO");
insert into tb_ifa values(26,"BORICO ACIDO");
insert into tb_ifa values(27,"BORNEOL");
insert into tb_ifa values(28,"BROMHEXINA");
insert into tb_ifa values(29,"BROMURO DE IPRATROPIO");
insert into tb_ifa values(30,"CAFEINA ANHIDRA");
insert into tb_ifa values(31,"CAPTOPRIL");
insert into tb_ifa values(32,"CARBOCISTEINA");
insert into tb_ifa values(33,"CARVEDILOL");
insert into tb_ifa values(34,"CEFACLOR");
insert into tb_ifa values(35,"CEFADROXILO");
insert into tb_ifa values(36,"CEFALEXINA");
insert into tb_ifa values(37,"CEFAZOLINA");
insert into tb_ifa values(38,"CEFTRIAXONA");
insert into tb_ifa values(39,"CEFUROXIMA");
insert into tb_ifa values(40,"CELECOXIB");
insert into tb_ifa values(41,"CENTELLA ASIATICA");
insert into tb_ifa values(42,"CETIRIZINA");
insert into tb_ifa values(43,"CIANOCOBALAMINA");
insert into tb_ifa values(44,"CICLOBENZAPRINA");
insert into tb_ifa values(45,"CINARIZINA");
insert into tb_ifa values(46,"CIPROFIBRATO");
insert into tb_ifa values(47,"CIPROFLOXACINO");
insert into tb_ifa values(48,"CITRATO DE SODIO");
insert into tb_ifa values(49,"CLARITROMICINA");
insert into tb_ifa values(50,"CLINDAMICINA");
insert into tb_ifa values(51,"CLOBETASOL");
insert into tb_ifa values(52,"CLONIXINO");
insert into tb_ifa values(53,"CLOPIDOGREL");
insert into tb_ifa values(54,"CLORANFENICOL");
insert into tb_ifa values(55,"CLORFENAMINA");
insert into tb_ifa values(56,"CLORHEXIDINA");
insert into tb_ifa values(57,"CLORURO DE BENZALCONIO");
insert into tb_ifa values(58,"CLORURO DE CALCIO");
insert into tb_ifa values(59,"CLORURO DE SODIO");
insert into tb_ifa values(60,"CLOTRIMAZOL");
insert into tb_ifa values(61,"DEFLAZACORT");
insert into tb_ifa values(62,"DESLORATADINA");
insert into tb_ifa values(63,"DEXAMETASONA");
insert into tb_ifa values(64,"DEXTROMETORFANO");
insert into tb_ifa values(65,"DEXTROMETORFANO BROMHIDRATO MONOHIDRATO");
insert into tb_ifa values(66,"DICLOFENACO");
insert into tb_ifa values(67,"DICLOXACILINA");
insert into tb_ifa values(68,"DIMENHIDRINATO");
insert into tb_ifa values(69,"DIMETICONA");
insert into tb_ifa values(70,"DINITRATO DE ISOSORBIDA");
insert into tb_ifa values(71,"DIOSMINA");
insert into tb_ifa values(72,"DOBESILATO DE CALCIO");
insert into tb_ifa values(73,"DOXICICLINA");
insert into tb_ifa values(74,"EDETATO DE PIPERAZINA Y CALCIO");
insert into tb_ifa values(75,"ENALAPRIL");
insert into tb_ifa values(76,"ESTRADIOL CIPIONATO");
insert into tb_ifa values(77,"ETAMSILATO");
insert into tb_ifa values(78,"ETORICOXIB");
insert into tb_ifa values(79,"FENAZOPIRIDINA");
insert into tb_ifa values(80,"FLUCONAZOL");
insert into tb_ifa values(81,"FLUDROCORTISONA");
insert into tb_ifa values(82,"FLUORHIDROCORTISONA ACETATO");
insert into tb_ifa values(83,"FOSFATO DE SODIO");
insert into tb_ifa values(84,"FURAZOLIDONA");
insert into tb_ifa values(85,"FUROSEMIDA");
insert into tb_ifa values(86,"GEMFIBROZILO");
insert into tb_ifa values(87,"GENTAMICINA");
insert into tb_ifa values(88,"GLIBENCLAMIDA");
insert into tb_ifa values(89,"GUAIFENESINA");
insert into tb_ifa values(90,"HIDROCLOROTIAZIDA");
insert into tb_ifa values(91,"HIDROCORTISONA");
insert into tb_ifa values(92,"HIDROSMINA");
insert into tb_ifa values(93,"HIDROXIDO DE MAGNESIO");
insert into tb_ifa values(94,"IBUPROFENO");
insert into tb_ifa values(95,"IRBESARTAN");
insert into tb_ifa values(96,"KETOPROFENO");
insert into tb_ifa values(97,"KETOROLACO");
insert into tb_ifa values(98,"LACTULOSA");
insert into tb_ifa values(99,"LANSOPRAZOL");
insert into tb_ifa values(100,"LEVOCETIRIZINA");
insert into tb_ifa values(101,"LEVOFLOXACINO");
insert into tb_ifa values(102,"LEVONORGESTREL");
insert into tb_ifa values(103,"LIDOCAINA");
insert into tb_ifa values(104,"LORATADINA");
insert into tb_ifa values(105,"LOSARTAN");
insert into tb_ifa values(106,"MAGALDRATO");
insert into tb_ifa values(107,"MEBENDAZOL");
insert into tb_ifa values(108,"MELOXICAM");
insert into tb_ifa values(109,"METAMIZOL DE SODIO");
insert into tb_ifa values(110,"METFORMINA");
insert into tb_ifa values(111,"METRONIDAZOL");
insert into tb_ifa values(112,"MICONAZOL");
insert into tb_ifa values(113,"MOMETASONA");
insert into tb_ifa values(114,"MUPIROCINA");
insert into tb_ifa values(115,"NAFAZOLINA");
insert into tb_ifa values(116,"NAPROXENO");
insert into tb_ifa values(117,"NEOMICINA");
insert into tb_ifa values(118,"NITAZOXANIDA");
insert into tb_ifa values(119,"ORFENADRINA");
insert into tb_ifa values(120,"OXOLAMINA");
insert into tb_ifa values(121,"PANCREATINA");
insert into tb_ifa values(122,"PARACETAMOL");
insert into tb_ifa values(123,"PERMETRINA");
insert into tb_ifa values(124,"PICOSULFATO DE SODIO");
insert into tb_ifa values(125,"POLICRESULENO");
insert into tb_ifa values(126,"POLIESTER MUCOPOLISACARIDO DEL ACIDO SULFURICO");
insert into tb_ifa values(127,"POLISACARIDOS DE GANODERMA LUCIDUM");
insert into tb_ifa values(128,"POVIDONA");
insert into tb_ifa values(129,"PREDNISOLONA");
insert into tb_ifa values(130,"PREDNISONA");
insert into tb_ifa values(131,"PREGABALINA");
insert into tb_ifa values(132,"PROGESTERONA");
insert into tb_ifa values(133,"SALBUTAMOL");
insert into tb_ifa values(134,"SECNIDAZOL");
insert into tb_ifa values(135,"SILDENAFILO");
insert into tb_ifa values(136,"SUCRALFATO");
insert into tb_ifa values(137,"SULFADIAZINA");
insert into tb_ifa values(138,"SULFAMETOXAZOL");
insert into tb_ifa values(139,"TAUMATINA");
insert into tb_ifa values(140,"TERBINAFINA");
insert into tb_ifa values(141,"TETRACAINA");
insert into tb_ifa values(142,"TIMOLOL");
insert into tb_ifa values(143,"TRIAMCINOLONA");
insert into tb_ifa values(144,"UNDECILATO DE ESTRADIOL");
insert into tb_ifa values(145,"VALSARTAN");

select * from tb_ifa;

insert into tb_laboratorio values (1,"HERSIL S.A. LABORATORIOS INDUSTRIALES FARMACEUTICOS");

select * from tb_laboratorio;
