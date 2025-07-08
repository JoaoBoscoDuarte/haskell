# Tipos de dados em Haskell

## Definição de tipo
A definição de tipos em haskell segue a estrutura: `v :: p`, onde:
- `v` é um valor definido
- `p` é um tipo de dados

Você pode descobrir o tipo de um dado por meio do ghci:
- utiliza o `:t` para descobrir o tipo de algo
- `:t 19` retorna `Int`

## Principais tipos
| Tipo               | Exemplo de valor          | Descrição                                                                 |
|---------------------|--------------------------|---------------------------------------------------------------------------|
| **Int**             | `42`, `-7`               | Inteiros fixos, tamanho dependente do sistema (normalmente 32 ou 64 bits). |
| **Integer**         | `1234567890123456789`    | Inteiros arbitrariamente grandes. Não tem limite prático.                  |
| **Float**           | `3.14`, `-2.7`           | Ponto flutuante simples (32 bits).                                         |
| **Double**          | `3.1415926535`           | Ponto flutuante duplo (64 bits).                                           |
| **Bool**            | `True`, `False`          | Booleano (verdadeiro ou falso).                                            |
| **Char**            | `'a'`, `'Z'`, `'9'`      | Um caractere Unicode.                                                      |
| **String**          | `"Hello"`                | Lista de `Char` (ou seja, `[Char]`).                                       |
| **Tuple (2)**       | `(1, "abc")`             | Par ordenado com tipos possivelmente diferentes.                          |
| **Tuple (3)**       | `(1, "abc", True)`       | Tríplice ordenada (pode ter mais elementos).                               |
| **List**            | `[1,2,3]`                | Lista homogênea, todos do mesmo tipo.                                      |
| **Maybe**           | `Just 5`, `Nothing`      | Tipo opcional (pode ter valor ou não).                                     |
| **Either**          | `Left "erro"` <br> `Right 42` | Tipo que pode conter dois tipos alternativos, útil para erros.           |
| **Ordering**        | `LT`, `EQ`, `GT`         | Resultado de comparações (`compare`), menor, igual ou maior.               |
| **IO**              | `IO ()`                  | Tipo de efeitos de entrada/saída, ex.: `main :: IO ()`.                    |
| **Function**        | `(+) :: Num a => a -> a -> a` | Função de dois argumentos (curried).                                  |
---
## Observações
### **Listas** são do mesmo tipo:
```haskell
[1,2,3] :: [Int]
['a','b','c'] :: [Char] -- que é o mesmo que String
```
- Tipo da lista não especifica o seu tamanho
- Não existe limitação quanto o tamanho e tipo da lista

### Tuplas podem ter tipos diferentes:
- O tipo da tupla especifica o seu tamanho
- Não existe limitação de tipos para tuplas
- Devem ter tamanho infinito
- Tuplas de tamanho um não são permitidos
- Tupla vazia existe e se chama Unit 

```haskell
(42, "Haskell", True) :: (Int, String, Bool)
```
- Tipo de uma lista de tupla:
```haskell
t = (1, 'a', True, 4.5)
[t]
```
- Ao tentar descobri o tipo da lista (:t [t]) nos deparamos com:
    - `[t] :: (Fractional d, Num a) => [(a, Char, Bool, d)]`

### Maybe é útil para expressar "pode ou não ter valor":
```haskell
find :: (a -> Bool) -> [a] -> Maybe a
find (> 5) [1,3,7] = Just 7
find (> 8) [1,3,7] = Nothing
```

### Either para erros mais informativos:
```haskell
safeDiv :: Int -> Int -> Either String Int
safeDiv _ 0 = Left "Divisão por zero"
safeDiv x y = Right (x `div` y)
```