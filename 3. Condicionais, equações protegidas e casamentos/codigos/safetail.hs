{- Considere uma função safetail que se
comporta como a função tail, exceto que
mapeia a lista vazia para a lista vazia, enquanto
tail dá um erro neste caso
Defina safetail usando
(a) Expressão condicional
(b) Guarded equations
(c) Casamento de padrões
Dica: a função de biblioteca null :: [a] → Bool
testa se uma lista está vazia -}

-- a)
safetailA :: [a] -> [a]
safetailA xs = if null xs then [] else tail xs 

-- b) 
safetailB :: [a] -> [a]
safetailB  xs 
  | null xs  = []
  | otherwise tail xs

-- c)
safetailC :: [a] -> [a]
safetailC []    = []
safetailC [_:xs] = xs
