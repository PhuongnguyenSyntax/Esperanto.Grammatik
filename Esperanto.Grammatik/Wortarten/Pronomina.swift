//
//  Pronomina.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Pronomina: View {
    
    struct Pronomen: Identifiable {
        let column1: String
        let column2: String
        let column3: String
        let column4: String
        let column5: String
        let column6: String
        let id = UUID()
    }
    
    @State private var pronomen = [
        Pronomen(column1: "Person", column2: "Geschl.", column3: "Singular", column4: "Plural", column5: "Sigular", column6: "Plural"),
        Pronomen(column1: "1", column2: "alle", column3: "mi- ich", column4: "ni - wir", column5: "mia - mein", column6: "nia - unser"),
        Pronomen(column1: "2", column2: "alle", column3: "vi- du, Sie", column4: "vi - ihr, Sie", column5: "via - dein, Ihr", column6: "via - euer, Ihr"),
        Pronomen(column1: "3", column2: "männlich", column3: "li - er", column4: "ili - sie", column5: "lia - sein", column6: "ilia - ihr"),
        Pronomen(column1: "3", column2: "weiblich", column3: " ŝi - sie", column4: "ili - sie", column5: " ŝia - ihr", column6: "ilia - ihr"),
        Pronomen(column1: "3", column2: "sächlich", column3: "ĝi - es", column4: "ili - sie", column5: "ĝia - ihr", column6: "ilia - ihr"),
        
    ]
    
    
    
    var body: some View {
        ScrollView {
            Grid(horizontalSpacing: 0.0, verticalSpacing: 0.0) {
                GridRow {
                    Text("")
                    Text("")
                    Text("persönlich")
                        .font(.system(size: 11))
                    Text("persönlich")
                        .font(.system(size: 11))
                    Text("possessiv")
                        .font(.system(size: 11))
                    Text("possessiv")
                        .font(.system(size: 11))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay { Rectangle().stroke()}
                ForEach(pronomen) { pronomen in
                    GridRow {
                        Text(pronomen.column1)
                            .font(.system(size: 12))
                        Text(pronomen.column2)
                            .font(.system(size: 12))
                        Text(pronomen.column3)
                            .font(.system(size: 12))
                        Text(pronomen.column4)
                            .font(.system(size: 12))
                        Text(pronomen.column5)
                            .font(.system(size: 12))
                        Text(pronomen.column6)
                            .font(.system(size: 12))
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {Rectangle().stroke()}
            }
            .frame(height: 320)
            .background(Color.nen)
            .padding(20)
            
            VStack(alignment: .leading) {
                Text("Unbestiimtes persönliches Fürwort: oni = man")
                    .font(.system(size: 14))
                
                Divider()
                Text("Für die Anrede in der zweiten Person Einzahl wendet man auch ci an, jedoch in sehr familiärem Sinne, z.B. gegenüber einem Kind.")
                    .font(.system(size: 14))
                Divider()
                Text("Endung persönliche Pronomen: Akkusativ = -n")
                    .font(.system(size: 14))
                Text("Endungen Possessivpronomen: Plural = -j, Akkusativ = -n.")
                    .font(.system(size: 14))
                Divider()
                Text("Reflexiv: si = sich")
                    .font(.system(size: 14))
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            
        }
        .navigationTitle("Pronomina")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    Pronomina()
}
