//: [Previous](@previous)

import Foundation

let fileURL = Bundle.main.url(forResource: "baby_names_1880_short", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let babyNames1880 = content.components(separatedBy: "\n")

let fileURL2 = Bundle.main.url(forResource: "baby_names_2020_short", withExtension: "txt")
let content2 = try String(contentsOf: fileURL2!, encoding: String.Encoding.utf8)

let babyNames2020 = content2.components(separatedBy: "\n")

//var targetName = "Levi"
//
//for name in babyNames2020 {
//        if name == targetName {
//        print(targetName)
//        }
//}


func findNamesOnBothLists() {

    var namesOnBothLists: [String] = []
    var targetName = ""

    for name in babyNames1880 {

        if name == "" {
            continue
        } else {
            targetName = name
        }
        let filteredNames = babyNames2020.filter({ $0 == targetName })
        if filteredNames.count == 1 {
            namesOnBothLists.append(name)
        }
    }
    print(namesOnBothLists)
}
findNamesOnBothLists()


        
