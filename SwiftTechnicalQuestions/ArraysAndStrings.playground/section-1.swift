import UIKit



var str = "abcdfghjkl"

/**
1.1 Algorithm for determining if a string has all unique characters

:param: stringToCheck change this string to either have all unique chars or not for checking

:returns: if all unique method returns true
*/
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

/**
1.2 Implement a function which reverses a string

:param: str string to reverse

:returns: the reversed string
*/

func reverseString(str:String)->String {
   return String(reverse(str))
}

var stringToReverse = "this is a string"

var aStringToReverse = reverseString(stringToReverse) //solution 1.2




var string1 = "test string 1"
var string2 = "test string 1"

/**
1.3 given two strings write a method to decide if one is a permutation of the other

:param: string1 string to compare against string2 for permutations
:param: string2 string to compare against string1 for permutations

:returns: returns true if strings are a permutation of each other
*/

func stringIsAPermutation(string1:String, string2:String)->Bool {
    var stringArray1 = string1.componentsSeparatedByString(" ")
    var stringArray2 = string2.componentsSeparatedByString(" ")
    
    println("stringArray1 \(stringArray1) stringArray2: \(stringArray2)")
    
    // check for unique strings in stringarray1
    for singleStringFrom1 in stringArray1 {
        if !contains(stringArray2, singleStringFrom1) {
            return false
        }
    }
    // check for unique strings in stringarray2
    for singleStringFrom2 in stringArray2 {
        if !contains(stringArray1, singleStringFrom2) {
            return false
        }
    }
    
    return true
}

stringIsAPermutation(string1, string2)



