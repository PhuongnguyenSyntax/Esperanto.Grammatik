//
//  Frage.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Frage: View {
    var body: some View {
        VStack {
            Text("Die meinsten Punkte der Satzbildung sind schon erwähnt worden. Hier sind noch einige Ergänzungen:")
                .fontWeight(.semibold)
                .font(.system(size: 14))
                .padding(.bottom, 2)
            Divider()
            Text("Alle Fragen, die mit ja oder nein beantwortet werden können, beginnen  mit dem Partikel ĉu. Alle anderen Fragen werden durch Fragenfürwörter eingeleitet: kiu, kio, kia...")
                .fontWeight(.semibold)
                .font(.system(size: 14))
                .padding(.bottom, 2)
          
        }
        .padding()
        .background(Color.eo)
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Fragesätze")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    
    }
}

#Preview {
    Frage()
}
