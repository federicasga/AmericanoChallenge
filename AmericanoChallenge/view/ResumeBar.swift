//
//  SwiftUIView.swift
//  reminderapp
//
//  Created by Federica Sgammato on 10/12/24.
//

import SwiftUI

struct ResumeBar: View {
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 20.0)
                .foregroundStyle(.tertiary)
                .frame(width: 337 ,height: 116)
                
            
            HStack{
                VStack{
                    Text ("5")
                        .foregroundStyle(.blue)
                        .font(.title)
                        .bold()
                    Text ("Tasks to complete")
                        .frame(width: 70)
                        .font(.caption2)
                    }
                .padding()
                VStack{
                    Text ("00:00")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.blue)
            
                    Text ("Elapsed Time")
                        .frame(width: 70)
                        .font(.caption2)
                        .multilineTextAlignment(.center)
                    
                }
                .padding()
                VStack{
                    Text ("0")
                        .foregroundStyle(.blue)
                        .font(.title)
                        .bold()
                    Text ("Completed tasks")
                        .frame(width: 70)
                        .font(.caption2)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            
        }
    }
}


#Preview {
    ResumeBar()
}

