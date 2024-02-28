import Foundation

// The more specific you are with access control the better
// Most properties should be private as a rule of thumb
// Get in the habit of marking things as private
// Its easier to read and debug
struct MovieModel {
  let title: String
  let genre: MovieGenre
  let isFavorite: Bool
  
  func toggleIsFav() -> MovieModel {
    var updatedVal: Bool = false
    if isFavorite == false {
      updatedVal = true
    } else {
      updatedVal = false
    }
    
    return MovieModel(
      title: title,
      genre: genre,
      isFavorite: updatedVal
    )
    
  }
}

enum MovieGenre {
  case drama, comedy, horror, adventure
}

// The class is like the classroom
class MovieManager {
  // movies are like the quizzes
  // public means you can get and set from outside of class object
  // public is implicit
  public var movie1 = MovieModel(
    title: "The French Dispatch",
    genre: .drama,
    isFavorite: false
  )
  // cannot get or set from outside of class
  private var movie2 = MovieModel(
    title: "Smile",
    genre: .horror,
    isFavorite: false
  )
  // can only be set from inside class
  private(set) var movie3 = MovieModel(
    title: "Jumanji",
    genre: .adventure,
    isFavorite: false
  )
  
  // function to manage isfavorite property on movie3 struct
  func updateMovie3() {
    movie3 = movie3.toggleIsFav()
  }
}



let manager = MovieManager()

manager.movie1 = manager.movie1.toggleIsFav() // isFav == true

manager.movie1 // can access OR set from outside since movie1 is public
manager.movie1 = MovieModel(
  title: "Spirited Away",
  genre: .adventure,
  isFavorite: true
)
// manager.movie2 compiler yells about this since movie2 is private

manager.movie3.isFavorite
manager.updateMovie3()
manager.movie3.isFavorite // true


// Version 1
// we can GET and SET the value from outside the object for movie1
// undesirable for complex apps
let movie1 = manager.movie1
manager.movie1.toggleIsFav()

// Version 2
// CANNOT GET or SET the value from outside the object for movie2
//let movie2 = manager.movie2 // inaccessable

// Version 3
// can GET but can't SET the value from outside the object for movie3
// Most preferable for most apps.
let movie3 = manager.movie3
// manager.movie3 = manager.movie3.toggleIsFav() // innaccessible
manager.updateMovie3() // this works since its done from class method

// Note: private and public are the most common access controls but there are others

// open
// internal
// filePrivate

