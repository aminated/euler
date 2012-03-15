fibonacci = 1 : 2 : zipWith (+) (fibonacci) (tail fibonacci)
condition x = x < 4000000 
solution = sum $ (filter even) $ takeWhile condition $  fibonacci