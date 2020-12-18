# Single-line comments start with a #

#[
  This is a multiline comment.
  In Nim, multiline comments can be nested, beginning with #[
  ... and ending with ]#
]#

discard """
This can also work as a multiline comment.
Or for unparsable, broken code
"""

var                     # Declare (and assign) variables,
  letter: char = 'n'    # with or without type annotations
  lang = "N" & "im"
  nLength: int = len(lang)
  boat: float
  truth: bool = false

let            # Use let to declare and bind variables *once*.
  legs = 400   # legs is immutable.
  arms = 2_000 # _ are ignored and are useful for long numbers.
  aboutPi = 3.15

const            # Constants are computed at compile time. This provides
  debug = true   # performance and is useful in compile time expressions.
  compileBadCode = false

when compileBadCode:            # `when` is a compile time `if`
  legs = legs + 1               # This error will never be compiled.
  const input = readline(stdin) # Const values must be known at compile time.

discard 1 > 2 # Note: The compiler will complain if the result of an expression
              # is unused. `discard` bypasses this.
echo "letter ", letter
echo "lang ", lang
echo "nLength ", nLength
echo "boat ", boat
echo "truth ", truth

#[Create an immutable variable containing your age (in years). 
Print your age in days. (1 year = 365 days)
]#
var
  age = 40
const year = 365
proc ageInDays(age : int): int =
  result = age * year
echo "My is is" , ageInDays(age)

#Check if your age is divisible by 3. (Hint: use mod)
proc ageByN(age, n: int): bool =
  result = (age mod n) == 0
echo "Is devisible ", ageByN(age, 5)
#Create an immutable variable containing your height in centimeters.
# Print your height in inches. (1 in = 2.54 cm)
let myHeight:float = 172
let inches = 2.54
proc HeightInInches(h: float): float =
  result = h / inches
import math
echo "I'm in inches ", math.round(HeightInInches(myHeight))  
#A pipe has a 3/8 inch diameter. Express the diameter in centimeters.

proc inchesToCm(diameter: float64): float64 =
  result = diameter * inches
echo "Diamete in inches ", math.round(inchesToCm(3/8)), ":", inchesToCm(3/8)

#[
Create an immutable variable containing your first name, 
and another one containing your last name. 
Make a variable fullName by concatenating the previous two variables.
Don’t forget to put a whitespace in-between. Print your full name.
]#

let myname = "Alex"
let sName = "Granovsky"

proc pfn(fname, sname : string) =
  echo fname & ' ' & sname

pfn(myname, sName)

#[
Alice earns $400 every 15 days. 
Bob earns $3.14 per hour and works 8 hours a day, 7 days a week. 
After 30 days, has Alice earned more than Bob? (Hint: use relational operators)
]#
echo 800 >= 3.14*8*30

import strutils
let s = "abra cada bra"
for ch in strutils.split(s):
  echo  ch