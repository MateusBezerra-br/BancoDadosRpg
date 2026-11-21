USE RpgJogo

CREATE TABLE Usuarios(

Id INT PRIMARY KEY IDENTITY
,Email VARCHAR(180) NOT NULL UNIQUE
,Senha VARCHAR(120) NOT NULL 


)

CREATE TABLE Classes(

Id INT PRIMARY KEY IDENTITY
, Nome VARCHAR(120) NOT NULL
, Descricao VARCHAR(120) NOT NULL

)


CREATE TABLE Personagens(

Id INT PRIMARY KEY IDENTITY
,NomePersonagem VARCHAR(120) NOT NULL
,Usuario_Id INT NOT NULL
,Classes_Id INT NOT NULL 

,FOREIGN KEY (usuario_Id) REFERENCES Usuarios(id)
,FOREIGN KEY (Classes_Id) REFERENCES Classes(id)
)

CREATE TABLE Habilidades(

Id  INT PRIMARY KEY IDENTITY 
, Nome VARCHAR(120) NOT NULL

)



CREATE TABLE Classes_Habilidades (

    Classe_Id INT NOT NULL,
    Habilidade_Id INT NOT NULL,

    PRIMARY KEY (Classe_Id, Habilidade_Id)

    ,FOREIGN KEY (Classe_Id) REFERENCES Classes(Id)

    ,FOREIGN KEY (Habilidade_Id) REFERENCES Habilidades(Id)

);