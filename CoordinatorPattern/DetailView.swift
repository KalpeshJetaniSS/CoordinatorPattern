//
//  DetailView.swift
//  CoordinatorPattern
//
//  Created by Kalpesh on 07/03/24.
//

import SwiftUI

struct DetailView: View {
    var title : String
    var body: some View {
        Text("\(title)")
    }
}

#Preview {
    DetailView(title: "Detail Page!")
}
