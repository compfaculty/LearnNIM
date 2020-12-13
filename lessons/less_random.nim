#[
  Simple Random 
]#
import strformat
import random

const
  rounds : int = 10
  N = 36

let
  player1 : string = "Bob"
  player2 = "Alice"

var
  p1Count: uint64 = 0
  p2Count: uint64 = 0
  drawCount: uint64 = 0

for index in 1 .. rounds:
  let p1 = rand(N)
  let p2 = rand(N)
  if p1 > p2:
    inc p1Count
    when rounds < 100:
      echo fmt("Round {index}: {p1} -gt {p2}: {player1} won!") 
  elif p1 < p2:
    inc p2Count
    when rounds < 100:
      echo fmt("Round {index}: {p2} -gt {p1}: {player2} won!")
  else:
    inc drawCount
    when rounds < 100:
      echo fmt("Round {index}: Waw - its draw!")

echo fmt("p1 wins {p1Count}, p2 wins {p2Count}, draws {drawCount}")
let total : uint64 = p1Count + p2Count + drawCount

echo fmt("""
play1 %: {cast[float64](p1Count) / cast[float64](total):15.5f}
play2 %: {cast[float64](p2Count) / cast[float64](total):15.5f}
draws %: {cast[float64](drawCount) / cast[float64](total):15.5f}
""")
