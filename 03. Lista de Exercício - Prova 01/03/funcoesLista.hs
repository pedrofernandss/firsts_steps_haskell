-- Retorna a diferença entre duas listas. O resultado é uma lista.
retornaDiferenca :: (Eq t) => [t] -> [t] -> [t]
retornaDiferenca [] _ = []
retornaDiferenca (listaHead:listaTail) lista02
    | listaHead `elem` lista02 = retornaDiferenca listaTail lista02
    | otherwise = listaHead : retornaDiferenca listaTail lista02

retornaDiferencaCompleta :: (Eq t) => [t] -> [t] -> [t]
retornaDiferencaCompleta lista01 lista02 = (retornaDiferenca lista01 lista02) ++ (retornaDiferenca lista02 lista01)

-- Retorna a interseção entre duas listas. O resultado é uma lista
retornaIntersecao :: (Eq t) => [t] -> [t] -> [t]
retornaIntersecao [] _ = []
retornaIntersecao (listaHead:listaTail) lista02
    | listaHead `elem` lista02 = listaHead : retornaIntersecao listaTail lista02
    | otherwise = retornaIntersecao listaTail lista02


-- Retorna a união entre duas listas (pode haver repetição de elementos). O resultado é uma lista
retornaUniao :: [t] -> [t] -> [t]
retornaUniao lista01 lista02 = lista01 ++ lista02


-- Exibe resultado das funções 
main :: IO ()
main = do
    print(retornaDiferencaCompleta [1, 2, 3] [2, 3, 4])
    print(retornaIntersecao [1, 2, 3] [2, 3, 4])
    print(retornaUniao [1, 2, 3] [4, 5, 6])