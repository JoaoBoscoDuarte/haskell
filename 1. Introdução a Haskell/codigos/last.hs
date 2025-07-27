{- 
Mostre como a função de biblioteca last, que
seleciona o último elemento numa lista, pode ser
definida usando funções introduzidas nesta aula.
Dá para pensar em outra definição? Mostre!
-}

-- Definindo uma lista
lista :: [Int]
lista = [1, 2, 3, 4, 5, 6]

-- Definindo a nova função last
ultimo :: [Int] -> Int
ultimo as = as !! ((length as ) - 1)
