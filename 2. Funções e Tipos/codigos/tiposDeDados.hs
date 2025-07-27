-- Em Haskell não existe variáveis e os valores são imutáveis

-- Função de encremento
i :: Int
i = i + 1

-- Os tipos básicos seguem o modelo de demais linguagens de programação 
biggestIprojetont, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound 

-- Tipo arbitrario (O que define o valor é a quantidade de memória do computador)
n :: Integer
n = 99999999999999999999999999999999999

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Int
numDigits = length (show reallyBig)

--Para números de ponto flutuante, há Double:

-- Double-precision floating point
d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

--Há também um tipo de número de ponto flutuante de precisão única, Float- A . (í a questão: es. , , , í , , .
--Finalmente, há booleanos, personagens e strings:

-- Booleans
b1, b2 :: Bool
b1 = True
b2 = False

-- Unicode characters
c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

-- Strings are lists of characters with special syntax
s :: String
s = "Hello, Haskell!"
