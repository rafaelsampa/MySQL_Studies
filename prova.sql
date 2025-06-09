#CREATE DATABASE estudos_prova;

#USE estudos_prova;



INSERT INTO quarto(id_quarto, numero, andar) VALUES(1, 100, 1);
INSERT INTO quarto(id_quarto, numero, andar) VALUES(2, 102, 1);
INSERT INTO quarto(id_quarto, numero, andar) VALUES(3, 103, 1);
INSERT INTO quarto(id_quarto, numero, andar) VALUES(4, 104, 1);
INSERT INTO quarto(id_quarto, numero, andar) VALUES(5, 105, 1);
INSERT INTO quarto(id_quarto, numero, andar) VALUES(6, 106, 1);




CREATE TABLE IF NOT EXISTS quarto( 
	id_quarto INT PRIMARY KEY,
    numero INT,
    andar INT,
    valor DOUBLE,
    tipo VARCHAR(10) -- "Solteiro", "Familia", "Casal"
    
);


CREATE TABLE IF NOT EXISTS reserva(
	id_reserva INT PRIMARY KEY,
    id_fk_quarto INT,
	check_in DATE,
    check_out DATE,
    diaria INT,
    conta DOUBLE,
    FOREIGN KEY (id_fk_quarto) REFERENCES quarto(id_quarto)
    
);


CREATE TABLE IF NOT EXISTS cliente(
	id_cliente INT PRIMARY KEY,
	id_fk_reserva INT,
    estado BOOLEAN, -- multas
	FOREIGN KEY (id_fk_reserva) REFERENCES reserva(id_reserva)
);

CREATE TABLE IF NOT EXISTS multa(

	id_multa INT PRIMARY KEY,
    id_fk_cliente INT,
    multa DOUBLE
    

);









DELIMITER $$

CREATE FUNCTION verificar_valor(
	id_quarto INT
) RETURNS DOUBLE
BEGIN

	



END $$

DELIMITER ;
