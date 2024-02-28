import Foundation

// Uses square brackets not curly brackets like in javascript
let dict: [String: Bool] = ["Apple": true, "Orange": false]

let orange = dict["Orange"];

// yeah you can use ints as keys!
let dict2: [Int: String] = [1: "hi", 2: "there"]

// cannot modify directly if dict is a const
//dict2[1] = "meep"

struct MessageModel {
  let id: String
  let charCount: Int
  let readStatus: Bool
}

var posArray: [MessageModel] = [
  MessageModel(id: "asdf", charCount: 0, readStatus: false),
  MessageModel(id: "asdf", charCount: 1, readStatus: false),
  MessageModel(id: "asdf", charCount: 200, readStatus: false),
  MessageModel(id: "asdf", charCount: 5, readStatus: false),
]

// direct access just like in javascript
var postDict: [String: MessageModel] = [
  "asdf": MessageModel(id: "asdf", charCount: 0, readStatus: false),
]
