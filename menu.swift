//
//  menu.swift
//  laboutiqueNorma
//
//  Created by melissa estrada on 29/07/24.
//

import SwiftUI

struct menu: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                // Acción para el icono de perfil
            }) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: {
                // Acción para el icono de pagar
            }) {
                Image(systemName: "creditcard")
                    .resizable()
                    .frame(width: 30, height: 24)
                    .foregroundColor(.black)
            }
            Spacer()
            Button(action: {
            }) {
                Image(systemName: "power")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
            }
            Spacer()
        }
        
    }
}

struct menu_Previews: PreviewProvider {
    static var previews: some View {
        menu()
    }
}

