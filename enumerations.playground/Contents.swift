import Foundation


// Enums are great when you know every single value that will be in the app
// Enums are the same as structs, except that we know all cases at runtime.
// Both structs and enums are in the stack

struct PhoneModel {
  let brand: PhoneBrand
  let model: String
}

struct PhoneBrand {
  let brand: String
}


var brand1 = PhoneBrand(brand: "iPhone")
var brand2 = PhoneBrand(brand: "Samsung")
var brand3 = PhoneBrand(brand: "Google")
// we can still put anything in here, so we could put poop as a phone brand
var brand4 = PhoneBrand(brand: "Poop") // (okay thats actually a userful category)

var phone1: PhoneModel = PhoneModel(brand: brand1, model: "XR")
var phone2: PhoneModel = PhoneModel(brand: brand2, model: "Galaxy")
var phone3: PhoneModel = PhoneModel(brand: brand3, model: "Pixel")

phone3.brand

// if we know all the brands, we can create an enum
enum PhoneBrandsEnum {
  case iphone
  case samsung
  case google
  
  // computed variable
  var brand: String {
    switch self {
    case .iphone:
      return "iPhone"
    case .samsung:
      return "Samsung"
    case .google:
      return "Google"
    }
  }
}

struct PhoneModelsV2 {
  let brand: PhoneBrandsEnum
  let model: String
}

// now we can only choose from the cases in our phone brands enum
var phone4: PhoneModelsV2 = PhoneModelsV2(brand: .iphone, model: "XR")


// cannot mutate enums
// you can switch on different enum cases to create conditional logic based on enum values.
enum Animals {
  case cat
  case dog
  case mouse
  case raccoon
  case possum
  case kangaroo
  case snake, lizard, turtle
}

/// create instance of enums
let awesome = Animals.possum

if awesome == Animals.cat {
  "This is a cat"
} else {
  "This is something else"
}

switch awesome {
  case .cat:
    "This is a cat"
    break
  case .dog:
    "This is a dog"
    break
  case .possum:
    "THIS IS A POSSUM"
  case .mouse:
    "This is a mouse"
    break
  /// not a good idea to specify default clause
  default:
  "This is something else"
}

enum Shortcut {
  case fileOrFolder(path: URL, fileName: String)
  /// parenthesis contain associated values
  case wwwUrl(path: URL)
  case song(artist: String, songName: String)
}

let roots = Shortcut.song(artist: "Carmanah", songName: "Roots")


let google = Shortcut.wwwUrl(
  path: URL(string: "https://google.com")!
)

google

/// check if constant google is an instance of file or folder, url, or song
switch google {
/// type let after case to apply it to the associated values arguments
case let .fileOrFolder(
  path, fileName
):
  /// logic
  path
  fileName
  break
  
case let .wwwUrl(
  path
):
  /// logic
  path
case let .song(
  artist,
  songName
):
  /// logic
  artist
  songName
  break
}
/// if you just want a specific enum case, you can use if with case to check equality
if case let .wwwUrl(path) = google {
  path
}

if case let .song(_, songName) = roots {
  songName
}

enum Vehicle {
  case car(manufacturer: String, model: String)
  case bike(manufacturer: String, yearMade: Int)
  
  var manufacturer: String {
    switch self {
    case let .car(manufacturer, _),
      let .bike(manufacturer, _):
      return manufacturer
    }
  }
}

let car = Vehicle.car(
  manufacturer: "Nissan",
  model: "Leaf"
)

let bike = Vehicle.bike(
  manufacturer: "Canon", yearMade: 1999
)

switch bike {
case let .car(manufacturer, _):
  manufacturer
  break
case let .bike(manufacturer, _):
  manufacturer
  break
}



car.manufacturer

enum Pets: String, CaseIterable {
  case cat = "Finny"
  case dog = "Lucy"
  case lizard = "Spotty"
  case hippogryph = "Beaky"
}

Pets.hippogryph.rawValue


Pets.allCases

Pets.allCases.map(\.rawValue)

if let cat = Pets(rawValue: "Finny") {
  "Found Finny"
} else {
  "Finny has escaped!"
}
