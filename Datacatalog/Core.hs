{-# LANGUAGE RecordWildCards #-}
module Datacatalog.Core where

import qualified Text.JSON as JS
import Text.JSON.Types

data Symbol =
    Symbol { name     :: String,
             path     :: String
           } deriving (Show, Eq)

decode :: (JS.JSON a) => String -> JS.Result a
decode s = JS.decode s 

instance JS.JSON Symbol where

    readJSON (JS.JSObject o) = return $ Symbol { .. }
            where name       = grab o "name"
                  path       = grab o "path"


grab o s = case get_field o s of
                Nothing            -> error "Invalid field " ++ show s
                Just (JSString s') -> fromJSString s'

-- How to parse json into a record
-- http://stackoverflow.com/questions/6090599/parsing-json-string-into-record-in-haskell


