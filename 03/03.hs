number = 600851475143

factor :: Integral a => a -> [a]
factor 1 = 1
factor x = 
	let factors p = filter (\a -> p `mod` a == 0) [2.. round (sqrt (fromIntegral p))]
		smallestFactor = if (factors /= []) then (minimum factors) else x 
		quotient = x / smallestFactor
	in  [smallestFactor] ++ factor quotient
