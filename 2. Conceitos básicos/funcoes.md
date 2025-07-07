# Funções em haskell
- Em Haskell, funções são **cidadãos de primeira classe**:
    - podem ser passadas como argumentos,
    - retornadas como resultados,
    - armazenadas em listas, etc.

- Além disso, são **imutáveis e puras**:
    - o resultado depende apenas das entradas,
    - não tem efeitos colaterais (exceto se explicitado via `IO`).

## Sintaxe básica
As funções são mapas de argumentos que de um tipo para resultados em outro tipo. O tipo de uma função é escrito como `T1 -> T2`, ou seja, o mapa do tipo `T1`para o tipo `T2`:

```haskell
not :: Bool -> Bool
even :: Int -> Bool
```

```haskell
dobro :: Num a => a -> a
dobro x = 2 * x
```

- `::` indica o tipo.
- `Num a =>` é uma restrição: a deve ser numérico.
- `a -> a` significa: recebe um a, retorna um a.

## Função de múltiplos argumentos
Para escrever uma função de multiplos argumentos, basta separa-los por uma seta:

```haskell
soma:: Int -> Int -> Int
soma: x, y = x + y

mult :: Int -> Int -> Int
mult x, y, z = z * y * z
```

Veja como ficaria a função de soma e multiplicação para quaisquer tipos de dados numéricos:

```haskell
soma:: Num a => a -> a -> a
soma: x y = x + y
```
- soma é uma função que recebe dois argumentos x e y, ambos do tipo a.
- Dentro do corpo, x e y são variáveis locais (os parâmetros), então x + y soma esses dois valores recebidos.

Em suma: 
- Num a => a -> a -> a é a assinatura do tipo, dizendo o que espera e o que retorna.
- x y = x + y é a implementação, que define como calcular.
- x e y são os argumentos formais, ou seja, variáveis locais que recebem o valor quando a função é chamada.

| Código              | Tipo                   | Significado                             |
| ------------------- | ---------------------- | --------------------------------------- |
| `soma x y = x + y`  | `Num a => a -> a -> a` | Recebe dois argumentos e soma.          |
| `duplica x = x + x` | `Num a => a -> a`      | Recebe um argumento e soma ele consigo. |
| `soma = 5 + 3`      | `Num a => a`           | É só um **valor fixo**, não é função.   |
