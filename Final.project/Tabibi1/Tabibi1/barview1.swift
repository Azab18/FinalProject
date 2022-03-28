//
//  barview1.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 27/03/2022.
//

import SwiftUI

struct barview1: View {
    var body: some View {
        ZStack {
            Color("c1")
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                
              
                VStack(alignment: .leading) {
                    Text("Latest CoronaVirus \nNews:")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        .padding(.horizontal)
                    Link(destination: URL(string: "https://corona.e.gov.kw/en")!, label: {
                        HStack {
                            VStack(alignment: .leading){
                                Image("cov1")
                                    .resizable()
                                    .frame(width: 310, height: 200)
                                    .cornerRadius(20)
                                Text("MOH-KW Official Covid-19 updates")
                                    .font(.title3)
                                    .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                    .fontWeight(.bold)
                           
                        
                            }
                        }.frame(width: 320)
                            .padding()
                            .background()
                            .cornerRadius(20)
                            .padding(.trailing)
                        .padding(.leading)
                    })
                .padding()
                }
                Link(destination: URL(string: "https://www.bbc.com/news/world-asia-china-60893070")!, label: {
                    HStack {
                        VStack(alignment: .leading){
                            Image("cov2")
                                .resizable()
                                .frame(width: 310, height: 200)
                                .cornerRadius(20)
                            Text("Shanghai Covid: China announces largest city-wide lockdown")
                                .font(.title3)
                                .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                .fontWeight(.bold)
                       
                    
                        }
                    }.frame(width: 320)
                        .padding()
                        .background()
                        .cornerRadius(20)
                        .padding(.trailing)
                    .padding(.leading)
                })
                .padding()
                
                Link(destination: URL(string: "https://globalnews.ca/news/8709277/who-rejects-medicago-covid-vaccine-tobacco-industry/")!, label: {
                    HStack {
                        VStack(alignment: .leading){
                            Image("cov3")
                                .resizable()
                                .frame(width: 310, height: 200)
                                .cornerRadius(20)
                            Text("WHO rejects Medicago’s COVID-19 vaccine due to ties to tobacco giant")
                                .font(.title3)
                                .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                .fontWeight(.bold)
                       
                    
                        }
                    }.frame(width: 320)
                        .padding()
                        .background()
                        .cornerRadius(20)
                        .padding(.trailing)
                    .padding(.leading)
                })
                .padding()
                
                
                Link(destination: URL(string: "https://www.bbc.com/news/coronavirus")!, label: {
                    HStack {
                        VStack(alignment: .leading){
                            Image("cov4")
                                .resizable()
                                .frame(width: 310, height: 200)
                                .cornerRadius(20)
                            Text("Get full coverage of the Coronavirus pandemic including the latest news, analysis, advice and explainers from across the UK and around the world.")
                                .font(.title3)
                                .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                .fontWeight(.bold)
                       
                    
                        }
                    }.frame(width: 320)
                        .padding()
                        .background()
                        .cornerRadius(20)
                        .padding(.trailing)
                    .padding(.leading)
                })
                .padding()
            }
        }
    }
}

struct barview1_Previews: PreviewProvider {
    static var previews: some View {
        barview1()
    }
}
