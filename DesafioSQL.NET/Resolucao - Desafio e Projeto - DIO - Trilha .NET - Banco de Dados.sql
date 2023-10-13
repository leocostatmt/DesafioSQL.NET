-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
 
SELECT Nome, Ano FROM Filmes ORDER BY ANO


-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração


SELECT * FROM Filmes
WHERE Nome LIKE 'de volta para o futuro'



-- 4 - Buscar os filmes lançados em 1997


SELECT * FROM Filmes
WHERE ANO LIKE 1997



-- 5 - Buscar os filmes lançados APÓS o ano 2000


SELECT * FROM Filmes
WHERE ANO > 2000



-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente


SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao



-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente


SELECT Ano, COUNT(*) AS quantidadeFilmes
FROM Filmes 
GROUP BY Ano
ORDER BY MAX(Duracao) DESC




--  8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome


SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero LIKE 'M'


-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome


SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero LIKE 'F'
ORDER BY PrimeiroNome



-- 10 - Buscar o nome do filme e o gênero


SELECT F.Nome, G.Genero FROM Filmes AS F
INNER JOIN FilmesGenero AS fG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
ON FG.IdGenero = G.Id


