//
//  VorsilbenView.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct VorsilbenView: View {
    
    let vorsilben = [
        ("bo", "Verwandtschaft durch Heirat", "bopatro = Schwiegervater"),
        ("dis-", "zer-, auseinander-", "disŝiri = zerreißen, disa = getrennt"),
        ("ek-", "beginnende Handlung","ekparoli = beginnen zu sprechen"),
        ("eks-", "ehemals, außer Dienst, Ex-","eksamiko = ehemaliger Freund"),
        ("ge-", "Vereinigung beiderlei Geschlechtes,","gepatroj = Eltern"),
        ("mal-", "Gegenteil(iges)","malbela = häßlich"),
        ("mis-", "Unrichtiges, Falsches","miskompreno = Mißverständnis"),
        ("pra-", "Ur-, Vorzeitliches, Ursprüngliches","praavo = Urgroßvater"),
        ("re-", "Wiederholung, Rückkehr","rebveni = wiederkommen")
    ]
    
    var body: some View {
        VStack{
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
           
            
            List {
                ForEach(vorsilben, id: \.0) { item in
                    HStack {
                        Text(item.0)
                            .font(.system(size: 14))
                            .frame(width: 50, alignment: .leading)
                        VStack(alignment: .leading) {
                            Text(item.1)
                                .font(.system(size: 14))
                            Text(item.2)
                                .font(.system(size: 14))
                        }
                      
                    }
                   
                }
               
            }
           
        }
        .navigationTitle("Vorsilben")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    VorsilbenView()
}
