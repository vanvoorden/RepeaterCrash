// https://github.com/swiftlang/swift/issues/90929

// https://github.com/swiftlang/swift/pull/91115

// https://github.com/swiftlang/swift/pull/91791

import MyLibrary

struct Repeater<each T> {
  private let box = Box<Storage>()
  private let input: (repeat Input<each T>)
  
  init(_ input: repeat each T) {
    self.input = (repeat Input<each T>())
  }
}

struct Input<T> {
  
}

extension Repeater {
  final class Storage {
    
  }
}

@main
struct MyExecutable {
  static func main() {
    let _ = Repeater(1, 2, 3, "Repeater!")
    let _ = Repeater("Repeater!")
  }
}
