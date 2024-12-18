//
//  SwiftUIView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 11/12/24.
//

import SwiftUI

struct CustomTabBar: View {
    var reminders: [Reminder]
    var completed: [Reminder] // Nuovo parametro per i reminder completati

    @State var isSheetOpen: Bool = false
    @State var isSheetOpenCompleted: Bool = false

    var body: some View {
        HStack {
            Button(action: {
                isSheetOpen = true
            }, label: {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .foregroundStyle(.blue)
                        .fontWeight(.bold)
                    Text("New Reminder")
                        .foregroundStyle(.blue)
                        .fontWeight(.bold)
                }
                .padding(.leading, 21)
            })

            Spacer()

            Button(action: {
                isSheetOpenCompleted = true
            }, label: {
                Text("Completed")
                    .foregroundStyle(.blue)
                    .padding(.trailing, 21)
            })
        }
        .sheet(isPresented: $isSheetOpen, content: {
            AddReminderView()
        })
        .sheet(isPresented: $isSheetOpenCompleted, content: {
            CompletedView(completed: completed) // Passiamo i reminder completati
        })
    }
}

