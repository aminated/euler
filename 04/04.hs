palindrome :: Integer -> Bool
palindrome x =
	let str = show x
	in (reverse str) == str

solution = maximum (filter palindrome [x*y| x <- [100..999], y <- [100..999]])