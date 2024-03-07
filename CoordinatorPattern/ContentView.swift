//
//  ContentView.swift
//  CoordinatorPattern
//
//  Created by Kalpesh on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var coodinator : Coordinator
    
    var body: some View {
        VStack {
            Button("Detail"){
                coodinator.push(page: .details(title: "from content view"))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
