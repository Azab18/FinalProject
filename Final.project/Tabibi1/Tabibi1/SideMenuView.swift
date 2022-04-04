//
//  SideMenuView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1753968894, green: 0.1888557374, blue: 0.3257008195, alpha: 1)),Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack{
                SideMenuHeaderView()
                    .foregroundColor(.white)
                    .frame(height: 240)
               
                    SideMenuOptionView()
                
                Spacer()
            }
        }.navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarBackButtonHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
