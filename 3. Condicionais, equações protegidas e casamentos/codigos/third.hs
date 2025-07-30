{--
Defina a função
que retorna o terceiro elemento de uma lista que
contenha ao menos três elementos, usando
(a) head e tail
(b) indexação de listas !!
(c) casamento de padrão
--} 

-- a)
thirdA :: [a] -> a 
thirdA xs = if length xs == 3 then head (tail (tail xs)) else 0

-- b)
thirdB :: [a] -> a 
third xs = if length xs == 3 then xs !! 2 else 0  

-- c) 
thirdC :: [a] -> a
thirdC (_:_:x:_) = x
