//
//  ContentView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 27/03/2022.
//

import SwiftUI
struct symptomps: Identifiable{
    var id = UUID()
    var image: String
    var dname: String
}
var symp = [

    symptomps(image: "sneezing", dname:"Sneezing" ),
    symptomps(image: "stm", dname:"Stomache Ache" ),
    symptomps(image: "cold", dname:"Cold" ),
    symptomps(image: "Fever", dname: "Fever")
]

struct doctorsinfo: Identifiable {
    var id = UUID()
    var name: String
    var specs: String
    var pic: String
    var wrkplc: String
}
var docs = [
    doctorsinfo(name: "Saeed Alshaty", specs: "Oral and maxillofacial", pic: "doc2", wrkplc: "Royal Hayat hsp."),
    doctorsinfo(name: "Mahmoud Khalil", specs: "Cardiology", pic: "doc3", wrkplc: "Royal Hayat hsp."),
    doctorsinfo(name: "Sara Ali", specs: "Orthopedic surgery", pic: "doc4", wrkplc: "Al-Salam hsp."),
    doctorsinfo(name: "Amr Tarek", specs: "cardiothoracic and orthopedic.", pic: "doc1", wrkplc: "Al-Salam hsp.")
]
struct ContentView: View {
    @State var selectedindex: Int = 0
    let catg = ["Private hospitals","Top rated Doctors","Symptomps","COVID-19 Pandemic latest news","Insurance Services"]
    var body: some View {
        
        NavigationView {
            logInView()
            
        }
        .navigationBarHidden(true)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
    
    
    
    
    
    
}
