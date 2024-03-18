//
//  Verben.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Verben: View {
    
    struct Verben: Identifiable {
        let column1: String
        let column2: String
        let column3: String
        let id = UUID()
    }
    
    @State private var verben = [
        Verben(column1: "-i", column2: "Infinitiv", column3: "legi = lesen"),
        Verben(column1: "-as", column2: "Präsens", column3: "mi legas = ich lese"),
        Verben(column1: "-is", column2: "Perfekt", column3: "mi legis = ich las"),
        Verben(column1: "-os", column2: "Futur", column3: "mi legos = ich werde lesen"),
        Verben(column1: "-us", column2: "Konditional", column3: "mi legus = ich würde lesen"),
        Verben(column1: "-u", column2: "Imperativ, Konjunktiv", column3: "legu! = lies!"),
        Verben(column1: "-ant", column2: "Erstes aktive Partizip", column3: "leganta = gerade lesend"),
        Verben(column1: "-int", column2: "Zweites aktive PArtizip", column3: "leginta = gelesen habend"),
        Verben(column1: "-ont", column2: "Drittes aktive Partizip", column3: "legonta = im Begriffe zu lesen seiend"),
        Verben(column1: "-at", column2: "Erstes passive Partizip", column3: "legata = gelesen werdend"),
        Verben(column1: "-it", column2: "Zweites passive Partizip", column3: "legita = gelesen worden seiend"),
        Verben(column1: "-ot", column2: "Drittes passive Partizip", column3: "legota = gelesen werden werdend"),
        
    ]
    
    
    let partizipien = [
    ("-ant :", "mi estas leganta = ich lese gerade"),
    ("-int :", "mi estas leginta = ich habe gelesen"),
    ("-ont :", "mi estas legonta = ich bin im Begriffe zu lesen"),
    ("-at :", "ĝi estas legata = er wird gelesen"),
    ("-it :", "ĝi estas legita = es wurde gelesen"),
    ("-ot :", "ĝi estas legota = es wird gelesen werden")
    
    ]
    
    var body: some View {
        ScrollView {
            Grid(horizontalSpacing: 0.0, verticalSpacing: 0.0) {
                ForEach(verben) { verb in
                    GridRow {
                        Text(verb.column1)
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                        Text(verb.column2)
                            .font(.system(size: 12))
                        Text(verb.column3)
                            .font(.system(size: 12))
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay {Rectangle().stroke()}
            }
            .frame(height: 400)
            .background(Color.nen)
            .padding(20)
            
            
            VStack(alignment: .leading) {
                Text("die sechs letzten Formen werden substantivisch (-o), adjektivisch (-a) oder adverbial (-e) gebraucht. z.B.: amato = Geliebter, promenante = spazierengehend (bezieht sich in dieser Form auf das Subjekt des Hauptsatzes), farbita muro = gestrichene Mauer.")
                    .font(.system(size: 14))
                
                Divider()
                Text("Meistenteils werden die Partizipien mit 'esti' (nicht mit 'havi' = haben) angewandt. z.B.:")
                    .font(.system(size: 14))
             
           
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            
          
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(partizipien, id: \.0) { item in
                        Text(item.0)
                            .font(.system(size: 14))
                    }
                }

                VStack(alignment: .leading, spacing: 8) {
                    ForEach(partizipien, id: \.0) { item in
                        Text(item.1)
                            .font(.system(size: 14))
                    }
                }
            }
            Divider()
         
              VStack(alignment: .leading) {
                Text("Die Konjugation ist nach Person und Zahl auf das subjekt bezogen: mi legas, vi legas, li legas, ni legas, ili legas.")
                    .font(.system(size: 14))
                
                Divider()
                Text("Unpersönliche Verben haben kein Subjekt: das Deutsche 'es' wird nicht übersetzt. z.B.: pluvas = es regnet.")
                    .font(.system(size: 14))
             }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
  
        }
        .navigationTitle("Verben")
        .navigationBarTitleDisplayMode(.inline)
     }
}

#Preview {
    Verben()
}
