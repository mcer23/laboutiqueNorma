//
//  bag.swift
//  laboutiqueNorma
//
//  Created by melissa estrada on 26/07/24.
//

import SwiftUI

struct bag: View {
    
    @State var totalPrice = 0.00
    
    var body: some View {
        VStack{
            Text("Mi bolsa").font(.system(size: 38, weight: .bold, design: .rounded)) .frame(width:320, alignment: .leading)
            
            List{
                ForEach(0..<bagItems.endIndex, id: \.self) { item in
                    HStack {
                        Image (bagItems[item][0] as! String) .resizable()
                            .frame(width: 40, height: 40)
                        VStack(spacing:5){
                            Text(bagItems[item][1] as! String)
                            Text("$\(String(format:"%.2f",bagItems[item][3] as! Double))")}
                        
                    }
                } .onDelete{indexSet in 
                    bagItems.remove(atOffsets: indexSet)
                    self.calculateTotalPrice()
                }
            }
        }
        
        Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.gray)
                    .opacity(0.8)
                    .frame(width: 350, height: 120)
                
                VStack{
                    Text("Total:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 38))
                        .frame(width: 350, alignment: .leading) .padding(.leading,60)
                    
                    Text("$\(String(format:"%.2f",totalPrice))").font(.system(size: 28, weight: .semibold, design: .rounded)) .frame(width: 350, alignment: .leading) .padding(.leading,60)}
                
                Button(){
                     
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .strokeBorder()
                            .frame(width: 120, height: 50)
                            .foregroundColor(.white)
                        Text("Pagar") .font(.system(size: 28, weight: .semibold, design: .rounded)) .foregroundColor(.white)}
                    
                } .offset(x:80)
            } .onAppear(perform: self.calculateTotalPrice)
        
        Spacer()
        menu()
            .frame(maxWidth:.infinity)
        
    
        
        
    }
    func calculateTotalPrice() {
            totalPrice = 0.00
            for item in bagItems {
                if let price = item[3] as? Double {
                    totalPrice += price
                }
            }
        }
}

#Preview {
    bag()
}
