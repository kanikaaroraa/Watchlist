//
//  Movie.swift
//  Watchlist
//
//  Created by kanika on 26/02/25.
//

import Foundation
import SwiftData

@Model
class Movie{
    var title: String
    var genre: Genre
    
    init(title: String, genre: Genre){
        self.title = title
        self.genre = genre
    }
}

extension Movie {
    @MainActor
    static var preview: ModelContainer{
        let container = try! ModelContainer(for: Movie.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        
        container.mainContext.insert(Movie(title: "Taare Zameen Par", genre: Genre(rawValue: 7)!))
        container.mainContext.insert(Movie(title: "Welcome", genre: Genre(rawValue: 2)!))
        container.mainContext.insert(Movie(title: "Zindagi Na Milegi Dubara", genre: Genre(rawValue: 5)!))
        container.mainContext.insert(Movie(title: "Veer-Zaara", genre: Genre(rawValue: 10)!))
        container.mainContext.insert(Movie(title: "KGF: Chapter 2", genre: Genre(rawValue: 1)!))
        container.mainContext.insert(Movie(title: "Baahubali: The Beginning", genre: Genre(rawValue: 6)!))
        container.mainContext.insert(Movie(title: "Aashique 2", genre: Genre(rawValue: 8)!))
        container.mainContext.insert(Movie(title: "Once upon a Time in Mumbai", genre: Genre(rawValue: 3)!))
      
        return container
    }
}
