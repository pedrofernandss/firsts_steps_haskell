doubleList :: [Int] -> [Int]
doubleList [] = []
doubleList (a:x) = (2*a) : doubleList x

main :: IO()
main = print(doubleList [1, 2, 3, 4, 5])
