-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT *
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT *
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT Nome, Generos
FROM Filmes;

-- 11
SELECT Nome, FilmesGenero 
FROM Filmes
WHERE Genero = 'Mist�rio';

-- 12
SELECT f.Nome AS NomeFilme, a.PrimeiroNome, a.UltimoNome, fa.Papel
FROM Filmes f
JOIN FilmesAtores fa ON f.ID = fa.FilmeID
JOIN Atores a ON fa.AtorID = a.ID;
