//
//  contact file.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 29/03/2022.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    let imagename: String
    let name: String
    let pro: String
    let phone: String
    let mail: String
    let id = UUID()
}

let contacts = [
    Contact(imagename: "doc1", name: "Amr Gamal", pro: "Dermatologist", phone: "90880809", mail: "samplemail.com"),
    Contact(imagename: "doc2", name: "Mohamed Azab", pro: "Cardiovascular Surgeon", phone: "95943543", mail: "samplemail.com"),
    Contact(imagename: "doc3", name: "Eyad Azab", pro: "Obstetrician and \ngynecologist", phone: "95465466", mail: "samplemail.com"),
    Contact(imagename: "doc4", name: "Sara hassan", pro: "cardiothoracic and orthopedic", phone: "95634564", mail: "samplemail.com"),
    Contact(imagename: "sd1", name: "Amr Tarek", pro: "Radiologist", phone: "90594046", mail: "samplemail.com"),
    Contact(imagename: "sd2", name: "Smaira Mahmoud", pro: "Neurologist", phone: "96547676", mail: "samplemail.com"),
    Contact(imagename: "sd3", name: "Farha Mohamed", pro: "cardiothoracic and orthopedic", phone: "95467567", mail: "samplemail.com"),
    Contact(imagename: "sd4", name: "Malak Mohamed", pro: "Anesthesiologist", phone: "97674567", mail: "samplemail.com"),
    Contact(imagename: "sd5", name: "Khalaf Alqahtany", pro: "cardiothoracic and orthopedic", phone: "96546577", mail: "samplemail.com"),
    Contact(imagename: "sd6", name: "Hakim Khalifa", pro: "Anesthesiologist", phone: "96576574", mail: "samplemail.com"),
    Contact(imagename: "sd7", name: "Ziad Azab", pro: "cardiothoracic and orthopedic", phone: "96547567", mail: "samplemail.com")
]

