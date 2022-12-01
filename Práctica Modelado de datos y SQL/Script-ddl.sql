--Práctica de Modelado y SQL

-- Esquema de trabajo
create schema practica_ehms authorization irqorcet;

--Tabla grupo empresarial de la marca (brand_emp_groups)
create table practica_ehms.brand_emp_groups(
	id_group_brand varchar(100) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

alter table practica_ehms.brand_emp_groups
add constraint brand_emp_groups_PK primary key (id_group_brand);

-- Carga de datos
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('01', 'FCA', 'Fiat Chrysler Automobiles');
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('02', 'Honda', ' ');
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('03', 'Hyundai', ' ');
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('04', 'PSA', 'Peugeot Société Anonyme');
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('05', 'Renault Nissan', ' ');
insert into practica_ehms.brand_emp_groups (id_group_brand, name, description) values('06', 'Volkswagen', ' ');


--Tabla marca (brands)
create table practica_ehms.brands(
	id_brand varchar(100) not null, --PK
	name varchar(50) not null,
	id_group_brand varchar(100) not null, --FK
	description varchar(512) null
);

alter table practica_ehms.brands
add constraint brands_PK primary key (id_brand);

alter table practica_ehms.brands
add constraint brands_brand_emp_groups_FK foreign key (id_group_brand)
references practica_ehms.brand_emp_groups(id_group_brand);

-- Carga de datos
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('01', 'Citroen', '04', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('02', 'Fiat', '01', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('03', 'Honda', '02', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('04', 'Hyundai', '03', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('05', 'Kia', '03', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('06', 'Nissan', '05', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('07', 'Opel', '04', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('08', 'Peugot', '04', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('09', 'Renault', '05', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('10', 'Seat', '06', ' ');
insert into practica_ehms.brands (id_brand, name, id_group_brand, description) values('11', 'Volkswagen', '06', ' ');


--Tabla modelo (models)
create table practica_ehms.models(
	id_model varchar(100) not null, --PK
	name varchar(50) not null,
	id_brand varchar(100) not null, --FK
	description varchar(512) null
);

alter table practica_ehms.models
add constraint models_PK primary key (id_model);

alter table practica_ehms.models
add constraint models_brands_FK foreign key (id_brand)
references practica_ehms.brands(id_brand);

-- Carga de datos
insert into practica_ehms.models (id_model, name, id_brand, description) values('01', '508', '08', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('02', 'Beetle', '11', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('03', 'C2', '01', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('04', 'Civic', '03', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('05', 'Clio', '09', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('06', 'Corsa-e', '07', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('07', 'Ducato', '02', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('08', 'e-Soul', '05', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('09', 'Golf', '11', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('10', 'Ibiza', '10', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('11', 'Leaf', '06', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('12', 'Legend', '03', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('13', 'Niro', '05', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('14', 'Optima', '04', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('15', 'Polo', '11', ' ');
insert into practica_ehms.models (id_model, name, id_brand, description) values('16', 'Tucson', '04', ' ');


--Tabla color de los coches (car_colors)
create table practica_ehms.car_colors(
	id_color varchar(100) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

alter table practica_ehms.car_colors
add constraint car_colors_PK primary key (id_color);

-- Carga de datos
insert into practica_ehms.car_colors (id_color, name, description) values('01', 'Blanco', ' ');
insert into practica_ehms.car_colors (id_color, name, description) values('02', 'Granate', ' ');
insert into practica_ehms.car_colors (id_color, name, description) values('03', 'Gris / Plata', ' ');
insert into practica_ehms.car_colors (id_color, name, description) values('04', 'Negro', ' ');


--Tabla control de coches activos o no (operational_status)
create table practica_ehms.operational_status(
	id_operational_status varchar(100) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

alter table practica_ehms.operational_status
add constraint operational_status_PK primary key (id_operational_status);

-- Carga de datos
insert into practica_ehms.operational_status (id_operational_status, name, description) values('01', 'active', ' ');
insert into practica_ehms.operational_status (id_operational_status, name, description) values('02', 'no active', ' ');


--Tabla compañías aseguradoras (insurance_companies)
create table practica_ehms.insurance_companies(
	id_insurance_company varchar(100) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

alter table practica_ehms.insurance_companies
add constraint insurance_companies_PK primary key (id_insurance_company);

-- Carga de datos
insert into practica_ehms.insurance_companies (id_insurance_company, name, description) values('01', 'Mapfre', ' ');
insert into practica_ehms.insurance_companies (id_insurance_company, name, description) values('02', 'AXA', ' ');


--Tabla moneda de pago (currencies)
create table practica_ehms.currencies(
	id_currency varchar(100) not null, --PK
	name varchar(50) not null,
	description varchar(512) null
);

alter table practica_ehms.currencies
add constraint currencies_PK primary key (id_currency);


-- Carga de datos
insert into practica_ehms.currencies (id_currency, name, description) values('01', 'EUR', ' ');
insert into practica_ehms.currencies (id_currency, name, description) values('02', 'GBP', ' ');
insert into practica_ehms.currencies (id_currency, name, description) values('03', 'MYR', ' ');
insert into practica_ehms.currencies (id_currency, name, description) values('04', 'USD', ' ');


--Tabla gestión de coches (cars_management)
create table practica_ehms.cars_management(
	id_car varchar(100) not null, --PK
	id_model varchar(100) not null, --FK
	id_color varchar(100) not null, --FK
	licence_plate varchar(100) not null,
	total_km int not null,
	id_insurance_company varchar(100) not null, --FK
	insurance_policy_number varchar(200) not null,
	purchase_date date not null,
	id_operational_status varchar(100) not null, --FK
	description varchar(512) null
);

alter table practica_ehms.cars_management
add constraint cars_management_PK primary key (id_car);

alter table practica_ehms.cars_management
add constraint cars_management_models_FK foreign key (id_model)
references practica_ehms.models(id_model);

alter table practica_ehms.cars_management
add constraint cars_management_car_colors_FK foreign key (id_color)
references practica_ehms.car_colors(id_color);

alter table practica_ehms.cars_management
add constraint cars_management_insurance_companies_FK foreign key (id_insurance_company)
references practica_ehms.insurance_companies(id_insurance_company);

alter table practica_ehms.cars_management
add constraint cars_management_operational_status_FK foreign key (id_operational_status)
references practica_ehms.operational_status(id_operational_status);

-- Carga de datos

insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('01', '01', '01', '7322 AVG', '30000', '01', '156hx7-hfs9', '2019-10-15', '02', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('02', '02', '01', '8320 FNT', '22500', '01', '156hx7-hfs10', '2019-10-15', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('03', '03', '01', '4250 BNN', '27000', '01', '156hx7-hfs11', '2019-10-15', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('04', '04', '01', '1333 VVV', '25000', '01', '156hx7-hfs12', '2019-10-15', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('05', '05', '02', '2554 API', '17000', '01', '156hx7-hfs13', '2019-10-15', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('06', '06', '02', '7899 MNW', '15000', '01', '156hx7-hfs14', '2020-10-08', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('07', '07', '02', '4235 YTR', '12500', '01', '156hx7-hfs15', '2020-10-08', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('08', '08', '02', '6222 OWQ', '16000', '01', '156hx7-hfs16', '2020-10-08', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('09', '09', '03', '7825 UFX', '15000', '01', '156hx7-hfs17', '2020-10-08', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('10', '10', '03', '4224 HHA', '20000', '01', '156hx7-hfs18', '2020-10-08', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('11', '11', '03', '3111 NID', '6000', '02', 'mmnztv-123', '2021-10-05', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('12', '12', '03', '1125 PPT', '7000', '02', 'mmnztv-124', '2021-10-05', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('13', '13', '04', '9929 TRE', '12000', '02', 'mmnztv-125', '2021-10-05', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('14', '14', '04', '7423 KKL', '4000', '02', 'mmnztv-126', '2021-10-05', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('15', '15', '04', '4000 FNL', '6500', '02', 'mmnztv-127', '2021-10-05', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('16', '16', '04', '5566 HSL', '400', '02', 'mmnztv-128', '2022-10-03', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('17', '06', '04', '3118 DGM', '700', '02', 'mmnztv-129', '2022-10-03', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('18', '06', '04', '3307 PQR', '200', '02', 'mmnztv-130', '2022-10-03', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('19', '15', '04', '2254 TTN', '150', '02', 'mmnztv-131', '2022-10-03', '01', ' ');
insert into practica_ehms.cars_management (id_car, id_model, id_color, licence_plate, total_km, id_insurance_company, insurance_policy_number, purchase_date, id_operational_status, description) values('20', '02', '04', '1000 KTP', '500', '02', 'mmnztv-132', '2022-10-03', '01', ' ');


--Tabla histórico de revisiones de los coches (reviews_record)
create table practica_ehms.reviews_record(
	id_car varchar(100) not null, --PK , FK
	review_date date not null, --PK
	km_review int not null,
	review_cost numeric(12,5) null default 0,
 	id_currency varchar(10) not null, --FK
	description varchar(512) null
);

alter table practica_ehms.reviews_record
add constraint reviews_record_PK primary key (id_car, review_date);

alter table practica_ehms.reviews_record
add constraint reviews_record_cars_management_FK foreign key (id_car)
references practica_ehms.cars_management(id_car);

alter table practica_ehms.reviews_record
add constraint reviews_record_currencies_FK foreign key (id_currency)
references practica_ehms.currencies(id_currency);

-- Carga de datos
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('01', '2020-10-21', '12000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('02', '2020-10-21', '4000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('03', '2020-10-21', '6500', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('04', '2020-10-21', '7000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('05', '2020-10-21', '4500', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('06', '2021-10-09', '5000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('07', '2021-10-09', '4020', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('08', '2021-10-09', '5200', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('09', '2021-10-09', '3500', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('10', '2021-10-09', '6000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('11', '2022-10-08', '2800', '200.00', '04', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('12', '2022-10-08', '3400', '200.00', '04', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('13', '2022-10-08', '6000', '200.00', '04', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('14', '2022-10-08', '1500', '200.00', '04', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('15', '2022-10-08', '3250', '200.00', '04', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('01', '2021-10-09', '21000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('02', '2021-10-09', '15500', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('03', '2021-10-09', '14000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('04', '2021-10-09', '18000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('05', '2021-10-09', '11000', '60.00', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('01', '2022-09-29', '30000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('02', '2022-09-29', '22500', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('03', '2022-09-29', '27000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('04', '2022-09-29', '25000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('05', '2022-10-08', '15000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('06', '2022-10-08', '12000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('07', '2022-10-08', '10000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('08', '2022-10-08', '14000', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('09', '2022-10-08', '13500', '68.50', '01', ' ');
insert into practica_ehms.reviews_record (id_car, review_date, km_review, review_cost, id_currency, description) values('10', '2022-10-08', '19000', '68.50', '01', ' ');
