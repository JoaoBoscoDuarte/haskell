import Data.Char (toUpper, isLetter, toLower)
import Data.List (elemIndex)
import Data.Maybe (fromMaybe)
-- Lista com as chaves da criptografia
chave :: [Char]
chave = ['z','y','n','g','w','q','a','m','x','p','k','v','u','l','c','e','f','r','i','b','s','j','d','o','t','h']
-- Lista com as letras do alfabeto de 'a' a 'z'
limpo :: [Char]
limpo = [x | x <- ['a'..'z']]

-- Função para descobrir o indice da letra mepeada nas listas para a criptografia
indice :: Char -> Int
indice i = fromEnum (toLower i) - fromEnum 'a'

-- Função de criptografia
monoAlphaCipherE :: [Char] -> String -> String
monoAlphaCipherE chave palavra = [if isLetter char then toUpper (chave !! indice char) else char | char <- normalizaString palavra]

-- Função de descriptografia
monoAlphaCipherD :: [Char] -> String -> String
monoAlphaCipherD chave palavra = [if isLetter char then toUpper (limpo !! fromMaybe 0 (elemIndex char chave)) else char | char <- normalizaString palavra]

-- Função que remove caracteres acentuados e deixa o texto minúsculo
normalizaString :: String -> String
normalizaString palavra = [removeCharInvalido char | char <- map toLower palavra]
  where 
    removeCharInvalido char
      | char `elem` "áàâãä" = 'a'
      | char `elem` "éèêë"  = 'e'
      | char `elem` "íìîï"  = 'i'
      | char `elem` "óòôõö" = 'o'
      | char `elem` "úùûü"  = 'u'
      | char `elem` "ç"     = 'c'
      | otherwise = char
