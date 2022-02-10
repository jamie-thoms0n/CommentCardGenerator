//
//  CommentView.swift
//  CommentCardGenerator
//
//  Created by Thomson, Jamie (NA) on 10/02/2022.
//

import SwiftUI

struct CommentView: View {
    @ObservedObject var commentGen = CommentGenerator()
    var body: some View {
        Text(commentGen.generateComment())
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
