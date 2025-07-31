-- Soma do quadro dos 100 primerios termos  
somaQuadrados :: Int
somaQuadrados a = [x^2 | x <- [1..100]]

{- Suponha que um
grid de coordenadas de
tamanho
m 
n é dado pela lista de todos os
pares (
x,
y) de inteiros tal que 0 ≤
x ≤
m e
0 ≤
y ≤
n. Usando compreensão de listas, defina
uma função
que retorne um
grid de um dado tamanho, e.g. -}

grid :: Int -> Int -> [(Int, Int)]
grid = [(x, y) | x <- [0..m], y <- [0..n]]


-- Squere
square :: Int → [(Int,Int)]
square = [(x, y) | (x, y) <- grid n n, x /= y]

{- 
 - De maneira semelhante à função length,
mostre como a função de biblioteca
que produz uma lista de elementos idênticos
pode ser definida usando compreensão de lista,
por exemplo
(4)
replicate :: Int → a → [a]
> replicate 3 True
[True,True,True]-}

replicate :: Int → a → [a]
replicate i a = [a | _ <- [0..i]]
