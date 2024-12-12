//
//  ContentView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 10/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ResumeBar()
            TasksViewSooner()
            TasksViewLater()
            CustomTabBar()
                .navigationTitle("Due today")
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
