//
//  SwiftUIView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 10/12/24.
//

import SwiftUI

struct TasksViewSooner: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "calendar")
                Text("Sooner")
                    .font(.headline)
            }
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(Color(red: 242 / 255, green: 242 / 255, blue: 247 / 255))
                    .frame(width: 337, height: 116)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "circle")
                        Text("Study maths")
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 29.0)
                                .foregroundStyle(.blue)
                                .frame(width: 58.05, height: 23.09)
                                .padding(.trailing, 25)
                            Image(systemName: "timer")
                                .padding(.trailing, 25)
                        }
                    }
                    HStack {
                        Image(systemName: "circle")
                        Text("Go for a walk")
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 29.0)
                                .foregroundStyle(.blue)
                                .frame(width: 58.05, height: 23.09).padding(.trailing, 25)
                            Image(systemName: "timer")
                                .padding(.trailing, 25)
                        }
                    }
                    HStack {
                        Image(systemName: "circle")
                        Text("Workout")
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: 29.0)
                                .foregroundStyle(.blue)
                                .frame(width: 58.05, height: 23.09)
                                .padding(.trailing, 25)
                            Image(systemName: "timer")
                                .padding(.trailing, 25)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}






#Preview {
    TasksViewSooner()
}
