import Foundation

// you can loop on numbers without an array
for x in 0..<100 {
  x
}
 
let anArray: [String] = ["a", "b", "c", "d", "e", "f", "g"]
var secondArray: [String] = []
for el in anArray {
  secondArray.append(el)
}

secondArray

struct PlantModel {
  let name: String
  let watered: Bool
}

let allPlants = [
  PlantModel(name: "A", watered: false),
  PlantModel(name: "B", watered: false),
  PlantModel(name: "C", watered: true),
  PlantModel(name: "D", watered: false),
  PlantModel(name: "E", watered: true),
]

for plant in allPlants {
  print(plant.name)
}

// access index by enumerating
for (index, plant) in allPlants.enumerated() {
  print("name: \(plant.name), index: \(index)")
}

// can use break, continue as well
for (index, plant) in allPlants.enumerated() {
  if index == 2 {
    break
  } else if plant.name == "A" {
    print(plant.name)
  } else {
    continue
  }
}
 
