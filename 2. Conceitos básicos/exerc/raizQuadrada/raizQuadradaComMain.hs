main :: IO ()
main = do
    let (x1, x2) == raiz2grau 3 9 1 -- Defini uma tupla sendo o resultado a partir de valores definidos
    putStrLn ("Raízes: x1 = " ++ show x1 ++ ", x2 = " ++ show x2)

raiz2grau :: Floating a => a -> a -> a -> (a, a) -- Retorna uma tupla com os resultados 
raiz2grau a b c = ( (-b + sqrt (b^2 - 4*a*c)) / (2*a),
                    (-b - sqrt (b^2 - 4*a*c)) / (2*a) )
