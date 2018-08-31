doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleUs2 x y = doubleMe x + doubleMe y

collatz x = if odd x then 3*x+1 else x `div` 2

collatz' x
   | odd x = 3*x + 1
   | otherwise = x `div` 2

parseLine str = [read x :: Integer | x <- words str]

collatzCycle x
   | x == 1 = [1]
   | otherwise = x : collatzCycle (collatz' x)

collatzCycleLength x = length (collatzCycle x)

maxCycleLength range = maximum [collatzCycleLength x | x <- range]

factorial :: Integer -> Integer
factorial n = product [1..n]

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"
