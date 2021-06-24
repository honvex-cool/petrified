module Petrified.Logic.Environment (module Point, Position(..)) where

import Graphics.Gloss.Data.Point as Point

class Position p where
    position :: p -> Point

