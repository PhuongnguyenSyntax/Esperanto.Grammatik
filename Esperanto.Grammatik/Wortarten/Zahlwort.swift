//
//  Zahlwort.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Zahlwort: View {
    let nummer = [(1, "unu"),
                  (2, "du"),
                  (3, "tri"),
                  (4, "kvar"),
                  (5, "kvin"),
                  (6, "ses"),
                  (7, "sep"),
                  (8, "ok"),
                  (9, "naŭ"),
                  (10, "dek"),
                  (11, "dek unu"),
                  (12, "dek du"),
                  (20, "dudek"),
                  (21, "dudek unu"),
                  (25, "dudek kvin"),
                  (30, "tridek"),
                  (40, "kvardek"),
                  (100, "cent"),
                  (1000, "mil"),
                  (1000000, "miliono"),
                  
    ]
    
    var body: some View {
        VStack {
            List {
                ForEach(nummer, id: \.0) { number in
                    HStack {
                        Text("\(number.0)")
                            .font(.system(size: 14))
                            .frame(width: 70, alignment: .leading)
                        
                           
                        Text(number.1)
                            .font(.system(size: 14))
                            .frame(maxWidth: .infinity, alignment: .leading)
                           
                    }
                    
                }
            }
            
            VStack{
                Text("Ordinalzahlen bildet man durch die Endung -a. z.B: unua = erste, dua = zweite, ... ")
                    .font(.system(size: 14))
                    .padding(.leading)
                Divider()
                Text("Die Endung -e bildet Adverbien: unue = erstens, due = zweitens,...")
                    .font(.system(size: 14))
                    .padding(.leading)
            
            }
            .padding()
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
             
            
        }
        .navigationTitle("Zahlwörter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Zahlwort()
}
