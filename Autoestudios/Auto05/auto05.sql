--Tabla producto
CREATE table ProductModel (productModelID number(11), 
name varchar(50) not null, 
catalogDescription varchar(255),
detail XMLType);

--Primary key
ALTER TABLE ProductModel add constraint pk_Product primary key(productModelID);

--Poblado
INSERT INTO ProductModel (productModelID, name, detail) values (1, 'Classic Vest', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="1" Max="30"></edades>
	<materiales>
		<material>cuero</material>
        <material>lana</material>
        <material>algodon</material>
	</materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "5"></garantia>
	<peso gramos="170"></peso>
	<origen>
        <pais nombre= "Colombia" numeroDeFabricantes= "497"></pais>
        <pais nombre= "Italia" numeroDeFabricantes= "50"></pais>
        <pais nombre= "Francia" numeroDeFabricantes= "15"></pais>
        <pais nombre= "Haiti" numeroDeFabricantes= "1"></pais>
    </origen>
</detalles>');        


INSERT INTO ProductModel (productModelID, name, detail) values (2, 'Cycling Cap', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="19" Max="42"></edades>
	<materiales>
		<material>plastico</material>
        <material>tela</material>
        <material>algodon</material>
	</materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
	</tallas>
	<garantia meses= "2"></garantia>
	<peso gramos="97"></peso>
	<origen>
        <pais nombre= "Peru" numeroDeFabricantes= "11"></pais>
        <pais nombre= "Bolivia" numeroDeFabricantes= "553"></pais>
        <pais nombre= "India" numeroDeFabricantes= "753"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (3, 'Full-Finger Gloves', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="18" Max="87"></edades>
	<materiales>
		<material>plastico</material>
        <material>tela</material>
        <material>lana</material>
        <material>algodon</material>
	</materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
	</tallas>
	<garantia meses= "4"></garantia>
	<peso gramos= "276"></peso>
	<origen>
        <pais nombre= "China" numeroDeFabricantes= "119"></pais>
        <pais nombre= "Camboya" numeroDeFabricantes= "245"></pais>
        <pais nombre= "Vietnam" numeroDeFabricantes= "346"></pais>
        <pais nombre= "Mexico" numeroDeFabricantes= "477"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (4, 'Half-Finger Gloves', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="10" Max="87"></edades>
	<materiales>
        <material>tela</material>
        <material>lana</material>
        <material>algodon</material>
	</materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
	</tallas>
	<garantia meses= "1"></garantia>
	<peso gramos= "26"></peso>
	<origen>
        <pais nombre= "Bangladesh" numeroDeFabricantes= "725"></pais>
        <pais nombre= "Philippines" numeroDeFabricantes= "364"></pais>
        <pais nombre= "China" numeroDeFabricantes= "287"></pais>
        <pais nombre= "Barbados" numeroDeFabricantes= "401"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (5, 'HL Mountain Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="10" Max="30"></edades>
	<materiales>
        <material>oro</material>
        <material>kriptonita</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
	</tallas>
	<garantia meses= "300"></garantia>
	<peso gramos= "25879"></peso>
	<origen>
        <pais nombre= "Bangladesh" numeroDeFabricantes= "725"></pais>
        <pais nombre= "Philippines" numeroDeFabricantes= "364"></pais>
        <pais nombre= "China" numeroDeFabricantes= "287"></pais>
        <pais nombre= "Barbados" numeroDeFabricantes= "401"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (6, 'HL Road Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="3" Max="37"></edades>
	<materiales>
        <material>aluminio</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "6"></garantia>
	<peso gramos= "5430"></peso>
	<origen>
        <pais nombre= "Mexico" numeroDeFabricantes= "33"></pais>
        <pais nombre= "Tayikistán" numeroDeFabricantes= "352"></pais>
        <pais nombre= "Macedonia" numeroDeFabricantes= "234"></pais>
        <pais nombre= "China" numeroDeFabricantes= "957"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (7, 'HL Touring Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="2" Max="48"></edades>
	<materiales>
        <material>uranio</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "3"></garantia>
	<origen>
        <pais nombre= "Guyana" numeroDeFabricantes= "878"></pais>
        <pais nombre= "Gibraltar" numeroDeFabricantes= "211"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (8, 'LL Mountain Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="2" Max="15"></edades>
	<materiales>
        <material>adamantium</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "12"></garantia>
    <peso gramos= "2391"></peso>
	<origen>
        <pais nombre= "Rusia" numeroDeFabricantes= "895"></pais>
        <pais nombre= "Estados Unidos" numeroDeFabricantes= "363"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (9, 'LL Road Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="18" Max="53"></edades>
	<materiales>
        <material>acero</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
	</tallas>
	<garantia meses= "9"></garantia>
    <peso gramos= "3128"></peso>
	<origen>
        <pais nombre= "Israel" numeroDeFabricantes= "320"></pais>
        <pais nombre= "Estados Unidos" numeroDeFabricantes= "816"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (10, 'LL Touring Frame', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="11" Max="53"></edades>
	<materiales>
        <material>acero</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "6"></garantia>
    <peso gramos= "1823"></peso>
	<origen>
        <pais nombre= "Israel" numeroDeFabricantes= "320"></pais>
        <pais nombre= "Estados Unidos" numeroDeFabricantes= "865"></pais>
        <pais nombre= "Colombia" numeroDeFabricantes= "81"></pais>
        <pais nombre= "Venezuela" numeroDeFabricantes= "999"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (11, 'Long-Sleeve Logo Jersey', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="11" Max="53"></edades>
	<materiales>
        <material>lana</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "2"></garantia>
    <peso gramos= "18"></peso>
	<origen>
        <pais nombre= "Vietnam" numeroDeFabricantes= "320"></pais>
        <pais nombre= "Israel" numeroDeFabricantes= "8653"></pais>
        <pais nombre= "Rusia" numeroDeFabricantes= "811"></pais>
        <pais nombre= "Noruega" numeroDeFabricantes= "999"></pais>
    </origen>
</detalles>'
);


INSERT INTO ProductModel (productModelID, name, detail) values (12, 'Touring Front Wheel', 
'<?xml version="1.0"?>
<detalles>
    <edades Min ="11" Max="53"></edades>
	<materiales>
        <material>kriptonita</material>
        <material>oro</material>
        <material>diamante</material>
        <material>adamantium</material>
    </materiales>
	<tallas>
        <talla nomenclatura="Hombre" tamaño="S"></talla>
        <talla nomenclatura="Hombre" tamaño="M"></talla>
        <talla nomenclatura="Hombre" tamaño="L"></talla>
        <talla nomenclatura="Mujer" tamaño="M"></talla>
        <talla nomenclatura="Mujer" tamaño="S"></talla>
        <talla nomenclatura="Mujer" tamaño="L"></talla>
        <talla nomenclatura="Niño" tamaño="M"></talla>
        <talla nomenclatura="Niño" tamaño="S"></talla>
        <talla nomenclatura="Niño" tamaño="L"></talla>
	</tallas>
	<garantia meses= "123"></garantia>
    <peso gramos= "4983"></peso>
	<origen>
        <pais nombre= "Israel" numeroDeFabricantes= "320"></pais>
        <pais nombre= "Emiratos Árabes" numeroDeFabricantes= "221"></pais>
        <pais nombre= "Colombia" numeroDeFabricantes= "213"></pais>
        <pais nombre= "Venezuela" numeroDeFabricantes= "999"></pais>
    </origen>
</detalles>'
);


--Eliminazao de la tabla
DROP TABLE ProductModel;

--Consultas
SELECT EXTRACT(detail,'/detalles/tallas/*') FROM productModel;


--DTD
/*<?xml varsion="1.0"?>
<!DOCTYPE detalles[
	<!ELEMENT edades (#PCDATA)>
	<!ELEMENT materiales (material)>
	<!ELEMENT tallas (talla+)>
	<!ELEMENT talla (#PCDATA)>
	<!ELEMENT garantia (#PCDATA)+>
	<!ELEMENT peso (#PCDATA)>
	<!ELEMENT origen (pais+)>
	<!ELEMENT pais (#PCDATA)>
	
	<!ATTLIST edades Min CDATA #REQUIRED>
	<!ATTLIST edades Max CDATA #REQUIRED>

	<!ATTLIST talla nomenclatura ("Hombre"|"Mujer"|"NiÃ±o") #REQUIRED>
	<!ATTLIST talla tamaÃ±o ("S"|"M"|"L") #REQUIRED>
	
	<!ATTLIST garantia meses CDATA #REQUIRED>
	
	<!ATTLIST peso gramos CDATA #IMPLIED>
	
	<!ATTLIST pais nombre CDATA #REQUIRED>
	<!ATTLIST pais numeroDeFabricantes CDATA #REQUIRED>
]>*/
