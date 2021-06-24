module Petrified.Logic.Cellular where

import System.Random;

import Petrified.Logic.Environment
import Petrified.Logic.Genetics

data Nutrient = Nutrient

data Supply = Supply Point Nutrient

instance Position Supply where
    position (Supply p _) = p

class Genome cell => Cell cell where
    advance :: StdGen -> [Supply] -> cell -> Maybe cell

class Cell cell => Divisible cell where
    divide :: cell -> Maybe cell

class Cell cell => Affectable cell where
    affectedBy :: StdGen -> cell -> cell -> Maybe cell

    affectedByAll :: StdGen -> [cell] -> cell -> Maybe cell
    affectedByAll gen others cell = foldl (>>=) (Just cell) actors
        where
            actors = zipWith makeActor others seeds
            makeActor = \ other seed -> affectedBy (mkStdGen seed) other
            seeds = randoms gen :: [Int]

type Monoculture cell = [cell]
type Dish cell = [Monoculture cell]

