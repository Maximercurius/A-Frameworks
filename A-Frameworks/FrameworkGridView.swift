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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.colums) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }

                    }
                }
            }
            .navigationTitle("🍏 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameWorkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}
#Preview {
    FrameworkGridView()
}


