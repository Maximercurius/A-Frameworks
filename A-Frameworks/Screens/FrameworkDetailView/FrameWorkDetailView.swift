//
//  FrameWorkDetailView.swift
//  A-Frameworks
//
//  Created by Makarov_Maxim on 13.03.2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameWorkDetailView(framework: MockData.sampleFramework)
}
