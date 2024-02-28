import Foundation

let myAge = 32
let yourAge = 32

if myAge > yourAge {
    "I'm older than you."
} else if myAge < yourAge {
    "I'm younger than you."
} else {
    "We're the same age!"
}

/// binary infix
let myMothersAge = myAge + 40
let doubleAge = myAge * 2

///  operator types
///  1. unary prefix works with one value and sits before a value
///  2. unary postfix works with one value and sits after a value
///  3. binary infix works with two values and sits between two values

/// unary prefix
let foo = !true

/// unary postfix
let name = Optional("Bill")
type(of: name)
let unaryPostfix = name!

// binary infix
let result: Int = 1 + 3
let names: String = "Foo" + "Bar" + "Baz"

// other operator types:
// ternary operator

let age = 30

let message: String = age >= 18
    ? "You are a legal adult"
    : "You aren't yet a legal adult"

