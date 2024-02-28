import Foundation

// Tuples - One piece of data with multiple values inside it

var soda: String = "Coca Cola"
var sodaTastesGood: Bool = true
var sodaIsBrand: Bool = true

func getSoda(soda: String) -> String {
  return soda
}

func checkIfBrandName() -> Bool {
  return sodaIsBrand
}

func getSodaInfo(soda: String) -> String {
  let name = getSoda(soda: soda)
  // can only return 1 thing ie 'name'
  return name
}

func getSodaInfo2(soda: String) -> (String, Bool, Int) {
  let name = getSoda(soda: soda)
  let isBrandName = checkIfBrandName()
  let count = 1
  // now we can return two or more items
  return (name, isBrandName, count)
}

// are these the same as arrays?

let sodaInfo1 = getSodaInfo2(soda: "Dr Pepper")

let name1: String = sodaInfo1.0 // index 0 in tuple is name
// using tuple indices to access values is confusing, so you can name the tuple values and then access them by name in dot notation.
func getSodaInfo3(soda: String) -> (
  name: String,
  isBrandName: Bool,
  count: Int
) {
  let name = getSoda(soda: soda)
  let isBrandName = checkIfBrandName()
  let count = 1
  // now we can return two or more items
  return (name, isBrandName, count)
}

let sodaInfo2 = getSodaInfo3(soda: "Sprite")
let sodaName2 = sodaInfo2.name

func doSomethingWithSodaInfo(
  info: (
    name: String, isBrandName: Bool, count: Int)
) -> (
  name: String, isBrandName: Bool, count: Int
) {
  return info
}

let sodaAction = doSomethingWithSodaInfo(info: sodaInfo2)
