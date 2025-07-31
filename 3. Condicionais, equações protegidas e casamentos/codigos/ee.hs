{- Redefina a seguinte versão de (&&) usando
condicionais em vez de padrões
(5)
True && True = True
_ && _ = False -}

(&&) :: Bool -> Bool -> Bool
(&&) True  True = True
(&&) False _    = False

(&&) :: Bool -> Bool -> Bool
(&&) a b = if a && b then True else False

{- 
Faça o mesmo para a seguinte versão(6)
True && b = b
False && _ = False-}

(&&)2 :: Bool -> Bool -> Bool 
(&&)2 a b = if a == True then b else False 
