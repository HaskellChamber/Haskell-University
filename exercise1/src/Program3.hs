module Program3
    ( exercise1
    ) where

import Control.Monad (forever)

exercise1 :: IO ()
exercise1 = forever $ do
    putStrLn "Hello, what is your name?"
    name <- getLine
    putStrLn ("Nice to meet you " ++ (name :: String))
