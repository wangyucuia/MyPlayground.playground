//: Playground - noun: a place where people can play

import UIKit


var board = [
    [1024,16,2,0],
    [256,4,2,0],
    [64,2,0,0],
    [2,0,0,0]
]

board[0]
board[0][0]

board.count
board[0].count
//[1024,16,2,0,0]
board[0].append(0)

board.append([0,0,0,0])
board += [[0,0,0]]


var str = "Hello, playground"

var myVariable = 42

myVariable = 50
//这样会默认nsarray
var array1 = []

var arrat2 = [1,2,3] as NSArray
//swift
var array3: NSArray = [1,"hello",3.0]

var array4:[NSObject] = [1,"hello",3.0]

//------字典 ---集合
var dicts: [String:String]= ["swift":"雨燕","python":"大蟒"]





let myConstant = 42
//使用let定义常量，只能赋值一次，使用var定义变量，可以赋值多次
//常量和变量的类型。在赋值的时候会自动判断变量的类型
//如果初值没有提供足够的信息(没有提供初值)，需要在变量后面声明类型，用:分隔

let impliceciinter = 70

let impliceciDouble = 70.000

let expliciDouble:Double = 70


let impliceFloat : Float = 7.00

//值永远不会被隐式转换其他类型,需要的话,请显示转换
let lable = "the width is"

let width = 93
//字符串的拼接
let widthLable = lable + String(width)
//还有一种更简单的把值转换为字符串的方法,就是把值包含在括号中,并且在括号之前为一个反斜杠
let apples = 3
let oranger = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranger) pieces of fuit"

//数组的使用
var shoppingList = ["catfish","water","tulips","blue laint"]
shoppingList[1] = "bottle of watert"

print(shoppingList)
//字典的使用
var occupations = ["malcolm" : "capation","keyLee":"mechanic"]
//字典的添加
occupations["jayne"] = "public relations"

print(occupations)

//创建一个空数组或字典,使用初始化语法

let emptyArray = [String]()


let emptyDiction = Dictionary<String,Float>()
//简化写法
//小括号代表数组
let emptyArray2 = []
//中括号代表字典
let emptyDiction2 = [:]

shoppingList = []

//控制流
let individalScores = [75, 43, 103, 87, 13]

var teamScore = 0

for score in individalScores{
    
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
    
}

//在if语句中,条件必须是一个表达式,这就意味着像 if score{.....}这样的代码将会报错,而不会隐式的和0进行对比

//可以使用if和let来处理值缺失的情况,有些变量的值是可选的,一个可选的值可能是一个具体的值或者是nil,表示值缺失,在显型后面加一个问号来编辑这个变量的值是可选的

//理解:可选类型,是包含两种情况的一种是具体的值,另一种可能为nil
var optionalString :String? = "hello"

var optionalName:String? = "john appleseed"
optionalString = "2"

var greeting = "hello!"
var name:String = "ssss"

if  name == optionalString!{
    greeting = "hello,\(name)"

}else{
    greeting = "hello,\(name)"

}
//如果变量的可选值是nil,条件会判断为false,
if let nas = optionalString{
    greeting = "sssssssss"
}else{
    
    greeting = "yyyyyyyy"
}


//swift支持任意类型的数据以及各种比较操作 ---不仅仅是整数以及测试相等

let vegetale = "red peoper"
switch vegetale{
    case "celery":
        let vegetableComment = "add some raisins and make ants on "
    case "cucumber","watercress":
        let vegetableComment = "that would make a good tea sandwich"
    case let x where x.hasSuffix("peoper"):
        let vegatableComment = "is it s spciy\(x)?"
    default:
    let  vegetableComment = "everything tastes good in soup."
}

//swift语句不需要再之后break语句,但是要把所有情况都解决
let interestringNumbers = ["Prime":[2,3,5,7,11],
                           "Fibonacci":[1,1,2,3,4,6],
                           "Squre":[1,4,9,16,25],]


var larget = 0
//kind 代表key值, numbers代表数组
for (kind,numbers)in interestringNumbers{
    print(numbers)
    for number  in numbers{
        
        if number > larget{
            larget = number
            print(larget)
        }
        
    }
}

var n : Float = 2
while n < 100{
    
  n = n * 2
}

//do ....while 改为repeat while
var m = 2
repeat {
    m = m * 2
    
}while m < 100

//可以在循环中使用'..<'来表示范围,也可以使用传统的方法,'0..<3'意思是从0 到3,包含0不博涵3
var firstForLoop = 0
for i in 0..<3{
    firstForLoop += i
}
print(firstForLoop)

var secontForLoop = 0
for var i = 0; i < 3; ++i{
    secontForLoop + 1;
}

//使用'..<'创建的范围不包含上界,如果想要包含的话,需要使用'...'

/**
 *  函数和闭包
 */
/**
 函数
    name 为函数的名册 ,parameters为函数的内部参数,return 为函数的返回值类型
    func <#name#>(<#parameters#>) -> <#return type#> {
    <#function body#>
    }

 */
//使用'func'来申明一个函数,使用名字和参数来调节函数,使用'->'来指定函数返回值

func green(name2:String,day:String) -> String {
    
    return "hello\(name),today is \(day)"
}

let s = green("body", day: "tuesday")
print(s)

//使用一个元祖来返回多个值,该元祖的元素可以用名称或数字来表示
func getGasPrices() -> (Double,Double,Double){
    return (3.59,3.79,3.65)
}

getGasPrices()
/**
 *  元祖
 */
func calculateStatics(scores:[Int]) -> (min:Int ,max:Int,sum3:Int){
    var min = scores[0]
    var max = scores[0]
    var  sum3 = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min {
            min = score
        }
        
        sum3 += score
    }
    return (min,max,sum3)
    
}
//(.0 3, .1 100, .2 108)
let statistics = calculateStatics([5,3,100])
print(statistics.sum3)
print(statistics.2)
print(statistics.min)
print(statistics.0)
//函数可以带有可变个数的参数,这些参数在函数内表现为数组的形式,numbers为数组格式
func sumOf(numbers : Int...) -> Int{
    var sum = 0
    for number in numbers{
       sum += number
    }
    return sum
}

sumOf()
let si = sumOf(42,597,12)
print(si)


/**
 * 函数的嵌套
 */
func makeIncrementer() -> (Int -> Int) {
    
    func addOne(number: Int) -> Int{
        
        return 1 + number
    }
    return addOne
}


var increment = makeIncrementer()
increment(7)

//函数也可以作为一个参数传入另一个函数
func hasAnyMatvhes(list: [Int],condition: Int -> Bool) -> Bool{
    
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

var number = [20, 18, 7, 12]
hasAnyMatvhes(number, condition: lessThanTen)

//函数实际上是一种特殊的闭包:它是一段能之后被调取的代码.闭包中的代码能够访问闭包所创建的作用域的函数和变量,即使闭包是在不同的作用域中被执行的 ----

/**
 *  闭包
 */
//1.对比函数和闭包的区别
//1)建立一个没有参数,也没有返回值得函数
func method(){
    
    print("这不是闭包")
}
method()
//定义一个没有参数也没有返回值的闭包
let clousure = {
    
   print("这是一个闭包")
    
}
clousure()

//2)建立一个有参数没有返回值的闭包
func method2(a: Int, b: Int){
    print(a + b)
}
method2(3, b: 5)

//建立一个有参数没有返回值的闭包
let clousure2 = {
    (a: Int, b: Int) in
    print(a + b)
}
clousure2(5, 10)
//3)建立一个有参数,有返回值的函数
func method3(a: Int, b: Int) -> Int{
    
    return a + b
}
let result = method3(5, b: 8)

//建立一个有参数,有返回值的函数
let clousure3 = {
    (a: Int, b: Int) -> Int in
    return a + b
    
}
let resule2 = clousure3(3, 5)

/**
 *  swift的闭包和OC里面的bloc是非常相似的,作用是用于保存一段代码,在需要的时候执行
    OC:block类似匿名函数,用于封装代码块,在特定的时候执行
    类型:返回值类型(^block名称)(形参列表)
    值: 
    ^(形参列表){
    需要执行的代码
    }
    
 
    swift:闭包是用于定义函数(swift中的函数就是闭包,闭包就是一个特殊的函数)
    类型:(形参列表) -> 返回值类型
    值: {
    (形参列表) -> 返回值类型 in
    需要执行的代码
    }
    in的含义是用于区分形参返回值和执行代码
 
 */

/**
 *  当OC的block遇到循环引用的时候,我们会使用__weak typeof(self)weak = self 或者 _unsafe_unretained来解决
     区别
 */


//对象和类
//使用'class'和类名来创建一个类.类中属性的声明和常量,变量声明一样,唯一的区别是他们的上下文是类
class Shape {
    
    var numberOfSides = 0
    
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) slide"
    }
    
}

//要创建一个类的实例,在类名后面加上括号,使用点预防来访问实例变量的属性和方法
var shape = Shape()
shape.numberOfSides = 7
var shaprDescription = shape.simpleDescription()
//这个版本的Shape类,缺少一些重要的东西,一个构造函数来初始化实例,使用init来创建一个便利构造器
class NameShape{
    
    var numberOfSides: Int = 0
    var name:String
    
    
    init(name: String){
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
        
    }
    
}

//注意'self'被用来区别实例变量.当你创建实例的时候,像传入函数参数一样给类传入构造器的参数,每个属性都需要赋值-无论是通过声明(就像'numberOfSides')还是通过构造器(就像'name')
//如果你需要在删除对象之前进行一些清理工作,使用'deinit'创建一个析构函数
//析构函数:析构函数(destructor) 与构造函数相反，当对象结束其生命周期时（例如对象所在的函数已调用完毕），系统自动执行析构函数。析构函数往往用来做“清理善后” 的工作（例如在建立对象时用new开辟了一片内存空间，应在退出前在析构函数中用delete释放）
//子类的定义方法是在他们的类名后面加上父类的名字,用冒号分割.创建类的时候并不需要一个标准的根类,所以你可以忽略父类
//子类如果需要重写父类的方法的话,需要用'override'标记--如果没有使用'override'就重写父类的方法,编译器会报错.编译器同样会检测'override'标记的方法是否确定在父类中

class Square: NameShape {
    var sideLength:Double
    
    
    init(sideLength: Double,name2: String){
        
        self.sideLength = sideLength
        
        super.init(name: name2)
        numberOfSides = 4
        
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A squaare with sides of length\(sideLength)"
    }
}

let test = Square(sideLength: 5.5,name2: "my test square")
test.area()

// 使用setter和getter方法
class EquilateralTriangle: NameShape{
    
    var sideLength:Double = 0.0
    init(sideLength: Double,name3: String){
      self.sideLength = sideLength
        super.init(name: name3)
          numberOfSides = 3

    }
    var perimeter:Double{
        
        get{
            return 3.0 * sideLength
            
        }
        set{
            sideLength = newValue / 3.0
            
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length"
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.0,name3: "ssss")
print(triangle.perimeter)

triangle.perimeter = 9.9
print(triangle.sideLength)

//在'perimeter'的setter中,新值得名字是'newvalue',可以在'set'中显式设置新的名字

//注意'EquilateralTriangle'类的构造器执行了三步
/**
 *  1.设置子类声明的属性值
    2.调用父类的构造器
    3.改变父类定义的属性值.其他的工作比如调用方法,getter和setter也可以在这个阶段完成
 */
//如果不需要计算属性值,但是仍然需要在设置一个新值之前或者之后运行代码,使用willset和getset
class TriangleAndSquare{
    
    var triangle:EquilateralTriangle {
        willSet{
         square.sideLength = newValue.sideLength
        }
        
        
    }
    var square:Square {
        
        willSet{
            
            triangle.sideLength = newValue.sideLength
        }
        
    }
    
    init(size: Double,name3: String){
        square = Square(sideLength:size,name2: name3)
        triangle = EquilateralTriangle(sideLength: size, name3: name)
        
    }

}
var triangleAndSquare = TriangleAndSquare(size: 10,name3: "ssss")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50,name2:"不知道写什么")
print(triangleAndSquare.triangle.sideLength)
//处理变量的可选值时,可以在操作(方法,属性和子脚本)之前加'?',如果'?'之前的值为
//nil,'?'之后的东西就会被忽略,并且整个表达式返回'nil'.否则,'?'之后的东西都会被运行.在这两种情况,整个表达式的值都是一个可选值
let optionalSquare: Square? = Square(sideLength: 2.5,name2: "optional ")
let sideLength = optionalSquare?.sideLength


/**
 *  枚举和结构体
 */
enum Rank: Int{
    
    case Ace = 1
    case Two, Thress, Four, Five,Six,Seven,Eight,Nine,Ten
    case Jack ,Queen,King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "abc"
        case .Two:
            return "def"
        case .Jack:
            return "jack"
            
        default:
            return String(self.rawValue)
        }
        
    }
    
    
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

//使用fallthrough 不离开switch继续执行下面的case
var score = 0
switch score{
    
case 0:
    fallthrough
case 100:
    "天才白痴一瞬间"
default:
    break
    
}
//可以一次比较多个条件
var grade = 100
switch grade{
case 0, 100:
    "天才白痴一瞬间"
default:
    "平凡人"
}
//可以比较任何类型
var fruit = "宾果"
switch fruit{
    case "宾果":
    "好吃"
    case "榴莲":
    "不喜欢"
    default:
    "还好"
    
}
//宣告某整数的范围
//限制只能递增,每次+1
for num in 1...5{
    print(num)
}

//stride
//可以宣告范围更灵活
//可以递增或递减
//起点使用:from
//终点使用:through(包含终点),to(不含终点)
for num in 9.stride(through: 1,by:-2){
    
    print(num)
    
}



var age: Int? = 17
age = age! + 1

//强行解开一个值为nil的option,程序会出错,option取值前要先判定是否为nil
//var age2: Int?
//age2 = age2! + 1

var age3: Int?
if age3 != nil{
    print("age:\(age3)") //这句话不会执行
}

//判断取值(optional binding)
//先判定是否为nil,再用!取值方法太麻烦,判断取值技巧将两步合为一步
var age4: Int? = 20
if let ageNum = age4{
    print("age = \(ageNum)")
    
}
//若age4有值,得到ageNum= 20为int型,不需再透过强制解包了
//若age4无值,{}就不会被执行

//自动取值

//如果变量(常数)一旦给值就不会再变回无值得状态,可以使用自动取值的方式宣告


//枚举:用来描述一个状态几种一种的类型

//north : 1
var dirction = 1
if  dirction == 1{
    print("it's north")
}


func season(month:String) -> String {
    switch month {
    case "march":
        return "Spring"
    default:
        return "not valid"
    }
}
let month = "March"
season(month)
//------------
//定义枚举
enum Month {
   //只包含有限个可能性
    case january
    case Frbruary
    case March
    case June
    
    //或者,不同的case使用','隔开即可
    case January, frbruary,march,june
}

let curMouth = Month.Frbruary
//or
let curMouth2 : Month = .June
func season2(month: Month) -> String{
    
    switch month {
    case .March,.Frbruary:
        return "sjs"
    default:
        return "不知道写啥了"
    }
    
}

//------------------
//Raw value :原始值  case等于的值
enum Mouth: Int{
    case june = 1
    case may = 2
    case july = 3
    
}


func monthsbeforeNewYear(mouth: Mouth) -> Int {
    
    return 12 - mouth.rawValue
}
let months = Mouth.july
monthsbeforeNewYear(months)
let input = 2
//返回的month2是可选类型的,因为用户输入的可能是没有的
let  month2 = Mouth(rawValue: input)
//解包
if let moth = Mouth(rawValue: input){
    monthsbeforeNewYear(moth)
    
}

enum Grade:Int {
    case F,E,D,C,B,A
}
let grad: Grade = .A
print("Your sore is \(grad.rawValue)")

enum Coin:Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
}
let  coin: Coin = .Nickel
print("\(coin.rawValue)")
//字符串也有默认值,就是变量本身
enum Programein: String {
    case Swift
    case Objective = "objective-c"
    case C
    case Jave
}

let programein:Programein = .Swift
print("\(programein.rawValue)")

//Aasociate value :关联值  和rawVlue是互斥的
//case 可以跟一个变量进行相关联
enum ATMStutus{
    
    case Success(Int)
    case Error(String)
    case Waiting
}
var balance = 1000

func withdraw(amount:Int) -> ATMStutus{
    
    if balance >= amount {
        balance -= amount
        return .Success(balance)
    }else{
        return .Error("NOT enougth money")
        
    }
}
let result2 = withdraw(500)

switch result2{
case let .Success(newBalance):
    print("\(newBalance) yuan")
case let .Error(errorMessage):
    print("error:\(errorMessage)")
case .Waiting:
    print("Waiting")
    
}

//关联值,不只可以关联一个值,还可以关联多个值(实际上就是关联一个元祖)
enum Shape5{
    case Square(side: Double)
    case Rectangle(width: Double,heigth: Double)
    case Circle(centerx:Double,centery:Double, radius: Double)
    case Point
    
}


let square = Shape5.Square(side: 10)
let rectangle = Shape5.Rectangle(width: 20, heigth: 5)
let circle = Shape5.Circle(centerx: 10, centery: 6,radius: 5)
let point = Shape5.Point

func area(shape: Shape5) -> Double {
    switch shape {
    case let .Square(side):
        return side * side
    case let .Rectangle(width,heigth):
        return width * heigth
    //_,_忽略没用的参数
    case let .Circle(_,_,r)://使用_忽略不关心的参数
        return M_PI * r * r
    default:
        return 0
        
    }
}

area(square)
area(rectangle)
area(circle)
area(point)


//--------可选型 实际上就是枚举类型
var age12: Int? = 17
//optional 17
print(age12)

age12 = nil
//nil age12可以装载17,也可以是为nil

var webSith:Optional<String> = Optional.Some("moke")

webSith = .None // webSith = nil

webSith = "imooc.com"
if let websith = webSith{
    print("\(webSith)")
}else{
    
    print("no websith")
    
}


//--------枚举递归 indirect
indirect enum ArithmeticExpression{
    
    case Number(Int)
    case Addition(ArithmeticExpression,ArithmeticExpression)
    case Multiplication(ArithmeticExpression,ArithmeticExpression)
    
}

// (5 + 4) * 2
let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let two = ArithmeticExpression.Number(2)
let sum = ArithmeticExpression.Addition(five, four)
let multiplication = ArithmeticExpression.Multiplication(sum, two)
//递归函数
func evalute(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left,right):
        return evalute(left) + evalute(right)
    case let .Multiplication(left,right):
        return evalute(left) * evalute(right)
        
    }
}
evalute(sum)


//------结构体

struct Location {
    
    let latiude:Double
    var longitude:Double
    
    
}
var appleHeadLocation = Location(latiude: 37.3230, longitude: -122.0)

let goodleHeadlocation = Location(latiude: 32, longitude: 100)

appleHeadLocation = goodleHeadlocation
appleHeadLocation.longitude = 100

struct Place {
    let location: Location
    var name: String
    
    
}


var google = Place(location: goodleHeadlocation, name: "google")

//--------构造函数

struct Location2  {
    var latitude:Double = 0
    var longitude: Double = 0
    
}
Location2()
let location3 = Location2(latitude: 39, longitude: 45)




////----无值给预设值
//var age5 : Int; ?= nil
//var hisAge = age5 ?? 18
//var herAge = age






