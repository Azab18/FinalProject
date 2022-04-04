//
//  SideMenuOptionView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct SideMenuOptionView: View {
    var body: some View {
        VStack {
    
            
            
            NavigationLink {
                HospitalView()
            } label: {        HStack(spacing: 16){
                Image(systemName: "cross.fill")
                    .frame(width: 24, height: 24)
                Text("Hospitals")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()

            }.foregroundColor(.white)
                .padding()
                
            }
            
            
            NavigationLink {
                UserView()
            } label: {HStack(spacing: 16){
                Image(systemName: "person.circle.fill")
                    .frame(width: 24, height: 24)
                Text("User's Account")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()

            }.foregroundColor(.white)
                .padding()
                
            }
            NavigationLink{
                LIst()
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "phone.circle.fill")
                        .frame(width: 24, height: 24)
                    Text("Contact With a Doctor")
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()
                    
                }.foregroundColor(.white)
                    .padding()            }
           
            HStack(spacing: 16){
                Image(systemName: "gear.circle.fill")
                    .frame(width: 24, height: 24)
                Text("Settings")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                
            }.foregroundColor(.white)
                .padding()
            
            
            
            
            NavigationLink{
                SOSView()
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "exclamationmark.shield.fill")
                        .frame(width: 24, height: 24)
                    Text("SOS")
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()

                }.foregroundColor(.white)
                    .padding()
                
                        }
            
           
            Spacer()
            
            NavigationLink {
                MainPage()
            } label: {
                HStack(spacing: 16){
                    Image(systemName: "arrow.left")
                        .frame(width: 40, height: 40)
                    Text("Back TO Main Menu")
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    .padding()
            }

            
        }
        
        
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView()
    }
}
