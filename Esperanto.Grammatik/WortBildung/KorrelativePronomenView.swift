//
//  KorrelativePronomenView.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct KorrelativePronomenView: View {
    
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
    
    
    struct Verben2: Identifiable {
        let column1: String
        let column2: String
        let column3: String
            let id = UUID()
        }
        @State private var verb2 = [
            Verben2(column1: "-u", column2: "ja", column3: "ja"),
            Verben2(column1: "-o", column2: "sehr selten", column3: "ja"),
            Verben2(column1: "-a", column2: "ja", column3: "ja"),
            Verben2(column1: "-e", column2: "nein", column3: "ja (Richtung)")
        ]
    
    struct Verben3: Identifiable {
            let column1: String
            let column2: String
            let column3: String
            let column4: String
            let column5: String
            let column6: String
            let id = UUID()
        }
        @State private var verb3 = [
            Verben3(column1: "-om", column2: "iom", column3: "kiom", column4: "tiom", column5: "ĉiom", column6: "neniom"),
            Verben3(column1: "Menge", column2: "etwas", column3: "wieviel", column4: "soviel", column5: "alles", column6: "nichts"),
            Verben3(column1: "-am", column2: "iam", column3: "kiam", column4: "tiam", column5: "ĉiam", column6: "neniam"),
            Verben3(column1: "Zeit", column2: "einmal", column3: "wann", column4: "dann", column5: "immer", column6: "niemals"),
            Verben3(column1: "-el", column2: "iel", column3: "kiel", column4: "tiel", column5: "ĉiel", column6: "neniel"),
            Verben3(column1: "Weise", column2: "(1)", column3: "wie", column4: "so", column5: "(1)", column6: "nirgends"),
            Verben3(column1: "-al", column2: "ial", column3: "kial", column4: "tial", column5: "ĉial", column6: "nenial"),
            Verben3(column1: "Grund (2)", column2: "(3)", column3: "warum", column4: "darum", column5: "(3)", column6: "(3)"),
            Verben3(column1: "-es", column2: "ies", column3: "kies", column4: "ties", column5: "ĉies", column6: "nenies"),
            Verben3(column1: "Besitzer", column2: "(4)", column3: "wesen", column4: "desen", column5: "(4)", column6: "(4)"),
        ]
    
    
    
    var body: some View {
        
        ScrollView {
            Text("Korrelative Pronomen und Adverbien haben alle ein -i- in der Mitte.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.eo)
                .border(Color.black, width: 2)
                .cornerRadius(5)
                .padding()
           
            
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
            
            
            
            Grid(horizontalSpacing: 0.0, verticalSpacing: 0.0) {
                GridRow {
                    Text("mögliche Endung")
                        .font(.system(size: 12, weight: .bold))
                    Text("Plural-j")
                        .font(.system(size: 12, weight: .bold))
                    Text("Akkusativ-n")
                        .font(.system(size: 12, weight: .bold))
                  
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay { Rectangle().stroke() }
                ForEach(verb2) { verb2 in
                    GridRow {
                        Text(verb2.column1)
                            .font(.system(size: 12))
                        Text(verb2.column2)
                            .font(.system(size: 12))
                        Text(verb2.column3)
                            .font(.system(size: 12))
                      
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay { Rectangle().stroke() }
                }
            }
            .frame(height: 200)
            .background(Color.nen)
            .padding(20)
            
            
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
                
                ForEach(verb3) { verb3 in
                    GridRow {
                        Text(verb3.column1)
                            .font(.system(size: 12))
                        Text(verb3.column2)
                            .font(.system(size: 12))
                        Text(verb3.column3)
                            .font(.system(size: 12))
                        Text(verb3.column4)
                            .font(.system(size: 12))
                        Text(verb3.column5)
                            .font(.system(size: 12))
                        Text(verb3.column6)
                            .font(.system(size: 12))
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay { Rectangle().stroke() }
                }
            }
            .frame(height: 300)
            .background(Color.nen)
            .padding(20)
            
            VStack(alignment: .leading) {
                Text("(1) = irgendwie / auf jede Weise / auf keine Art")
                Divider()
                Text("(2) = Grund und Ursache")
                Divider()
                Text("(3) = aus irgendeinem / jedem / keinem Grund")
                Divider()
                Text("(4) irgendjemandes / keder,amms / niemandes")
                Divider()
                Text("ĉi weist auf das Näherliegende: tiu ĉi = dieser, tie ĉi = hier")
                Divider()
                Text("Ki-ist Fragefürwort (wie vorhin übersetzt), aber auch rückbezügliches. Fürwort. z.B. : tiu kiu ... = der, wer ..., tie kie ... = dort, wo ...")
                Divider()
                Text("Substantivisch gebrauchtes -u gibt Personen an (siehe vor). Es kann auch adjektivisch eingesetzt werden, fur Personen und für Sachen. Dagegen ist -o immer substantivisch")
            }
            .padding()
            .background(Color.eo)
            
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
       
            
            
         
        }
        .navigationTitle("Korrelative Pronomen und Adverbien")
        .navigationBarTitleDisplayMode(.inline)
    }
        
}

#Preview {
    KorrelativePronomenView()
}
