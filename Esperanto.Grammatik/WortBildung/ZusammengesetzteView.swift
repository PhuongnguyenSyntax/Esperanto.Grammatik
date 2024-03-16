//
//  ZusammengesetzteView.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct ZusammengesetzteView: View {
    var body: some View {
        VStack {
            Text("So wie im Deutschen, Griechischen, Ungarischen u.a (aber z.B nicht im Fränzösischen) darf man mehrere Stämme in einem Wort zusammensetzen. Der letze Stamm ist das Grundwort (Hauptbedeutung).")
                .fontWeight(.medium)
                .font(.system(size: 16))
                .padding(.bottom, 2)
            Divider()
            Text("Beispiele: kanto-birdo = Singvogel (= Art des Vogels), birdo-kanto = Vogelgesang (= Art des Gesangs), kafo-taso")
                .font(.system(size: 16))
                .padding(.bottom, 2)
            Divider()
            Text("Die grammatische Endung des erstes Element wird der Kürze und oft auch des Wohlklanges wegen gewöhnlich abgestoßen.")
                .fontWeight(.medium)
                .font(.system(size: 16))
                .padding(.bottom,2)
            Divider()
            Text("Beispiele: kant-birdo = kanto-birdo kaf-taso = kafo-taso, hel-blue = hele blua. Aber: tablo-tuko, nicht (Tabl-tuko)")
                .font(.system(size: 16))
                .padding(.bottom, 2)
        }
        .padding()
        .background(Color.eo)
        
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Zusammengesetzte Wörter")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    }
}

#Preview {
    ZusammengesetzteView()
}
