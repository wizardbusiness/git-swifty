import Foundation

// always a value here
let myBool: Bool = false

// optional: We dont know if theres a value here, but if it is its a boolean
var otherBool: Bool? = nil

//print(otherBool)
//
//otherBool = true;
//print(otherBool)

// nil coalescing operator
let newValue: Bool? = otherBool
// ?? basically means otherwise, kind of like abbreviated ternary
// actually like null coaelescing
let anotherValue: Bool = otherBool ?? false

// any type can be optional
let cat: String? = nil
// you can use nil coelescing for any value
let myCat: String = cat ?? "Sphynx"
let theirCat: String = cat ?? "Maine Coone"

let num: Int? = nil
let myNum: Int = num ?? 1

// you can use nil coelescing in any scenario where lefthand value evals to bool t f
print (cat ?? "You're doing a great job")

// -------------------------------------------

var userIsPremium: Bool? = nil


func checkUserIsPremium() -> Bool? {
  // can exclude return with one line of code inside closure
  // if userIsPremium is nil, return what's after ??
  userIsPremium ?? false
}

// if-let
// when if-let is succesful, enter closure
func checkIfUserPremiumV2() -> Bool {
  // if userIsPremium is NOT nil,
  // then assign userIsPremium's value to a new constant, newValue
  if let newValue = userIsPremium {
    print(newValue)
    // return out of the function
    return newValue
  }
  // if userIsPremium IS nil, if evals false, and we simply continue
  return false
}

// new if-let syntax, just lets me write less code
func checkIfUserPremiumV3() -> Bool {
  // if userIsPremium is NOT nil,
  // assign userIsPremium's value to new local constant with same name
  if let userIsPremium {
    return userIsPremium
  } else {
    return false
  }
}

// using guard
// make sure there's a value, if there IS continue, if NOT, enter closure.
func checkIfUserPremiumV4() -> String {
  // can also use abbreviated syntax
  guard let userIsPremium else {
    return "User is not premium"
  }
  return "User is premium"
}

// --------------------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteTraining: Bool? = true
var userFavoriteCat: String? = "Cat"

// params are non optional, so we cant just pass in the above variables
func getUserStatus(
  userIsNew: Bool,
  userDidCompleteTraining: Bool,
  userFavoriteCat: String
) -> Bool {
  if (userIsNew && userDidCompleteTraining) {
    return true
  }
  
  return false
}

// to address, wrap getUserStatus call in a function that checks if all required
// params are present
func checkUserSetup() -> Bool {
  if let isNew = userIsNew,
    let didCompleteTraining = userDidCompleteTraining,
    let favoriteCat = userFavoriteCat {
      return getUserStatus(userIsNew: isNew, userDidCompleteTraining: didCompleteTraining, userFavoriteCat: favoriteCat)
  } else {
    return false
  }
}

// can also use a guard statement

func checkUserSetupV2() -> Bool {
  guard let userIsNew,
        let userDidCompleteTraining,
        let userFavoriteCat else {
          return false
        }
  
  return getUserStatus(
    userIsNew: userIsNew,
    userDidCompleteTraining: userDidCompleteTraining,
    userFavoriteCat: userFavoriteCat
  )
}

checkUserSetupV2()

// when to use guard vs when to use if-let.
// Generally if you can use either, use guard

// specific example
// nested closures are very confusing
func checkUserSetupV4() -> Bool {
  // what if we want to check if just one of our 3 values is true?
  if let userIsNew {
    // userIsNew == Bool
    if let userDidCompleteTraining {
      // userDidCompleteTraining == Bool
      if let userFavoriteCat {
        // userFavoriteCat == String
        return getUserStatus(
          userIsNew: userIsNew,
          userDidCompleteTraining: userDidCompleteTraining,
          userFavoriteCat: userFavoriteCat
        )
      } else {
        // userFavoriteCat == nil
        return false
      }
    } else {
      // userDidCompleteTraining == nil
      return false
    }
  } else {
    // userIsNew == nil
    return false
  }
}


// same thing using guard statements
// no more nested closures!
func checkUserSetupV5() -> Bool {
  
  guard let userIsNew else {
    // userIsnew == nil
    return false
  }
  
  guard let userDidCompleteTraining else {
    // userDidCompleteTraining == nil
    return false
  }
  
  guard let userFavoriteCat else {
    // userFavoriteCat == nil
    return false
  }
  
  return getUserStatus(
    userIsNew: userIsNew,
    userDidCompleteTraining: userDidCompleteTraining,
    userFavoriteCat: userFavoriteCat
  )
}

// optional chaining

func getUsername() -> String? {
  return "user"
}

func getBday() -> String {
  return "Happy Bday!"
}

func getUserData() {
  let username: String? = getUsername()
  // get the count if username is not nil
  // string has a count property i think
  let count = username?.count
  
  let bDay = getBday()
  let count2 = bDay.count
  
  // check if username has a first property, and if that first property has an
  // isLowercase property. If either of those properties doesn't exist, default
  // to false
  let firstCharacterIsLowercased = username?.first?.isLowercase ?? false
}

// 3 ways to safely unwrap optionals

// 1. nil coalescing
// 2. if-let statements
// 3. guard statements

// unsafely unwrap
let string: String? = "Hi"
// using bang, never do this
let count3: Int = string!.count

