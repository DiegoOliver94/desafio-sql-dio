-- Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o futuro'

-- Buscar filmes lan�ados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- Buscar Filmes Lan�ados AP�S os anos 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) as Quantidade From Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores where Genero ='M'

-- Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores where Genero ='F' ORDER BY PrimeiroNome

-- Buscar o nome do filme e o g�nero
SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f ON fg.IdFilme = f.Id
INNER JOIN Generos g ON fg.IdGenero = g.Id

-- Buscar o nome do filme e o g�nero do tipo 'MISTERIO'
SELECT f.Nome, g.Genero FROM FilmesGenero fg
INNER JOIN Filmes f ON fg.IdFilme = f.Id
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel FROM ElencoFilme ef
INNER JOIN Filmes f ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor