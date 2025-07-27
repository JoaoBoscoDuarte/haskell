import Distribution.SPDX (LicenseExceptionId(I2p_gpl_java_exception))
-- Define uma função
-- :: Indica a declaração do tipo 
-- main Nome da função criada 
-- IO indica que envolve entrada e saída 
-- () Significa que não retorna nenhum valor util (é como o void de outras linguagens)
-- do indica que vai ser definido uma sequência de ações, tradução literal, ou seja, "Fazer"
main :: IO()
main = do
  -- putStrLn Função que imprime uma string 
  putStrLn "Hello world em haskell"
  putStrLn $ "f 2 = " ++ show (f 2)
  putStrLn $ "z = " ++ show z


{-  
 - 'a' é um tipo genérico (tipo polomórfico )
 - 'Num a =>' é uma restrição de tipo, ou seja, para qualquer instância de Num (Tipo que suporte operações numéricas), f vai ter o tipo a -> a
 - 'a -> a' significa que f recebe um valor do tipo a e retorna outro valor do tipo a
 - 'where' tudo dentro do escopo de where pertence a definição de f 
 -} 
f :: Num a => a -> a
f x = a * x + b -- Define a função f 
  where -- define o escopo da função f
    a = 1 
    b = 3

{-  
 - z é um valor já computado usando f, ou seja, z vai ser o resultado de f
 - z é um tipo polimórfico em a 
 - Num a => indicando que funciona para qualquer tipo numérico
-}
z :: Num a => a
z = f (2 + 3)
-- z = f 2 + 2 

{- 
- Função: a -> a
- Valor: a => a
-}
