//
//  CommentGenerator.swift
//  CommentCardGenerator
//
//  Created by Thomson, Jamie (NA) on 10/02/2022.
//

import Foundation

class CommentGenerator : ObservableObject{
    @Published var happiness : Double
    @Published var attainment : Double
    @Published var needToWorkMore : Double
    @Published var enjoyability : Double
    @Published var teacherAbility : Double
    @Published var sentenceOne : String
    let arrayHappiness : [String]
    let arrayTwo : [String]
    let arrayThree : [String]
    let arrayFour : [String]
    var integer : Int
    
    init() {
        self.happiness = 0
        self.attainment = 0
        self.needToWorkMore = 0
        self.enjoyability = 0
        self.teacherAbility = 0
        self.arrayHappiness = ["am not very happy with", "am frustrated in", "am not too happy in", "have an amicable relationship with", "am content with", "feel its going ok in" , "am happy with","feel its going great in", "couldnt be happier in"]
        self.arrayTwo = ["hello"]
        self.arrayThree = ["hello"]
        self.arrayFour = ["hello"]
        self.sentenceOne = "How happy are you in your subject at the moment"
        self.integer = 0
    }
    
    func generateComment() -> String {
        self.integer = Int(happiness)
        self.sentenceOne = ("I \(self.arrayHappiness[integer]) in maths at the moment.")
        return self.sentenceOne
    }
    
    
}
