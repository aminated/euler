import Data.Function (on)
import Data.List (maximumBy)
import Data.Char (showLitChar)


solve str = 
	let len = length str
	    take5 offset = take 5 $ (drop offset) str
	    measure x = product $ (map (read . (:[])) x)
	in  maximumBy (compare `on` measure) (map take5 [0..(len-5)])

main = do
	number <- readFile "number.txt"
	putStrLn (solve number)


