//
//  SearchBarView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(spacing: Paddings.padding12){
            Image("SearchImage")
                .resizable()
                .frame(width: FrameSize.IconSize24, height: FrameSize.IconSize24)
            Text("Search doctor or health issue")
                .foregroundColor(Color("CategoryColor"))
                .font(.custom(FontPoppins.PoppinsLight, size: FontSize.SBarH1))
            Spacer()
        }
        .padding(Paddings.padding16)
        .background(Color("BackCategoryColor"))
        .cornerRadius(FrameSize.Radius12)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
