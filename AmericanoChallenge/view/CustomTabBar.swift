//
//  SwiftUIView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 11/12/24.
//

import SwiftUI

struct CustomTabBar: View {
    
    /*@State private var reminders: [String] = []
    @State private var newReminder: String = ""*/
    
    @State var isSheetOpen: Bool = false
    
    var body: some View {
        HStack{
              Button(action: {
                isSheetOpen = true
            },
                     label: {
                  HStack{
                      Image(systemName: "plus.circle.fill")
                          .foregroundStyle(.blue)
                          .fontWeight(.bold)
                      Text ("New Reminder")
                          .foregroundStyle(.blue)
                          .fontWeight(.bold)
                  }
                  .padding(.leading, 21)
                  
              })
            
            
            Spacer()
            Text ("Completed")
                .foregroundStyle(.blue)
                .padding(.trailing, 21)
            
            
            
        }
        .sheet(isPresented: $isSheetOpen, content: {
            AddReminderView()
        })
        
    }
  
    }


#Preview {
    CustomTabBar()
}
