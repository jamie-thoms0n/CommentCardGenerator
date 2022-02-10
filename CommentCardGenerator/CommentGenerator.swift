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
    
    init() {
        self.happiness = 0
        self.attainment = 0
        self.needToWorkMore = 0
        self.enjoyability = 0
        self.teacherAbility = 0
    }
    
    
    
    
}
