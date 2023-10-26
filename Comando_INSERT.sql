USE ventas_jugos;

/*ERROR EN EL NOMBRE DE LA COLUMNA PRECIO_LISTA*/
INSERT INTO tb_producto(CODIGO, DESCRIPCION, SABOR, TAMAÑO, ENVASE, PRECI_LISTA) 
VALUES(
'1040107', 'Ligth', 'Sandia', '350ml', 'Lata', '4.56'
);
INSERT INTO tb_producto VALUES(
'1040108', 'Ligth', 'Guanabana', '350ml', 'Lata', '4.00'),
('1040109','Ligth','Asai','350ml','Lata','5.60'),
('1040110','Ligth','Manzana','350ml','Lata','6.00'),
('1040111','Ligth','Mango','350ml','Lata','3.50');


SELECT * FROM tb_producto;


