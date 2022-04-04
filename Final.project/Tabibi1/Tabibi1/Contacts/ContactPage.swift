//
//  ContactPage.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 30/03/2022.
//

import SwiftUI

struct ContactPage: View {
    let contact: Contact
    var body: some View {
        VStack {
            Image(contact.imagename)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
            .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            Form{
                Section{
                    HStack{
                        Text("Proffesion:")
                        Spacer()
                        Text(contact.pro)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 150)
                    }
                    
                    HStack{
                        Text("Phone:")
                        Spacer()
                        Text(contact.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 150)
                    }
                    HStack{
                        Text("E-Mail:")
                        Spacer()
                        Text(contact.mail)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 150)
                    }

                }
                
                Section{
                    Button(action: {print("Send a message")}){
                        Text("Send a message")
                    }
                    Button(action: {print("Call")}){
                        Text("Call")
                    }
                }
            }
            
            
        }
        
        
        
    }
}

struct ContactPage_Previews: PreviewProvider {
    static var previews: some View {
        ContactPage(contact: contacts[0])
            .padding(.top, 60)
    }
}
