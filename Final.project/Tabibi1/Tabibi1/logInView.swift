//
//  SwiftUIView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct logInView: View {
    @State private var login = ""
    @State private var pss = ""
    @State private var WrongUsername = 0
    @State private var WrongPassword = 0
    @State private var Showcv = false
    var body: some View {
        NavigationView{
            ZStack {
                Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))
                    .ignoresSafeArea()
                VStack {
                    Text("Welcome to Tabibi")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    Text("Please Sign In to proceed")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    Image("lg1")
                        .resizable()
                        .frame(width: 300, height: 400)
                       
                    TextField("Enter your Username here..", text: $login)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(WrongUsername))
                    SecureField("Enter your Password here..", text: $pss)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(WrongPassword))
                        
                    Button("Log In") {
                        atu(login: login, pss: pss)
                        
                    } .frame(width: 100)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        .cornerRadius(20)
                        .padding(.trailing)
                        .padding(.leading)
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                    Spacer(minLength: 100)
                    
                    
                    
                    NavigationLink(destination: MainPage(), isActive: $Showcv){
                        EmptyView()
                    }
                }
            }
            
            
        }
        
    }
    
    func atu(login: String, pss: String) {
        if login.lowercased() == "ziad2022" {
            WrongUsername = 0
            if pss.lowercased() == "2020" {
                WrongPassword = 0
                Showcv = true
            } else {
                WrongPassword = 2
            }
        } else {
            WrongUsername = 2
        }
    }
}

struct logInView_Previews: PreviewProvider {
    static var previews: some View {
        logInView()
    }
}
