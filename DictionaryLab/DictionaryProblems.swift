import Foundation

// Find the most frequently occurring character in a given string

func mostFrequentlyOccurringChar(in str: String) -> Character {
    
    var mostFrequentChar = [Character:Int]()
        
    for b in str {
        if let mostFreq = mostFrequentChar[b] {
            mostFrequentChar[b] = mostFreq + 1
            
        } else {
            mostFrequentChar[b] = 1
        }
    }
    var mostCounted = 0
    var result = Character(" ")
    for (k,v) in mostFrequentChar {
        if mostCounted < v {
            result = k
            mostCounted = v
        }
    }
    return result
}

// Find the first indicies whose values sum to a given number

func pairSum(arr: [Int], target: Int) -> (Int, Int) {
    
    var pair: [Int : Int] = [:]
    
    for (a, b) in arr.enumerated() {
        if let index = pair[target - b]{
            return (index, a)
        }
        pair[b] = a
    }
    return (0,0)
}


// Find the second most frequently occurring character in a given string

func secondMostFrequentlyOccurringChar(in str: String) -> Character {
    
    
    
    let secondMostFreq = mostFrequentlyOccurringChar(in: str)
    var mostFrequentChar = [Character:Int]()
            
        for b in str {
            if let mostFreq = mostFrequentChar[b] {
                mostFrequentChar[b] = mostFreq + 1
                
            } else {
                mostFrequentChar[b] = 1
            }
        }
        var secondMostCounted = 0
        var result = Character(" ")
        for (character,integer) in mostFrequentChar {
            if character == secondMostFreq {
                continue }
            if secondMostCounted < integer {
                result = character
                secondMostCounted = integer
            }
        }
        return result
}

// https://leetcode.com/problems/ransom-note/

// Given an arbitrary ransom note string and another string containing letters from all
// the magazines, write a function that will return true if the ransom note can be
// constructed from the magazines ; otherwise, it will return false.

// Each letter in the magazine string can only be used once in your ransom note.

// Submit to the leetcode link for more tests

func canConstruct(note: String, from originalLetters: String) -> Bool {
    return false
}


// Return whether or not an input array contains duplicates

func containsDuplicates(arr: [Int]) -> Bool {
    return false
}

// Find all values that appear exactly once in a given array of Strings

func uniqueValues(in arr: [String]) -> [String] {
    return []
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    return []
}

