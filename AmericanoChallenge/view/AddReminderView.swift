import SwiftUI

struct AddReminderView: View {
    
    @Environment(\.dismiss) var dismiss
  
    @State private var selectedUrgency = "Sooner"
    let urgency = ["Later", "Sooner"]
    @State private var userInput: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $userInput)
                
                Picker("Urgency", selection: $selectedUrgency) {
                    ForEach(urgency, id: \.self) {
                        Text($0)
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
                    dismiss()
                },
                       label: {
                  

                        Text ("Done")
                            .foregroundStyle(.blue)
                            .fontWeight(.bold)
                    
                    .padding(.leading, 21)
                    
                })
                
                .navigationTitle("New reminder")
            }
        }
    }
#Preview {
    AddReminderView()
}
