module HKatalogSpec where

import HKatalog
import Test.Hspec

spec :: Spec
spec = do
  describe "Validate haqify function" $ do
    it "haqify is supposed to prefix Haq! to things" $
      haqify "me" `shouldBe` "Haq! me"
