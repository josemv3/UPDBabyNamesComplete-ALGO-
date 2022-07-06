//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "baby_names_1880_short", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let babyNames1880 = content.components(separatedBy: "\n")

let fileURL2 = Bundle.main.url(forResource: "baby_names_2020_short", withExtension: "txt")
let content2 = try String(contentsOf: fileURL2!, encoding: String.Encoding.utf8)

let babyNames2020 = content2.components(separatedBy: "\n")


//var longestName = babyNames2020[0]
//
//func findLongestNames() {
//
//    for names in babyNames2020 {
//
//        if names == "" {
//            print("Empty Found")
//
//        } else if longestName.count < names.count {
//
//            longestName = names
//        }
//    }
// print(longestName)
//}
//findLongestNames()

//var allLingestNames: [String] = []
//
//func findAllLongestNames() {
//
//    for names in babyNames2020 {
//
//        if longestName.count == names.count {
//
//            allLingestNames.append(names)
//        }
//    }
//    print(allLingestNames)
//}
//findAllLongestNames()

//TRY 2 (reduced time by half)



func findLongestNames() {
    var longestName: [String] = []
    longestName.append(babyNames2020[0])
    
    for names in babyNames2020 {
        
        if names == "" {
            print("Empty Found")
            
        } else if names.count >= longestName[0].count && names != longestName[0] {
            
            if names.count > longestName[0].count {
                longestName = [String]()
            }
            longestName.append(names)
        }
    }
    print(longestName)
}
findLongestNames()
