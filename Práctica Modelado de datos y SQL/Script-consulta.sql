select m."name" as "Modelo", b."name" as "Marca", beg."name" as "Grupo", cm.purchase_date as "Fecha de compra", cm.licence_plate as "Matricula",
cc."name" as "Color", cm.total_km as "Total kilómetros", ic."name" as "Compañía aseguradora", cm.insurance_policy_number as "Número de póliza"
from practica_ehms.cars_management cm, practica_ehms.models m, practica_ehms.brands b, practica_ehms.brand_emp_groups beg,
practica_ehms.car_colors cc, practica_ehms.insurance_companies ic 
where (cm.id_model = m.id_model and b.id_brand = m.id_brand and b.id_group_brand = beg.id_group_brand and cc.id_color = cm.id_color
and ic.id_insurance_company = cm.id_insurance_company)
and cm.id_operational_status = '01';