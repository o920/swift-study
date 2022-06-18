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
