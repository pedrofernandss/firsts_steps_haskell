converterNotaParaMencao :: Float -> String
converterNotaParaMencao nota 
    | (nota >= 3) && (nota <= 4.9) = "MI"
    | (nota >= 5) && (nota <= 6.9) = "MM"
    | (nota >= 7) && (nota <= 8.9) = "MS"
    | (nota >= 9) && (nota <= 10) = "SS"

main :: IO ()
main = print(converterNotaParaMencao 4)