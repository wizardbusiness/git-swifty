import Foundation

// Arrays, Sets

let apple = "Apple"
let orange = "Orange"

let fruits: [String]

let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = ["Apple", "Orange"]

let fruitCount = fruits1.count
let firstF = fruits1.first
let firstL = fruits1.last

// arrays are values and are automatically copied when assigned as a value
let newFruitsArray = fruits1 // this is a copy of fruits1

// modifiying / mutating an array
var fruitsArray: [String] = ["Orange", "Apple", "Mango"]
// append only works with var, since appending mutates the original array
fruitsArray.append("Banana")
// access indices as an array with indices
let firstIndex = fruitsArray.indices.first

// check if index exists before accessing it
if fruitsArray.indices.contains(3) {
  let fruit = fruitsArray[3]
}

// splice
fruitsArray.insert("Watermelon", at: 2)
// can also insert multiple at once with contents of <Array>
fruitsArray.insert(contentsOf: ["Pear", "Guava"], at: 2)

// always check that an index exists before doing something with an element
// otherwise the program will crash if it doesnt exist
if fruitsArray.indices.contains(2) {
  // remove
  fruitsArray.remove(at: 2)
}
// remove all elements from an array
var nuts: [String] = []
// remove all doesn't require elements to work
nuts.removeAll()

// can make arrays of objects
struct nutModel {
  let nut: String
  let tasty: Bool
}

var myNuts: [nutModel] = [
  nutModel(nut: "a", tasty: true),
  nutModel(nut: "b", tasty: true),
  nutModel(nut: "c", tasty: true),
  nutModel(nut: "d", tasty: true),
  nutModel(nut: "e", tasty: true),
  nutModel(nut: "f", tasty: true),
  nutModel(nut: "g", tasty: true),
]

// Set
var fruitsSet: Set<String> = ["Apple", "Orange", "Apple", "Pear", "Pear"] // removes duplicates

fruitsSet // sets are unordered


