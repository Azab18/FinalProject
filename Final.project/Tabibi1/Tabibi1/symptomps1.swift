//
//  symptomps1.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct symptomps1: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))
                .ignoresSafeArea()
            ScrollView{
                Image("cough")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(edges: .all)
                    
                VStack(alignment: .leading){
                    Text("Cough:")
                        .font(.title)
                        .fontWeight(.bold)
                 
                    
                    Text("Causes:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("A cough can be caused by several conditions, both temporary and permanent.Coughing is a standard way of clearing your throat. When your airways become clogged with mucus or foreign particles such as smoke or dust, a cough is a reflex reaction that attempts to clear the particles and make breathing easier. Usually, this type of coughing is relatively infrequent, but coughing will increase with exposure to irritants such as smoke.")
                    Text("Solution:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("Coughs can be treated in a variety of ways, depending on the cause. For healthy adults, most treatments will involve self-care.A cough that results from a virus can’t be treated with antibiotics. \nYou can, however, soothe it in the following ways:\n-Keep hydrated by drinking plenty of water.\nElevate your head with extra pillows when sleeping.Use cough drops to soothe your throat.\n-Gargle with warm salt water regularly to remove mucus and soothe your throat.-Avoid irritants, including smoke and dust.\n-Add honey or ginger to hot tea to relieve your cough and clear your airway.Use decongestant sprays to unblock your nose and ease breathing.")
                   
                        
                    }.edgesIgnoringSafeArea(.top)
                    .padding()
                    .padding(.top)
                    .background(Color.white)
                    .cornerRadius(40)
                        .offset(y: -40)
            }.edgesIgnoringSafeArea(.top)
            }
       
                
        }
    }

struct symptomps1_Previews: PreviewProvider {
    static var previews: some View {
        symptomps1()
    }
}
