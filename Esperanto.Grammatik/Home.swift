//
//  Home.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Home: View {
    
    let wortBildung: [(String, AnyView)] = [
        ("Wortbildung", AnyView(WortbildungView())),
        ("Zusammengesetzte Wörter", AnyView(ZusammengesetzteView())),
        ("Vorsilben", AnyView(VorsilbenView())),
        ("Nachsilben", AnyView(NachsilbenView())),
        ("Korrelative Pronomen und Adverbien", AnyView(KorrelativePronomenView()))
    ]
    
    let wortArten: [(String, AnyView)] = [
        ("Artikel", AnyView(Artikel())),
        ("Subtantive und Adjektive", AnyView(SubtantiveUndAdjektive())),
        ("Adverbien", AnyView(Adverbien())),
        ("Pronomina", AnyView(Pronomina())),
        ("Verben", AnyView(Verben())),
        ("Zahlwörter", AnyView(Zahlwort())),
        ("Präpositionen", AnyView(Praepositionen())),
        ("Konjunktionen", AnyView(Konjunktionen()))
        
    ]
    
    let satzBildung: [(String, AnyView)] = [
        ("Fragesätze", AnyView(Frage())),
        ("Wortfolge", AnyView(Wortfolge()))
        
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Aussprache")) {
                    NavigationLink(destination: Aussprache()) {
                        Text("Aussprache")
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Wortbildung")) {
                    ForEach(wortBildung, id: \.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                        }
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Wortarten")) {
                    ForEach(wortArten, id:\.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                        }
                        
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Satzbildung")) {
                    ForEach(satzBildung, id:\.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                        }
                        
                    }
                }
                .listRowBackground(Color.eo)
            }
          
            .navigationTitle("Esperanto Grammatik")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Image(systemName: "gear")
            }
            .searchable(text: .constant(""), placement: .navigationBarDrawer(displayMode: .always)) {
                Text("Search").foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    Home()
}
