sumSquares :: Int -> Int -> Int

sumSquares x y = sqX + sqY
    where 
        sqX = x * x
        sqY = y * y

main :: IO ()
main = print(sumSquares 2 2)