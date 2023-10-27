SELECT * FROM tb_producto;
SELECT * FROM tb_clientes;
UPDATE tb_producto SET PRECI_LISTA = 'PRECIO_LISTA';


UPDATE tb_producto 
SET 
    PRECI_LISTA = 5
WHERE
    CODIGO = '1000889';
    
UPDATE tb_producto 
SET 
    DESCRIPCION = 'Sabor de la Montaña', TAMAÑO = '1 Litro', ENVASE = 'Botella Pet'
WHERE
    CODIGO = '1000889';
    
    UPDATE tb_clientes SET VOLUMEN_COMPRA = VOLUMEN_COMPRA/10;
    
  /*COMANDO PARA LIBERAR EL MODO UPDATE SEGURO*/  
    SET SQL_SAFE_UPDATES=0;
   /*COMANDO PARA CAMBIAR EL NOMBRE DE UN REGISTRO EN UNA TABLA, LO SAQUE DEL ASISTENTE*/ 
    ALTER TABLE `ventas_jugos`.`tb_producto` 
CHANGE COLUMN `PRECI_LISTA` `PRECIO_LISTA` FLOAT NULL DEFAULT NULL ;


/*ACTIVIDAD ACTUALIZACION DE DIRECCION*/
UPDATE tb_clientes SET 
DIRECCION = 'Jorge Emilio 23',
BARRIO = 'San Antonio',
CIUDAD = 'Guadalajara',
ESTADO = 'JC',
CP = '44700000'
WHERE DNI = '5840119709';

SELECT * FROM tb_vendedor;
SELECT * FROM jugos_ventas.tabla_de_vendedores;

SELECT * FROM tb_vendedor A
INNER JOIN 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA,3,3);

UPDATE tb_vendedor A
INNER JOIN 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA,3,3)
SET A.DE_VACACIONES = B.VACACIONES;

UPDATE tb_clientes A 
INNER JOIN 
tb_vendedor B
ON A.BARRIO = B.BARRIO
SET A.VOLUMEN_COMPRA = A.VOLUMEN_COMPRA * 1.3;
