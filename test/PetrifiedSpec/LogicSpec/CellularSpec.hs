module PetrifiedSpec.LogicSpec.CellularSpec where

import Test.Hspec

import Petrified.Logic.Cellular
import Petrified.Logic.Environment

spec = supplySpec

supplySpec = describe "Position.position" $ do
    it "correctly identifies the position of a Supply" $
        position (Supply (42, 64) Nutrient) `shouldBe` (42, 64)

