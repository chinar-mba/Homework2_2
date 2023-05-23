//
//  SecondView.swift
//  Homework2
//
//  Created by Chinara on 5/17/23.
//

import SwiftUI

struct SecondView: View {
    @State var textFromSecondView: String = ""
    var body: some View {
        
        SearchBarView(textFromTF: $textFromSecondView)
     
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

