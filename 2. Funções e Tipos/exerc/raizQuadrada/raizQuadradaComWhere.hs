-- Reescreva a função raiz2Grau utilizando where.
raizQuadrada :: Floating a => a -> a -> a -> (a, a)
raizQuadrada a b c = (x1, x2)
    where
        x1 = ((-b) + sqDelta) / (2*a)
        x2 = ((-b) - sqDelta) / (2*a)
        sqDelta = sqrt delta
        delta = b^2 - 4*a*c

    
