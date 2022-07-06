//: [Previous](@previous)

import Foundation


let fileURL = Bundle.main.url(forResource: "baby_names_1880_short", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

let babyNames1880 = content.components(separatedBy: "\n")

let fileURL2 = Bundle.main.url(forResource: "baby_names_2020_short", withExtension: "txt")
let content2 = try String(contentsOf: fileURL2!, encoding: String.Encoding.utf8)

let babyNames2020 = content2.components(separatedBy: "\n")

let fileURL3 = Bundle.main.url(forResource: "sowpods", withExtension: "txt")
let content3 = try String(contentsOf: fileURL3!, encoding: String.Encoding.utf8)

let sowpods = content3.components(separatedBy: "\n")

let sowpodsSet = Array(Set(sowpods))

//Couldt get auto number Dict to work:
//for i in 1...sowpods.count {
//    //sowpodsDict = [Int : String]()
//    sowpodsDict[i] = sowpods[i]
//}

//DICT TRY 2:
var sowpodsKeyArray = Array(0...267751)
let sowpodsDict = Dictionary(uniqueKeysWithValues: zip(sowpodsKeyArray, sowpods))

//for (_, key_value) in sowpodsDict.enumerated() {
//   print("\(key_value)")
//}

print(sowpodsDict.count)
//print(sowpodsDict.index(forKey: 1))
//print(sowpodsSet.count)
//print(sowpods.count)
//print(sowpodsKeyArray.count)


// run your work

//There is at least one baby name from the top 40 baby names for 2020 that, when spelled backwards, is a valid Scrabble word. Find and print all such names.
//Solve this two ways: first with an array to hold the Scrabble words, and then with a dictionary (or set) to hold the Scrabble words. Use timer functions to measure how long it takes to complete this work under each implementation. Why is the time different?

//FIRST TRY
//let targetName = "ivel"
//
//if let entry = reversedBNSWDic.first(where: { (key, _) in key.contains(targetName) }) {
//    print(entry.value)
//} else {
//    print("no match")
//}

//WORKS FOR 1 MATCH*****************************


//var matchingNamesToSowpods: [String: String] = [:]
//
//func matchNames() {
//    for word in sowpods {
//
//        let targetName = word.lowercased()
//
//        if let entry = reversedBNSWDic.first(where: { (key, _) in key == targetName }) {
//            print(entry.value, "sowpods word: \(word)")
//            matchingNamesToSowpods[entry.value] = entry.key
//        }
//
//    }
//    print(matchingNamesToSowpods)
//}
//
//matchNames()
//FIRST TRY END



//Worked but I didn thave both lsists in dicts. Redo below:
//var reversedBabyNamesAreScrabbleWords: [String] = []

//WORKS FOR 1 MATCH*******************

//func reverseBabyNames() {
//
//    for name in babyNames2020 {
//
//        if name == "" {
//            print("Empty String")
//        } else {
//            let nameLowercased = name.lowercased()
//            let reversedBabyNames = String(nameLowercased.reversed())
//            //reveresd order for targetName search to work better
//            reveredBabyNamesDic[reversedBabyNames] = name
//        }
//
//    }
//}
//
//reverseBabyNames()
//
//var matchingNamesToSowpods: [String: String] = [:]
//
//func matchNames() {
//
//    for (key, value) in reveredBabyNamesDic {
//
//        let targetName = key.uppercased()
//
//        for word in sowpods {
//
//            if targetName == word {
//                print(value, "sowpods word: \(word)")
//                matchingNamesToSowpods[key] = value
//            }
//        }
//    }
//    print(matchingNamesToSowpods)
//
//}

//var reveredBabyNamesDic: [String: String] = [:]
var reversedBabyName: [String] = []

func reverseBabyNames() {

    for name in babyNames2020 {
        
        if name == "" {
            continue
        }
            let nameLowercased = name.lowercased()
            let reversedBabyNames = String(nameLowercased.reversed())
            //reveresd order for targetName search to work better
            reversedBabyName.append(reversedBabyNames)
        
    }
}


//reverseBabyNames()
//Now both lists ar in dictionary

let start = CFAbsoluteTimeGetCurrent()
//timer

func matchNames() {
    //var matchingNamesToSowpods: [String: String] = [:]
    
    for name in babyNames2020 { //change reversedBabyNames array to original = remove extra method.
        
        if name == "" {
            continue
        }
        let nameUppercase = name.uppercased()
        let targetName = String(nameUppercase.reversed()) //added to remove need for reverse method

        for (_, value) in sowpodsDict {
            if targetName == value {
                print("sowpods word: \(value) is babyName \(name)")
            }
        }
    }
}
matchNames()

let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")
//End timer
