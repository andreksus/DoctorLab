//
//  SearchBarView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(spacing: 12){
            Image("SearchImage")
                .resizable()
                .frame(width: 24, height: 24)
            Text("Search doctor or health issue")
            Spacer()
        }
        .padding(16)
        .background(Color("BackCategoryColor"))
        .cornerRadius(12)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
