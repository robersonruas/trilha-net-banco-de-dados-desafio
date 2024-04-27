SELECT Nome, Ano FROM Filmes
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'De Volta para o Futuro'
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000'
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC
SELECT Ano, COUNT(Id) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
SELECT * FROM Atores WHERE Genero = 'M'
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
SELECT A.Nome, C.Genero 
	   FROM Filmes A 
	   JOIN FilmesGenero B ON A.Id = B.IdFilme
	   JOIN Generos C ON B.IdGenero = C.Id

SELECT A.Nome, C.Genero 
	   FROM Filmes A 
	   JOIN FilmesGenero B ON A.Id = B.IdFilme
	   JOIN Generos C ON B.IdGenero = C.Id
	   WHERE C.Genero = 'Mistério'

SELECT A.Nome, C.PrimeiroNome, C.UltimoNome, B.Papel
	   FROM Filmes A
	   JOIN ElencoFilme B ON A.Id = B.IdFilme
	   JOIN Atores C ON B.IdAtor = C.Id