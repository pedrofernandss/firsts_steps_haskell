sumSquares x y = let 
    sqX = x * x
    sqY = y * y
    in sqX + sqY


main :: IO ()
main = print(sumSquares 2 2)