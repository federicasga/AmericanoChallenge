//
//  ContentView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 10/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var reminders: [Reminder] // Query per i reminder salvati

    var body: some View {
        NavigationStack {
            ResumeBar()
            TasksViewSooner(reminders: reminders.filter { $0.urgency == .Sooner })
            TasksViewLater(reminders: reminders.filter { $0.urgency == .Later })
            CustomTabBar(
                reminders: reminders,
                completed: reminders.filter { $0.completed == true }
            )
            .navigationTitle("Due today")
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
