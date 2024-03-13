//
//  Präpositionen.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Praepositionen: View {
    
        let words = [
            ("die Zeitung", "die Zeitungen"),
            ("die Blume", "die Blumen"),
            
        ]
        
        var body: some View {
            List {
                // The section for the rules
                Section(header: Text("Ending \"-n\" or \"-en\" (without umlaut)")) {
                    VStack(alignment: .leading) {
                        ForEach([
                            "Most feminine nouns.",
                            "Adopted foreign nouns, feminine nouns with the endings -anz, -enz, -ie, -ek, -ik, -ion, -ur, -tät and a lot of neuter nouns with the ending -um.",
                            "Masculine foreign nouns with endings -ant, -ent, -ist.",
                            "A lot of adopted foreign words with the ending -or."
                            // Add more rules here...
                        ], id: \.self) { rule in
                            Text(rule)
                        }
                    }
                }
                
                // The section for the word table
                Section {
                    ForEach(words, id: \.0) { word in
                        HStack {
                            Text(word.0) // Singular form
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(word.1) // Plural form
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                } header: {
                    HStack {
                        Text("singular").bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("plural").bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .background(Color.yellow) 
                }
            }
            .navigationTitle("Plural")
            .listStyle(GroupedListStyle())
        }
}

#Preview {
    Praepositionen()
}
