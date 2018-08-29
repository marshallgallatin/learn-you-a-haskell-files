doubleMe x = x + x

doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleUs2 x y = doubleMe x + doubleMe y

collatz x = if odd x then 3*x+1 else x `div` 2

factorial :: Integer -> Integer
factorial n = product [1..n]
