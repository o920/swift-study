import UIKit

var greeting = "Hello, playground"

// 변수var 와 상수let
var num = 5
//
num = 1 // 값 수정 가능
let name = "Jason"
// name = "Jay" // 값 수정 불가능


// 문자열 string
// ""로 선언함
let quote = "string test"

// 정수
// 소숫점 아래 버림
let num1 = 5
let othernum = num1 + 2
//
let halfOfNum = othernum / 2
let num3 = 360
print(num3.isMultiple(of: 3)) // 3의 배수인지 확인하는 메소드
let random = Int.random(in:0...300) // 0~300 사이 중 랜덤으로 수를 뽑아내는 메소드

// 소수 double
let score = 3.6
// option 키 누르고 변수나 상수를 클릭하면 type이 나옴

// 참거짓 boolean
let isMan = true
let isHuman = false
//
var isSingle = true
isSingle.toggle()
isSingle.toggle()
// toggle : true/false를 바꿔주는 메소드

// string interpolation
let difficulty = "쉽다"
let maximumAge = 80
let message = "\(maximumAge) 할머니도 iOS 개발은 \(difficulty)"


// 배열
let ages = [3,200,60]
var emptyArr : [Int] = [] // 초기화

// 딕셔너리
let languageCode = [
    "한국" : "ko",
    "미국" : "en"
]
let code = languageCode["미국"]
var emptyDic : [String:Any] = [:] // 초기화


// enum : 서로 관게있는 값들을 모아서 표현해 놓은 것
enum WeekDay {
    case mon
    case tue
    case wed
    case thu
    case fri
}
var today : WeekDay = .mon
// 징잠 : 오타로 인한 에러 발견하기 좋음
//
enum MediaType {
    case audio
    case video
}
var mediaType: MediaType = .audio
//
enum MediaTypeExtension {
    case audio(String)
    case video(String)
}
var mp3:MediaTypeExtension = .audio("mp3")
var h264:MediaTypeExtension = .video("h264")

// 조건문 - if
var age = 10
//
if age > 20 {
    print("성인")
} else {
    print("미성년")
}
//
age = 26
if age >= 10 && age < 20 {
    print("10대")
} else if age >= 20 && age < 30 {
    print("20대")
} else if age >= 30 && age < 40 {
    print("30대")
} else if age >= 40 && age < 50 {
    print("40대")
} else {
    print("......")
}

// 조건문 - switch
enum Weather {
    case sun
    case cloud
    case rain
}
//
var weather: Weather = .sun
//
switch weather {
case .sun:
    print("맑아요")
case .cloud:
    print("흐려요")
case .rain:
    print("비와요")
}

//반복문 - for
for age in ages {
    print("age: \(age)")
}
for (key, value) in languageCode {
    print("\(key)의 언어코드는 \(value)")
}
//
// 단순반복
print("전방에 다짐 10번 발사~~!")
for _ in 0..<10 {
    print("나는 iOS 개발자다!")
}

// 반복문 - while
var count = 10
print("Ready!")
while count > 0 {
    print("\(count)...")
    count -= 1
}
print("START!")

// 옵셔널 : 값이 있을수도 없을수도 있는 걸 표현하는 타입
let krCode = languageCode["한국"] // "ko"
let usCode = languageCode["미국"] // "en"
let deCode = languageCode["독일"] // nil
//
// 이름이 있을수도 있고 없을수 있는 타입 선언 => String?
var name1: String? = nil

// 함수
func printGugu(dan: Int) {
    for i in 1...9 {
        print("\(dan) * \(i) = \(dan * i)")
    }
}
printGugu(dan: 5)
//
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let random1 = rollDice()
//
func call(name: String) {
    print("hello, \(name)")
}
call(name: "Jason")
//
let callName = call
callName("Aha")

//클로저
let helloName = { (name: String) in
    print("hello, \(name)")
}
helloName("Oho")
//
// filter
let members = ["Jason", "Greg", "Tiffany"]
let nameHasT = members.filter { name in
    return name.hasPrefix("T")
}
//
// map
let prices = [1000, 2000, 3000]
let doubledPrices = prices.map { price in
    return price * 2
}
//
// reduce
let revenues = [100, 200, 300]
let totalRevenue = revenues.reduce(0) { partialResult, next in
    return partialResult + next
}
// reduce(초기값) { revenues[0], revenues[1] ~


// 구조체
struct Album {
    // 멤버 변수들
    // stored property
    let title: String
    let artist: String
    var isReleased = false
    //
    // 구조체는 초기 생성자를 자동으로 만들어줌, 클래스는 만들어줘야함
    //    init (title:String, artist:String) {
    //        self.title = "title"
    //        self.artist = "artist"
    //    }
    func description() -> String {
        return "\(title) by \(artist)"
    }
    //
    // 구조체 내부 멤버 변수의 값을 변경하는 경우, mutating 키워드 이용
    mutating func release() {
        self.isReleased = true
    }
}
var easyOnMe = Album(title: "Easy On Me", artist: "Adele")
print(easyOnMe.description())
print(easyOnMe.isReleased)
easyOnMe.release()
print(easyOnMe.isReleased)
//
struct Phone {
    var modelName: String
    var manufacturer: String
    var version: Double = 1.0
}
// 구조체를 복사해서 선언해주는 느낌
var iPhone1 = Phone(modelName: "iPhone 13", manufacturer: "Apple")
var iPhone2 = iPhone1
iPhone2.modelName = "iPhone 14"
print(iPhone2.modelName)
print(iPhone1.modelName)


// 클래스
class Employee {
    var name: String
    var hours: Int
    //
    //생성자 - 없으면 에러남
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    //
    func work() {
        print("I'm working now...")
    }
    //
    func summary() {
        print("I work \(self.hours) hours a day. ")
    }
}
//
// 상속 - override name, hours를 사용할 수 있음
class iOSDeveloper: Employee {
    override func work() {
        print("I'm developing iOS app now.")
    }
    override func summary() {
        print("I work \(self.hours/2) hours a day.")
    }
}
//
let normalWorker = Employee(name: "Kim", hours: 8)
normalWorker.work()
normalWorker.summary()
//
let developer = iOSDeveloper(name: "Jason", hours: 8)
developer.work()
developer.summary()
//
// 클래스는 같은 클래스를 복사하지 않고 포인터로 같은 곳을 가리키고 있음
var jrDeveloper1 = iOSDeveloper(name: "John", hours: 8)
var jrDeveloper2 = jrDeveloper1
jrDeveloper1.name = "Billy"
print(jrDeveloper1.name)
print(jrDeveloper2.name)


// stored property vs. computed property
struct Watch {
    // stored property
    let model: String
    let manufacturer: String
    // computed property
    var description: String {
        return "\(model) by \(manufacturer)"
    }
}
//
struct Person {
    // stored property
    let firstName: String
    let lastName: String
    // computed property
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
//
let appleWatch = Watch(model: "Watch 7", manufacturer:  "Apple")
print(appleWatch.description)
//
let jason = Person(firstName: "Jason", lastName: "Lee")
print(jason.fullName)
