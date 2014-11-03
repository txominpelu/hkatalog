module Datacatalog.Core where

import qualified Text.JSON as JS

data Symbol =
    Symbol { name     :: String,
             path     :: String,
             start    :: String,
             end      :: Bool
           }

decode :: (JS.JSON a) => String -> JS.Result a
decode s = JS.decode s 

-- How to parse json into a record
-- http://stackoverflow.com/questions/6090599/parsing-json-string-into-record-in-haskell


