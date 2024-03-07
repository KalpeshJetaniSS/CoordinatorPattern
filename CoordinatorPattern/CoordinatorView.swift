//
//  CoordinatorView.swift
//  CoordinatorPattern
//
//  Created by Kalpesh on 07/03/24.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path, root: {
            coordinator.build(page: .content)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
        })
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
