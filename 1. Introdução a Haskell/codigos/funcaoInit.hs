import GHCi.Message (remoteCall)
{- 
Da mesma forma, mostre como a função de
biblioteca init, que remove o último elemento
de uma lista, pode ser definida de duas
maneiras diferentes
-}

lista :: [Int]
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

removeUltimoElemento1 :: [Int] -> [Int]
removeUltimoElemento1 xs = reverse (tail (reverse xs))

removeUltimoElemento2 :: [Int] -> [Int]
removeUltimoElemento2 xs = take (length xs - 1) xs
