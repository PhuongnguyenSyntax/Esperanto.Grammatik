//
//  Präpositionen.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Praepositionen: View {
    let preposition = [
        "Die wichtigsten Präpositionen sind:",
        "al",
        "anstataŭ",
        "antaŭ",
        "apud",
        "ĉe",
        "ĉirkaŭ",
        "da",
        "de",
        "dum",
        "ekster",
        "el",
        "en",
        "ĝis",
        "inter",
        "je",
        "kontraŭ",
        "krom",
        "kun",
        "laŭ",
        "malantaŭ",
        "malgraŭ",
        "per",
        "po",
        "por",
        "post",
        "preter",
        "pri",
        "pro",
        "sen",
        "sub",
        "super",
        "sur",
        "tra",
        "trans",
    ]
        
        
        var body: some View {
            ScrollView {
                VStack {
                    Text("Nach Präpositonen folgt der Nominativ. Man kann sie in bestimmeten Fällen durch den Akkusativ ersetzen. Das -n nach Präpositionen ersetzt 'al' und gibt so die Richtung an.")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .padding(.bottom, 2)
                    Divider()
                    Text("Beispiele: en la domo = in dem Haus, en la domon = (al en la domo) = in das Haus, la dekkvinan de decembro (= en la dekkvina de decembro)")
                        .font(.system(size: 14))
                        .padding(.bottom, 2)
                    Divider()
                    Text("Die meisten Präpositionen haben eine oder mehrere Bedeutung(en). Ist aber aus dem Sinn des Satzes nicht ersichtlich, welche Präposition anzuwenden ist, so wird die Präposition je gebraucht, die keine selbständige Bedeutung hat, z.B.: je via sano = Gesundheit!, esti kapabla je ĉio = zu allem fähig sein")
                        .fontWeight(.semibold)
                        .font(.system(size: 14))
                        .padding(.bottom,2)
                }
                .padding()
                .background(Color.eo)
                .border(Color.black, width: 2)
                .cornerRadius(5)
                .padding()
                
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
            .navigationTitle("Präpositionen")
            .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    Praepositionen()
}
