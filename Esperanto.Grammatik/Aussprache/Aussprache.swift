//
//  Aussprache.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI


struct Aussprache: View {
    
    struct Word: Identifiable {
        let column1: String
        let column2: String
        let column3: String
        let id = UUID()
    }
    let words = [
        Word(column1: "a", column2: "a", column3: "offen (alle Vokale: halblang)"),
        Word(column1: "e", column2: "e", column3: "offen wie ä: Fenster"),
        Word(column1: "i", column2: "i", column3: "offen: die, liegen"),
        Word(column1: "o", column2: "o", column3: "offen: von, Wolle"),
        Word(column1: "u", column2: "u", column3: "durch, und"),
        Word(column1: "c", column2: "z", column3: "Zeit, Zahl"),
        Word(column1: "ĉ", column2: "tsch", column3: "deutsch, Tscheche"),
        Word(column1: "ĝ", column2: "dsch", column3: "Dschungel"),
        Word(column1: "ĥ", column2: "ch", column3: "Dach, Wache, ach"),
        Word(column1: "ĵ", column2: "j", column3: "wie stimhaftes sch, journal"),
        Word(column1: "s", column2: "ss/ß", column3: "Gasse, Straße"),
        Word(column1: "ŝ", column2: "sch", column3: "schön, Schiff"),
        Word(column1: "ŭ", column2: "u", column3: "Halbvokal, mit a/e als kurze Silbe, Baum"),
        Word(column1: "v", column2: "v", column3: "Zwischen unserum v (Vokal) und w (Wald)"),
        Word(column1: "z", column2: "s", column3: "Rose, Reise"),
    ]
    
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                Text("Die Aussprache ist phonetisch. Das Alphabet hat 28 Buchstaben, darunter 5 Vokale. Unter den Konsonanten sind 6 mit Überzeichen.")
                    .font(.system(size: 14))
                    .padding(.bottom, 2)
                Divider()
                Text("Die folgenden Buchstaben kommen in Esperanto nicht vor: q ('kuo'), w ('duobla v'), x ('ikso'), y ('ipsilono')")
                    .font(.system(size: 14))
                    .padding(.bottom, 2)
                Divider()
                Text("Die nun aufgeführten Konsonanten haben dieselbe Aussprache wie im Deutschen: b, d, f, h, j, k, l, m, n, p, r, t. Die anderen Buchstaben werden wie folgt ausgesprochen:")
                    .font(.system(size: 14))
                    .padding(.bottom,2)
            }
            .padding()
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            
            
            VStack {
                HStack {
                    Text("Buchst")
                        .font(.system(size: 12, weight: .bold))
                        .frame(width: 50)
                    Spacer()
                    Text("klingt wie")
                        .font(.system(size: 12, weight: .bold))
                        .frame(width: 60)
                    Spacer()
                    Text("Kommentar und Beispiele")
                        .font(.system(size: 12, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .overlay { Rectangle().stroke() }
                
                ForEach(words) { word in
                    HStack {
                        Text(word.column1)
                            .font(.system(size: 14))
                            .frame(width: 50)
                          
                        Spacer()
                        Text(word.column2)
                            .font(.system(size: 14))
                            .frame(width: 60)
                        Spacer()
                        Text(word.column3)
                            .font(.system(size: 14))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .overlay { Rectangle().stroke() }
                }
            }
            
            .background(Color.nen)
            .padding()
            
        }
        .navigationTitle("Aussprache")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Aussprache()
}
