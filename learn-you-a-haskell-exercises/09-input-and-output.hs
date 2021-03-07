import System.Environment
import System.Random
import Data.List as List
{-
 - Lets implement the UNIX echo command
 - The program arguments are simply printed to the standard output.
 - If the first argument is -n, this argument is not printed, and no trailing newline is printed
 -}
  
main = do 
    args <- getArgs
    let text = if head args /= "-n" then args else reverse $ replaceElemInList "" "\n" (tail args)
    putStrLn $ unwords text

replaceElemInList :: (Eq a) => a -> a -> [a] -> [a] 
replaceElemInList repl elem = foldl (\acc x -> if x == elem then repl:acc else x:acc) [] 


{- Write a lottery number picker
 - This function should take a StdGen instance, and produce a list of six unique numbers between 1 and 49, in numerical order
 -}
lottery :: StdGen -> [Int]
lottery gen = List.sort $ take 6 $ randomRs (1,49) gen  
