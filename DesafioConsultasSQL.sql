--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

--7
SELECT 
    ANO, 
    COUNT(*) quantidade
	 
FROM 
    FILMES
GROUP BY 
    ANO
ORDER BY 
    SUM(DURACAO) DESC;

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero FROM Generos INNER JOIN Filmes ON Generos.Id = Filmes.Id

--11
SELECT Filmes.Nome, Generos.Genero FROM Generos INNER JOIN Filmes ON Generos.id = Filmes.id WHERE genero = 'mistério'

--12
SELECT Filmes.Nome, PrimeiroNome, UltimoNome FROM Atores, Filmes INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = ElencoFilme.IdFilme
