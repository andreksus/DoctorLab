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
        VStack(spacing: Paddings.padding8){
            Image(image)
                .resizable()
                .frame(width: FrameSize.IconSize24, height: FrameSize.IconSize24)
                .padding(Paddings.padding24)
                .background(Color("BackCategoryColor"))
                .clipShape(Circle())
            Text("\(title)")
                .foregroundColor(Color("CategoryColor"))
                .font(.custom(FontPoppins.PoppinsLight, size: FontSize.CategoryH1))
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
