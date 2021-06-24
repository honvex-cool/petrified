import Test.Hspec

import Math.All (absolute)

import Petrified.A.C
import Petrified.A.D
import Petrified.B.E
import Petrified.B.F

main :: IO ()
main = hspec $
    describe "Example assertion" $ do
        it "passes" $
            True `shouldBe` True
        it "uses a simple function" $
            absolute 1 `shouldBe` 1
        it "finds a function in A.C" $
            greet "Wytoczka" `shouldBe` "Hello Wytoczka"
        it "finds a function in A.D" $
            something "Wytoczka" `shouldBe` "something like Wytoczka"
        it "finds a function in B.E" $
            xD "Wytoczka" `shouldBe` "Wytoczka xD"
        it "finds a function in B.F" $
            lol "Wytoczka" `shouldBe` "Wytoczka LOL"


