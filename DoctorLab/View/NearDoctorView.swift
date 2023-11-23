//
//  NearDoctorView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct NearDoctorView: View {
    let docData: NearDoctorModel
    
    var body: some View {
        VStack(){
            HStack(){
                Image(docData.image)
                    .resizable()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading){
                    Text(docData.name)
                        .font(Font.custom("Poppins-Bold", size: 16))
                    Spacer()
                    Text(docData.jobTitle)
                        .foregroundStyle(Color("GeneralDoctorColor"))
                        .font(Font.custom("Poppins-ExtraLight", size: 14))
                }
                    .frame(height: 48)
                Spacer()
                HStack{
                    Image("DistanceImage")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("\(docData.distance) KM")
                }
            }
            Divider()
                .padding(.top , 16)
                .padding(.bottom, 16)
            HStack{
                HStack{
                    Image("YellowClockImage")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("\(docData.raiting) (\(docData.reviewsCount) reviews)")
                        .foregroundColor(Color("ReviewsTextColor"))
                }
                Spacer()
                HStack{
                    Image("BlueClockImage")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Open at \(docData.timeOfReceipt)")
                        .foregroundColor(Color("OpenAtTextColor"))
                }
                Spacer()
            }
        }
        .padding(20)
        //.background(Color.red)
        .cornerRadius(12)
    }
    
    init(docData: NearDoctorModel){
        self.docData = docData;
    }
}

struct NearDoctorView_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctorView(docData: docBrostito)
    }
}
