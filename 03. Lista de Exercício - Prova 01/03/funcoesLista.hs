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
retornaUniaoComRepeticao :: [t] -> [t] -> [t]
retornaUniaoComRepeticao lista01 lista02 = lista01 ++ lista02

-- Retorna a união entre duas listas (não há repetição de elementos). O resultado é uma lista.
retornaUniaoSemRepeticao :: [t] -> [t] -> [t]
retornaUniaoSemRepeticao lista01 lista02 = lista01 ++ lista02

-- Retorna o último elemento de uma lista
retornaUltimo :: [t] -> t
retornaUltimo [x] = x 
retornaUltimo (_:listTail) = retornaUltimo listTail

-- Retorna o n-ésimo elemento de uma lista.
retornaPosicao :: Int -> [t] -> Maybe t
retornaPosicao _ [] = Nothing
retornaPosicao posicao (listHead:listTail)
    | posicao == 1 = Just listHead
    | otherwise = retornaPosicao (posicao-1) listTail

-- Inverte uma lista
inverteLista :: [t] -> [t]
inverteLista [] = []
inverteLista (listHead:listTail) = inverteLista listTail ++ [listHead]

-- Ordena uma lista em ordem descrescente, removendo as eventuais repetições de elementos.
ordenacao :: [Int] -> [Int]
ordenacao [] = []
ordenacao (listHead:listTail) = insere listHead (ordenacao listTail)

insere :: Int -> [Int] -> [Int]
insere elemento [] = [elemento]
insere elemento (listHead:listTail)
    | elemento > listHead = elemento:(listHead:listTail)
    | otherwise = listHead:insere elemento listTail

-- Retorna um booleano indicando se uma lista de inteiros é decrescente ou não.


-- Exibe resultado das funções 
main :: IO ()
main = do
    print(retornaDiferencaCompleta [1, 2, 3] [2, 3, 4])
    print(retornaIntersecao [1, 2, 3] [2, 3, 4])
    print(retornaUniaoComRepeticao [1, 2, 3, 4] [4, 5, 6])
    print(retornaUniaoSemRepeticao [1, 2, 3, 4] [4, 5, 6])
    print(retornaUltimo [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    print(retornaPosicao 3 [1, 2, 3, 4, 5, 6])
    print(inverteLista [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    print(ordenacao [3, 5, 6, 2, 1, 4])
