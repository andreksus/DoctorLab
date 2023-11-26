//
//  UserModel.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import Foundation

struct UserModel {
    let username: String;
    
    init(user: String){
        self.username = user;
    }
}

//data
var userData = UserModel(user: "James")
