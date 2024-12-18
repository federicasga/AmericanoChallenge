//
//  SwiftUIView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 10/12/24.
//

import SwiftUI
import SwiftData

let urgency1 = Urgency.Later

struct TasksViewLater: View {
    
    var reminders: [Reminder]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "calendar")
                Text("Later")
                    .font(.headline)
            }
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(Color(red: 242 / 255, green: 242 / 255, blue: 247 / 255))
                    .frame(width: 337, height: 116)
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(reminders) { reminder in
                        reminderRow(by: reminder)
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
    
    func reminderRow(by reminder: Reminder) -> some View {
        HStack {
            Image(systemName: reminder.completed ? "checkmark.circle" : "circle")
            Text(reminder.title)
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 29.0)
                    .foregroundStyle(.blue)
                    .frame(width: 58.05, height: 23.09)
                    .padding(.trailing, 25)
                
                // TODO: Dovremmo mettere il timer qui...
                Image(systemName: "timer")
                    .padding(.trailing, 25)
            }
        }
    }
    
    
}

#Preview {
    TasksViewLater(reminders: [])
}
