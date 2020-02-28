import UIKit

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
    func getFavoriteSong() -> String{
        return (TaylorFan.favoriteSong)
    }
}

let fan = TaylorFan(name: "James", age: 25)
let fanGirl = TaylorFan(name: "Catalina", age: 19)
print(TaylorFan.favoriteSong)
TaylorFan.favoriteSong = "Benis :Ddd"
print(fanGirl.getFavoriteSong())
