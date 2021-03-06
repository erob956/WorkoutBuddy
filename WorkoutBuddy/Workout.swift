//
//  Exercises.swift
//  WorkoutBuddy
//
//  Created by Erik Roberts on 6/21/16.
//  Copyright © 2016 Erik Roberts. All rights reserved.
//

import Foundation

class Workout : NSObject, NSCoding {
    
    var date : String!
    var exercises : [String]
    
    required init(date: String! , exercises : [String]) {
        self.exercises = exercises
        self.date = date
    }
    
    override init() {
        date = ""
        exercises = []
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.date, forKey: "date")
        aCoder.encodeObject(self.exercises, forKey: "exercises")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        let date = aDecoder.decodeObjectForKey("date") as? String
        let exercises = aDecoder.decodeObjectForKey("exercises") as? [String]
        
        self.init(date : date, exercises: exercises!)
    }

 
//    var setTwoWeight : Int
//    var setTwoReps : Int
//    var setThreeWeight : Int
//    var setThreeReps : Int
//    var setFourWeight : Int
//    var setFourReps : Int
//    
//    init() {
//        self.title = ""
//        self.weight = 0
//        self.reps = 0
//        self.setTwoWeight = 0
//        self.setTwoReps = 0
//        self.setThreeWeight = 0
//        self.setThreeReps = 0
//        self.setFourReps = 0
//        self.setFourWeight = 0
//
//    }
//    init(title : String , weight : Int , reps : Int) {
//        self.title = title
//        self.weight = weight
//        self.reps = reps
//        self.setTwoWeight = 0
//        self.setTwoReps = 0
//        self.setThreeWeight = 0
//        self.setThreeReps = 0
//        self.setFourReps = 0
//        self.setFourWeight = 0
//
//    }
//    
//    init(title : String , weight : Int , reps : Int, setTwoWeight : Int , setTwoReps : Int) {
//        self.title = title
//        self.weight = weight
//        self.reps = reps
//        self.setTwoWeight = setTwoWeight
//        self.setTwoReps = setTwoReps
//        self.setThreeWeight = 0
//        self.setThreeReps = 0
//        self.setFourReps = 0
//        self.setFourWeight = 0
//
//        
//    }
//    
//    init(title : String , weight : Int , reps : Int, setTwoWeight : Int , setTwoReps : Int, setThreeReps : Int, setThreeWeight : Int) {
//        self.title = title
//        self.weight = weight
//        self.reps = reps
//        self.setTwoWeight = setTwoWeight
//        self.setTwoReps = setTwoReps
//        self.setThreeWeight = setThreeWeight
//        self.setThreeReps = setThreeReps
//        self.setFourReps = 0
//        self.setFourWeight = 0
//    }
//
//    init(title : String , weight : Int , reps : Int, setTwoWeight : Int , setTwoReps : Int, setThreeReps : Int, setThreeWeight : Int , setFourReps : Int , setFourWeight : Int) {
//        self.title = title
//        self.weight = weight
//        self.reps = reps
//        self.setTwoWeight = setTwoWeight
//        self.setTwoReps = setTwoReps
//        self.setThreeWeight = setThreeWeight
//        self.setThreeReps = setThreeReps
//        self.setFourReps = setFourReps
//        self.setFourWeight = setFourWeight
//    }

}