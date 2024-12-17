import Text.XHtml (base)
maior4 :: Int -> Int -> Int -> Int -> Int
maior4 a b c d 
    | (a > b) && (a > c) && (a > d) = a
    | (b > a) && (b > c) && (b > d) = b
    | (c > a) && (c > b) && (c > d) = d
    | otherwise = d

main :: IO ()
main = print(maior4 1 9 3 4)