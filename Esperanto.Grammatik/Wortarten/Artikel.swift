//
//  Artikel.swift
//  Esperanto.Grammatik
//
//  Created by Flama Henkel on 12.03.24.
//

import SwiftUI



struct Artikel: View {
    var body: some View {
        VStack {
            Text("La =  der, die, das. Es gibt keinen unbestimmten Artikel.")
                .font(.system(size: 16))
                .fontWeight(.medium)
        }
        
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.eo)
        .border(Color.black, width: 2)
        .cornerRadius(5)
        .padding()
        .navigationTitle("Artikel")
        .navigationBarTitleDisplayMode(.inline)
        Spacer()
    }
}

#Preview {
    Artikel()
}

