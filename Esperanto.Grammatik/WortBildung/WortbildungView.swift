//
//  WortbildungView.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct WortbildungView: View {
    var body: some View {
        VStack {
            Text("Esoeranto-Wörte sind Zusammensetzungen von Wortelementen. Letzter können Stämme, Endungen, Vor- und Nachsilben sein")
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .padding(.bottom, 2)
            Divider()
            Text("Beispiele: est-i (Stamm-Endung), vir-in-o-j (Stamm-Nachsilbe_Endung_Pluralendung), mal-bel-a (Vorsilbe-Stamm-Endung)")
                .font(.system(size: 14))
                .padding(.bottom, 2)
           
        }
        .padding()
        .background(Color.eo)
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Wortbildung")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    }
    
}

#Preview {
    WortbildungView()
}
