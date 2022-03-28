//
//  SwiftUIView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct logInView: View {
    @State var login = ""
    @State var pss = ""
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
                       
                    TextField("Enter your E-mail here..", text: $login)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                    TextField("Enter your Password here..", text: $pss)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding()
                    NavigationLink(destination: MainPage(), label: {
                        Text("Log In")
                            .frame(width: 100)
                            .padding()
                            .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                            .cornerRadius(20)
                            .padding(.trailing)
                            .padding(.leading)
                    }).navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                    
                }
            }
            
            
        }
        
    }
}

struct logInView_Previews: PreviewProvider {
    static var previews: some View {
        logInView()
    }
}
