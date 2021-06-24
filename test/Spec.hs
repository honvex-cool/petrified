import qualified PetrifiedSpec.LogicSpec.CellularSpec

import Test.Hspec

main :: IO ()
main = hspec $ do
    PetrifiedSpec.LogicSpec.CellularSpec.spec

