{-# LANGUAGE NoMonomorphismRestriction #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
import Diagrams.TwoD.Vector
import System.Random

no :: Int
no = 400

mkRect :: (RealFloat (N t), TrailLike t, V t ~ V2) => (N t, N t) -> t
mkRect (w, h) = roundedRect w h 0.3

mkPoints :: [n] -> [P2 n]
mkPoints xs = map p2 (zip xs (tail xs))

randomize :: Double -> Double -> IO [Double]
randomize x y = do
                g <- newStdGen
                let r = randomRs (x, y) g
                return r

main :: IO ()
main = do
  coord <- randomize (-10.0) 400.0
  h <- randomize 5.0 40.0
  w <- randomize 5.0 40.0
  let points = take no $ mkPoints coord
  let squares = atPoints points (take no $ map mkRect (zip h w))
  mainWith (squares :: Diagram B)
