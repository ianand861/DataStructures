import UIKit

struct Stack<Element> {
    private var storage:[Element] = []
    var isEmpty: Bool {
        return peek() == nil
    }
    mutating func push(element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop(element: Element) -> Element? {
        return storage.popLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage.reversed()
            .map { "\($0)"}
            .joined(separator: "\n")
    }
}

var numberStack = Stack<Int>()
numberStack.push(element: 5)
numberStack.push(element: 4)

var nameStack = Stack<String>()
nameStack.push(element: "Anand")
nameStack.push(element: "Ranjeet")


print(nameStack.description)
