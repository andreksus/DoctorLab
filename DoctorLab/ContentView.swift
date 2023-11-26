//
//  ContentView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(){
                HeaderView()
                    .padding(.top, Paddings.padding20)
                    .padding(.horizontal, Paddings.padding24)
                MainDoctorWidgetView()
                    .padding(.top, Paddings.padding32)
                    .padding(.horizontal, Paddings.padding24)
                SearchBarView()
                    .padding(.horizontal, Paddings.padding24)
                    .padding(.top, Paddings.padding20)
                CategoriesView()
                    .padding(.top, Paddings.padding24)
                NearDoctorsView()
                    .padding(.top, Paddings.padding32)
                    .padding(.horizontal, Paddings.padding24)
            }
            MainTabbedView()
                .padding(.top,Paddings.padding24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
