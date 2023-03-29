//
//  ArrayProblems.swift
//  DSA_Mac
//
//  Created by Medhad Ashraf Islam on 15/3/23.
//

import Foundation


public class ArrayProblems{
    
    public init(){
        
    }
    
    //MARK: Two Pointers problems
    
    
    //Check if string is palindrom
    public func checkIfPalindrome (check s:String) -> Bool{
        
        let str = Array(s)
        var left = 0
        var right = str.count-1
        
        var isPalindrom = true
        
        while(left < right){
            if(str[left] != str[right]){
                isPalindrom = false
            }
            left+=1
            right-=1
        }
        
        return isPalindrom
        
    }
    
    //Example 2: Given a sorted array of unique integers and a target integer, return true if there exists a pair of numbers that sum to target, false otherwise. This problem is similar to Two Sum. For example, given nums = [1, 2, 4, 6, 8, 9, 14, 15] and target = 13, return true because 4 + 9 = 13.
    func checkForTarget(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0
        var right = nums.count - 1

        while left < right {
            let curr = nums[left] + nums[right]
            if curr == target {
                return true
            }

            if curr > target {
                right -= 1
            } else {
                left += 1
            }
        }

        return false
    }
    
    
    //Leetcode problem: 392
    //Given two strings s and t, return true if s is a subsequence of t, or false otherwise.A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
    
    public func isSubSquence(str s:String, pattern t:String) -> Bool {
        
        let strArray = Array(s)
        let patternArray = Array(t)
        
        var i=0, j = 0
        while i < strArray.count && j < patternArray.count {
            if(patternArray[j] == strArray[i]){
                j+=1; i+=1
            }else{
                i+=1
            }
        }
        
        let isTrue = patternArray.count == j
        return isTrue
        
        
    }
    

    
}
