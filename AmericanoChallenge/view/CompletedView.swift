//
//  CompletedView.swift
//  AmericanoChallenge
//
//  Created by Federica Sgammato on 17/12/24.
//

import SwiftUI

struct CompletedView: View {
    var completed : [Reminder]

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 8) {
                ForEach(completed) { reminder in
                    CompletedReminderRow(by: reminder)
                    
                    
                }
                
            }.navigationTitle("Completed")
        }}
    func CompletedReminderRow(by reminder: Reminder) -> some View {
        
        HStack {
            Image(systemName: reminder.completed ? "checkmark.circle" : "")
                    Text(reminder.title)
                    Spacer()
        }}}

#Preview {
    CompletedView(completed: [])
}
