quicksort :: [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort menores ++ [x] ++ maiores
    where
      menores = [a | a <- xs, a <= x]
      maiores = [a | a <- xs, a > x]
