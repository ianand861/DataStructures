import UIKit

protocol Queue {
  associatedtype Element
  mutating func enqueue(_ element: Element)
  mutating func dequeue() -> Element?
  var isEmpty: Bool { get }
  var peek: Element? { get }
}

struct QueueArray<Element>: Queue {
    private var storage: [Element] = []
    
    var peek: Element? {
        return storage.first
    }
    
    var isEmpty: Bool {
        return peek == nil
    }
    
    mutating func enqueue(_ element: Element) {
        storage.append(element)
    }
    
    mutating func dequeue() -> Element? {
        storage.removeFirst()
    }
}

var queue = QueueArray<Int>()
queue.enqueue(1)
print(queue.dequeue())
print(queue.isEmpty)



