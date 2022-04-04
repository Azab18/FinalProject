//
//  LIst.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 29/03/2022.
//

import SwiftUI

struct LIst: View {
    var body: some View {
        NavigationView{

            
            VStack(alignment: .leading) {
                
                NavigationLink {
                    MainPage()
                } label: {HStack(spacing: 16){
                    Image(systemName: "arrow.left")
                        .frame(width: 24, height: 24)
                    Text("Back")
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()

                }.foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    .padding()
                    
                }
                    
                Text("Doctors Contact:")
                    .padding()
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))

                
                List(contacts) { contact in
                    NavigationLink(destination: ContactPage(contact: contact)){
                        ExtractedView(contact: contact)
                    }.listStyle(SidebarListStyle())
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
            }
                
           
        }
        
        
       
    }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
}

struct LIst_Previews: PreviewProvider {
    static var previews: some View {
        LIst()
            
    }
}

struct ExtractedView: View {
    let contact: Contact
    var body: some View {
        
        HStack{
            Image(contact.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text("Dr: \(contact.name)")
                    .font(.custom("PlayfairDisplay-Bold", size: 20))
            
                Text(contact.pro)
                .font(.custom("PlayfairDisplay-Bold", size: 15))
            }
            Spacer()
            
        }
        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
        .padding()
        .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
        
    }
}
}
