//
//  home screen.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 27/03/2022.
//

import SwiftUI

struct home_screen: View {
    var body: some View {
        VStack{
            docview()
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct home_screen_Previews: PreviewProvider {
    static var previews: some View {
        home_screen()
    }
}

struct docdisc: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Dr: Saeed Alshaty")
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            
            Text("Certifications And Specality:")
                .fontWeight(.bold)
                .padding(.vertical, 8)
            Text("Dr.Saeed is an Oral and maxillofacial surgeon in Royal Hayat Hospital. he also Has several phd's in different matures such as: \nPHD in Oral and maxillofacial surgery \nPHD in dentistery \nMaster class from Oxford Uni campus in preclinical medicine")
            HStack{
                VStack(alignment: .leading){
                    Text("Contact Details:")
                        .fontWeight(.semibold)
                    Text("Email:")
                        .opacity(0.6)
                    Text("sample@mail.com")
                        .opacity(0.6)
                    Text("Phone Number:")
                        .opacity(0.6)
                    Text("90007160")
                        .opacity(0.6)
                    Text("Hospital Hotline:")
                        .opacity(0.6)
                    Text("16160")
                        .opacity(0.6)
                }
                
            }.padding(.vertical)
        }
        .padding()
        .padding(.top)
        .background(Color.white)
        .cornerRadius(40)
    }
}

struct docview: View {
    @State private var AlertIsPresented = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))
                .ignoresSafeArea()
            ScrollView{
                Image("doc2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack(alignment: .leading){
                    Text("Dr: Saeed Alshaty")
                        .font(.title)
                        .fontWeight(.bold)
                    HStack(spacing: 4) {
                        ForEach(0 ..< 5) { item in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        }
                        Text("(4.9)")
                            .opacity(0.5)
                            .padding(.leading, 8)
                        Spacer()
                    }
                    
                    Text("Certifications And Specality:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("Dr.Saeed is an Oral and maxillofacial surgeon in Royal Hayat Hospital. he also Has several phd's in different matures such as: \nPHD in Oral and maxillofacial surgery \nPHD in dentistery \nMaster class from Oxford Uni campus in preclinical medicine")
                    HStack{
                        VStack(alignment: .leading){
                            Text("Contact Details:")
                                .fontWeight(.semibold)
                            Text("Email:")
                                .opacity(0.6)
                            Text("sample@mail.com")
                                .opacity(0.6)
                            Text("Phone Number:")
                                .opacity(0.6)
                            Text("90007160")
                                .opacity(0.6)
                            Text("Hospital Hotline:")
                                .opacity(0.6)
                            Text("16160")
                                .opacity(0.6)
                        }
                        
                    }.padding(.vertical)
                    Spacer(minLength: 50)
                }
                .padding()
                .padding(.top)
                .background(Color.white)
                .cornerRadius(40)
                .offset(y: -40)
            }.edgesIgnoringSafeArea(.top)
            HStack{
                Text("Royal Hayat Hospital")
                    .font(.custom("PlayfairDisplay-Bold", size: 20))
                    .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                
                Spacer()
                Button(action: {
                    self.AlertIsPresented = true
                }, label:{
                    Text("Book Now")
                        .padding()
                        .padding(.horizontal)
                        .background(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .cornerRadius(10.0)
                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                }).alert(isPresented: $AlertIsPresented, content: {
                    Alert(title: Text("Apointment booked successfully"), message: Text("We will contact you soon!"), dismissButton: .default(Text("OK")))
                })
            }
            .padding()
            .padding(.horizontal)
            .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
            .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}
