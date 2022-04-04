//
//  HospitalView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 02/04/2022.
//

import SwiftUI

struct HospitalView: View {
    var body: some View {
        NavigationView {
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
                .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    
                Text("Hospitals :")
                    .padding()
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    

                
                ExtractedView()
        } .background(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
//
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
           
        
}

struct HospitalView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalView()
    }
}
}

struct ExtractedView: View {
    var body: some View {
        ZStack{
            
            Color("c1")
                .ignoresSafeArea()
            
            ScrollView() {
                
                
                
                
                
                
                
                VStack(alignment: .leading) {
                    
                    
                    
                    Text("Top Hospitals Near You:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            HStack{
                                NavigationLink(destination: hospitalist(), label: {  VStack{
                                    Image("hos1")
                                        .resizable()
                                        .frame(width: 210, height: 200)
                                        .cornerRadius(20)
                                    Text("Al-Salam int. Hospital")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    HStack (spacing: 2) {
                                        
                                        ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        }
                                        Spacer()
                                        
                                        Text("SALMYA")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                            .font(.title3)
                                            .fontWeight(.bold)
                                    }
                                    
                                }.frame(width: 220)
                                        .padding()
                                        .background()
                                        .cornerRadius(20)
                                        .padding(.trailing)
                                    .padding(.leading)})
                                    .foregroundColor(.black)
                            }
                            
                            
                            
                            
                            VStack{
                                Image("hos2")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("INTL. Hospital")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 4) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("JABRIYA")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            VStack{
                                Image("hos3")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Dar Al Shifa Hospital")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 4) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("HAWALY")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                        }
                    } .padding(.vertical)
                    
                    
                    
                    Text("Best Dentestry Clinics:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            
                            VStack{
                                Image("hos5")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Sidra Clinic")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 3) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("KUWAIT CT")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            
                            VStack{
                                Image("hos4")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Royal Hayat Hospital")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("HAWALY")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                        }
                    } .padding(.vertical)
                    
                    
                    
                    
                    Text("NON-Fee hospitals:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            
                            
                            VStack{
                                Image("hs2")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("AL-Sabah hos.")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 5) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("KUWAIT CT")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            VStack{
                                Image("h2")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Al-Razi hos.")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 4) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("Shuwaikh")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            VStack{
                                Image("hs3")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Mubarak Al-Kabir hos.")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 4) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("Jabrya")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            
                        }
                    } .padding(.vertical)
                    
                    
                    
                    Text("Corona-Virus Field clinics:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            VStack{
                                Image("hs1")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Kabad Field Clinic")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 3) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("Kabad")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            
                            VStack{
                                Image("h1")
                                    .resizable()
                                    .frame(width: 210, height: 200)
                                    .cornerRadius(20)
                                Text("Mishref Field Hospital")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                HStack (spacing: 2) {
                                    
                                    ForEach(0 ..< 4) { item in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    }
                                    Spacer()
                                    
                                    Text("Mishref")
                                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                                
                            }.frame(width: 220)
                                .padding()
                                .background()
                                .cornerRadius(20)
                                .padding(.trailing)
                                .padding(.leading)
                            
                            
                            
                        }
                    } .padding(.vertical)
                    
                }
                
            }
            
        }
    }
}
