//
//  CategoryView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct CategoryView: View {
    let image: String;
    let title: String;
    
    var body: some View {
        VStack(spacing: 8){
            Image(image)
                .resizable()
                .frame(width: 24, height: 24)
                .padding(24)
                .background(Color("BackCategoryColor"))
                .clipShape(Circle())
            Text("\(title)")
        }
        
    }
    
    init(image: String, title: String){
        self.image = image;
        self.title = title;
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(image: "HospitalImage", title: "Covid19")
    }
}
