module Program2
    ( exercise1
    ) where

exercise1 :: IO ()
exercise1 = do
    putStrLn "Hello, what is your name?"
    name <- getLine
    putStrLn ("Nice to meet you " ++ (name :: String))
