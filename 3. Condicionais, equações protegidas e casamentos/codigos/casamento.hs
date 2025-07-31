{- Forneça ao menos três definições possíveis para
o operador lógico ou (||) usando casamento de
padrão -}

-- Definição 1, todos os 4 casos lógicos
(||) :: Bool -> Bool -> Bool
(||) True  False = True
(||) False True = True
(||) True  True = True
(||) False False = False

-- Definição 2, pelo menos dois casos 
(||) :: Bool -> Bool -> Bool
(||) True  _    = True
(||) _     True = True
(||) _     _    = False 

-- Definição 3, apenas e caso 
(||) :: Bool -> Bool -> Bool 
(||) True _  = True 
(||) False b = b
