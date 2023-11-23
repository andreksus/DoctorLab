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
                    .frame(width: FrameSize.ImageSize48, height: FrameSize.ImageSize48)
                VStack(alignment: .leading){
                    Text(docData.name)
                        .font(.custom(FontPoppins.PoppinsBold, size: FontSize.NDoctorH1))
                    Spacer()
                    Text(docData.jobTitle)
                        .foregroundStyle(Color("CategoryColor"))
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.NDoctorH2))
                }
                .frame(height: FrameSize.ImageSize48)
                Spacer()
                HStack{
                    Image("DistanceImage")
                        .resizable()
                        .frame(width: FrameSize.IconSize16, height: FrameSize.IconSize16)
                    Text("\(docData.distance) KM")
                        .foregroundColor(Color("CategoryColor"))
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.NDoctorH2))
                }
            }
            Divider()
                .padding(.top , Paddings.padding16)
                .padding(.bottom, Paddings.padding16)
            HStack{
                HStack{
                    Image("YellowClockImage")
                        .resizable()
                        .frame(width: FrameSize.IconSize20, height: FrameSize.IconSize20)
                    Text("\(docData.raiting) (\(docData.reviewsCount) reviews)")
                        .foregroundColor(Color("ReviewsTextColor"))
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.MDWidgetH3))
                }
                Spacer()
                HStack{
                    Image("BlueClockImage")
                        .resizable()
                        .frame(width: FrameSize.IconSize20, height: FrameSize.IconSize20)
                    Text("Open at \(docData.timeOfReceipt)")
                        .foregroundColor(Color("OpenAtTextColor"))
                        .font(.custom(FontPoppins.PoppinsLight, size: FontSize.MDWidgetH3))
                }
                Spacer()
            }
        }
        .padding(Paddings.padding20)
        //.background(Color.red)
        .cornerRadius(FrameSize.Radius12)
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
