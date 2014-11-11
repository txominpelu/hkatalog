module CoreSpec where

import Datacatalog.Core
import Test.Hspec
import qualified Text.JSON as JS


spec :: Spec
spec = do
  describe "decode function" $ do
    it "is supposed to convert a string to a JSON value" $
      decode "\"1\"" `shouldBe` JS.Ok (JS.toJSString "1")

decodeSymbol :: JS.Result Symbol
decodeSymbol = do decoded <- decode "{\"name\": \"n\", \"path\": \"p\"}" 
                  JS.readJSON decoded


specDecodeSymbol :: Spec
specDecodeSymbol = do
  describe "readJSON function for Symbol" $ do
    it "is supposed to convert a string to a Symbol" $
        decodeSymbol `shouldBe` JS.Ok (Symbol { name = "n", path = "p" })
    
