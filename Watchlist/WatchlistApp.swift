//
//  WatchlistApp.swift
//  Watchlist
//
//  Created by kanika on 26/02/25.
//

import SwiftUI
import SwiftData


@main
struct WatchlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
