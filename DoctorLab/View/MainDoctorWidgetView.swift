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
                    .frame(width: FrameSize.ImageSize48, height:  FrameSize.ImageSize48)
                VStack(alignment: .leading){
                    Text(mainDoctorData.name)
                        .foregroundStyle(Color.white)
                        .font(Font.custom(FontPoppins.PoppinsBold, size: FontSize.MDWidgetH1))
                    Spacer()
                    Text(mainDoctorData.jobTitle)
                        .foregroundStyle(Color("GeneralDoctorColor"))
                        .font(Font.custom(FontPoppins.PoppinsLight, size: FontSize.MDWidgetH2))
                }
                .frame(height: FrameSize.ImageSize48)
                Spacer()
                Image("MainDoctorCardButtonImage")

            }
            .padding(.bottom, Paddings.padding16)
            Divider()
            HStack(){
                HStack{
                    Image("CalendarImage")
                        .resizable()
                        .frame(width: FrameSize.IconSize16, height: FrameSize.IconSize16)
                    
                    Text("\(mainDoctorData.dayWeek), \(mainDoctorData.day), \(mainDoctorData.mounth)").foregroundStyle(Color.white)
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.MDWidgetH3))
                }
                Spacer()
                HStack{
                    Image("ClockImage")
                        .resizable()
                        .frame(width: FrameSize.IconSize16, height: FrameSize.IconSize16)
                    
                    Text("\(mainDoctorData.timeOfReceipt)").foregroundStyle(Color.white)
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.MDWidgetH3))
                }
                Spacer()
            }
            .padding(.top, Paddings.padding16)
        }
        .padding(Paddings.padding20)
        .background(Color("MainDoctorCardBackgroundColor"))
        .cornerRadius(FrameSize.Radius12)    }
}

struct MainDoctorWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        MainDoctorWidgetView()
    }
}
