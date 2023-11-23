//
//  HeaderView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading){
                Text("Hello,")
                    .foregroundStyle(Color("HelloColor"))
                    .font(.custom(FontPoppins.PoppinsLight, size: FontSize.HeaderH1))
                Text("Hi \(userData.username)")
                    .font(.custom("Poppins-Bold", size: FontSize.HeaderH2))
            }
            Spacer()
            Image("HeaderImage")
                .resizable()
                .frame(width: FrameSize.ImageSize56, height: FrameSize.ImageSize56)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
