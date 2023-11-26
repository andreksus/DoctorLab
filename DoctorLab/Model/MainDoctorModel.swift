//
//  MainDoctorModel.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import Foundation

struct MainDoctorModel {
    let name: String;
    let jobTitle: String;
    
    let dayWeek: String;
    let day: Int;
    let mounth: String;
    
    let timeOfReceipt: String;
    
    init(
        name: String,
        jobTitle: String,
        dayWeek: String,
        day: Int,
        mounth: String,
        timeOfReceipt: String){
            self.name = name;
            self.jobTitle = jobTitle;
            self.dayWeek = dayWeek;
            self.day = day;
            self.mounth = mounth;
            self.timeOfReceipt = timeOfReceipt;
        }
}

//data
var mainDoctorData = MainDoctorModel(
    name: "Dr. Imran Syahir",
    jobTitle: "General Doctor",
    dayWeek: "Sunday",
    day: 12,
    mounth: "June",
    timeOfReceipt: "11:00 - 12:00 AM");
