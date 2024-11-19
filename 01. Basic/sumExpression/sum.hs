addD :: Int -> Int -> Int
addD a b = 2 * (a+b)

main :: IO ()
main = print (addD 2 (addD 3 4))