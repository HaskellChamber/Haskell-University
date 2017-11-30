module Lib
    ( qs
    ) where

import Data.List
import Data.Ord

qs :: Ord a => [a] -> [a]
qs [] = []
qs (el:tail) = qs(lower) ++ [el] ++ qs(greater)
    where
    predicate = (< el)
    (lower, greater) = partition predicate tail
