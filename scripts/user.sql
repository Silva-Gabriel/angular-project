USE cadastro;

-- criação da tabela
CREATE TABLE TB_USER (
    id INT IDENTITY(1,1),
    nomeCompleto VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario FLOAT,
    email VARCHAR(200) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    register_date DATE,
	active CHAR(1) DEFAULT '1'
);

-- adiciona chame primária
ALTER TABLE TB_USER
ADD CONSTRAINT PK_TB_USER PRIMARY KEY (id);

ALTER TABLE TB_USER
ADD CONSTRAINT CHECK_TB_USER 
CHECK (active IN ('0', '1'));

-- carga inicial
INSERT INTO TB_USER (nomeCompleto, cargo, salario, email, senha, cpf, register_date, active) 
VALUES 
('Ana Beatriz Lima', 'Desenvolvedora Back-End', 8500.00, 'ana.lima@email.com', 'SenhaForte@123', '12345678901', '2024-01-15', 1),
('Carlos Eduardo Silva', 'Engenheiro de Software', 9500.00, 'carlos.silva@email.com', 'SenhaSegura#456', '23456789012', '2024-02-01', 1),
('Fernanda Costa', 'Analista de Qualidade', 7000.00, 'fernanda.costa@email.com', 'TesteQA!2024', '34567890123', '2023-12-10', 1),
('Marcos Vinícius Souza', 'Desenvolvedor Front-End', 7800.00, 'marcos.souza@email.com', 'Front@Dev99', '45678901234', '2024-01-20', 1),
('Juliana Pereira', 'Gerente de Projetos', 12000.00, 'juliana.pereira@email.com', 'Gerencia@2024', '56789012345', '2023-11-30', 1),
('Ricardo Mendes', 'Administrador de Banco de Dados', 8800.00, 'ricardo.mendes@email.com', 'DBApass123!', '67890123456', '2024-01-05', 1),
('Tatiane Oliveira', 'Product Owner', 11000.00, 'tatiane.oliveira@email.com', 'PO_SenhaSegura', '78901234567', '2023-10-18', 1),
('Felipe Ramos', 'Cientista de Dados', 13500.00, 'felipe.ramos@email.com', 'DataScience@AI', '89012345678', '2023-09-25', 1),
('Amanda Nogueira', 'Desenvolvedora Full Stack', 9000.00, 'amanda.nogueira@email.com', 'FullStack#JS2024', '90123456789', '2024-02-02', 1),
('Bruno Martins', 'Analista de Segurança da Informação', 9800.00, 'bruno.martins@email.com', 'SecInfo#2024', '01234567890', '2023-08-12', 1);

-- Puxar dados da tabela
SELECT * FROM TB_USER;