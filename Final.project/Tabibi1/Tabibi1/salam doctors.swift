//
//  salam doctors.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 27/03/2022.
//

import Foundation
import SwiftUI


struct sdoctor: Identifiable {
    
    let spic: String
    let sname: String
    let sprfshn: String
    let id = UUID()
    
}


let sdoctors = [
    sdoctor(spic: "doc1", sname: "Amr Tarek", sprfshn: "cardiothoracic and orthopedic"),
    sdoctor(spic: "sd1", sname: "Smaira Mahmoud", sprfshn: "Dermatologist"),
    sdoctor(spic: "sd2", sname: "Farha Mohamed", sprfshn: "Cardiovascular Surgeon"),
    sdoctor(spic: "sd5", sname: "Malak Mohamed", sprfshn: "Obstetrician and \ngynecologist"),
    sdoctor(spic: "sd3", sname: "Khalaf Alqahtany", sprfshn: "Neurologist"),
    sdoctor(spic: "sd4", sname: "Hakim Khalifa", sprfshn: "Radiologist"),
    sdoctor(spic: "sd6", sname: "Ziad Azab", sprfshn: "Anesthesiologist"),
    sdoctor(spic: "sd7", sname: "Steven Amgad", sprfshn: "Cardiologist")
]

