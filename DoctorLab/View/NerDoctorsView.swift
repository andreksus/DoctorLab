//
//  NerDoctorsView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct NearDoctorsView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Near Doctor")
                .font(.custom(FontPoppins.PoppinsBold, size: FontSize.MDWidgetH1))
                .frame(alignment: .leading)
                .padding(.bottom, Paddings.padding16)
            VStack{
                NearDoctorView(docData: docBrostito)
                NearDoctorView(docData: docSyahir)
            }
        }
    }
}

struct NerDoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorsView()
    }
}
