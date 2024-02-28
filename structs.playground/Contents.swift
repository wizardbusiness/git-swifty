import Foundation

// Structs, they're fast!
// They are stored in the stack.
// Objects in the stack are value types
// Value types are copied, not mutated.

struct Quiz {
  let title: String
  let dateCreated: Date
  let isActuallyATest: Bool?
  
  // structs have an implicit init
  // would like like this written out:
  // init(
      // title: String,
      // dateCreated: String
  // ) {
  // self.title = title
  // self.dateCreated = dateCreated
  // }
  
  // why manually create an init when it's implicit?
  // For one, we can pass default values so we don't have to manually write
  // them out when we call init for our struct instance.
  init(title: String, dateCreated: Date? = .now, isActuallyATest: Bool?) {
    self.title = title
    // we can also use nil coalescing to assign default values (pick one or the other)
    self.dateCreated = dateCreated ?? .now
    self.isActuallyATest = isActuallyATest
  }
}

// creating this struct instance is actually calling the implicit init.
// custom init means we dont need dateCreated V (though we can still add it)
// isActuallyATest is nil because optional
let myQuiz: Quiz = Quiz(title: "Math Quiz", isActuallyATest: nil)

// * immutable struct * since struct only has constants as properties, it is immutable
struct personModel {
  let name: String
  let isAdult: Bool
}

// cant just edit
var person1: personModel = personModel(name: "Gabriel", isAdult: false)
// instead, we can create a func that reassigns person1 to a new personModel instance
// where isAdult is true
func markPersonAsAdult() {
  print(person1)
  person1  = personModel(name: "Gabriel", isAdult: true)
  print(person1)
}
person1.isAdult // false
// reassign person1
markPersonAsAdult()
person1.isAdult // true

// mutable struct
struct personModel2 {
  let name: String
  var isAdult: Bool
}

var person2 = personModel2(name: "Nick", isAdult: false)
func markPersonAsAdult2() {
  person2.isAdult = true
}

person2.isAdult // false
markPersonAsAdult2()
person2.isAdult // true

// immutable struct v2

struct PersonModel3 {
  let name: String
  let isAdult: Bool
  
  // put markAsAdult method INSIDE struct
  func markPersonAsAdult(updatedVal: Bool) -> PersonModel3 {
    return PersonModel3(name: name, isAdult: updatedVal)
  }
}

var person3 = PersonModel3(name: "Shiba", isAdult: false)
person3.isAdult // false
// better practice because struct is in charge of changing its own data
person3 = person3.markPersonAsAdult(updatedVal: true)
person3.isAdult // true


// mutable struct
struct PersonModel4 {
  let name: String
  // private set prevents setting a variable from outside the struct
  // you can still get the value
  private(set) var isAdult: Bool
  // explicitly tell swift that you are mutating the struct
  mutating func markPersonAsAdult(updatedVal: Bool) {
    isAdult = updatedVal
  }
}

var person4 = PersonModel4(name: "Hera", isAdult: false)
person4.isAdult // false
person4.markPersonAsAdult(updatedVal: true)
person4.isAdult // true

// this is better because the only place this can be updated is from the struct which
// reduces the risk of accidental mutation

// recap
// copied on assignment
// can be "mutated" by reassigning properties on existing instances
// alternative to tuples



