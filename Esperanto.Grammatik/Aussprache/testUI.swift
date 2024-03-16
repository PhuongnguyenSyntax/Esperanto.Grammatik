//
//  testUI.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 13.03.24.
//

import SwiftUI

struct Aussprache1: View {
    
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
        VStack{
            VStack {
                Text("Die Aussprache ist phonetisch. Das Alphabet hat 28 Buchstaben, darunter 5 Vokale. Unter den Konsonanten sind 6 mit Überzeichen.")
                    .font(.system(size: 16))
                    .padding(.bottom, 2)
                Text("Die folgenden Buchstaben kommen in Esperanto nicht vor: q ('kuo'), w ('duobla v'), x ('ikso'), y ('ipsilono')")
                    .font(.system(size: 16))
                    .padding(.bottom, 2)
                Text("Die nun aufgeführten Konsonanten haben dieselbe Aussprache wie im Deutschen: b, d, f, h, j, k, l, m, n, p, r, t. Die anderen Buchstaben werden wie folgt ausgesprochen:")
                    .font(.system(size: 16))
                    .padding(.bottom,2)
            }
            .padding()
            .background(Color.eo)
            .cornerRadius(10)
            .padding()
            
            headerView
            List {
                
                ForEach(words, id: \.0) { word in
                    HStack {
                        Text(word.0)
                            .frame(width: 40, alignment: .leading)
                        
                        
                        Text(word.1)
                            .frame(width: 50, alignment: .leading)
                        
                        Text(word.2)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            
            
            
            
        }
        .navigationTitle("Aussprache")
        .navigationBarTitleDisplayMode(.inline)
    }
    var headerView: some View {
        HStack {
            Text("Buchst")
                .font(.headline)
                .frame(width:60, alignment: .leading)
                .padding()
            
            Text("Klingt wie")
                .font(.headline)
                .frame(width: 100, alignment: .leading)
            
            Text("Kommentar und Beispiele")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical)
        .background(Color.yellow)
        .cornerRadius(5)
    }
}

#Preview {
    Aussprache1()
}
