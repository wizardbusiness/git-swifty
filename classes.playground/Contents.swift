import Foundation

// Classes are reference types, NOT value types unlike structs
// Stored in memory in the Heap.
// Objects in Heap are always reference types.
// Slow compared to Structs.
// Used when you want to make something that's a little more permanant in your code.

class Person {
  var name: String
  var age: Int
  /// initialize your variables
  init(
    name: String,
    age: Int
  ) {
    self.name = name
    self.age = age
  }
  
  func incrAge(){
    self.age += 1
  }
}

let foo = Person(name: "Abby", age: 41)
foo.age
foo.incrAge()
foo.age

class Child: Person {
  
}
/// extending a class
let littleMan = Child(name: "little man", age: 2)

littleMan.incrAge()

littleMan.age

class Cat {
  let manufacturer = "Ceiling Cat"
  let model: String
  let year: Int
  // designated initializer
  init() {
    self.model = "Purrminator"
    self.year = 1999
  }
  
  // another designated initializer
  // allows passing in of model and year values
  init(model: String,
       year: Int
  ) {
    self.model = model
    self.year = year
  }
  
  // convenience initializer allows delagation of init.
  // passing in of values,
  // and definition of default values in one
  convenience init(
    model: String
  ) {
    self.init(
      model: model,
      year: 2023
    )
  }
}

// uses initializer with no paramaters
let arnold = Cat()
arnold.model

let beanie = Cat(model: "Purrito", year: 1991)
beanie.model

let osmium = Cat (model: "Meowlemental")
osmium.model

class Kitten: Cat {
  // inherit init from superclass Cat
  override init() {
    super.init (
      model: "Mew",
      year: 2023
    )
  }
  
  
 }

let pinto = Kitten()
pinto.model
// cannot use convenience initializer from Cat inside Kitten subclass
//let mew2 = Kitten(model: "claus") This doesn't work


// deinitializers: Invoked when class instance is garbage collected

class Tree {
  init() {
    "Initialized"
  }
  
  func doSomething() {
    "Did Something"
  }
  
  deinit {
    "Deinitialized"
  }
 }

let xmasTree = Tree()

let myClosure = {
  let tree = Tree()
  tree.doSomething()
}

class ScreenViewModel {
  let title: String
  // make sure we can only set the value from inside the class
  private(set) var showButton: Bool
  
  // need to EITHER init OR give default values (inits to default value)
  
  // Same init as a Struct except structs have implicit inits
  init(title: String, showButton: Bool) {
    self.title = title
    self.showButton = showButton
  }
  
  // another difference is that Classes have deinit as well.
  
  deinit {
    // this runs as the object is being removed from memory
    // Structs do NOT have deinit.
  }
  
  func setShowButton() {
    if showButton == false {
      showButton = true
    } else {
      showButton = false
    }
  }
  
}

// use let because we're going to change the data not the reference,
// With classes we create instances, with structs we do not.
let viewModel: ScreenViewModel = ScreenViewModel(
  title: "Night of the live stream",
  showButton: true
)

viewModel.setShowButton()
viewModel.showButton // can still get showButton value, just not set it
viewModel.setShowButton()
viewModel.showButton // can only set showButton value from inside class





