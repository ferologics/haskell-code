{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-tabs#-}
--{-# OPTIONS_GHC -Wall -Werror #-}

module Main where

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

{- 
	'if' statements are expressions, which
	means that they have to return a value,
	also you have to cover all cases in
	Haskell, you have to use 'else'
-}
doubleSmallNumber x = if x > 100
												then x
												else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

numbers = [5,5,6,7,1,9]

-- merge lists with '++'
mergedNumbers = numbers ++ numbers

-- prepend list using ':'
prependNumbers = 6:mergedNumbers

-- use '!!' to get an item at index
sixthIndex = prependNumbers !! 6

-- compare lists like numbers
compLists  = numbers == numbers
compListB = [-1,2,3] > [0,9,5]
 
{-
	basic list functions -->

  » 'head'    -> get the elem for 1st idx
	» 'tail'    -> get the list without it's head
	» 'last'    -> get the last element
	» 'init'    -> get everything exept last elem
	» 'length'  -> returns length
	» 'null'    -> check if is empty
	» 'reverse' -> ... -_-" ...
	» 'take'    -> extract x elem from beginning
	» 'drop'    -> remove x elem form beginning
	» 'maximum'
		'minimum' -> min,max..
	» 'sum'     -> sum of all numbers in list
	» 'product' -> product of all numbers in list
	» 'elem'    -> checks if certain element is in the list
-}

a = [1,2,3]
headA    = head    a   
tailA    = tail    a   
lastA    = last    a   
initA    = init    a   
lengthA  = length  a 
nullA    = null    a   
reverseA = reverse a
takeA    = take 2  a 
dropA    = drop 2  a 
maximumA = maximum a
minimumA = minimum a
sumA     = sum     a
productA = product a
elemA    = 1 elem  a 

-- define ranges by saying [1..20] ---> 1,2,3,...20
range = [1..20]
anotherRange = ['a'..'z']

{-
  ranges with cerain 'd' can be defined with [0.1, 0.3..1] 
  watch out though, because [0.1, 0.3 .. 1] sometimes gives 
  you funky results ->
  
  [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]

  you shouldn't usually use them with floats
-}
decRange = [0.1, 0.3..1]

initial = 0.1  -- starting value
step = 0.16 -- step size
testRange = [initial, initial + step..5]

-- In haskell you can create infinite lists
-- we can use haskells lazyness to our advantage and do
lazyArray = take 24 [21, 25..] -- takes first 24 elements

-- use 'cycle' to repeat certain value infinitely
infArray = take 11 (cycle [1,2,3])

-- 'repeat' does the same but with only one element
infRepeatArray = take 10 (repeat 5)

-- LIST COMPREHENSION
-- general syntax » [x | x <- [y..z]]
listComp = [x*2 | x <- [1..10]]







