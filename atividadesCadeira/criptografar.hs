import Data.Char (toUpper, isLetter)     -- Importa uma função da biblioteca que deixa todas as letras maúsculas
import Data.List (elemIndex)             -- Importa uma função da biblioteca List que pega o índice de um elemento na lista

-- Lista com as chaves da criptografia
chave :: [Char]
chave = [ 'Z', 'Y', 'N', 'G', 'W', 'Q', 'A', 'M', 'X', 'P',
          'K', 'V', 'U', 'L', 'C', 'E', 'F', 'R', 'I', 'B',
          'S', 'J', 'D', 'O', 'T', 'H' ]

-- Lista com as letras de A a Z
limpo :: [Char]
limpo = [x | x <- ['A'..'Z']]

-- Função para descobrir o indice da letra mepeada nas listas para a criptografia
indice :: Char -> Int
indice i = fromEnum i - fromEnum 'A' --'fromEnum' transforma o caractere char no seu valor na tabela de codificação
                                     -- Porém, como eu quero mapear de modo que os valores inicie do 0 a 26 eu 
                                     -- Subtrao do valor do caractere i o valor do caracatere 'A', portanto, segue
                                     -- A ordem: 65 (valor de A) - 65 (valor de A) = indice 0
                                     --          66 (valor de B) - 65 (valor de A) = indice 1 ...

-- Função de criptografia
{-
 - Recebe uma lista [Char] das chaves dos caracteres para a criptografia, uma String para criptografar e retorna uma String criptografada
 - Primeiramente é definido uma estrutua condicional, a primeira etapa é usar a função isLetter para verificar ser o caractere é uma letra
 - se for uma letra: o caractere chave (criptografado) vai ser pego na lista de chaves por meio do indice que é descoberto pela função
 - 'indice' usada. Caso contrário (não for uma letra), o caractere vai ser adicionado a palavra independetemente
-}

monoAlphaCipherE :: [Char] -> String -> String
monoAlphaCipherE chave palavra = [if isLetter char then chave !! indice char else char | char <- palavra]


-- Função para descriptografar
{-
 - 
-}

monoAlphaCipherD :: [Char] -> String -> String
monoAlphaCipherD limpo palavra = [if isLetter char then limpo !! elemIndex (indice char) else char | char <- palavra] 

-- Função Principal
main :: IO ()
main = do
    putStrLn "Digite a palavra que deseja criptografar: "
    entrada <- getLine
    let maiuscula = map toUpper entrada
    putStrLn ("Palavra criptografada: " ++ monoAlphaCipherE chave maiuscula)
 
    putStrLn "Digite a palavra que deseja descriptografar: "
    -- entrada <- getLine
    -- let maiuscula = map toUpper entrada
    -- putStrLn("Palavra Descriptografada: " ++ monoAlphaCipherD limpo maiuscula)