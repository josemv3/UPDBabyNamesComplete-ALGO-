//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "baby_names_1880_short", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let babyNames1880 = content.components(separatedBy: "\n")

let fileURL2 = Bundle.main.url(forResource: "baby_names_2020_short", withExtension: "txt")
let content2 = try String(contentsOf: fileURL2!, encoding: String.Encoding.utf8)

let babyNames2020 = content2.components(separatedBy: "\n")

//func findAllShortestBabyNames2020(shortestName2: String) {
//
//
//    for name in babyNames2020 {
//
//        if name == "" {
//            print("Empty Found Again")
//        } else if name.count == shortestName2.count {
//            shortestBabyNames2020.append(name)
//        }
//
//    }
//    print(shortestBabyNames2020)
//}


//var shortestName = babyNames2020[0]
//
//func findShortestBabyName2020() {
//
//    for name in babyNames2020 {
//
//        if name == "" {
//            print("Found Empty")
//        } else if shortestName.count > name.count {
//                shortestName = name
//            }
//    }
//    print(shortestName)
//}

var shortestBabyNames2020: [String] = []
shortestBabyNames2020.append(babyNames2020[0])
//shortestBabyNames2020 = [String]()

func findAllShortestBabyNames2020() {
    
    for name in babyNames2020 {

        if name == "" {
            print("Empty Found Again")
        } else if name.count <= shortestBabyNames2020[0].count && name != shortestBabyNames2020[0] {
            
            if name.count < shortestBabyNames2020[0].count {
                shortestBabyNames2020 = [String]()//resets entire Array.
                //shortestBabyNames2020.removeAll()
            }
            shortestBabyNames2020.append(name)
        }
    }
    print(shortestBabyNames2020)
}
findAllShortestBabyNames2020()
