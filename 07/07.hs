
factor 1 = []
factor x = 
    let factors = filter (\a -> x `mod` a == 0) [2.. round (sqrt (fromIntegral x))]
        smallestFactor = if (factors /= []) then (minimum factors) else x 
        quotient = x `div` smallestFactor
    in  [smallestFactor] ++ factor quotient

prime x = (factor x) == [x]

primes = filter prime [2..]

solution = primes !! 10000 -- List indices start at zero.

main = putStrLn (show solution)