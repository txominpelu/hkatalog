module Main where

import HKatalog
import Test.Hspec

main :: IO ()
main = hspec $

  describe "Validate haqify function" $
    it "haqify is supposed to prefix Haq! to things" $
      haqify "me" `shouldBe` "Haq! me"
