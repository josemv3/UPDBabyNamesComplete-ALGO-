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
sowpodsSet.count


let start = CFAbsoluteTimeGetCurrent()
//timer

func findBabyNamesReversedInSowpods() {
    
    for name in babyNames2020 {
        
        if name == "" {
            continue
        }
        let uppercaseName = name.uppercased()
        let targetName = String(uppercaseName.reversed())
        
        for word in sowpodsSet {
            
            if word == targetName {
                print("\(name) is \(word)")
            }
        }
    }
}
findBabyNamesReversedInSowpods()

let diff = CFAbsoluteTimeGetCurrent() - start
print("Took \(diff) seconds")
//End timer

let set = Set<Int>()
