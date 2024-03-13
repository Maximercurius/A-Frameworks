//
//  FrameWorkDetailView.swift
//  A-Frameworks
//
//  Created by Makarov_Maxim on 13.03.2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")

            }
        }
    }
}

#Preview {
    FrameWorkDetailView(framework: MockData.sampleFramework)
}
