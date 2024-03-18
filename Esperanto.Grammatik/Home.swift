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
    
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Aussprache").font(.system(size: 14))) {
                    NavigationLink(destination: Aussprache()) {
                        Text("Aussprache")
                            .font(.system(size: 14))
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Wortbildung").font(.system(size: 14))) {
                    ForEach(wortBildung.filter { searchText.isEmpty || $0.0.localizedStandardContains(searchText) }, id: \.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                                .font(.system(size: 14))
                        }
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Wortarten").font(.system(size: 14))) {
                    ForEach(wortArten.filter { searchText.isEmpty || $0.0.localizedStandardContains(searchText) }, id:\.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                                .font(.system(size: 14))
                        }
                        
                    }
                }
                .listRowBackground(Color.eo)
                
                Section(header: Text("Satzbildung").font(.system(size: 14))) {
                    ForEach(satzBildung.filter { searchText.isEmpty || $0.0.localizedStandardContains(searchText) }, id:\.0) { item in
                        NavigationLink(destination: item.1) {
                            Text(item.0)
                                .font(.system(size: 14))
                        }
                        
                    }
                }
                .listRowBackground(Color.eo)
            }
            
            .navigationTitle("Esperanto Grammatik")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)) {
                Text("Search").foregroundColor(.gray)
            }
        }
    }
}

#Preview {
    Home()
}
