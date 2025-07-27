import Text.Printf (printf)

main :: IO ()
main = do
    -- Entrada do nome 
    nome <- getLine
    
    -- Entrada do salario e total de vendas
    salario <- getLine
    let salarioDouble = read salario :: Double
    
    -- Entrada da quantidade de vendas
    totalVendas <- getLine
    let totalVendasDouble = read totalVendas :: Double
    
    -- Exibe o resultado final (junto com a chamada das fuções
    printf "TOTAL = R$ %.2f\n" (calculoVendas salarioDouble totalVendasDouble)
    
calculoVendas :: Double -> Double -> Double 
calculoVendas salario vendas = salario + (vendas * 0.15)
