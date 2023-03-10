<a name="f_aleatorio"></a>

* *f_aleatorio*

```sql
DELIMITER $$

CREATE FUNCTION f_aleatorio (
	min INT,
	max INT
)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE resultado INT DEFAULT 0;
	
	SET resultado = FLOOR(RAND() * (max  - (min + 1)) + min);
	
	RETURN resultado;
	
END$$

DELIMITER ;
```

----


* *f_cliente_dni_aleatorio*

```sql
DELIMITER $$

CREATE FUNCTION f_cliente_dni_aleatorio ()
RETURNS VARCHAR(11) DETERMINISTIC
BEGIN
	DECLARE resultado VARCHAR(11);
	DECLARE maxCLIENTE INT DEFAULT 0;
	DECLARE aleatorio INT DEFAULT 0;
	
	SELECT COUNT(*) INTO maxCLIENTE FROM tb_cliente;
	
	SELECT f_aleatorio(1, maxCLIENTE) INTO aleatorio;
	
	SELECT DNI FROM tb_cliente LIMIT aleatorio,1 INTO resultado;
	
	RETURN resultado;
	
END $$

DELIMITER ;
```

---


* *f_producto_aleatorio*

```sql
DELIMITER $$

CREATE FUNCTION `f_producto_aleatorio` ()
RETURNS VARCHAR(10) DETERMINISTIC
BEGIN

DECLARE resultado VARCHAR(10);
DECLARE maximo INT;
DECLARE limite INT;

SELECT COUNT(*) FROM tb_productos INTO maximo;

SET limite = f_aleatorio(1, maximo + 1);

SELECT CODIGO FROM tb_productos LIMIT limite,1 INTO resultado;

RETURN resultado;

END$$

DELIMITER ;
```

---


* *f_vendedor_aleatorio*

```sql
DELIMITER $$

CREATE FUNCTION `f_vendedor_aleatorio` ()
RETURNS VARCHAR(10) DETERMINISTIC
BEGIN

DECLARE resultado VARCHAR(10);
DECLARE maximo INT;
DECLARE limite INT;

SELECT COUNT(*) FROM tb_vendedor INTO maximo;

SET limite = f_aleatorio(1, maximo + 1);

SELECT MATRICULA FROM tb_vendedor LIMIT limite,1 INTO resultado;

RETURN resultado;

END$$

DELIMITER ;
```

---


* *sp_venta*

```sql
DELIMITER $$

CREATE PROCEDURE `sp_venta` (
    IN fecha DATE,
    IN maxItems INT,
    IN maxCantidad INT
)
BEGIN

    DECLARE contadorWHILE INT DEFAULT 1;

    DECLARE mensaje VARCHAR(100);

   DECLARE dniCLIENTE VARCHAR(11);
   DECLARE matriculaVENDEDOR VARCHAR(5);
   
   DECLARE fechaNOW DATE DEFAULT CURRENT_DATE();   
   DECLARE impuestoCOMPRA FLOAT DEFAULT 0;
   DECLARE numeroVENTA INT DEFAULT 0;
   
   DECLARE cantidadPRODUCTO INT DEFAULT 0;
   DECLARE codigoPRODUCTO VARCHAR(10);
   DECLARE precioPRODUCTO FLOAT DEFAULT 0;
   
   WHILE contadorWHILE < maxItems DO
   
    SET cantidadPRODUCTO = f_aleatorio(1, maxCantidad);
    SET codigoPRODUCTO = f_producto_aleatorio();
    SELECT PRECIO_LISTA INTO precioPRODUCTO FROM tb_productos WHERE CODIGO = codigoPRODUCTO;
   
    SELECT COUNT(*) FROM tb_venta INTO numeroVENTA;
      
    IF numeroVENTA = 0 THEN SET numeroVENTA = 1;
        ELSE SET numeroVENTA = numeroVENTA + 1;
    END IF;
   
    SET dniCLIENTE = f_cliente_dni_aleatorio();
    SET matriculaVENDEDOR = f_vendedor_aleatorio();
   
    SET impuestoCOMPRA = f_aleatorio(1, 10) * 0.1;
      
    INSERT INTO tb_venta (DNI, MATRICULA, FECHA, NUMERO, IMPUESTO) VALUES (
        dniCLIENTE,
        matriculaVENDEDOR,
        fechaNOW,
        numeroVENTA,
        impuestoCOMPRA
    );
  
    INSERT INTO tb_items_vendidos (
        NUMERO, CODIGO, CANTIDAD, PRECIO
    ) VALUES (
        numeroVENTA,
        codigoPRODUCTO,
        cantidadPRODUCTO,
        precioPRODUCTO
    );

    SET contadorWHILE = contadorWHILE + 1;
   
   END WHILE;

   
    SET mensaje = 'Compra generada en "tb_venta"';
    SELECT mensaje;

END$$

DELIMITER ;
```

----

* *sp_triggers*

```sql
DELIMITER $$

CREATE PROCEDURE `sp_triggers` ()
BEGIN

DELETE FROM facturacion;

INSERT INTO facturacion
SELECT YEAR(A.FECHA),
CEILING(SUM(A.IMPUESTO * (B.PRECIO * B.CANTIDAD))) AS COSTO
FROM tb_venta AS A
INNER JOIN
tb_items_vendidos AS B
ON
A.NUMERO = B.NUMERO
GROUP BY YEAR(A.FECHA);

END $$

DELIMITER ;
```

----


* *TG_INSERT_VENTA*

```sql
DELIMITER $$

CREATE TRIGGER `TG_INSERT_VENTA`
AFTER INSERT ON tb_venta
FOR EACH ROW
BEGIN
    CALL sp_triggers;
END $$

DELIMITER ;
```


* *TG_DELETE_VENTA*

```sql
DELIMITER $$

CREATE TRIGGER `TG_DELETE_VENTA`
AFTER DELETE ON tb_venta
FOR EACH ROW
BEGIN
    CALL sp_triggers;
END $$

DELIMITER ;
```


* *TG_UPDATE_VENTA*

```sql
DELIMITER $$

CREATE TRIGGER `TG_UPDATE_VENTA`
AFTER UPDATE ON tb_venta
FOR EACH ROW
BEGIN
    CALL sp_triggers;
END $$

DELIMITER ;
```

