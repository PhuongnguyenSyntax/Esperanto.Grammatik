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
                Divider()
                Text("Währen sich ein Adjektiv auf ein Substantiv bezieht, steht ein Adverb in Verbindung mit einem Adjektiv, Verb oder einem anderen Adverb.")
            }
            .padding()
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            VStack {
                ForEach(adverbs, id: \.self) { adverb in
                    Text(adverb)
                    Divider()
                }
            }
            .padding(.leading)
            .background(Color.nen) // Màu nền xanh
            .border(Color.black, width: 2) // Đường viền đen, độ dày 2dp
            .padding()
          }
        .navigationTitle("Adverbien")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Adverbien()
}
