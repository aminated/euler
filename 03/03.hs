number = 600851475143

factor :: Integral a => a -> [a]
factor 1 = [1]
factor x = 
    let factors = filter (\a -> x `mod` a == 0) [2.. round (sqrt (fromIntegral x))]
        smallestFactor = if (factors /= []) then (minimum factors) else x 
        quotient = x `div` smallestFactor
    in  [smallestFactor] ++ factor quotient
solution = factor number