number = 600851475143
factor x = 
	let factors p = filter (\a -> p `mod` a == 0) [2.. round (sqrt (fromIntegral p))]
		smallestFactor = 