import Text.PrettyPrint.Annotated.HughesPJ (AnnotDetails)
duplicar :: Double -> Double
duplicar x = x + x

quadruplicar :: Double -> Double
quadruplicar x = duplicar (duplicar x)

-- Função fatorial
factorial :: Integer  -> Integer 
factorial a = product [1..a]
