
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
    
}

//해서 Bird의 속성들을 Eagle이 사용할수 있다.
let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
