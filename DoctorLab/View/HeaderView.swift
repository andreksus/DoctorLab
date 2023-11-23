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
                    
                Text("Hi \(userData.username)")
                    .font(.system(size: 20))
            }
            Spacer()
            Image("HeaderImage")
                .resizable()
                .frame(width: 56, height: 56)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
