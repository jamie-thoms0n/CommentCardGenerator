//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Thomson, Jamie (NA) on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var feelings = ""
    var body: some View {
        VStack{
            Text("are you?")
                .padding()
            Button("happy", action: {feelings = "happy"})
                .padding()
            Button("struggling", action: {feelings = "struggling"})
                .padding()
            Button("content", action: {feelings = "content"})
                .padding()
            Text("I am \(feelings) with this subject at the moment")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
