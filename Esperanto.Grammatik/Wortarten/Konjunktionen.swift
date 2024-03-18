//
//  Konjunktionen.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Konjunktionen: View {
    let preposition = [
        "Die wichtigsten Konjunktionen sind:",
        "aŭ",
        "do",
        "kaj",
        "nek",
        "nu",
        "sed",
        "tamen",
        "ĉar",
        "dum",
        "jen...jen",
        "aŭ...aŭ",
        "ĉu",
        "nek...nek",
        "ĉu...ĉu",
        "ju..des",
        "kvankam",
        "ke",
        "se",
        "kvazaŭ",
        "ĝis",
        "kaj...kaj",

    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(preposition, id: \.self) { item in
                    Text(item)
                        .font(.system(size: 14))
                    Divider()
                }
            }
            .padding(.leading)
            .padding()
            .background(Color.nen)
            .border(Color.black, width: 2)
            .padding()
        }
        .navigationTitle("Konjunktionen")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Konjunktionen()
}
