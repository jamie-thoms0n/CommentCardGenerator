//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Thomson, Jamie (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var commentGen = CommentGenerator()
    @State var subject = "click to choose subject"
    //@State var happiness : Double = 0
    var body: some View {
        NavigationView {
            VStack {
                Menu(subject) {
                        Button("Maths", action: {subject = "Maths"})
                        Button("Computer Science", action: {subject = "Computer Science"})
                        Button("Macro", action: {subject = "Macro"})
                        Button("Micro", action: {subject = "Micro"})
                        Button("Politics", action: {subject = "Politics"})
                }

                Form {
                    //happiness
                    Slider(
                        value: $commentGen.happiness,
                        in: 0...10,
                        step: 1
                    ){
                        Text("")
                    } minimumValueLabel: {
                            Text("0")
                    } maximumValueLabel: {
                        Text("10")
                    }
                    Text("my happiness in \(subject) is \(Int(commentGen.happiness))")
                    //attainment
                    Slider(
                        value: $commentGen.attainment,
                        in: 0...10,
                        step: 1
                    ){Text("")
                    } minimumValueLabel: {
                            Text("0")
                    } maximumValueLabel: {
                        Text("10")}
                    Text("my attainment in \(subject) is \(Int(commentGen.attainment))")
                    //need to work more
                    Slider(
                        value: $commentGen.needToWorkMore,
                        in: 0...10,
                        step: 1
                    ){Text("")
                    } minimumValueLabel: {
                            Text("0")
                    } maximumValueLabel: {
                        Text("10")}
                    Text("my need to work more in \(subject) is \(Int(commentGen.needToWorkMore))")
                    //teacherAbility
                    Slider(
                        value: $commentGen.teacherAbility,
                        in: 0...10,
                        step: 1
                    ){Text("")
                    } minimumValueLabel: {
                            Text("0")
                    } maximumValueLabel: {
                        Text("10")}
                    Text("my teachers ability in \(subject) is \(Int(commentGen.teacherAbility))")
                    //enjoyability
                    Slider(
                        value: $commentGen.enjoyability,
                        in: 0...10,
                        step: 1
                    ){Text("")
                    } minimumValueLabel: {
                            Text("0")
                    } maximumValueLabel: {
                        Text("10")}
                    Text("my enjoyability in \(subject) is \(Int(commentGen.enjoyability))")
                }
                NavigationLink(destination: CommentView(commentGen: commentGen), label: {
                    Text("Click to generate comment card")
                        .font(.system(size: 30))
                        .bold()
                        .padding()
            
                })
            }
        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
