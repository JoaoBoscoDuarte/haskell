# Entendendo Haskell passo a passo

Este exemplo ilustra alguns conceitos fundamentais do Haskell, incluindo:
- **funções**
- **valores**
- **typeclasses**
- **restrições de tipo**
- e o uso do **`where`** para definição local.

---

### A função `f`

```haskell
f :: Num a => a -> a
f x = a * x + b
  where
    a = 1
    b = 3
```

Multiplica o argumento x por a e soma b. 
a e b são constantes locais definidas no where, com escopo restrito a f.

- f é uma função polimórfica:
    - `Num a =>` indica que a pode ser qualquer tipo numérico, como Int, Float, Double.
    - `a -> a` mostra que recebe um a e retorna um a.

### O valor `z`
```haskell
z :: Num a => a
z = f (2 + 3)
```
- `z` é um valor, não é uma função.
- Seu tipo é `Num a => a`, ou seja, é um número polimórfico.
- Calculado chamando f (2 + 3):
    - 2 + 3 = 5
    - f 5 = 1 * 5 + 3 = 8

### O `main` e a execução
```haskell
main :: IO ()
main = do
  putStrLn "Hello world em haskell"
  putStrLn $ "f 2 = " ++ show (f 2)
  putStrLn $ "z = " ++ show z
```
- `main` tem tipo `IO ()`, ou seja:
    - Produz um efeito de entrada/saída (como imprimir no terminal).
    - Retorna `()` (um valor unit), equivalente ao void de outras linguagens.

- O do permite sequenciar ações imperativas, aqui:
    - Imprime "Hello world em haskell".
    - Imprime o valor de f 2.
    - Imprime o valor já calculado de z.

---

## Função x Valor
| Conceito   | Tipo                  | Como usar                                                 | Exemplo       |
| ---------- | --------------------- | --------------------------------------------------------- | ------------- |
| **Função** | `a -> b`              | Precisa ser **aplicada a argumentos** para gerar um valor | `f 3 = 6`     |
| **Valor**  | `a` (ou `Num a => a`) | Já é um **resultado computado**                           | `pi = 3.1415` |

## Typeclass `Num`
- `Num` é como uma interface para tipos numéricos.
- Diz: "qualquer tipo que implemente operações numéricas (+, *, abs...) pode ser usado aqui."

```haskell
f 2      -- Int
f 3.5    -- Double
f (7 :: Integer)
```

## `where`: definindo escopos locais
- Tudo dentro do where só vale para aquela função.
- Permite deixar o corpo principal mais limpo.

```haskell
hipotenusa :: Floating a => a -> a -> a
hipotenusa a b = sqrt (c2)
  where
    c2 = a*a + b*b
```