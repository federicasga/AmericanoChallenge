//
//  CustomPicker.swift
//  reminderapp
//
//  Created by Federica Sgammato on 11/12/24.
//

import SwiftUI

struct CustomPicker: View {
    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0
    @State private var selectedSecond: Int = 0
    
    let hours = Array(0...23)
    let minutes = Array(0...59)
    let seconds = Array(0...59)
    
    var body: some View {
        HStack {
            Picker("Hour", selection: $selectedHour) {
                ForEach(hours, id: \.self) {
                    Text("\($0) h")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 130)
            .pickerStyle(.wheel)
            
            Picker("Minute", selection: $selectedMinute) {
                ForEach(minutes, id: \.self) {
                    Text("\($0) min")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 130)
            .pickerStyle(.wheel)
            
            Picker("Second", selection: $selectedSecond) {
                ForEach(seconds, id: \.self) {
                    Text("\($0) sec")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 130)
            .pickerStyle(.wheel)
        }
    }
}

#Preview {
    CustomPicker()
}
