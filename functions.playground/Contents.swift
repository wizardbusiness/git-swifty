import Foundation

func noArgsOrReturnVal() {
  "no return"
}

noArgsOrReturnVal()

func takesAnInt(int: Int) {
  let newInt = int + 2
}

func takesAndReturnsAnInt(int: Int) -> Int {
  /// do not need to type return if only one line
  int + 4
}

/// you need to specify the params name as well as the args value!
takesAndReturnsAnInt(int: 3)

func customDivide(top: Int, bottom: Int) -> Int {
  return top / bottom
}
let customDivd = customDivide(top: 12, bottom: 4)


/// to remove internal named args from call, you need to underscore the params
func demoUnnamedArgs(_ noName1: String, _ noName2: String) -> String {
  noName1 + noName2
}
/// no need to specify arg names
demoUnnamedArgs("no", "face")

/// prefacing with discardableresult overrides warning that result isn't consumed
@discardableResult
func demonstrateNoConsume(_ lhs: Int, _ rhs: Int) -> Int {
  lhs + rhs
}

func doSomething(
  with value: Int
) -> Int {
  func mainLogic(value: Int) -> Int {
    value + 2
  }
  return mainLogic(value: value + 3)
}
doSomething(with: 30)

func getThatBread(breadColor: String = "white", breadType: String = "sourdough") -> String {
  "\(breadColor) \(breadType)"
}

getThatBread()

func pourCoffee() -> String {
  return "Pour Coffee"
}
// type safe
let pouredCoffee: String = pourCoffee()
 

// guard statement

func guardSomething() -> String {
  var action: String = "Run"
  // make sure action is exactly equal to run
  // like saying, "make sure this is true, if it isn't return early".
  guard action == "Run" else {
    return ("I'm walking here!")
  }
  return action
}

// does the same thing without guard statement
func ifSomething() -> String {
  var action: String = "Run"
  if action == "Run" {
    return action
  } else {
    return "I'm walking here!"
  }
}

// calculated variables are basically functions

// if you need to pass in args, use a function
func catculateCats(cat1: Int, cat2: Int) -> Int {
  return cat1 + cat2
}
let result = catculateCats(cat1: 1, cat2: 2)


// if you don't need to pass in args, you can use a calculated variable
let cat1 = 1
let cat2 = 2
var catculatedCats: Int {
  return cat1 + cat2
}

// calculates every time its used. Just like a function
catculatedCats

// same as this
func catculatedFunc() -> Int {
  return cat1 + cat2
}
 
