--
-- Basic haqify
--
module HKatalog where

import System.Environment

-- | 'main' runs the main program
main :: IO ()
main = getArgs >>= print . haqify . head

haqify :: String -> String
haqify s = "Haq! " ++ s
