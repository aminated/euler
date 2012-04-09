square x = x * x
sumSquares = sum $ map square [1..100]
squareSum = square $ sum [1..100]
solution = sumSquares - squareSum