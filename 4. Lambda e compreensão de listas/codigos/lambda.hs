{- 23
Mostre como o significado da definição da
seguinte função
curried pode ser formalizada
em termos de expressões lambda 

mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z 
-}

let mult = \x y z -> x * y * z
