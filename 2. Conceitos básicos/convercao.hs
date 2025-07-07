-- fromIntegral: Converte um valor do tipo integral (int ou integer) para qualquer tipo numérico, com float ou double

-- Suma um inteiro com um núemero real 
soma :: Int ->  Double -> Double 
soma inteiro real = fromIntegral inteiro + real -- Usa o fromIntegral para não dar erro na soma dos dois números  

main = do
  let x = 5 :: Int 
  let y = 3.2 :: Double 



