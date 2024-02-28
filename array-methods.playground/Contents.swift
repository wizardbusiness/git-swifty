import Foundation

struct dbUser {
  let id: Int
  let name: String
  let loggedIn: Bool
}

var users: [dbUser] = []
let names = ["Josh", "Hannah", "Nick", "Gabriel"]
for (index, name) in names.enumerated() {
  let newUser = dbUser(id: index + 1, name: name, loggedIn: index % 2 == 0 ? true : false)
  users.append(newUser)
}

// filter
// filter for certain attributes
var allLoggedInUsers: [dbUser] = users.filter {user in // user in
  return user.loggedIn // returns the values that eval to true
}

var allLoggedInUsersV2: [dbUser] = users.filter({ $0.loggedIn }) // shorthand for current el

// sort
var orderedUsers: [dbUser] = users.sorted { userA, userB in
  return userA.name < userB.name
}
// same just shorthand
var orderedUsers2: [dbUser] = users.sorted(by: {$0.name < $1.name})

// map
// create new values in an array based on input values
var userNames: [String] = users.map {user in
  return user.name
}

//shorthand
var userNames2: [String] = users.map({ $0.name })


