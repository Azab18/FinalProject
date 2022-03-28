//
//  hospitalist.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 27/03/2022.
//

import SwiftUI

struct hospitalist: View {
    var body: some View {
        NavigationView{
            List(sdoctors) { smdoctor in
                NavigationLink(destination: SALAM_DOC(smdoctor: smdoctor)){
                    dctr1(smdoctor: smdoctor)
                }
                
            }
            .navigationBarTitle("Al-Salam Hospital")
        }
    }
    
}

struct hospitalist_Previews: PreviewProvider {
    static var previews: some View {
        hospitalist()
    }
}


struct dctr1: View {
    let smdoctor: sdoctor
    var body: some View {
        HStack {
            Image(smdoctor.spic)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text("Dr: \(smdoctor.sname)")
                    .font(.custom("PlayfairDisplay-Bold", size: 20))
                Text(smdoctor.sprfshn)
                
                
            }.foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
        }
    }
}
