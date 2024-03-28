//
//  FrameworkGridViewModel.swift
//  A-Frameworks
//
//  Created by Makarov_Maxim on 14.03.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
