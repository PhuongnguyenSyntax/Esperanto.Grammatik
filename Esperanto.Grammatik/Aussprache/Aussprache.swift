//
//  Aussprache.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI


struct Aussprache: View {
    
    let words = [
        ("a", "a", "offen (alle Vokale: halblang)"),
        ("e", "e", "offen wie ä: Fenster"),
        ("i", "i", "offen: die, liegen"),
        ("o", "o", "offen: von, Wolle"),
        ("u", "u", "durch, und"),
    ]
    
    let words2 = [
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
            VStack {
                VStack {
                    Text("Die Aussprache ist phonetisch. Das Alphabet hat 28 Buchstaben, darunter 5 Vokale. Unter den Konsonanten sind 6 mit Überzeichen.")
                        .font(.system(size: 16))
                        .padding(.bottom, 2)
                    Divider()
                    Text("Die folgenden Buchstaben kommen in Esperanto nicht vor: q ('kuo'), w ('duobla v'), x ('ikso'), y ('ipsilono')")
                        .font(.system(size: 16))
                        .padding(.bottom, 2)
                    Divider()
                    Text("Die nun aufgeführten Konsonanten haben dieselbe Aussprache wie im Deutschen: b, d, f, h, j, k, l, m, n, p, r, t. Die anderen Buchstaben werden wie folgt ausgesprochen:")
                        .font(.system(size: 16))
                        .padding(.bottom,2)
                }
                .padding()
                .background(Color.eo)
                .border(Color.black, width: 2)
                .cornerRadius(5)
                .padding()
                
                headerView
                LazyVGrid(columns: [GridItem(.fixed(60)), GridItem(.fixed(100)), GridItem(.flexible())], spacing: 20) {
                    ForEach(words, id: \.0) { word in
                        Text(word.0)
                        Text(word.1)
                        Text(word.2)
                    }
                }
                
                
                customDivider()
                
                LazyVGrid(columns: [GridItem(.fixed(60)), GridItem(.fixed(100)), GridItem(.flexible())], spacing: 20) {
                    ForEach(words2, id: \.0) { word in
                        Text(word.0)
                        Text(word.1)
                        Text(word.2)
                    }
                }
                customDivider()
            }
        }
        .navigationTitle("Aussprache")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var headerView: some View {
        HStack(spacing: 20) {
            Text("Buchst")
                .font(.headline)
                .frame(width: 60, alignment: .leading)
                .padding(.leading, 10)
            
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
    
    func customDivider() -> some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.black)
            .padding(.vertical, 5)
    }
}

#Preview {
    Aussprache()
}
