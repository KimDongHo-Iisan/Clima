protocol CanFly {
    func fly() // 프로토콜에서는 fly()만 사용이 가능하고 뒤에 {}를 사용할수 없게 되어있다.
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
}


class Eagle: Bird, CanFly {
    func fly() {
        print("The eagles can fly")
    }
    
    func soar(){
        print("The Eagles glides in the air using air currnets")
    }
}

//Bird를 상속받음.
class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water")
    }
}

//구조체에도 적용 아무것도 상속할 필요가 없기때문에 구조체를 사용한다.
struct  FlyingMuseum {
    func flyingDemo(flyingObject:CanFly) { // 여기서는 CanFly 프로토콜을 데이터 유형으로 사용하였다.
        flyingObject.fly()
    }
}

//오버라이딩도 할 필요가 없게 된다.
class Airplane: CanFly {
    func fly() {
        print("i'm airPlane")
    }
}


let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()

//펭귄도 마찬가지로 Bird의 속성을 사용할수 있음
let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane) //fly()를 프로토콜로 가지고 있기 때문에 사용이 가능해짐.


