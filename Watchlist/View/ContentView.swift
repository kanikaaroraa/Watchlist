//
//  ContentView.swift
//  Watchlist
//
//  Created by kanika on 26/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.modelContext) var modelContext
    @Query private var movies: [Movie]
    
    
    var body: some View {
        List {
            
        }//: LIST
        .overlay{
            if movies.isEmpty{
                EmptyListView()
            }
        }
    }
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Movie.self, inMemory: true)
}
