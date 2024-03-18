//
//  Wortfolge.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI

struct Wortfolge: View {
    var body: some View {
        VStack(alignment: .leading)  {
            Text("Die Wortfolge in Esperanto ist freier als in anderen Sprachen. So kann man das Adjektiv vor oder nach dem Substantiv setzen, das Verb vorne oder hinten im Satz.")
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .padding(.bottom, 2)
            Divider()
            Text("Dennoch ist die Wortfolge nicht ganzt frei. So befindet sich das Adjektiv immer bei dem betreffenden Substantiv, nicht immer vor dem verneinenden Satzteil, oder ähnlich.")
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .padding(.bottom, 2)
            
        }
        .padding()
        .background(Color.eo)
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Wortfolge")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
        
    }
}

#Preview {
    Wortfolge()
}
