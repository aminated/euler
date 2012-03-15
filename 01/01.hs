condition x = (x `mod` 3 == 0) || (x `mod` 5 == 0)
solution = sum $ filter condition [1..999]

main = putStrLn $ show solution