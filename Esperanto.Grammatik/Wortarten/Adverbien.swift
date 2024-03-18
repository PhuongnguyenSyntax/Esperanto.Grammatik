//
//  Adverbien.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Adverbien: View {
    
    let adverbs = [
        "Neben den e-Adverbien gibt es auch urspüngliche Adverbien",
        "ajn",
        "almenaŭ",
        "ankoraŭ",
        "apenaŭ",
        "baldaŭ",
        "do",
        "eĉ",
        "hieraŭ",
        "hodiaŭ",
        "morgaŭ",
        "preskaŭ",
        "ja",
        "jam",
        "jen",
        "ĵus",
        "kvazaŭ",
        "mem",
        "nun",
        "nur",
        "ol",
        "plej",
        "pli",
        "plu",
        "po",
        "tre",
        "tro",
        "tuj",
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Das Adverb endet auf -e")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                Divider()
                Text("Währen sich ein Adjektiv auf ein Substantiv bezieht, steht ein Adverb in Verbindung mit einem Adjektiv, Verb oder einem anderen Adverb.")
                    .font(.system(size: 14))
            }
            .padding()
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            
            VStack {
                ForEach(adverbs, id: \.self) { adverb in
                    Text(adverb)
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
        .navigationTitle("Adverbien")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Adverbien()
}
