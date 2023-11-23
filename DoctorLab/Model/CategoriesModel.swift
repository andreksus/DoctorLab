//
//  CategoriesModel.swift
//  DoctorLab
//
//  Created by student on 23.11.2023.
//

import Foundation

struct CategoryModel {
    let image: String;
    let title: String;
    
    init (image: String, title: String){
        self.image = image;
        self.title = title;
    }
}

//data
var categoryDataCovid = CategoryModel(
    image:"SunImage",
    title:"Covid 19");
var categoryDataDoctor = CategoryModel(
    image:"ProfileImage",
    title:"Doctor");
var categoryDataMedicine = CategoryModel(
    image:"MedicineImage",
    title:"Medicine");
var categoryDataHospital = CategoryModel(
    image:"HospitalImage",
    title:"Hospital");
