#[
  Very Basics 
]#

import strformat
var
  player1 : string = "Bob"
  player2 = "Alice"
  rounds : int = 9999999
  N = 36
  p1Count: uint64 = 0
  p2Count: uint64 = 0

echo rounds, N, p1Count, p2Count
echo (rounds, N, p1Count, p2Count)
echo player1 & player2
echo fmt("player1: {player1}, player2: {player2}")



type
  Person = object
    name: string
    age: Natural # Ensures the age is positive

let people = [
  Person(name: "John", age: 45),
  Person(name: "Kate", age: 30)
]

for person in people:
  # Type-safe string interpolation,
  # evaluated at compile time.
  echo(fmt"{person.name} is {person.age} years old")