sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

main :: IO ()
main = print(sumList [1, 2, 3, 4, 5])