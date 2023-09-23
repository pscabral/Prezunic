CREATE DATABASE ARTIGOS;

USE ARTIGOS;
artigosCREATE TABLE PRODUTOS (
ID bigint IDENTITY(1,1) NOT NULL,
CATEGORIA VARCHAR (50),
PRODUTO VARCHAR (300),
VALOR VARCHAR (50),
URL VARCHAR (500),
IMAGEM VARCHAR (100)
);

INSERT INTO PRODUTOS (CATEGORIA, PRODUTO, VALOR, URL, IMAGEM) VALUES
    ('Limpeza','Lava Roupas em Pó Tixan Ypê Primavera 1.6Kg','R$ 18,99','https://www.prezunic.com.br/lava-roupas-em-po-tixan-ype-primavera-1-6kg/p','160636-1200-auto.png'),
	('Limpeza','Lava Roupas em Pó Surf Rosa e Flor de Lis Pacote 1.6Kg','R$ 14,99','https://www.prezunic.com.br/lava-roupas-em-po-surf-rosa-e-flor-de-lis-pacote-1-6kg/p','174944-1200-auto.png'),
	('Limpeza','Esponja Multiuso Alklin Dupla Face c/ 4 Unid','R$ 5,45','https://www.prezunic.com.br/esponja-multiuso-alklin-dupla-face-c--4-unid/p','159465-1200-auto.png'),
	('Limpeza','Esponja Bombril Multiuso Leve 4 Pague 3 Unid','R$ 7,49','https://www.prezunic.com.br/esponja-bombril-multiuso-leve-4-pague-3-unid/p','159479-1200-auto.png'),
	('Limpeza','Água Sanitária Barra 2l','R$ 5,49','https://www.prezunic.com.br/agua-sanitaria-barra-2l/p','156185-1200-auto.png'),
	('Limpeza','Água Sanitária Ypê 2l','R$ 7,99','https://www.prezunic.com.br/agua-sanitaria-ype-2l/p','170726-1200-auto.png'),
	('Limpeza','Amaciante Comfort Concentrado Fescor Intenso 1l','R$ 17,99','https://www.prezunic.com.br/amaciante-comfort-concentrado-fescor-intenso-1l/p','175510-1200-auto.png'),
	('Limpeza','Amaciante Comfort Puro Cuidado 1.8l','R$ 20,99','https://www.prezunic.com.br/amaciante-comfort-puro-cuidado-1-8l/p','173878-1200-auto.png'),
	('bebidas','Refrigerante Coca-Cola s/ Açúcar Pet 1.5l','R$ 6,29','https://www.prezunic.com.br/refrigerante-coca-cola-s--acucar-pet-1-5l/p','169083-1200-auto.png'),
	('bebidas','Refrigerante Sprite Lima s/ Açúcar Pet 2l','R$ 5,99','https://www.prezunic.com.br/refrigerante-sprite-lima-s--acucar-pet-2l/p','171854-1200-auto.png'),
	('bebidas','Chá Matte Leão Natural Pet 1.5l','R$ 6,99','https://www.prezunic.com.br/cha-matte-leao-natural-pet-1-5l/p','168910-1200-auto.png'),
	('bebidas','Chá Lipton Ice Tea Limão 1.5l','R$ 6,99','https://www.prezunic.com.br/cha-lipton-ice-tea-limao-1-5l/p','168527-1200-auto.png'),
	('Saudáveis','Biscoito Jasmine Sou Sweet Zero Açúcar Maracujá e Chia 75g','R$ 3,49','https://www.prezunic.com.br/biscoito-jasmine-sou-sweet-zero-acucar-maracuja-e-chia-75g/p','171405-1200-auto.png'),
	('Saudáveis','Biscoito Jasmine Sou Sweet Zero Açúcar Cocolate e Gotas 75g','R$ 3,49','https://www.prezunic.com.br/biscoito-jasmine-sou-sweet-zero-acucar-cocolate-e-gotas-75g/p','157233-1200-auto.png'),
	('Saudáveis','Biscoito Jasmine Sou Sweet Zero Açúcar Frutas Vermelhas 75g','R$ 3,49','https://www.prezunic.com.br/biscoito-jasmine-sou-sweet-zero-acucar-frutas-vermelhas-75g/p','157220-1200-auto.png'),
	('Higiene E Beleza','Papel Higiênico Mimmo Folha Dupla 30 Metros Leve 12 Pague 11 Unid','R$ 14,99','https://www.prezunic.com.br/papel-higienico-mimmo-folha-dupla-30-metros-leve-12-pague-11-unid-1730300/p','161989-1200-auto.png'),
	('Higiene E Beleza','Papel Higiênico Prezunic Folha Dupla 30m c/ 12 Rolos','R$ 16,99','https://www.prezunic.com.br/papel-higienico-prezunic-folha-dupla-30m-c--12-rolos/p','161984-1200-auto.png'),
	('Higiene E Beleza','Papel Higiênico Neve Folha Dupla 30 Metros Neutro c/ 4 Unid','R$ 7,99','https://www.prezunic.com.br/papel-higienico-neve-folha-dupla-30-metros-neutro-c--4-unid/p','162003-1200-auto.png'),
	('Peixaria','Lombo Atum Frescatto Alfresco Bandeja 400g','R$ 45,99','https://www.prezunic.com.br/lombo-atum-frescatto-alfresco-bandeja-400g/p','160991-1200-auto.png'),
	('Peixaria','Bacalhau Riberalves Desfiado Dessalgado Congelado 500g','R$ 41,99','https://www.prezunic.com.br/bacalhau-riberalves-desfiado-dessalgado-congelado-500g/p','156727-1200-auto.png'),
	('Peixaria','Bacalhau Riberalves Lombo Dessalgado Congelado 1Kg','R$ 166,90','https://www.prezunic.com.br/bacalhau-riberalves-desfiado-dessalgado-congelado-500g/p','156722-1200-auto.png'),
	('Alimentos Basicos','Feijão Preto Super Máximo Tipo1 1Kg','R$ 8,99','https://www.prezunic.com.br/feijao-preto-super-maximo-tipo1-1kg/p','159489-1200-auto.png'),
	('Alimentos Basicos','Feijão Vermelho Granfino Tipo2 500g','R$ 11,69','https://www.prezunic.com.br/feijao-vermelho-granfino-tipo2-500g/p','165415-1200-auto.png'),
	('Alimentos Basicos','Feijão Preto Carreteiro Tipo1 1Kg','R$ 7,99','https://www.prezunic.com.br/feijao-preto-carreteiro-tipo1-1kg/p','159529-1200-auto.png'),
	('Alimentos Basicos','Arroz Branco Camil Tipo1 1Kg','R$ 5,79','https://www.prezunic.com.br/arroz-branco-camil-tipo1-1kg/p','155688-1200-auto.png'),
	('Alimentos Basicos','Arroz Parboilizado Carreteiro Tipo1 5Kg','R$ 5,79','https://www.prezunic.com.br/arroz-parboilizado-carreteiro-tipo1-5kg/p','156639-1200-auto.png'),
	('Alimentos Basicos','Café Pilão Almofada 500g','R$ 17,98','https://www.prezunic.com.br/cafe-pilao-almofada-500g/p','157631-1200-auto.png'),
	('Alimentos Basicos','Café 3 Corações Descafeinado a Vácuo 250g','R$ 19,98','https://www.prezunic.com.br/cafe-3-coracoes-descafeinado-a-vacuo-250g/p','157539-1200-auto.png'),
	('Alimentos Basicos','Açúcar Refinado União 1Kg','R$ 4,99','https://www.prezunic.com.br/acucar-refinado-uniao-1kg/p','155558-1200-auto.png');

--Caso precise deletar e começar novamente use o comando abaixo:
--DROP DATABASE ARTIGOS;

