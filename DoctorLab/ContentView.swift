//
//  ContentView.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(){
            HeaderView()
                .padding(.top, 20)
                .padding(.horizontal, 24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
