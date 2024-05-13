//
//  FrameworkGridView.swift
//  A-Frameworks
//
//  Created by Makarov_Maxim on 11.03.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)

                        }

                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameWorkDetailView(framework: framework)
            }
        }
    }
}
#Preview {
    FrameworkGridView()
}


