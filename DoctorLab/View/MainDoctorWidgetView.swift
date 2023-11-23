//
//  MainDoctorWidgetView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct MainDoctorWidgetView: View {
    var body: some View {
        VStack(){
            HStack{
                Image("MainDoctorImage")
                    .resizable()
                    .frame(width: 48, height: 48)
                VStack(alignment: .leading){
                    Text(mainDoctorData.name)
                        .foregroundStyle(Color.white)
                        .font(Font.custom("Poppins-Bold", size: 16))
                    Spacer()
                    Text(mainDoctorData.jobTitle)
                        .foregroundStyle(Color("GeneralDoctorColor"))
                        .font(Font.custom("Poppins-ExtraLight", size: 14))
                }
                .frame(height: 48)
                Spacer()
                Image("MainDoctorCardButtonImage")

            }
            .padding(.bottom, 16)
            Divider()
            HStack(){
                HStack{
                    Image("calendarImage")
                        .resizable()
                        .frame(width: 16, height: 16)
                    
                    Text("\(mainDoctorData.dayWeek), \(mainDoctorData.day), \(mainDoctorData.mounth)").foregroundStyle(Color.white)
                }
                Spacer()
                HStack{
                    Image("calendarImage")
                        .resizable()
                        .frame(width: 16, height: 16)
                    
                    Text("\(mainDoctorData.timeOfReceipt)").foregroundStyle(Color.white)
                }
                Spacer()
            }
            .padding(.top, 16)
        }
        .padding(20)
        .background(Color("MainDoctorCardBackgroundColor"))
        .cornerRadius(12)    }
}

struct MainDoctorWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        MainDoctorWidgetView()
    }
}
