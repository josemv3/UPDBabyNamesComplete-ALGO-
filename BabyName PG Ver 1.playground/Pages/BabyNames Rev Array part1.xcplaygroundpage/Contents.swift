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



//There is at least one baby name from the top 40 baby names for 2020 that, when spelled backwards, is a valid Scrabble word. Find and print all such names.
//Solve this two ways: first with an array to hold the Scrabble words, and then with a dictionary (or set) to hold the Scrabble words. Use timer functions to measure how long it takes to complete this work under each implementation. Why is the time different?




//First run SIMPLIFY:
//for names in baby2020
//let babyName = babyNames2020[0]
//let babyNameLowerCase = babyName.lowercased()
//let reversedBabyName = String(babyNameLowerCase.reversed())
//print(reversedBabyName)

//if reversed == word (in sowpods)
//append to array


let start = CFAbsoluteTimeGetCurrent()
// run your work

//var reversedBabyNamesAreScrabbleWords: [String] = []
//
//func reverseBabyNames() {
//
//    for name in babyNames2020 {
//
//        if name == "" {
//            print("Empty String")
//        } else {
//            let nameLowercased = name.lowercased()
//            let reversedBabyNames = String(nameLowercased.reversed())
//            reversedBabyNamesAreScrabbleWords.append(reversedBabyNames)
//        }
//
//    }
//    //print(reversedBabyNamesAreScrabbleWords)
//}
//
//
//var matchingNamesToSowpods: [String] = []
//
//func matchNames() {
//
//    for name in reversedBabyNamesAreScrabbleWords {
//        let targetNameReversed =  name
//
//        for word in sowpods {
//            if targetNameReversed == word.lowercased() {
//                matchingNamesToSowpods.append(word)
//            }
//
//        }
//    }
//    print(matchingNamesToSowpods)
//}
//reverseBabyNames()
//matchNames()



//var reversedBabyNamesAreScrabbleWords: [String] = []

//func reverseBabyNames() {
//
//    for name in babyNames2020 {
//
//        if name == "" {
//            print("Empty String")
//        } else {
//            let nameLowercased = name.lowercased()
//            let reversedBabyNames = String(nameLowercased.reversed())
//            reversedBabyNamesAreScrabbleWords.append(reversedBabyNames)
//        }
     
//    }
    //print(reversedBabyNamesAreScrabbleWords)
//}


//TRY 2 (Cut time in half)

var matchingNamesToSowpods: [String] = []

func matchReversedBabyNamesWSowpods() {
    
    var targetNameReversed = ""
    
    for name in babyNames2020 {
        
        if name == "" {
            continue
        }
        let nameLowercased = name.lowercased()
        let reversedBabyName = String(nameLowercased.reversed())
        targetNameReversed = reversedBabyName
        
        for word in sowpods {
            if targetNameReversed == word.lowercased() {
                matchingNamesToSowpods.append(word)
            }
        }
    }
    print(matchingNamesToSowpods)
}
matchReversedBabyNamesWSowpods()

let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")

