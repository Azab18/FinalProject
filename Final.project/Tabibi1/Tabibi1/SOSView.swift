//
//  SOSView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 01/04/2022.
//

import SwiftUI

struct SOSView: View {
    @State private var aisp = false
    @State private var aisp1 = false
    @State private var aisp2 = false
    var body: some View {
        NavigationView{
            ZStack {
                Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))
                    .ignoresSafeArea()
                VStack{
                    Button(action: {
                        self.aisp = true
                    }, label: {
                        Text("POLICE")
                            .foregroundColor(Color(#colorLiteral(red: 0.75, green: 0.8410000205, blue: 0.9539999962, alpha: 1)))
                            .bold()
                            .font(.system(size: 40))
                    })
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        .cornerRadius(10)
                        .alert(isPresented: $aisp, content:{ Alert(title: Text("SOS Request"), message: Text("Are You Sure That You Want To Call THE POLICE?"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("YES")))})
                        .padding()
                    
                    Button(action: {
                        self.aisp1 = true
                    }, label: {
                        Text("MEDICAL SUPPORT")
                            .foregroundColor(Color(#colorLiteral(red: 0.75, green: 0.8410000205, blue: 0.9539999962, alpha: 1)))
                            .bold()
                            .font(.system(size: 20))
                    })
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        .cornerRadius(10)
                        .alert(isPresented: $aisp1, content:{ Alert(title: Text("SOS Request"), message: Text("Are You Sure That You Want To Call an AMBULANCE?"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("YES")))})
                        .padding()
                    
                    Button(action: {
                        self.aisp2 = true
                    }, label: {
                        Text("THE FIRE SERVICES")
                            .foregroundColor(Color(#colorLiteral(red: 0.75, green: 0.8410000205, blue: 0.9539999962, alpha: 1)))
                            .bold()
                            .font(.system(size: 20))
                    })
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                        .cornerRadius(10)
                        .alert(isPresented: $aisp2, content:{ Alert(title: Text("SOS Request"), message: Text("Are You Sure That You Want To Call THE FIRE SERVICES?"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("YES")))})
                        .padding()
                    
                        
                         
                         NavigationLink {
                             MainPage()
                         } label: {
                             HStack(spacing: 16){
                           
                                     
                                 Text("Back TO Main Menu")
                                     .font(.system(size: 15, weight: .semibold))
                                     .frame(alignment: .center)
                                 
                             }.foregroundColor(Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)))
                                
                         }
                    
                    
                }.navigationTitle("Emergency Services:")
                
            }
        }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        
        
    }
}

struct SOSView_Previews: PreviewProvider {
    static var previews: some View {
        SOSView()
    }
}
