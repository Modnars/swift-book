# Swift 之旅

&#160; &#160; &#160; &#160; 按照编程传统，使用一门新的编程语言编码的第一个程序往往应当是在屏幕上打印“Hello, world!”。那么对于 Swift 而言，仅需一行代码即可完成：

```swift
print("Hello, world!")
// 打印“Hello, world!”
```

&#160; &#160; &#160; &#160; 如果你曾编写过 C 或 Objective-C 的代码，那么这样的语法对你来说可能是很熟悉的。在 Swift 中，这样的一行代码就已经是一个完整的程序了。你甚至无需为此导入一个独立的库来支持类似于输入或输出、字符串处理的功能。写在全局范围内的代码被视为程序的执行起点，所以你也无需为此添加一个 `main()` 函数。甚至，你也无需在每行代码语句的末尾添加分号。

&#160; &#160; &#160; &#160; 这场 Swift 之旅将向你展示如何完成各种各样的编程任务，并以此来为你提供开始用 Swift 编程的足够信息。不必担心你可能对某些内容不够理解，因为初程中介绍的每个内容，后续章节中都会有详细的解释说明。

> _说明_
>
> &#160; &#160; &#160; &#160; 为了最佳的练习体验，可将本章内容作为一个 Playground 内容在 Xcode 中打开。Playground 可以让你编辑完代码就可以立即看到它们的运行结果。
>
> &#160; &#160; &#160; &#160; [下载 Playground](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.playground.zip)

## 简单值

&#160; &#160; &#160; &#160; 使用 `let` 关键字可以创造一个常量，而使用 `var` 关键字可以创造一个变量。编译阶段不必确定常量的具体值，但一定要你一次性地为它赋予一个确定值。也就是说，你可以用一个常量来作为你可以一次性确定又要在很多地方使用到的值。

```swift
var myVariable = 42
myVariable = 50
let myConstant = 42
```

&#160; &#160; &#160; &#160; 无论是常量还是变量，其类型都必须要与为其赋予的值的类型一致。然而，你无需总是要显式地指定值的类型。当你创造一个常量或变量并对其进行赋值时，编译器就会自动按照所赋值的类型推导其类型。在上面的例子中，编译器推导出 `myVariable` 是整数类型，因为它的初始值就是一个整数。

&#160; &#160; &#160; &#160; 当然，如果初始值无法提供足够的信息（或者甚至都没有初始值），可以在变量（常量）名之后指定其具体类型，中间用冒号 `:` 隔开。

```swift
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
```

> _实践_
>
> &#160; &#160; &#160; &#160; 创造一个常量，将其类型指定为 Float 并为其赋值为 4

&#160; &#160; &#160; &#160; 值永远不会隐式转换为另一种类型。如果你需要将值转换为一个不同的类型，则需要显示地构造一个所需类型的实例。

```swift
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
```

> _实践_
>
> &#160; &#160; &#160; &#160; 尝试从最后一行代码中移除掉 `String` 。看看这时编译器会向你提示什么错误？

&#160; &#160; &#160; &#160; 其实，当字符串中包含一些值时，有一种更简单的写法：可以将目标值写在小括号（ `(` 和 `)` ）内，并且在左括号前加一个反斜杠（ `\` ）。举个例子：

```swift
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
```

// EXPERIMENT:
//   Use `\()` to include a floating-point calculation in a string and to
// include someone's name in a greeting.

> _实践_
>
> 使用 `\()` 来将一个浮点数算式放入一个字符串中，并且尝试将某个人的名字放到一句问候的字符串中。

&#160; &#160; &#160; &#160; 可以使用三个双引号（ `"""` ）来界定那些可能占据多行文本的字符串。引号界定范围内的每行文本前的缩进都将被移除，直到它匹配到终止界定引号符。举个例子：

```swift
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
```

&#160; &#160; &#160; &#160; 创建数组和字典这样的容器时，可以使用中括号（ `[` 和 `]` ），并且访问它们的元素时，只需要在中括号中填写要访问的下标或键值即可。（需要给定其字面值时，可以用元素列表的形式，元素间用逗号（ `,` ）分隔，）列表中最后一个元素的后面也可以跟填一个逗号。

```swift
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
```

&#160; &#160; &#160; &#160; 当你向数组中添加元素时，数组自然也会随之增长。

```swift
shoppingList.append("blue paint")
print(shoppingList)
```

&#160; &#160; &#160; &#160; 当需要创造一个空的数组或字典时，就需要使用初始化语句（注意需要填充指定元素类型）。

```swift
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
```

&#160; &#160; &#160; &#160; 如果容器的类型信息可以被推导出来，那么你就可以用 `[]` 来表示一个空数组，用 `[:]` 来表示一个空字典。比如说，当你为一个（已经确定类型的）变量赋予新值或者传递参数给一个函数时，那这个新值、参数值就可以是这样的空数组、空字典。

```swift
shoppingList = []
occupations = [:]
```

## 控制流

&#160; &#160; &#160; &#160; 使用 `if` 和 `switch` 关键字来创建条件语句，使用 `for-in` ， `repeat-while` 关键字来创建循环语句。条件或循环变量两边的小括号是可选的，而控制语句逻辑内的主体则必须要用大括号来界定。

```swift
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// 打印 “11”
```

&#160; &#160; &#160; &#160; 对于一个 `if` 语句，其条件语句必须是一个布尔类型的表达式，这也就是说对于类似 `if score { ... }` 这样的代码就是错误的，因为条件本身并不会（像 C 语言一样）是一个隐式判断是否为零的布尔表达式。

&#160; &#160; &#160; &#160; 你可以使用 `if` 和 `let` 组合来应对那些值可能不存在的情况。这些值可能不存在的类型被称为可选值类型，可选值类型的变量或常量就是可选值。一个可选值要么确实拥有一个值，要么就只是一个 `nil` 来表示它的值的确不存在。在一个值的类型标识后使用问号符（ `?` ）来表示这个值是一个可选值。

```swift
var optionalString: String? = "Hello"
print(optionalString == nil)
// 打印 “false”

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

> _实践_
>
> &#160; &#160; &#160; &#160; 将 `optionalName` 的值改为 `nil` 。此时你得到的问候语句内容是什么？针对 `optionalName` 为 `nil` 的情况添加一个 `else` 语句来设定一个不同的问候（ `greeting` 变量）内容。

&#160; &#160; &#160; &#160; 如果可选值是 `nil` ，那么条件语句的结果将会是 `false` ，继而大括号中的逻辑内容将会被跳过执行。否则，可选值就会被解包并且赋值给 `let` 关键字后面的常量，而这个常量就可以使得解包后的值可以在这段代码块中被使用了。

&#160; &#160; &#160; &#160; 另一种处理可选值的方式是使用 `??` 操作符（ operator ，在 C 、 C++ 中常被译为运算符）来为其提供一个默认值。如果可选值的确缺失了，那么就将使用默认值来替换。

```swift
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
```

&#160; &#160; &#160; &#160; 你也可以用一种更简短的编码来解包一个值，这时可以对这个解包后的值使用相同的名字。

```swift
if let nickname {
    print("Hey, \(nickname)")
}
```

&#160; &#160; &#160; &#160; switch 语句支持任意类型的数据以及更加广泛的比较操作，这些比较不只适用于整数型，且比较不止判断是否相等这一种。

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
```

> _实践_
>
> &#160; &#160; &#160; &#160; 尝试移除上面的默认情况（ default case ），看看这时编译器会提示什么错误？

&#160; &#160; &#160; &#160; 请留意 `let` 是如何被用于模式条件匹配情况时给常量赋值的。

&#160; &#160; &#160; &#160; 当执行完一段 switch 语句的条件匹配逻辑时，程序执行流程将会从 switch 语句中退出。程序并不会（像 C 那样）在下一个条件匹配逻辑中继续执行，所以你也无需在每个条件匹配逻辑流程最后显示地指定退出。

&#160; &#160; &#160; &#160; 你可以用一对标识符来表示一个键值对，并用这样的方式来迭代遍历一个字典中的所有元素。**字典是一个无序的集合（容器）**，所以遍历得到的也可能是一个按照随意的顺序排列的结果。

```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibnoacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var kindLabel = ""
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// 打印最大值 “25”
```

> _实践_
>
> &#160; &#160; &#160; &#160; 用一个变量名替换 `_` ，并且追踪哪种数列中的值是最大值。

&#160; &#160; &#160; &#160; 使用 `while` 关键字来循环执行一段代码直到循环条件发生变化（不再满足继续循环的条件）。循环语句的循环条件可以在循环体后来给定，此时可以确保这个循环体至少执行了一次。

```swift
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// 打印 “128”

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// 打印 “128”
```

&#160; &#160; &#160; &#160; 你也可以用 `..<` 来为下标创建一个区间。

```swift
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
```

&#160; &#160; &#160; &#160; 使用 `..<` 可以创建一个不包括右界（区间最大值）的区间（左闭右开区间），也可以使用 `...` 来创建一个包含左右界的区间（闭区间）。

## Functions and Closures
```swift
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

// EXPEIMENT:
//   Remove the `day` parameter. Add a parameter to include today's lunch 
// special in the greeting.
func greet(person: String, lunch: String) -> String {
    return "Hello \(person), today's lunch is \(lunch)!"
}

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMaches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMaches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// EXPERIMENT:
//   Rewrite the closure to return zero for all odd numbers.
numbers.map({ (number: Int) -> Int in
    let result = (number % 2 == 0) ? number : 0
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
```

## Objects and Classes

```swift
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    // EXPERIMENT:
    //   Add a constant property with `let`, and add another method that takes an 
    // argument.
    let constVal = 0
    func printMessage(message: String) -> String {
        return "Message details: \(message)"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class EquilateraTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

// EXPERIMENT:
//   Make another subclass of `NamedShape` called `Circle` that takes a radius and a
// name as arguments to its initializer. Implement an `area()` and a
// `simpleDescription()` method on the `Circle` class.
class Circle: NamedShape {
    var radius: Double = 0.0
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 3.14 * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)."
    }
}

var triangle = EquilateraTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateraTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateraTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength
```

## Enumerations and Structures
```swift
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

// EXPERIMENT:
//   Write a function that compares two `Rank` values by comparing their raw values.
func compareRankByRawValue(v1: Rank, v2: Rank) -> Int {
    return v1.rawValue - v2.rawValue
}
print(compareRankByRawValue(v1: Rank.ace, v2: Rank.queen))

if let convertedRank = Rank(rawValue: 3) {
    // let threeDescription = convertedRank.simpleDescription()
    let _ = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    // EXPERIMENT
    //   Add a `color()` method to `Suit` that returns "black" for spades and clubs,
    // and returns "red" for hearts and diamonds.
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "heart"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

enum ServerResponse {
    case result(String, String)
    case failure(String)
    // EXPERIMENT:
    //   Add a third case to `ServerResponse` and to the switch.
    case offline(Void)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure... \(message)")
case .offline():
    // Not use `case let .offline():` :
    // 'let' pattern has no effect; sub-pattern didn't bind any variables
    print("Your device is offline...")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

// EXPERIMENT:
//   Write a function that returns an array containing a full deck of cards, with one
// card of each combaination of rank and suit.
func getPokerCards() -> [Card] {
    var cards = [Card]()
    for rank in 1...13 {
        cards.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .spades))
        cards.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .hearts))
        cards.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .clubs))
        cards.append(Card(rank: Rank(rawValue: rank) ?? .ace, suit: .diamonds))
    }
    for card in cards {
        print(card.simpleDescription())
    }
    return cards
}
```

## Protocols and Extensions

```swift
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
    // mutating func anotherFunc() // For later Experiment.
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anathorProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// EXPERIMENT:
//   Add another requirement to `ExampleProtocol`. What changes do you need to make to
// `SimpleClass` and `SimpleStructure` so that they still conform to the protocol?
//
// ANSWER:
//   Like the function `adjust()`, the `anotherFunc()` also need the same
// implementation under `class` and `struct`.

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)

// EXPERIMENT:
//   Write an extension for the `Double` type that adds an `absoluteValue` property.
extension Double {
    var absoluteValue: Double {
        return self < 0 ? -self : self
    }
}
print((-10.0).absoluteValue)
print((82.3).absoluteValue)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
```

## Error Handling

```swift
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    // let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}

// EXPERIMENT:
//   Change the printer name to "Never Has Toner", so that the `send(job:toPrinter:)`
// function throws an error.
//
// ANSWER:
//   See the comment in source code.

do {
    let printerResponse = try send(job: 1040, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

// EXPERIMENT:
//   Add code to throw an error inside the `do` block. What kind of error do you 
// need to throw so that the error is handled by the first `catch` block? What 
// about the second and third blocks?
//
// ANSWER:
//   For the first `catch` block, we should define the action to throw
// `PrinterError.onFire` in the function `send` body, and call the counterpart
// function to get the Error.
//   In the same way, for the second block, we can use the same way to get the
// `PrinterError` except the specific PrinterError type which has been caught.
//   Besides, for the third block, we should make the code throw the error whose
// type is not in `PrinterError`.

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
```

## Generics

```swift
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

// EXPERIMENT:
//   Modify the anyCommonElements(_:_:) function to make a function that returns an
// array of the elements that any two sequences have in common.
func commonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var ans = [T.Element]()
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                ans.append(lhsItem)
            }
        }
    }
    return ans
}
commonElements([1, 2, 3, 4], [2, 4, 5])
```

