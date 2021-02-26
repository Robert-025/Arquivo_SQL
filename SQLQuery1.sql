USE Filmes;

CREATE TABLE Generos(
		idGenero INT PRIMARY KEY IDENTITY,
		Nome	 VARCHAR(200) NOT NULL
);

CREATE TABLE Filmes(
		idFilmes INT PRIMARY KEY IDENTITY,
		idGeneros INT FOREIGN KEY REFERENCES Generos(idGenero),
		Titulo VARCHAR(300) NOT NULL
);

INSERT INTO Generos(Nome)
VALUES		('Ação'),
			('Romance');

SELECT * FROM Generos;

INSERT INTO Filmes(Titulo, idGeneros)
VALUES		('Rambo', 1),
			('Rocky', 1),
			('Culpa das Estrelas', 2);

SELECT * FROM Filmes;