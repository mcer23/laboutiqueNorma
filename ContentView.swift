//
//  ContentView.swift
//  laboutiqueNorma
//
//  Created by melissa estrada on 25/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var goToCart = false
    
    
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var items:[[Any]] = shopItems
    
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing:5) {
                VStack{
                    Text("La boutique Norma").font(.system(size: 38)) .frame(width:320, alignment: .leading).foregroundColor(.gray)
                    Text("Siente la calidad,\n vive el estilo").font(.system(size: 38, weight:.bold, design: .rounded )).frame(width: 320, alignment: .leading)
                    Spacer().frame(height: 15)
                    Text("Novedades").font(.system(size: 38)).frame(width: 320, alignment: .leading).foregroundColor(.gray)
                }.padding(20)
                ScrollView(){
                LazyVGrid(columns:columns, spacing: 30){
                    ForEach(0..<items.count, id:\.self) { item in
                        shopitem(ImageName:
                                 items[item][0] as! String,
                                 title: items[item][1] as! String,
                                 stock: items[item][2] as! Int,
                                 price: items[item][3] as! Double,
                                 color: items[item][4] as! Color,
                                 selfIndex: item)
                    }
                }
                    
                }.padding(5)
                Spacer()
                menu()
                    .frame(maxWidth:.infinity)
            }
            .navigationDestination(isPresented: $goToCart){
                bag()
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(){
                        goToCart = true
                    } label: {
                        Image(systemName: "bag")
                    }
                }
            }
        
        }
        }
    
        
}

#Preview {
    ContentView()
}
