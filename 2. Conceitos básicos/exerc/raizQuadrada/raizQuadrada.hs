-- Escreva uma função que retorne a raíz de uma equação do segundo grau

raiz2grau :: Floating a => a -> a -> a -> (a, a)
raiz2grau a b c = (((-b) + sqrt (b^2 - 4*a*c)) / (2 * a),
                    ((-b) - sqrt (b^2 - 4*a*c)) / (2 * a) )