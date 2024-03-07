//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Kalpesh on 07/03/24.
//

import Foundation
import SwiftUI

enum Page : Hashable {
    case content
    case details(title:String)
}

class Coordinator : ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(page : Page){
        path.append(page)
    }
    
    @ViewBuilder
    func build(page : Page) -> some View {
        switch page {
        case .content:
            ContentView()
        case .details(let title):
            DetailView(title: title)
        }
    }
}
