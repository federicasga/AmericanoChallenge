//
//  AmericanoChallengeApp.swift
//  AmericanoChallenge
//
//  Created by Federica Sgammato on 12/12/24.
//

import SwiftUI
import SwiftData

@main

struct AmericanoChallengeApp: App {
    
    let sharedArticleContainer = Self.reminderContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedArticleContainer)
    }
    
    
    static private func reminderContainer() -> ModelContainer {
        do {
            return try ModelContainer(for: Reminder.self)
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
}


