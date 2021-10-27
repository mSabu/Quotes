//
//  Quotes.swift
//  Quotes
//
//  Created by Manjusha Sabu on 10/27/21.
//

import Foundation

class Quotes: ObservableObject {
    var quotes: [String] = []
    
    init() {
        quotes = loadQuotes()
    }
    
    func loadQuotes() -> [String] {
        
        guard let fileUrl = Bundle.main.url(forResource: "Quotes", withExtension: "json") else { return [] }
        let data = try? Data(contentsOf: fileUrl)
        let quotes = try? JSONDecoder().decode([String: [String]].self, from: data!)
        return quotes?["quotes"] ?? []
    }
    
    func randomQuote() -> String {
        quotes.randomElement() ?? "Error: No Item found"
    }
}
