module Petrified.App (
    runSim
    ) where

import qualified Graphics.Gloss as Gloss;
import qualified Graphics.Gloss.Data.ViewPort as ViewPort;
import qualified Graphics.Gloss.Data.Color as Color
import qualified Graphics.Gloss.Data.Picture as Picture

title :: String
title = "Petrified"

xPosition :: Int
xPosition = 100

yPosition :: Int
yPosition = 100

position :: (Int, Int)
position = (xPosition, yPosition)

width :: Int
width = 800

height :: Int
height = 600

dimensions :: (Int, Int)
dimensions = (width, height)

window :: Gloss.Display
window = Gloss.InWindow title position dimensions

stepsPerSecond :: Int
stepsPerSecond = 30

backgroundColor :: Color.Color
backgroundColor = Color.white

type Model = ()

initial :: Model
initial = ()

draw :: Model -> Picture.Picture
draw = const Picture.blank

step :: ViewPort.ViewPort -> Float -> Model -> Model
step _ _ model = model

runSim :: IO ()
runSim = Gloss.simulate
    window
    backgroundColor
    stepsPerSecond
    initial
    draw
    step
