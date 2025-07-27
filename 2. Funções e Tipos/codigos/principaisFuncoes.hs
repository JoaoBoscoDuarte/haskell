-- Lista que será usada
listaInteiros :: [Int]
listaInteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

-- Função que pega o primeiro elemento da lista
primeiroElemento :: [Int] -> Int
primeiroElemento xs = head xs 

-- Função para remover o primeiro elemento da lista
removePrimeiroElemento :: [Int] -> [Int]
removePrimeiroElemento xs = tail xs

-- Pega o enésimo elemento da lista (ex: o 4º, índice 3)
pegaElementoPeloIndice :: [Int] -> Int
pegaElementoPeloIndice xs = xs !! 3

-- Pega os primeiros 3 elementos da lista
pegaOsPrimeirosElementos :: [Int] -> [Int]
pegaOsPrimeirosElementos xs = take 3 xs

-- Remove os primeiros 3 elementos da lista
removeOsPrimeirosElementos :: [Int] -> [Int]
removeOsPrimeirosElementos xs = drop 3 xs

-- Calcula o tamanho da lista
calcularTamanhoDaLista :: [Int] -> Int
calcularTamanhoDaLista xs = length xs

-- Função principal
main :: IO ()
main = do
  print ("O primeiro item da lista é: " ++ show (primeiroElemento listaInteiros))
  print ("O primeiro elemento foi removido. Nova lista: " ++ show (removePrimeiroElemento listaInteiros))
  print ("Pegando o 4º termo da lista (índice 3): " ++ show (pegaElementoPeloIndice listaInteiros))
  print ("Pegando os 3 primeiros elementos: " ++ show (pegaOsPrimeirosElementos listaInteiros))
  print ("Removendo os 3 primeiros elementos: " ++ show (removeOsPrimeirosElementos listaInteiros))
  print ("Tamanho da lista: " ++ show (calcularTamanhoDaLista listaInteiros))

