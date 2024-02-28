import Foundation

// During lifecycle of app, we create and destroy objects
// create - initialize object
// destroy - deinitialize object

// Automatic Reference Counting (ARC)

// current count of objects in memory

// more objects in memory, the slower the app performs

// create objects only when we need them
// destroy them when we no longer need them

// example: app has 2 screens, on screen 1 only render objects in screen 1
// on screen 2 destroy objects in screen 1, only render objects in screen 2


// 2 types of memory
// Stack and Heap

// Objects in the Stack
// Primitives: Strings, Bool, Int, most basic types
// Complex: Structs, Enums,

// Objects in the Heap
// Functions, Classes, Actors

// iPhone is multithreaded
// Multiple threads or "engines" running simultaneously

// Each thread has its own Stack
// BUT there is only 1 Heap for all threads

// Because there are multiple stacks and one heap,
// Stacks are faster because lower memory footprint,
// heap is slower because higher memory footpring

// Also heap has a risk of threading issues.

// So using the Stacks is preferable to using the heap.

// This is why in swiftUI every screen is a Struct,
// because structs are stored in Heaps.

// Q: WHY are Structs, Enums etc in Stack
// and Functions, Classes, etc in Heap?
// A: Objects in the Stack are "Value" types.
// When you edit a Value type, you create a copy of it with new data.
// Objects in the Heap are "Reference" types.
// When you edit a reference type, it mutates it. This "reference"
// is called a "pointer", because it "points" to an object in the Heap (in memory).
// That's why theres only one heap, because the location of the object in memory
// doesn't change.

// structs and classes initially look the same, they can hold properties in
// the same way
struct MyFirstObject {
  let title: String = "Hello, world!"
}

class MySecondObject {
  let title: String = "Hello, world!"
}

// ELI5 Class vs. Struct
// Visualize a school, inside of which there are different classrooms.
// Within each classroom, the teachers give quizzes.
// The teachers hand out out many copies of a quiz to different students.
// The students take the quizzes, fill them out, and return them to the teacher.

// "school" = Swift App
// "classroom" = Swift Class
// "quiz" = Swift Struct

// In this example, we have a classroom, where many different actions occur
// (quizzes taken). In code, we create a class and can perform actions within
// the class.

// In this example we also have many different types of quizzes. The teacher hands
// out copies of the quiz and the students take the copies and return them to
// the teacher. In code, we create many copies of a struct, and pass them around
// our app.

// Better to pass structs because we can copy them, and avoid mutation
// Better to use classes for structures that don't need to be passed around.
// Examples: "Manager", "DataService", "Service", "Factory", "ViewModel" classes.




 




