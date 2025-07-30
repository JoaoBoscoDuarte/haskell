import Data.ByteString.Lazy.Char8 (split)

halve :: [a] -> ([a], [a])
halve xs = splitAt meio xs
  where
    meio = length xs `div` 2


-- Versão bruta do halve 
halveBruto :: [a] -> ([a], [a])
halve xs = (take meio xs, drop meio xs)   -- drop retorna a lista sem o n primeiros elementos
  where 
    meio = length xs `div` 2
