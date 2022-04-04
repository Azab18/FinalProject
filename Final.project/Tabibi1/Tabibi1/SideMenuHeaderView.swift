//
//  SideMenuHeaderView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
        Image("pat")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
       
            Text("Ali Mohamed")
                .font(.system(size: 24, weight: .semibold))
            Text("@User1")
                .font(.system(size: 14))
                .padding(.bottom, 6)
            
            HStack(spacing: 12){
                VStack(alignment: .leading) {
                    HStack(spacing: 4){
                        Text("Serial No.:").bold()
                        Text("1")
                            .padding(.bottom, 2)
                    }
                
                HStack(spacing: 4){
                    Text("Phone No.:").bold()
                    Text("90007160")
                }
                }
                Spacer()
            }
            
            
            Spacer()
            
        }.padding()
        
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
