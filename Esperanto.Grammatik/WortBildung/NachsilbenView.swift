//
//  NachsilbenView.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct NachsilbenView: View {
    
    let nachsilben = [
        ("-aĉ-", "verächtlich, unschön, körperlich Minderwertiges", "ĉevalaĉo = Klepper"),
        ("-ad-", "langdauernde Handlung", "promenado = Spaziergang"),
        ("-aĵ-", "sichtbares, greifbares Ding, auch: Betragen, Speise","rubĵo = Müll, infanaĵo = Kinderei"),
        ("-an-", "Mitglied, Anhänger, Einwohner","klubano = Klubmitglied"),
        ("-ar-", "Sammelbegriff","arbaro = Wald, aro = Sammlung"),
        ("-ĉj-", "für männliche Kosenamen (Sammwort wird abgekürzt)","paĉjo = Vati Peĉjo = Peterchen"),
        ("-ebl-", "Möglichkeit","videbla = sichtbar, ebla = möglich"),
        ("-ec-", "(mit den Sinnen nicht wahrnehmbarer) Begriff, Eigenschaft","amikeco = Freundschaft"),
        ("-eg-", "Verstärkung, Vergrößerung","pordego = Tor,belega = wundervoll"),
        ("-ej-", "Raum, Ort", "kuirejo = Küche, lernejo = Schule"),
        ("-em-", "Hang, Neigung, Gewohnheit", "babilema = schwatzhaft"),
        ("-end-", "Verpflichtung(das was getan werden soll oder muß)","farenda = zu tun, pagenda = zu bezahlende"),
        ("-er-", "kleiner Teil, Einzelteil","pluvero = Regentropfen"),
        ("-estr-", "Leiter, Oberhaupt","staciestro = Stationsvorsteher"),
        ("-et-", "Abschwächung, Verkleinerung","dormeti = schlummern"),
        ("-id-", "Abkömmling, Junges","ido = Abkömmling"),
        ("-ig-", "Veranlassen, machen, machr Verben transitiv","beligi = schön machen"),
        ("-iĝ-", "werden, macht Verben intransitiv","beliĝi = schön werden, nomiĝi = heißen"),
        ("-il-", "Werkzeug, Mittel", "tranĉilo = Messer"),
        ("-in-", "weibliches Geschlecht", "patrino = Mutter"),
        ("-ind-", "-wert, -würdig","vidinda = sehenswert"),
        ("-ing-", "Halter eines Gegenstandes","ovingo = Eierbecher"),
        ("-ism-", "-ismus, System, kennzeichnende Benehmen","alkoholismo = Alkoholismus"),
        ("-ist-", "Beruf","instruisto = Lehrer"),
        ("-nj-", "für weibliche Kosenamen (Stammwirt wurd abgekürzt)","panjo = Mutti/ Mütterchen"),
        ("-obl-", "Vielfaches","duoblo = Doppel, dekoble = zehnfach"),
        ("-on-", "Bruchteil","duono = Hälfte"),
        ("-op-", "Sammelbegriff","duope = zu zweit, kvaropo = Quartett"),
        ("-uj-", "Behälter, Länderbezeichung, Bäume","monujo = Geldbörse, patrujo = Vaterland, pomujo = Apfelbaum"),
        ("-ul-", "Person mit charakteristischer Eigenschaft","belulo = Schönheit, junulo = Jüngling"),
        ("-um-", "ohne feste Bedeutung, oft: um... herum","plenumi = erfüllen"),
    ]
    
    
    var body: some View {
        
        VStack {
            VStack {
                Text("Die Anzahl von Stämmen in Esperanto ist durch ein System von Vor- und Nachsilben, die feste Bedeutungen haben, begrenzt. durch sie kann man neue Wörter bilden, deren Bedeutung aus den verschiedenen Elementen hervorgeht.")
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .padding(.bottom, 2)
                Divider()
                Text("Bei der ersten Durschsicht dieser Grammatik müssen Sie, abgesehen von einigen Ausnahmen, nicht alle Vor- und NAchsilben m it Texte  durchlesen. die häufigsten sind fett gedruckt. Sie gehören zu den 520 meistgebrauchten Wortelementen des Esperanto.")
                    .font(.system(size: 14))
                    .padding(.bottom, 2)
            }
            .padding()
            .background(Color.eo)
            .border(Color.black, width: 2)
            .cornerRadius(5)
            .padding()
            Spacer()
            
            List {
                ForEach(nachsilben, id: \.0) { item in
                    HStack{
                        Text(item.0)
                            .font(.system(size: 14))
                           .frame(width: 50, alignment: .leading)
                        VStack(alignment: .leading){
                            Text(item.1)
                                .font(.system(size: 14))
                            Text(item.2)
                                .font(.system(size: 14))
                        }
                        
                    }
                }
            }
        }
        .navigationTitle("Nachsilben")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NachsilbenView()
}
