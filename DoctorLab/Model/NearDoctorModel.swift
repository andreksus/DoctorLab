//
//  NearDoctorModel.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import Foundation

struct NearDoctorModel {
    let image: String;
    let name: String;
    let jobTitle: String;
    let distance: String;
    let raiting: String;
    let reviewsCount: Int;
    let timeOfReceipt: String;
    
    init(
        image: String,
        name: String,
        jobTitle: String,
        distance: String,
        raiting: String,
        reviewsCount: Int,
        timeOfReceipt: String){
            self.image = image;
            self.name = name;
            self.jobTitle = jobTitle;
            self.distance = distance;
            self.raiting = raiting;
            self.reviewsCount = reviewsCount;
            self.timeOfReceipt = timeOfReceipt;
    }
}

//data
var docBrostito = NearDoctorModel(
    image: "BrostitoImage",
    name: "Dr.Joseph Brostito",
    jobTitle: "Dental Specialist",
    distance: "1.2",
    raiting: "4,8",
    reviewsCount: 120,
    timeOfReceipt: "17.00"
)

var docSyahir = NearDoctorModel(
    image: "MainDoctorImage",
    name: "Dr.Imran Syahir",
    jobTitle: "General Doctor",
    distance: "1.2",
    raiting: "4,9",
    reviewsCount: 150,
    timeOfReceipt: "11.00"
)
