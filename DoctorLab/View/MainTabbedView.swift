//
//  MainTabbedView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

extension MainTabbedView{
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
        HStack(spacing: Paddings.padding10){
            Spacer()
            Image(imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? Color("BackTabIcon") : .gray)
                .frame(width: FrameSize.IconSize24, height: FrameSize.IconSize24)
            if isActive{
                Text(title)
                    .font(.system(size: FontSize.MDWidgetH2))
                    .foregroundColor(isActive ? Color("BackTabIcon") : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? .infinity : FrameSize.ImageSize60, height: FrameSize.ImageSize60)
        .background(isActive ? Color("BackTabIcon").opacity(0.2) : .clear)
        .cornerRadius(FrameSize.Radius12)
    }
}

struct MainTabbedView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        ZStack{
            HStack{
                ForEach((TabbedItems.allCases), id: \.self){ item in
                    Button{
                        selectedTab = item.rawValue
                    } label: {
                        CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                    }
                }
            }
            .padding(Paddings.padding12)
        }
        .frame(height: FrameSize.ImageSize56)
        .cornerRadius(FrameSize.RadiusSize35)
        .padding(.horizontal, Paddings.padding25)
    }
}

struct MainTabbedView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabbedView()
    }
}
