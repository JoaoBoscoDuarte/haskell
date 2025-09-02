# Funções recursivas
Em Haskell, recursão é a técnica padrão para repetir operações. Tudo é baseado em funções que se chamam a si mesmas até atingir um caso base.

## Avaliação de expressões 
Primeiro vamos entender a avaliar expressões, observe o código a seguir:
```Haskell
fac :: Int -> Int
fac n = product [1...n]
```
- fac mapeia qualquer inteiro n para o produto dos inteiros entre 1 e n

Expressões são avaliadas por um processo passo a passo de aplicação de funções aos seus argumentos. Por exemplo:
```Haskell
fac 4 
product [1....4]
product [1, 2, 3, 4]
1*2*3*4 
24 
```

## recursividade
Pensando o exemplo anterior, observe o mesmo exemplo de forma recursiva:
```Haskell
fac 0 = 1 
fac n = n * fac(n-1)
```
- fac mapeia de 0 para 1 e qualquer outro inteiro para o produto de si mesmo pelo fatorial de seu antecessor

Avaliando a expressão:
```Haskell
fac 3
3 * fac 2
3 * (2 * fac 1)
3 * (2 * (1 * fac 0))
3 * (2 * (1 * 1))
3 * (2 * 1)
3 * 2
= 6
```

## Utilidade da recursividade
- Algumas funções são mais simples definir com recursividade
- As funções recursivas podem ser provadas utilizando indução 

## Recursão em listas
Recursividade não se restringe a números, mas pode ser usada para definir funções sobre listas
```Haskell
product :: Num a => [a] → a
product [] = 1
product (n:ns) = n * product ns
```
- product mapeia a lista vazia para 1, e qualquer lista não vazia para sua cabeça multiplicada pelo produto de sua cauda

Avaliando a expressão:
```Haskell
product [2,3,4]
2 * product [3,4]
2 * (3 * product [4])
2 * (3 * (4 * product []))
2 * (3 * (4 * 1))
24
```

## Múltiplos argumentos
Funções com mais de um argumento também podem ser definidas usando recursão, por exemplo

Compactando (zipping) os elementos de duas listas
```Haskell
zip :: [a] → [b] → [(a,b)] -- DEfinindo a assinatura da função 
zip [] _ = []              -- Usando casamento de padrões: se só tiver uma lista, retorna ela mesma
zip _ [] = []              -- o mesmo de cima 
zip (x:xs) (y:ys) = (x,y) : zip xs ys -- resulta em um tupla (x, y) e cria uma nova lista (:) com (x, y) no início 
-- : pega o elemento (x, y) e cria uma lista com a lista resultado da chamda recursiva zip xs ys 
```

Remover os primeiros n elementos de uma listas
```Haskell
drop :: Int -> [a] -> [a]
drop 0 xs = xs
drop _ [] = []
drop n (_:xs) = drop (n-1) xs
```

Anexar duas listas
```haskell
(++) :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) ++ ys = x : (xs + ys)
```

## Exemplos
Função que calcula o tamanho de uma lista utilizando recursão:
```Haskell
ength :: [a] → Int
length [] = 0
length (_:xs) = 1 + length xs
```

Função que inverte uma lista por meio de recursão 
```Haskell
reverse :: [a] → [a]
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]
```


