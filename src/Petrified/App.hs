module Petrified.App (
    runSim
    ) where

import Graphics.Gloss as Gloss;
import Graphics.Gloss.Data.Color as Color
import Graphics.Gloss.Data.Picture as Picture
import Graphics.Gloss.Data.ViewPort as ViewPort;

title :: String
title = "Petrified"

width :: Int
width = 800

height :: Int
height = 600

dimensions :: (Int, Int)
dimensions = (width, height)

xPosition :: Int
xPosition = 100

yPosition :: Int
yPosition = 100

position :: (Int, Int)
position = (xPosition, yPosition)

window :: Gloss.Display
window = Gloss.InWindow title dimensions position

stepsPerSecond :: Int
stepsPerSecond = 30

backgroundColor :: Color
backgroundColor = Color.white

type Model = ()

initial :: Model
initial = ()

draw :: Model -> Picture
draw _ = Picture.color Color.red $ Picture.thickCircle 10 100

step :: ViewPort -> Float -> Model -> Model
step _ _ model = model

runSim :: IO ()
runSim = Gloss.simulate
    window
    backgroundColor
    stepsPerSecond
    initial
    draw
    step
