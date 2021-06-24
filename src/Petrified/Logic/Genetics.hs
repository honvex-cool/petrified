module Petrified.Logic.Genetics where

data Gene = Gene

type Dna = [Gene]

class Genome g where
    genome :: g -> Dna


