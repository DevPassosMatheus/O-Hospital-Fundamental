create database if NOT EXISTS HospitalDB;

use HospitalDB;

INSERT INTO ESPECIALIDADES (Nom_esp)
VALUES ('Pediatria'),
       ('Clínica Geral'),
       ('Gastrenterologia'),
       ('Dermatologia'),
       ('Cardiologia'),
       ('Ortopedia'),
       ('Ginecologia');

INSERT INTO MEDICOS (nomeExp_Med, CRM, nome, CPF, RG, email, date_nasc, endereco)
VALUES 
    ('Especialista', 123456, 'Dr. Pedro', 12345678901, 123456789, 'pedro@example.com', '1980-01-01', 'Rua A, 123'),
    ('Residente', 654321, 'Dr. Ana', 98765432109, 987654321, 'ana@example.com', '1985-02-03', 'Rua B, 456'),
    ('Especialista', 987654, 'Dr. Carlos', 78901234567, 987654321, 'carlos@example.com', '1990-05-15', 'Rua C, 789'),
    ('Generalista', 111111, 'Dr. João', 98765432101, 987654321, 'joao@example.com', '1988-11-25', 'Rua D, 456'),
    ('Especialista', 543210, 'Dra. Maria', 12345678910, 123456789, 'maria@example.com', '1992-08-20', 'Rua E, 789'),
    ('Residente', 222222, 'Dra. Laura', 10987654321, 123456789, 'laura@example.com', '1994-03-12', 'Rua F, 123'),
    ('Generalista', 333333, 'Dr. André', 11111111111, 987654321, 'andre@example.com', '1987-06-17', 'Rua G, 789'),
    ('Especialista', 444444, 'Dra. Sofia', 22222222222, 987654321, 'sofia@example.com', '1991-09-30', 'Rua H, 123'),
    ('Generalista', 555555, 'Dr. Gustavo', 33333333333, 123456789, 'gustavo@example.com', '1983-12-05', 'Rua I, 456'),
    ('Especialista', 666666, 'Dra. Fernanda', 44444444444, 987654321, 'fernanda@example.com', '1989-07-22', 'Rua J, 789');

INSERT INTO CONVENIOS (nome_conv, TempCaren_Meses, CPNJ_Conv)
VALUES ('amil', 60, 65891576000131),
       ('SulAmérica', 90, 12345678901234),
       ('Unimed', 30, 98765432109876),
       ('Bradesco Saúde', 120, 45678901234567);

INSERT INTO PACIENTES (ID_CONV, NOME, CPF, RG, email, date_nasc, endereco)
VALUES
    (1, 'Maria Silva', 12345678901, 123456789, 'maria@gmail.com', '2000-01-01', 'Rua A, 123'),
    (2, 'João Santos', 98765432101, 987654321, 'joao@gmail.com', '1995-05-10', 'Rua B, 456'),
    (3, 'Ana Pereira', 45678912301, 456789123, 'ana@gmail.com', '1988-12-15', 'Rua C, 789'),
    (4, 'Pedro Souza', 65432198701, 654321987, 'pedro@gmail.com', '1992-07-20', 'Rua D, 987'),
    (1, 'Luciana Oliveira', 32165498701, 321654987, 'luciana@gmail.com', '1985-03-25', 'Rua E, 654'),
    (2, 'Carlos Mendes', 78965412301, 789654123, 'carlos@gmail.com', '1990-09-05', 'Rua F, 321'),
    (3, 'Lúcio Lima', 98712365401, 987123654, 'lucio@gmail.com', '1998-11-30', 'Rua G, 789'),
    (4, 'Fernanda Costa', 45632178901, 456321789, 'fernanda@gmail.com', '1994-06-15', 'Rua H, 123'),
    (1, 'Roberto Ferreira', 32178965401, 321789654, 'roberto@gmail.com', '1993-02-10', 'Rua I, 456'),
    (2, 'Mariana Santos', 78912345601, 789123456, 'mariana@gmail.com', '1987-08-20', 'Rua J, 789'),
    (3, 'Ricardo Almeida', 98732165401, 987321654, 'ricardo@gmail.com', '1996-04-05', 'Rua K, 123'),
    (4, 'Laura Silva', 45698732101, 456987321, 'laura@gmail.com', '1991-10-30', 'Rua L, 456'),
    (1, 'Gustavo Santos', 32198745601, 321987456, 'gustavo@gmail.com', '1997-09-15', 'Rua M, 789'),
    (2, 'Marina Oliveira', 78945698701, 789456987, 'marina@gmail.com', '1989-05-01', 'Rua N, 123'),
    (3, 'Paulo Mendes', 98765412301, 987654123, 'paulo@gmail.com', '1999-03-17', 'Rua O, 456'),
    (4, 'Carolina Souza', 45612365401, 456123654, 'carolina@gmail.com', '1992-12-03', 'Rua P, 789'),
    (1, 'Fernando Pereira', 32145678901, 321456789, 'fernando@gmail.com', '1994-07-18', 'Rua Q, 123'),
    (2, 'Sandra Lima', 78912345601, 789123456, 'sandra@gmail.com', '1986-11-25', 'Rua R, 456'),
    (3, 'Mário Costa', 98732165401, 987321654, 'mario@gmail.com', '1995-01-10', 'Rua S, 789'),
    (4, 'Camila Ferreira', 45698712301, 456987123, 'camila@gmail.com', '1990-06-26', 'Rua T, 123');

insert into med_esp (id_esp, id_medc)
values 	(1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (1, 8),
        (2, 9),
        (3, 10)
;

-- aqui eu vou adicionar 20 consultas, com base nos dados que já inserimos nas tabelas anteriores. 
INSERT INTO CONSULTAS (ID_PAC, ID_MEDC, ID_ESP, ID_CONV, valor_cons, hor_cons, date_cons)
VALUES
    (1, 1, 1, 1, 100.00, '09:00:00', '2019-02-15'),
    (2, 2, 2, 2, 80.00, '10:30:00', '2020-07-10'),
    (3, 3, 3, 3, 120.00, '14:45:00', '2018-05-22'),
    (4, 4, 4, 4, 90.00, '11:15:00', '2021-11-05'),
    (5, 5, 5, 1, 150.00, '16:30:00', '2017-09-18'),
    (6, 6, 6, 2, 70.00, '10:00:00', '2019-03-03'),
    (7, 7, 7, 3, 100.00, '13:45:00', '2018-08-26'),
    (8, 8, 1, 4, 80.00, '09:30:00', '2020-04-12'),
    (9, 9, 2, 1, 110.00, '11:30:00', '2019-01-02'),
    (10, 10, 3, 2, 95.00, '15:00:00', '2021-06-07'),
    (11, 1, 4, 3, 120.00, '16:30:00', '2017-12-19'),
    (12, 2, 5, 4, 75.00, '08:30:00', '2018-11-24'),
    (13, 3, 6, 1, 100.00, '10:45:00', '2020-03-15'),
    (14, 4, 7, 2, 90.00, '12:15:00', '2019-07-28'),
    (15, 5, 1, 3, 130.00, '14:30:00', '2021-02-09'),
    (16, 6, 2, 4, 85.00, '09:45:00', '2018-06-14'),
    (17, 7, 3, 1, 100.00, '11:30:00', '2020-09-30'),
    (18, 8, 4, 2, 75.00, '13:00:00', '2019-04-05'),
    (19, 9, 5, 3, 115.00, '15:45:00', '2018-01-20'),
    (20, 10, 6, 4, 80.00, '10:15:00', '2021-08-11');
    
    insert INTO RECEITAS (id_pac, id_consulta, id_medc)
    values (1, 1, 1),
			(2, 2, 2),
            (3, 3, 3),
			(4, 4, 4),
            (5, 5, 5),
            (6, 6, 6),
            (7, 7, 7),
            (8, 8, 8),
            (9, 9, 9),
            (10, 10, 10);
            
            
INSERT INTO MEDICAMENTOS (NomeMedicamento, inst_uso, dose_medicamentos, id_receita)
VALUES
    ('Medicamento A', 'Tomar com água após as refeições', '1 comprimido de 500mg, 2 vezes ao dia', 1),
    ('Medicamento B', 'Aplicar no local afetado', '1 vez ao dia', 1),
    ('Medicamento C', 'Tomar com água antes das refeições', '2 comprimidos de 250mg, 3 vezes ao dia', 2),
    ('Medicamento D', 'Aplicar no olho afetado', '2 vezes ao dia', 2),
    ('Medicamento E', 'Tomar com água', '1 comprimido de 100mg, 1 vez ao dia', 3),
    ('Medicamento F', 'Aplicar no local afetado', '3 vezes ao dia', 3),
    ('Medicamento G', 'Tomar com leite', '2 comprimidos de 50mg, 2 vezes ao dia', 4),
    ('Medicamento H', 'Aplicar no peito', '1 vez ao dia', 4),
    ('Medicamento I', 'Tomar com água morna', '1 comprimido de 200mg, 3 vezes ao dia', 5),
    ('Medicamento J', 'Aplicar no local afetado', '2 vezes ao dia', 5),
    ('Medicamento K', 'Tomar com suco', '1 comprimido de 150mg, 1 vez ao dia', 6),
    ('Medicamento L', 'Aplicar no olho afetado', '1 vez ao dia', 6),
    ('Medicamento M', 'Tomar com água gelada', '2 comprimidos de 100mg, 2 vezes ao dia', 7),
    ('Medicamento N', 'Aplicar no local afetado', '3 vezes ao dia', 7),
    ('Medicamento O', 'Tomar com água após as refeições', '1 comprimido de 50mg, 3 vezes ao dia', 8),
    ('Medicamento P', 'Aplicar no peito', '2 vezes ao dia', 8),
    ('Medicamento Q', 'Tomar com água antes das refeições', '1 comprimido de 75mg, 2 vezes ao dia', 9),
    ('Medicamento R', 'Aplicar no local afetado', '1 vez ao dia', 9),
    ('Medicamento S', 'Tomar com água', '2 comprimidos de 25mg, 1 vez ao dia', 10),
    ('Medicamento T', 'Aplicar no local afetado', '2 vezes ao dia', 10);
           
insert INTO Tipo_Quarto (Tipo_Quarto, descricao_quarto)
values ('apartamento', 'oferece um ambiente privado e individual para o paciente.'),
		('duplo', 'projetado para acomodar dois pacientes simultaneamente.'),
        ('enfermaria', 'projetado para hospedar vários pacientes simultaneamente.');
        
INSERT INTO QUARTOS (ID_TipoQuarto, Num_quarto) VALUES
(1, 101),
(2, 102),
(1, 103),
(3, 104),
(2, 105),
(1, 106),
(3, 107),
(2, 108),
(1, 109),
(3, 110),
(1, 201),
(2, 202),
(1, 203),
(3, 204),
(2, 205),
(1, 206),
(3, 207),
(2, 208),
(1, 209),
(3, 210),
(1, 301),
(2, 302),
(1, 303),
(3, 304),
(2, 305),
(1, 306),
(3, 307),
(2, 308),
(1, 309),
(3, 310),
(1, 401),
(2, 402),
(1, 403),
(3, 404),
(2, 405),
(1, 406),
(3, 407),
(2, 408),
(1, 409),
(3, 410);

INSERT INTO ENFERMEIROS (CRE, nome)
VALUES
(123456, 'Maria Silva'),
(654321, 'João Santos'),
(789012, 'Ana Pereira'),
(987654, 'Pedro Souza'),
(456789, 'Luciana Oliveira'),
(321654, 'Carlos Mendes'),
(987123, 'Lúcio Lima'),
(456321, 'Fernanda Costa'),
(321789, 'Roberto Ferreira'),
(789123, 'Mariana Santos');
   
INSERT INTO internacoes (ID_MEDC, ID_QUARTO, ID_PAC, dt_inter, dt_prev_alta, dt_alta)
VALUES
    (1, 1, 1, '2015-01-01', '2015-03-01', '2015-04-10'),
    (2, 2, 2, '2016-02-15', '2016-04-01', '2016-04-15'),
    (3, 3, 3, '2017-03-10', '2017-04-15', '2017-04-30'),
    (4, 4, 4, '2018-04-20', '2018-06-01', '2018-06-10'),
    (5, 5, 5, '2019-06-05', '2019-07-10', '2019-07-15'),
    (6, 6, 6, '2020-08-10', '2020-09-15', '2020-10-05'),
    (7, 7, 7, '2021-09-25', '2021-11-01', '2021-11-10'),
	(1, 9, 1, '2020-02-10', '2020-03-15', '2020-04-05'),
    (2, 4, 3, '2021-03-25', '2021-04-30', '2021-05-10'),
    (3, 3, 5, '2020-04-05', '2020-05-10', '2020-05-15'),
    (4, 4, 7, '2019-05-15', '2019-06-30', '2019-07-10');

INSERT INTO enf_x_inter (ID_INTERNACAO, ID_ENF)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 2),
    (3, 1),
    (3, 3),
    (4, 4),
    (4, 5),
    (5, 6),
    (5, 7),
    (6, 8),
    (6, 9),
    (7, 10),
    (7, 5),
    (8, 3),
    (8, 8),
    (9, 9),
    (9, 6),
    (10, 4),
    (10, 1),
    (11, 2),
    (11, 7),
    (11, 10),
    (11, 5);
    
   
    



