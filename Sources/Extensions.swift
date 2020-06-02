
public extension FixedWidthInteger: ExpressibleByUnicodeScalarLiteral {
    @_transparent
  init(unicodeScalarLiteral value: Unicode.Scalar) {
    self = Self(value.value)
  }
  func foo() -> String {
    return "Foo!"
  }
}

public protocol Q {
  var bar: Double { get }
  func foo2() -> String
}
public protocol P {
}
public extension P: Q {
  var bar: Double { return -888 }
  func foo2() -> String {
    return "Foo2 \(self)!"
  }
}
public class C {}
public struct S {
  let a = 99
}
public protocol P2: P {}

extension C: P2 {}
extension S: P2 {}
//extension FixedWidthInteger: P2 {}
public extension Numeric: P2 {}

extension P2 {}
