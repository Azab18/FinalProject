//
//  MainPage.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct MainPage: View {
    @State private var isShowing = false
    @State var search = ""
    @State var selectedindex: Int = 0
    let catg = ["Private hospitals","Top rated Doctors","Symptomps","COVID-19 Pandemic latest news","Insurance Services"]
    var body: some View {
        
        NavigationView {
            HomeView()
            
            
            
            
            
            
            
            
        }.navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
    }
}























struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .preferredColorScheme(.light)
    }
}
struct Topbarview: View {
    var body: some View {
        HStack{
            
            Button(action:{}) {
                Image(systemName: "list.triangle")
                    .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                    .padding()
                    .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                    .cornerRadius(10.0
                    ) }
            Spacer()
            
            Image("1")
                .resizable()
                .frame(width: 250, height: 80)
            
            
        }.padding(.horizontal)
    }
}

struct MainSlogan: View {
    var body: some View {
        Text("Not feeling \ngood?...")
            .font(.custom("PlayfairDisplay-Bold", size: 30))
            .foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
        + Text("\nwe got you!")
            .font(.custom("PlayfairDisplay-Bold", size: 40))
    }
}



struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)): Color.white)
            
            if (isActive)  {
                Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1))
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }.padding(.trailing)
    }
}

struct HospitalCard: View {
    let image: Image
    var body: some View {
        VStack{
            image
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
        
    }
}





struct HomeView: View {
    @State var search = ""
    @State var selectedindex: Int = 0
    let catg = ["Private hospitals","Top rated Doctors","Symptomps","COVID-19 Pandemic latest news","Insurance Services"]
    var body: some View {
        ZStack{
            
            Color("c1")
                .ignoresSafeArea()
            
            ScrollView() {
                
                
                
                
                NavigationLink {
                    SideMenuView()
                } label: {
                    Image("1a")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width: 380, height: 110)
                }
                
                
                VStack(alignment: .leading) {
                    
                    
                    
                    
                    Text("  Not feeling  \n  good?...")
                        .font(.custom("PlayfairDisplay-Bold", size: 30))
                        .foregroundColor(Color("c2"))
                    + Text("\n we got you!")
                        .font(.custom("PlayfairDisplay-Bold", size: 40))
                        .foregroundColor(Color("c2"))
                    
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField("Hospital Name", text: $search)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0 ..< catg.count) { i in
                                CategoryView(isActive: i == selectedindex, text: catg[i])
                                    .onTapGesture {
                                        selectedindex = i
                                    }
                            }
                        }.padding()
                    }
                    Text("Top Rated Hospitals:")
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
                    
                    
                    Text("Top Rated Doctors:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        
                        
                        
                        //doctorsinfo(name: "Saeed Alshaty", specs: "Oral and maxillofacial", pic: "doc2", wrkplc: "Royal Hayat hsp."),
                        ///                            doctorsinfo(name: "Mahmoud Khalil", specs: "Cardiology", pic: "doc3", wrkplc: "Royal Hayat hsp."),
                        //                         doctorsinfo(name: "Sara Ali", specs: "Orthopedic surgery", pic: "doc4", wrkplc: "Al-Salam hsp."),
                        //                       doctorsinfo(name: "Amr Tarek", specs: "cardiothoracic and orthopedic.", pic: "doc1", wrkplc: "Al-Salam hsp.")
                        
                        
                        
                        
                        HStack{
                            
                            HStack {
                                NavigationLink(destination: home_screen(), label: {
                                    HStack{
                                        
                                        
                                        VStack{
                                            Image("doc2")
                                                .resizable()
                                                .frame(width: 210, height: 200)
                                                .cornerRadius(20)
                                            Text("Dr: Saeed Alshaty")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                            Text("Oral and maxillofacial")
                                                .font(.title3)
                                                .fontWeight(.bold)
                                            
                                            
                                            
                                            Text("Royal Hayat hsp.")
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
                                }).navigationBarHidden(true)
                                    .foregroundColor(.black)
                            }
                            
                            
                            
                            
                            
                            HStack{
                                
                                
                                VStack{
                                    Image("doc1")
                                        .resizable()
                                        .frame(width: 210, height: 200)
                                        .cornerRadius(20)
                                    Text("Dr: Amr Tarek")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Text("cardiothoracic and orthopedic.")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    
                                    
                                    
                                    Text("Al-Salam hsp.")
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
                            HStack{
                                
                                
                                VStack{
                                    Image("doc3")
                                        .resizable()
                                        .frame(width: 210, height: 200)
                                        .cornerRadius(20)
                                    Text("Dr: Mahmoud Khalil")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Text("Cardiology")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    
                                    
                                    
                                    Text("Royal Hayat hsp.")
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
                            HStack{
                                
                                
                                VStack{
                                    Image("doc4")
                                        .resizable()
                                        .frame(width: 210, height: 200)
                                        .cornerRadius(20)
                                    Text("Dr: Sara Ali")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    Text("Orthopedic surgery")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                    
                                    
                                    
                                    Text("Sidra Clinic")
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
                            
                            
                        }.padding(.vertical)
                    }
                    
                    
                    Text("Symptomps:")
                        .font(.custom("PlayfairDisplay-Bold", size: 26))
                        .padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        
                        HStack{
                            
                            
                            
                            
                            
                            NavigationLink(destination: symptomps1(), label: {
                                HStack{
                                    
                                    
                                    VStack{
                                        Image("cough")
                                            .resizable()
                                            .frame(width: 210, height: 200)
                                            .cornerRadius(20)
                                        Text("Cough")
                                            .font(.title3)
                                            .fontWeight(.bold)
                                        
                                        
                                    }
                                }.frame(width: 220)
                                    .padding()
                                    .background()
                                    .cornerRadius(20)
                                    .padding(.trailing)
                                    .padding(.leading)
                            }).navigationBarHidden(true)
                                .foregroundColor(.black)
                            
                            
                            
                            
                            
                            
                            
                            
                            ForEach(symp, id: \.id) { sy in
                                
                                VStack{
                                    Image(sy.image)
                                        .resizable()
                                        .frame(width: 210, height: 200)
                                        .cornerRadius(20)
                                    Text(sy.dname)
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
                        Spacer(minLength: 50)
                        
                    }.padding(.vertical)
                    
                    
                    
                    
                    
                    
                }
            }
            
            
            //                facemask.fill
            //                navbar(bimage: Image(systemName: "house.fill")) {}
            //                    navbar(bimage: Image(systemName: "cross.vial")) {}
            //                    navbar(bimage: Image(systemName: "phone.circle.fill")) {}
            //                    navbar(bimage: Image(systemName: "person.circle.fill")) {}
            
            HStack{
                
                NavigationLink(destination: HospitalView(), label: {Image(systemName:"cross.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .frame(maxWidth: .infinity)
                })
                NavigationLink(destination: LIst(), label: {Image(systemName:"phone.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .frame(maxWidth: .infinity)
                })
                NavigationLink(destination: UserView(), label: {Image(systemName:"person.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .frame(maxWidth: .infinity)
                })
                NavigationLink(destination: barview1(), label: {Image(systemName:"facemask.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .frame(maxWidth: .infinity)
                })
                NavigationLink(destination: SideMenuView(), label: {Image(systemName:"list.bullet.rectangle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1)))
                        .frame(maxWidth: .infinity)
                })
            }.padding()
                .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                .clipShape(Capsule())
                .padding(.horizontal)
                .shadow(color: Color.black.opacity(1), radius: 8, x: 6, y: 6)
                .frame(maxHeight: .infinity, alignment: .bottom)
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}
