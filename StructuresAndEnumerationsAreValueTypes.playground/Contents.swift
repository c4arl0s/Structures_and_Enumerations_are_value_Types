// A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.

// You’ve actually been using value types extensively throughout the previous chapters.

// In fact, all of the basic types in Swift—integers, floating-point numbers, Booleans, strings, arrays and dictionaries—are value types, and are implemented as structures behind the scenes.

// Consider this example, which uses the Resolution structure from the previous example:

struct Resolution {
    var width = 0       // initialize to cero
    var height = 0   // iniitialize to cero.

}
class VideoMode {
    var resolution = Resolution()  //is initialized with a new Resolution structure instance,
    var interlaced = false
    var frameRate = 0.0
    var name: String?   // The name property is automatically given a default value of nil, or “no name value”, because it’s of an optional type.
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd // a copy of the existing instance is made, and this new copy is assigned to cinema.

// they are two completely different instances behind the scenes.

cinema.width = 2048

// Checking the width property of cinema shows that it has indeed changed to be 2048:
print(cinema.width)

// However, the width property of the original hd instance still has the old value of 1920:
print(hd.width)

// The same behavior applies to enumerations:

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")












