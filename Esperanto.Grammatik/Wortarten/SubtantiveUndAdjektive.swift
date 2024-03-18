//
//  SubtantiveUndAdjektive.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct SubtantiveUndAdjektive: View {
    var body: some View {
        VStack {
            Text("Das Substantiv endet auf -O. Das Adjektiv endet auf -a.")
                .font(.system(size: 14))
            Divider()
            Text("Weitere Endungen sind: -j (-oj, -aj) zur Bildung des Plurals, -n (-on, -ojn, -an, -ajn) für der Akusativ. Die andere Fälle bildet man mit einer Präposition.")
                .font(.system(size: 14))
            Divider()
            Text("Das Adjektiv bezieht sich in Zahl und Fall auf das betreffende Substantiv/ die betreffenden Substantive. Achtung: grandaj viro kaj virino (= 2 Menschen).")
                .font(.system(size: 14))
            Divider()
            Text("Steigerung: Komparativ = pli (vgl, 'mehr'), Superlativ = plej (vgl. 'meist').")
                .font(.system(size: 14))
            Divider()
            Text("Nach esti und Verben wie ŝajni (scheinen), resti (bleiben), iĝi (werden) und aspekti (aussehen) kommt kein Akkusativ vor")
                .font(.system(size: 14))
            Divider()
            Text("Man benutzt den Akkusativ für alle Ergänzungen ohne Präposition, direktes Objekt, Orts- und Zeitbestimmungen, u.a.m Außerdem gibt -n die Richtung an(und ersetzt dadurch die Präposition al).")
                .font(.system(size: 14))
        }
        .padding()
        .background(Color.eo)
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Substantive und Adjektive")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    }
}

#Preview {
    SubtantiveUndAdjektive()
}
