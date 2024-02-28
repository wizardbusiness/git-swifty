import Foundation

// protocols define the shape of the data structure using them.
// protocols are a list of rules that structures have to conform to.
protocol CoffeeMaker {
  var coffeeMakerType: String { get set }
  
  func brewCoffee()
  
}

struct FrenchPress: CoffeeMaker {
  var coffeeMakerType: String {
    get {
      return "French Press"
    }
    
    set {
      
    }
    
  }
  
  func brewCoffee() {
    "Brewed Some Coffee!"
  }
}

var uniqueFrenchPress = FrenchPress()

uniqueFrenchPress.coffeeMakerType = "Espresso Machine"





