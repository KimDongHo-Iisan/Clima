
class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
    func fly(){
        print("The bird flaps tis wings and lifts off into the sky")
    }
}

//Bird를 상속받음.
class Eagle: Bird {
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
    func flyingDemo(flyingObject: Bird) { // 나는 주제가 새의 속성을 가지고 있어야함.
        flyingObject.fly()
    }
}

//오버라이딩을 통해서 비행기 클래스에서는 fly 함수가 나는 비행기다를 출력하도록 수정할수도 있다. 하지만 이렇게 되면    비행기 클래스는 fly 함수의 출력문은 정상이지만, 새 클래스의 layEgg()를 상속받게 되어서 비행기인데 layEgg()를 쓸수 있는 에러가 생기게 된다. 이러한 오류를 방지하기위해 프로토콜을 사용하는 것이다. 
class Airplane: Bird {
    override func fly(){
        print("i'm airPlane")
    }
}

//해서 Bird의 속성들을 Eagle이 사용할수 있다.
let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()

//펭귄도 마찬가지로 Bird의 속성을 사용할수 있음
let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()
myPenguin.fly() //펭귄은 날수 없기 때문에 이 메소드를 사용할 이유가 없다.

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPenguin) //flyingDemo에서는 fly()만 실행하기 때문에


