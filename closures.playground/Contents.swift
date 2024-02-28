import Foundation

/// assign constant a value of a function that returns the function after the equals
let add: (Int, Int) -> Int
/// the in keyword tells swift what the return value from the returned function is
  = { (lhs: Int, rhs: Int) -> Int in
    lhs + rhs
  }
add(20, 30)

func customAdd(
  _ lhs: Int,
  _ rhs: Int,
  /// using keyword defines the function returned from the closure
  using function: (Int, Int) -> Int
) -> Int {
  /// inner function is called within the func body
  function(lhs, rhs)
}

/// defining the inner func inline when calling outer function. Note the in keyword being used
/// The in keyword signals the start of the closure body
customAdd(30, 50, using: {(lhs: Int, rhs: Int) -> Int in
    lhs + rhs
})

customAdd(
  20, 400
  /// trailing closure can be defined in brackets after the function call
) { (lhs, rhs) -> Int in
    lhs + rhs
}

/// Defining a closure
func alwaysBClosuring(
  string1: String,
  string2: String,
innerFunc: (String, String) -> String
) {
  innerFunc(string1, string2)
}

/// Different ways to call a closure
/// Note: All closures have inferred typing, so it isn't necessary to type them explicitly.
/// However, explicit typing makes the compiler faster at runtime since it doesnt have to infer the types.

/// 1. define the inner func in the arguments
alwaysBClosuring(
  string1: "This is ",
  string2: "A closure",
  innerFunc: { (str1: String, str2: String) -> String in
    str1 + str2
})

/// 2. Define the closure after the arguments
alwaysBClosuring(
  string1: "Another ",
  string2: "Closure "
) { (str1, str2) in
  str1 + str2
}

/// 3. Define the closure using the indices of the args in the outer func.
alwaysBClosuring(string1: "Another ", string2: "Closure") {
  $0 + $1
}

let ages = [1, 6, 3, 10, 0]

ages.sorted(by: {(lessThan: Int, greaterThan: Int) -> Bool in
    lessThan < greaterThan})

/// shortcut
ages.sorted(by: <)

func add23To(_ value: Int) -> Int {
  value + 23
}

func doAddition(
  on value: Int,
  using function: (Int) -> Int
) -> Int {
  function(value)
}

doAddition(
  on: 20) { value in
      value + 30
  }

doAddition(on: 20, using: add23To(_:))





