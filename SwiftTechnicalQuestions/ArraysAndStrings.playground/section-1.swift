import UIKit

//1.1 Algorithm for determining if a string has all unique characters

var str = "abcdfghjkl"

func charsAreUnique(stringToCheck: String)->Bool {
    
    var charsSoFarArray = Array<Character>()
    
    for aCharacter in stringToCheck {
        if contains(charsSoFarArray, aCharacter) {
            return false
        }
        charsSoFarArray.append(aCharacter)
    }
    
    return true
}

charsAreUnique(str) //solution 1.1






