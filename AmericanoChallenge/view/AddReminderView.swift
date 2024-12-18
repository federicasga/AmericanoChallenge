import SwiftUI
import SwiftData

struct AddReminderView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    
    @State var urgency : Urgency = .Later
    @State private var userInput: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $userInput)
                
                Picker("Urgency", selection: $urgency) {
                    ForEach(Urgency.allCases) {
                        Text($0.description)
                    }
                }
                .pickerStyle(.menu)
                
                Section(header: Text("Select focus time")) {
                    CustomPicker()
                }
                Section(header: Text("Select break time")){
                    CustomPicker()
                }}
            Button(action: {
                if !userInput.isEmpty {
                    let reminder = Reminder(title: userInput, urgency: urgency, focusHour: 0, focusMinutes: 0, focusSeconds: 0, breakHour: 0, breakMinutes: 0, breakSeconds: 0, completed: false)
                    save(reminder)
                    dismiss()
                }
            },
                   label: {
                
                
                Text ("Done")
                    .foregroundStyle(userInput.isEmpty ? .gray : .blue)
                    .fontWeight(.bold)
                
                    .padding(.leading, 21)
                
            })
            .disabled(userInput.isEmpty)
            
            .navigationTitle("New reminder")
        }
    }
    
    func save(_ reminder: Reminder) {
        context.insert(reminder)
    }
    
    
}


#Preview {
    AddReminderView()
}
