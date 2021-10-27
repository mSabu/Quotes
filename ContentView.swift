//
//  ContentView.swift
//  Quotes
//
//  Created by Manjusha Sabu on 10/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var textToUpdate = ""
    var quotes = Quotes()
    
    var body: some View {
        VStack {
            Text(textToUpdate).padding()
            Button("Display Quote") {
                self.textToUpdate = quotes.randomQuote()
            }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 2).foregroundColor(Color.blue))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
