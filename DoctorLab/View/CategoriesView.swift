//
//  CategoriesView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        HStack(spacing: Paddings.padding13){
            CategoryView(image: categoryDataCovid.image, title: categoryDataCovid.title)
            CategoryView(image: categoryDataDoctor.image, title: categoryDataDoctor.title)
            CategoryView(image: categoryDataMedicine.image, title: categoryDataMedicine.title)
            CategoryView(image: categoryDataHospital.image, title: categoryDataMedicine.title)
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
