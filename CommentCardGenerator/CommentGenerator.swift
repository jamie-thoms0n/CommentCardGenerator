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
    let arrayAttainment : [String]
    let arrayAttainmentTwo : [String]
    let arrayFour : [String]
    var integerHappi : Int
    var AttainTwo : String
    var attainSentence : String
    
    init() {
        self.happiness = 0
        self.attainment = 0
        self.needToWorkMore = 0
        self.enjoyability = 0
        self.teacherAbility = 0
        self.arrayHappiness = ["am not very happy with", "am frustrated in", "am not too happy in", "have an amicable relationship with", "am content with", "feel its going ok in" , "am happy with","feel its going great in", "couldnt be happier in"]
        self.arrayAttainment = ["could be working harder", "am working to a good level but slightly within my capabilites", "am working well"]
        self.arrayAttainmentTwo = ["and I am trying to get better at working efficiently.", "I want to find that extra level in the future though.", "I want to continue working with vigour."]
        self.arrayFour = ["hello"]
        self.sentenceOne = "How happy are you in your subject at the moment"
        self.integerHappi = 0
        self.AttainTwo = ""
        self.attainSentence = "am doing iffy"
    }
    
    func generateComment() -> String {
        self.integerHappi = Int(happiness)
        //self.integerAttain = Int(attainment)
        if attainment < 4{
            attainSentence = self.arrayAttainment[1]
            AttainTwo = self.arrayAttainmentTwo[1]
        } else if attainment > 3 || attainment < 8 {
            attainSentence = self.arrayAttainment[2]
            AttainTwo = self.arrayAttainmentTwo[2]
        } else {
            attainSentence = self.arrayAttainment[3]
            AttainTwo = self.arrayAttainmentTwo[3]
        }
        self.sentenceOne = ("I \(self.arrayHappiness[integerHappi]) in maths right now. I feel that I \(self.attainSentence) at the moment, \(self.AttainTwo)")
        return self.sentenceOne
    }
    
    
}
