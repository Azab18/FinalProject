//
//  SwiftUIView.swift
//  Tabibi1
//
//  Created by Mohamed Azab on 28/03/2022.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.7498469949, green: 0.8413919806, blue: 0.9537789226, alpha: 1))
                .ignoresSafeArea()
            ScrollView{
                Image("pat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea(edges: .all)
                    
                VStack(alignment: .leading){
                    Text("Patient Details:")
                        .font(.title)
                        .fontWeight(.bold)
                 
                    
                    Text("name:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("Ali Mohamed")
                    Text("Diagnoses and Allergies:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("- Allergic to: \n-Milk & Milk products. (Lactose Intolerance is NOT an allergy.) \n-Eggs & Egg containing products.\n-Wheat and other Gluten containing products. \n-Peanuts and products containing peanuts and peanut oilTree Nuts.\n-Soy and products containing Soy, including soybean oil.\n-Fish - all types/Shellfish - all types.\n-Corn and products containing corn, including corn oil.\n-Sesame seeds/oil.\n-Mustard and products containing mustard seedsloil. \n-Celery and its products.")
                    Text("Medical Status:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("Diagnosed with: \n-Conjunctivitis (pinkeye) \n-Diarrhea.\n-Headaches.\n-Mononucleosis.\n-Stomach Aches.")
                    Text("Drugs and Medicene:")
                        .fontWeight(.bold)
                        .padding(.vertical, 8)
                    Text("-Vicodin (hydrocodone/acetaminophen) \n-Albuterol (Accuneb, Ventolin, Proair, Proventil) \n-Lisinopril (Generic for Prinivil or Zestril)\n-Levothyroxine (generic for Synthroid)\n-Gabapentin (Neurontin)\n-Metformin (generic for Glucophage)\n-Lipitor (atorvastatin) \n-Amlodipine (generic for Norvasc)")
                   
                   
                   
                        
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

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
