//
//  testUI2.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 14.03.24.
//

import SwiftUI

struct testUI2: View {
    let words = [
        ("a", "a", "offen (alle Vokale: halblang)"),
        ("e", "e", "offen wie ä: Fenster"),
        ("i", "i", "offen: die, liegen"),
        ("o", "o", "offen: von, Wolle"),
        ("u", "u", "durch, und"),
        ("c", "z", "Zeit, Zahl"),
        ("ĉ", "tsch", "deutsch, Tscheche"),
        ("ĝ", "dsch", "Dschungel"),
        ("ĥ", "ch", "Dach, Wache, ach"),
        ("ĵ", "j", "wie stimhaftes sch, journal"),
        ("s", "ss/ß", "Gasse, Straße"),
        ("ŝ", "sch", "schön, Schiff"),
        ("ŭ", "u", "Halbvokal, mit a/e als kurze Silbe, Baum"),
        ("v", "v", "Zwischen unserum v (Vokal) und w (Wald)"),
        ("z", "s", "Rose, Reise"),
    ]
    var body: some View {
        ScrollView {
                    LazyVGrid(columns: [GridItem(.fixed(50)), GridItem(.fixed(80)), GridItem(.flexible())]) {
                        Text("Buchst").font(.headline)
                        Text("Klingt wie").font(.headline)
                        Text("Kommentar und Beispiele").font(.headline)

                        ForEach(words, id: \.0) { word in
                            Text(word.0)
                            Text(word.1)
                            Text(word.2)
                        }
                    }
                }
                .padding()
    }
}

#Preview {
    testUI2()
}
