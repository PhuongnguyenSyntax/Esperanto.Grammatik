//
//  testUI3.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 15.03.24.
//

import SwiftUI

struct testUI3: View {
    
    struct Verben: Identifiable {
        let column1: String
        let column2: String
        let column3: String
        let column4: String
        let column5: String
        let column6: String
        let id = UUID()
    }
    
    
    @State private var verb = [
        Verben(column1: "-u", column2: "iu", column3: "kiu", column4: "tiu", column5: "ĉiu", column6: "neniu"),
        Verben(column1: "Person", column2: "jemand", column3: "wer", column4: "der, jener", column5: "ĉiu", column6: "neniu"),
        Verben(column1: "-0", column2: "io", column3: "kio", column4: "tio", column5: "ĉio", column6: "nenio"),
        Verben(column1: "Sache", column2: "etwas", column3: "was", column4: "das, jenes", column5: "alles", column6: "nichts"),
        Verben(column1: "-e", column2: "ie", column3: "kie", column4: "tie", column5: "ĉie", column6: "nenie"),
        Verben(column1: "Ort", column2: "irgendwo", column3: "wo", column4: "dort", column5: "überall", column6: "nirgends"),
        Verben(column1: "-a", column2: "ia", column3: "kia", column4: "tia", column5: "ĉia", column6: "nenia"),
        Verben(column1: "Art", column2: "irgendein", column3: "was für ein", column4: "derartiger", column5: "jederlei", column6: "keinerlei"),
        
    ]
    
    var body: some View {
        Grid(horizontalSpacing: 0.0, verticalSpacing: 0.0) {
            GridRow {
                Text("")
                Text("i-")
                    .font(.system(size: 12, weight: .bold))
                Text("ki-")
                    .font(.system(size: 12, weight: .bold))
                Text("ti-")
                    .font(.system(size: 12, weight: .bold))
                Text("ĉi-")
                    .font(.system(size: 12, weight: .bold))
                Text("neni-")
                    .font(.system(size: 12, weight: .bold))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay { Rectangle().stroke() }
            ForEach(verb) { verb in
                GridRow {
                    Text(verb.column1)
                        .font(.system(size: 12))
                    Text(verb.column2)
                        .font(.system(size: 12))
                    Text(verb.column3)
                        .font(.system(size: 12))
                    Text(verb.column4)
                        .font(.system(size: 12))
                    Text(verb.column5)
                        .font(.system(size: 12))
                    Text(verb.column6)
                        .font(.system(size: 12))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay { Rectangle().stroke() }
            }
        }
        .frame(height: 300)
        .background(Color.nen)
        .padding(20)
    }
    
}

#Preview {
    testUI3()
}
