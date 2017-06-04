# Random Squares
A [Diagrams](http://projects.haskell.org/diagrams/) implementation of [Random Squares by Charles Csuri](http://recodeproject.com/artwork/v1n2random-squares)           
Magic numbers come from [Chris Allick Processing implementation](http://recodeproject.com/translation/chris-allick-direct-random-squares-charles-csuri)

```
cabal sandbox init
cabal install diagrams
cabal exec -- ghc --make randomSquares.hs
./randomSquares -o squares.svg -w 400
```
