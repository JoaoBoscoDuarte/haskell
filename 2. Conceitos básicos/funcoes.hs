-- Polimorfismo

-- Importa o módulo para descobrir tipos em haskell
import Data.Typeable
import Data.Bool (bool)

-- Primeiramente vamos definir uma função para descobrir o tamanho de uma lista
tamanhoLista :: [a] -> Int
tamanhoLista = length

-- No main definimos as funções e verificamos os tamanhos 
main :: IO ()
main = do -- do significa a procedência de um bloco de código para ser realizado

    -- É uma forma de definir variáveis locais (bindings) em Haskell.
    let l1 = [1, 2, 4, 17, 99] :: [Int]
    let l2 = [True, False, False, True, False] :: [Bool]
    let l3 = ['a', 'b', 'h'] :: [Char]

    let tamanhoLista1 = tamanhoLista l1
    let tamanhoLista2 = tamanhoLista l2
    let tamanhoLista3 = tamanhoLista l3
    
    putStrLn ("Tamanho de l1: " ++ show tamanhoLista1)
    putStrLn ("Tipo de l1: " ++ show (typeOf l1))

    putStrLn ("Tamanho de l2: " ++ show tamanhoLista2)
    putStrLn ("Tipo de l2: " ++ show (typeOf l2))

    putStrLn ("Tamanho de l3: " ++ show tamanhoLista3)
    putStrLn ("Tipo de l3: " ++ show (typeOf l3))

{-
- Observe que embora tipos diferentes, ainda assim a função retorna os tamanhos exatos,
- isso é devido ao polimorfismo da função length.
-}


-- Outros exemplos de funções

-- Verificar se o número é impar
impar :: Integral a => a -> Bool -- É uma classe de tipos (type class), ou seja, um conjunto de tipos que suportam operações inteiras como div, mod, etc.
impar x = x `mod` 2 == 1

quadrado :: Num a => a -> a
quadrado x = x * x

quadradoMais6Mod9 :: Integral a => a -> a
quadradoMais6Mod9 n =(n * n + 6) `mod` 9