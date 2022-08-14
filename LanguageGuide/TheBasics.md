# 基础内容

&#160; &#160; &#160; &#160; Swift 是一款应用于 iOS ， macOS ，watchOS 以及 tvOS 应用开发的全新编程语言。即便如此，如果你有一定的 C 语言或 Objective-C 的开发经验，你也会感受到 Swift 的诸多部分都非常熟悉。

&#160; &#160; &#160; &#160; 对于所有 C、Objective-C 语言中的基本类型，Swift 都提供了自己独立的实现版本。比如说，适用于整数型的 `Int`、适用于浮点数类型的 `Double` 和 `Float`、适用于布尔值类型的 `Bool` 以及适用于文本数据类型的 `String`。 Swift 也提供了支持 `Array`、`Set` 以及 `Dictionary` 三种集合类型更加强大的实现版本，这部分内容可以参考 [集合类型](./CollectionTypes.md)。

&#160; &#160; &#160; &#160; 与 C 语言一样， Swift 也使用一个可通过标识符名字来引用的变量来存储数值。 Swift 也针对那些数值不可更改的变量（也就是常量）创建了很多附带的特性，并且这使得它比 C 语言中的常量更加强大。当你需要使用那些无需更改的数值时，使用 Swift 中的常量可以让代码更加安全、逻辑更加清晰。

&#160; &#160; &#160; &#160; 除了熟悉的数据类型外， Swift 还提供了 Objective-C 当中没有的高级数据类型，比如元组。元组可以让你创建及传递一组数值。你可以很自然地使用元组来让函数返回多种类型数值，而这组数值本身就像是一种混合的数值类型。

&#160; &#160; &#160; &#160; Swift 也引入了可选值类型，它可以很好地处理数值缺失的场景。可选值表示，要么 **它拥有实际的数值并且这个值就是 x** ，要么 **根本就没有值** 。可选值用起来和 Objective-C 中可能为 `nil` 的指针很相像，但是它在 Swift 中却不仅仅只适用于类。它不仅比 Objective-C 中的 `nil` 指针更加安全以及拥有更好的可读性，它本身也是 Swift 诸多强大特性的核心。

&#160; &#160; &#160; &#160; Swift 是一门 **类型安全** 的语言，这也就表明它可以帮助你清晰地确定你代码中使用数据的类型。如果你代码中需要使用 `String` 类型的值，那么类型安全就可以保证你不会错误地传递给它一个 `Int` 值。同样地，类型安全也确保你不会错误地给一个非可选值的 `String` 变量赋予一个 `String` 可选值。类型安全使得你在开发过程中可以尽早地暴露并解决错误。

## 常量与变量

&#160; &#160; &#160; &#160; 常量与变量通常与一个拥有指定类型（比如数值 `10` 以及字符串 `"Hello"`）的命名（比如 `maximumNumberOfLoginAttempts` 以及 `welcomeMessage` ）相关联。对于 **常量** 而言，它的值一旦被设定就不可更改，而 **变量** 的值却可以在后面继续被修改。

### 常量与变量的声明

&#160; &#160; &#160; &#160; 在使用常量与变量之前，必须先对它们进行声明。对于常量，使用 `let` 关键字来声明，而对于变量，则使用 `var` 关键字来进行声明。可以通过一个例子来理解如何使用常量与变量来记录用户尝试登录的次数：

```swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```

&#160; &#160; &#160; &#160; 对于这段代码，它的涵义就可以理解为：

&#160; &#160; &#160; &#160; “声明一个名为 `maximumNumberOfLoginAttempts` 的常量并为其赋予初始值 `10` 。然后声明一个名为 `currentLoginAttempt` 的变量并为其赋予初始值 `0`”。

&#160; &#160; &#160; &#160; 在这个示例中，将允许尝试登录的最大次数声明为一个常量是因为这个值是永远不会变的。而将当前尝试登录的次数声明为一个变量是因为在每次登录失败时都要增加这个尝试登录次数。

&#160; &#160; &#160; &#160; 你也可以通过逗号分隔来实现一行内声明多个变量或常量：

```swift
var x = 0.0, y = 0.0, z = 0.0
```

> _**说明**_
>
> &#160; &#160; &#160; &#160; 如果记录的一个数值永远不会被修改，就使用 `let` 关键字来将其声明为一个常量。只对那些需要被修改的数值声明为变量。

### 类型声明

&#160; &#160; &#160; &#160; 当声明一个常量（或变量）时，你也可以显式提供一个 **类型声明** 来更清楚地说明这个常量（或变量）可以存储的值的类型。只需要在常量（变量）名称后面跟一个冒号、空格以及数值类型名即可：

```swift
var welcomeMessage: String
```

&#160; &#160; &#160; &#160; 此处声明中分号的涵义可以认为是 “ ... 的类型是 ... ”，所以这行代码就可以理解为：“声明一个名为 `welcomeMessage` 的变量，它的类型是 `String` 类型”。

&#160; &#160; &#160; &#160; “类型是 `String` 类型”，指的是 “它可以存储任意 `String` 类型的值”。可以把它理解为可以被存储的“某物的类型”（或“某物的种类”）。

&#160; &#160; &#160; &#160; 此时的 `welcomeMessage` 变量就可以被赋予任意字符串的值而不会发生错误：

```swift
welcomeMessage = "Hello"
```

&#160; &#160; &#160; &#160; 你也可以在一行内声明多个拥有相同类型的变量，仅需要用逗号将它们分隔，并在最后一个变量名后指定类型声明：

```swift
var red, green, blue: Double
```

> _**说明**_
>
> &#160; &#160; &#160; &#160; 在实际练习过程中，几乎不会需要显式进行类型声明。如果在定义常量（或变量）时提供了初始值，那么 Swift 就几乎总是可以通过初始值来推导出变量（或常量）的类型，可详见 [类型安全与类型推导](#类型安全与类型推导)。在上面 `welcomeMessage` 的例子中，由于没有为它指定初始值，所以就无法通过初始值来推导它的类型，进而就需要使用类型声明来显式指定它的类型。

### 为常量与变量命名

&#160; &#160; &#160; &#160; 可以使用包括 Unicode 编码在内的几乎所有字符来为常量与变量命名：

```swift
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
```

&#160; &#160; &#160; &#160; 常量名（与变量名）不能包含空格符、数学符号、箭头、 Unicode 专用标量值，或划线、方框绘制的字符。命名的起始部分不能是数字，而其他位置则可以使用数字。

&#160; &#160; &#160; &#160; 一旦你已经为一个常量（或变量）声明了具体类型，那么你就不能再用相同的命名重复对其声明，也不能改变它所能存储的数值类型。当然，你不能让变量变为常量，也不能让常量变成一个变量。

> _**说明**_
>
> &#160; &#160; &#160; &#160; 如果你想使用与 Swift 关键字相同的标识符来为常量（或变量）命名，那么你可以在命名两侧加反引号（ ` ）来达到目的。但是，除非你别无选择，否则务必不要使用与关键字相同的命名。

&#160; &#160; &#160; &#160; 对于一个变量，可以使用适当类型的新值来为其赋值。举个例子， `friendlyWelcome` 的值就从 `"Hello"` 变成了 `"Bonjour!"` 。

```swift
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome 现在的值已经是 "Bonjour!"
```

&#160; &#160; &#160; &#160; 与变量不同，常量的数值在确定后就不可再更改。否则编译时修改常量数值的代码将会报错：

```swift
let languageName = "Swift"
languageName = "Swift++"
// 编译时报错： languageName 不可被更改
```

### 打印常量与变量

&#160; &#160; &#160; &#160; 使用 `print(_:separator:terminator:)` 函数来打印常量（或变量）的当前值。

```swift
print(friendlyWelcome)
// 打印出 "Bonjour!"
```

&#160; &#160; &#160; &#160; `print(_:separator:terminator:)` 函数是一个全局的函数，它可以将若干个数值打印输出到合适的输出流。在 Xcode 中， `print(_:separator:terminator:)` 函数就会把输出内容打印到 Xcode 的控制台面板上。 `separator` 和 `terminator` 参数都拥有默认值，所以当你调用这个函数时可以忽略它们。默认情况下，函数打印完一行内容会输出换行，如果不想这样，可以为 `terminator` 参数赋予一个空字符串—— `print(someValue, terminator: "")` 。关于参数的默认值，详见 [参数默认值](#参数默认值) 。

&#160; &#160; &#160; &#160; Swift 支持 **字符串插值** —— 在字符串中使用常量名（变量名）来作为占位符，来插入这些变量当前的实际值，只需要在常量名（变量名）两侧用小括号界定，并在左侧小括号前添加一个反斜杠即可：

```swift
print("The current value of friendlyWelcome is \(friendlyWelcome)")
// 打印出 "The current value of friendlyWelcome is Bonjour!"
```

> _**说明**_
>
> &#160; &#160; &#160; &#160; 关于字符串插值的所有可用的选项，详见 [字符串插值](#字符串插值) 。

## 注释

&#160; &#160; &#160; &#160; 注释表示那些代码中一定不会执行的文本，它们可用于说明以及备忘。当编译时，注释就会被 Swift 忽略掉。

&#160; &#160; &#160; &#160; Swift 中的注释与 C 当中的注释非常相像。比如在行首使用两个斜杠（`//`），就表示这一行内容是一行注释：

```swift
// 这是一行注释
```

&#160; &#160; &#160; &#160; 而对于多行注释，使用斜杠与星号组合（`/*`）表示注释开始，使用星号与斜杠组合（`*/`）表示注释结束：

```swift
/* 这也是一行注释
但是可以写在多行 */
```

&#160; &#160; &#160; &#160; 与 C 的多行注释不同，Swift 支持多行注释的嵌套。比如，在第一个多行注释块中，又写了第二个注释块，那么对于注释结束标识来说，先结束的是第二个注释块，再结束的才是第一个注释块：

```swift
/* 这是第一个多行注释块的开始
 /* 这是第二个，也是嵌套的注释块 */
这是第一个多行注释块的结束 */
```

&#160; &#160; &#160; &#160; 有了嵌套的多行注释，就可以使得注释掉多行代码变得更加简单便捷，即使注释的代码已经包含了多行注释。

## 分号

&#160; &#160; &#160; &#160; 与很多编程语言不同，Swift 无需在每行代码末尾添加分号（;）。当然，如果显式添加也是允许的。但如果想在一行代码中书写多个独立的语句，那分号就是必不可少的：

```swift
let cat = "🐱"; print(cat)
// 打印出 "🐱"
```

## 整数

&#160; &#160; &#160; &#160; **整数** 是不包括小数部分的数值，比如 `42` 和 `-23`。整数要么是有符号的（正数、零或负数），要么是无符号的（正数或零）。

&#160; &#160; &#160; &#160; Swift 提供 8 位、16 位、32 位以及 64 位几种形式的有符号整数和无符号整数。这些整数类型的标识符与 C 保持一致，所以 8 位无符号整数的类型就是 `UInt8`，而 32 位有符号整数的类型就是 `Int32`。与 Swift中所有类型一样，这些整数类型的名字都是首字母大写的。

### 整数范围

&#160; &#160; &#160; &#160; 通过每种整数类型的 `min` 和 `max` 属性可以获取它们可表示范围的最小值与最大值：

```swift
let minValue = UInt8.min  // minValue 的值是 0，并且它的类型是 UInt8
let maxValue = UInt8.max  // maxValue 的值是 255，并且它的类型是 UInt8
```

&#160; &#160; &#160; &#160; 这些属性值也是相应位数大小的数值（比如上述示例的 `UInt8`），因此也就可以在表达式中与其他相同类型的值一通使用。

### Int 类型

&#160; &#160; &#160; &#160; 在大多情况下，你无需精确地确定代码中的一个整数类型。Swift 提供了一个附加的整数类型：Int，它的位数大小与当前所在平台环境的原生字大小保持一致。

- 在 32 位平台，`Int` 与 `Int32` 拥有相同的位数大小。

- 在 64 位平台，`Int` 与 `Int64` 拥有相同的位数大小。

&#160; &#160; &#160; &#160; 除非你很明确你需要使用特定大小的整数类型，否则保持使用 `Int` 来表示代码中的整数。这样有利于增强代码的一致性与可移植性。即使在 32 位平台中，`Int` 支持存储的范围也是从 `-2,147,483,648` 到 `2,147,483,647` 的，这对于很多整数范围来说都已经足够了。

### UInt 类型

&#160; &#160; &#160; &#160; 类似地，Swift 也提供了与当前平台环境原生字长一致的无符号数类型：UInt：

- 在 32 位平台，`UInt` 与 `UInt32` 拥有相同的位数大小。

- 在 64 位平台，`UInt` 与 `UInt64` 拥有相同的位数大小。

> _**说明**_
>
> &#160; &#160; &#160; &#160; 当且仅当确实需要与平台原生字长保持一致的无符号整数类型时才使用 `UInt` 类型。如果不是这种情况，`Int` 更被推荐使用，尽管你很明确要存储的数值是一个非负数。对于整数类型保持使用 `Int` 可以增强代码的可移植性，避免了需要在不同数值类型间转换，并且满足整数类型推导，这部分内容详见 [类型安全与类型推导](#类型安全与类型推导)。

## 浮点数

&#160; &#160; &#160; &#160; **浮点数** 是拥有小数部分的数值，比如 `3.14159`，`0.1` 以及 `-273.15`。

&#160; &#160; &#160; &#160; 浮点数类型可以表示比整数类型更大范围的数值，并且它可以存储的数值也远比 `Int` 类型数值更大（或更小）。Swift 提供了两种有符号的浮点数类型：

- `Double` 表示 64 位的浮点数。

- `Float` 表示 32 位的浮点数。

> _**说明**_
>
> &#160; &#160; &#160; &#160; `Double` 拥有至少 15 位（十进制）的精度，而 `Float` 拥有至少 6 位（十进制）的精度。具体使用哪一种类型，取决于你所需场景中数值的性质与范围。如果两种类型都适用，首选 `Double`。

## 类型安全与类型推导

&#160; &#160; &#160; &#160; Swift 是一门 **类型安全** 的编程语言。类型安全的语言可以保证代码中数值的类型是清晰确定的。比如代码中需要一个 `String` 类型的值，那么就不允许传一个 `Int` 类型的值。

&#160; &#160; &#160; &#160; 得益于 Swift 的类型安全，它可以在编译代码时执行类型检查，并将不匹配的数据类型作为编译报错标识出来。这也使得可以在开发阶段可以尽早地发现与修复问题。

&#160; &#160; &#160; &#160; 类型检查可以避免使用多类型数值的诸多错误。然而，这并不代表在声明每个常量或变量时需要显式明确指定它们的类型。当没有明确指定数值的类型时，Swift 会使用 **类型推导** 来确定数值的合适数据类型。类型推导使得编译器可以在编译时仅需根据代码中的数值类型，自动推断出相应表达式的数据类型。

&#160; &#160; &#160; &#160; 也正是得益于类型推导，相较于 C 和 Objective-C 语言，Swift 的变量声明代码少得多。常量与变量依然拥有明确的数据类型，但是明确指定它们类型的工作已经由编译器做好了。

&#160; &#160; &#160; &#160; 当声明一个拥有初始值的常量（或变量）时，类型推导就变得格外有用。这种情况通常是指通过一个 **字面数值（或文本）** 来声明并赋值给一个常量（或变量）。（字面值指的就是代码中直接表现出来的数值，比如下面示例代码中的 `42` 以及 `3.14159`）。

&#160; &#160; &#160; &#160; 举例来说，在未声明一个常量的类型的情况下，将一个字面值 `42` 赋值给它，Swift 就会推导出这个常量的类型应当是 `Int`，因为它的初始数值就如同一个整数：

```swift
let meaningOfLife = 42
// meaningOfLife 被推导为整数类型
```

&#160; &#160; &#160; &#160; 类似地，如果不指定一个初始字面值为浮点数值的变量类型，那么 Swift 会将其推导为 `Double` 类型：

```swift
let pi = 3.14159
// pi 被推导为双精度浮点数（Double 类型）
```

&#160; &#160; &#160; &#160; 值得一提的是，Swift 总是会使用 `Double`（而非 `Float`）类型来作为浮点字面值的类型推导结果。

&#160; &#160; &#160; &#160; 如果是一个整数与浮点数字面值的加法表达式，那么表达式结果的数值类型也会推导为 `Double`：

```swift
let anotherPi = 3 + 0.14159
// anotherPi 也被推导为双精度浮点数（Double 类型）
```

&#160; &#160; &#160; &#160; 字面值 `3` 没有显式确定的类型，所以表达式中的浮点字面值使得 `Double` 作为推导结果更加合适。

## 数值型字面值

&#160; &#160; &#160; &#160; 数值型字面值通常可以写作以下形式：

- 没有任何前缀的 **十进制** 字面值
- 使用 `0b` 作为前缀的 **二进制** 字面值
- 使用 `0o` 作为前缀的 **八进制** 字面值
- 使用 `0x` 作为前缀的 **十六进制** 字面值

&#160; &#160; &#160; &#160; 举例来说，十进制字面值 `17` 可以写作：

```swift
let decimalInteger = 17
let binaryInteger = 0b10001       // 二进制的 17
let octalInteger = 0o21           // 八进制的 17
let hexadecimalInteger = 0x11     // 十六进制的 17
```

&#160; &#160; &#160; &#160; 浮点数字面值可以是十进制（无前缀），或十六进制（前缀为 `0x`）。它们都必须在小数点的两边拥有数值（或十六进制字符）。十进制浮点数字面值也可以选择性地加上 **指数**，指数使用大写或小写的 `e` 来表示；而十六进制字面值则必须有一个指数，此时的指数使用大写或小写的 `p` 来表示。

&#160; &#160; &#160; &#160; 对于指数为 `exp` 的十进制数值，基数需要乘以 10<sup>exp</sup>：

- `1.25e2` 表示 1.25 x 10<sup>2</sup>，或者 `125.0`。
- `1.25e-2` 表示 1.25 x 10<sup>-2</sup>，或者 `0.0125`。

&#160; &#160; &#160; &#160; 对于指数为 `exp` 的十六进制数值，基数需要乘以 2<sup>exp</sup>：

- `0xFp2` 表示 15 x 2<sup>2</sup>，或者 `60.0`。
- `0xFp-2` 表示 15 x 2<sup>-2</sup>，或者 `3.75`。

&#160; &#160; &#160; &#160; 以下浮点数字面值均表示十进制数值 `12.1875`：

```swift
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
```

&#160; &#160; &#160; &#160; 数值型字面值也可以包含一些附加的格式化字符来提高它们的易读性。无论是整数还是浮点数，都可以填充额外的零以及下划线来提高可读性。任何用于格式化的字符都不会影响到字面值所表示的实际数值：

```swift
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
```

## 数值类型间转换

&#160; &#160; &#160; &#160; 在编码时，对于所有常见的整数需求场景，尽管明确所需数值是一个非负数，都使用 `Int` 类型。在任何场景下都使用默认的整数类型，就意味着整数类型的常量与变量都可以在代码中快速地转换并且可以很好地匹配整数型字面值。

&#160; &#160; &#160; &#160; 仅当手头的任务确实需要使用其他类型的整数时才使用，此时可能是为了适配外部源码的固定数值大小、或是为了性能、内存使用以及其他的必要优化。这些场景下使用特定大小的类型可以帮助捕获意外的数值溢出，以及隐式地记录数据本身的特性。

### 整数间转换

&#160; &#160; &#160; &#160; 对于不同的数值类型来说，它们所能存储常量（或变量）数值范围也是不同的。`Int8` 类型的常量（或变量）能存储数值的范围是 `-128` 到 `127`，而 `UInt8` 的常量（或变量）所能存储的范围是 `0` 到 `255`。当指定数值不在数值类型所能存储的范围内时，就会产生一个编译期报错：

```swift
let cannotBeNegative: UInt8 = -1
// UInt8 类型不能存储一个负数，所以这里会报错
let tooBig: Int8 = Int8.max + 1
// Int8 不能存储一个比它所能表示的最大值还要大的数值，所以这里也会报错
```

&#160; &#160; &#160; &#160; 由于不同的数值类型所能存储的数值范围也不同，所以必须要根据实际情况来确定数值类型转换。这种确定性的方法避免了隐式类型转换的错误，并且可以让代码中类型转换的意图更加清晰。

&#160; &#160; &#160; &#160; 为了将一个数值的类型转换为另一种类型，你需要使用现有的这个数值来初始化一个新的目标类型数值。在下面的例子中，常量 `twoThousand` 的类型是 `UInt16`，而常量 `one` 的类型是 `UInt8`。由于它们的类型不同，所以它们并不能直接相加。取而代之，示例中使用 `UInt16(one)` 来创建一个拥有 `one` 实际值的新的 `UInt16` 类型数值，并且用这个值来取代原来的数值：

```swift
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
```

&#160; &#160; &#160; &#160; 此时加法表达式两边都是 `UInt16` 类型数值了，所以加法操作就被允许了。由于计算结果常量（`twoThousand`）是两个 `UInt16` 类型数值加法计算的结果，所以它的类型也被推导为 `UInt16`。

&#160; &#160; &#160; &#160; `SomeType(ofInitialValue)` 是使用一个初始值来调用一个 Swift 类构造器的默认方式。正是在这种场景下，`UInt16` 类型拥有一个接受 `UInt8` 类型数值的构造器，所以可以使用一个现有的 `UInt8` 类型数值来调用构造器创建一个新的 `UInt16` 类型数值。然而，并不是任意类型都能达到这样的效果，这取决于 `UInt16` 提供哪种类型的构造器。扩展现有类型来提供可接受新类型（甚至是自定义的一个类型）的构造器，详情可参考 [扩展](#扩展)。

### 整数与浮点数间转换

&#160; &#160; &#160; &#160; 整数与浮点数之间的数值类型转换必须显式进行：

```swift
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi 等于 3.14159，并且它的类型被推导为 Double
```

&#160; &#160; &#160; &#160; 这里，常量 `three` 的数值被用于创建一个类型为 `Double` 的新值，所以加法表达式两侧数值是相同类型了。如果此处没有这个类型转换，那么加法操作也是不允许执行的。

&#160; &#160; &#160; &#160; 浮点类型转换为整数类型的操作也必须是显式的。可以使用一个 `Double` 类型或 `Float` 类型的数值来初始化一个整数：

```swift
let integerPi = Int(pi)
// integerPi 等于 3，并且它的类型被推导为 Int
```

&#160; &#160; &#160; &#160; 这种方式下，用于初始化整数的浮点数会被截断。也就是说，`4.751` 变成 `4`，而 `-3.9` 变成 `-3`。

> _**说明**_
>
> &#160; &#160; &#160; &#160; 数值型常量及变量的计算规则与数值型字面值的规则并不相同。字面值 3 可以与字面值 0.14159 直接相加，是因为数值型字面值本身并没有明确的类型。它们的类型仅在编译器处理到时才会被推导确定。