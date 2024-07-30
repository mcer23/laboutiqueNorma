//
//  shopitem.swift
//  laboutiqueNorma
//
//  Created by melissa estrada on 25/07/24.
//

import SwiftUI

struct shopitem: View {
    
    var ImageName:String
    var title:String
    var stock:Int
    var price: Double
    var color: Color
    var selfIndex: Int
    
    /// <#Description#>
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15) .foregroundColor(color).opacity(0.25).frame(width: 185, height: 285)
            VStack(spacing: 5){
                Image(ImageName) .resizable() .frame(width: 160, height: 160)
                Text(title) .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                Text("Stock: \(stock)").font(.system(size: 18, weight: .light))
                    .multilineTextAlignment(.center)
                
                Button(){
                    bagItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format:"%.2f",price))") .foregroundColor(.black) .font(.system(size: 22, weight: .bold)) .multilineTextAlignment(.center)
                }
            
            }
            
                             
                             
        }
    }
}

struct shopitem_Previews: PreviewProvider {
    static var previews: some View{
        //esto funciona como :root
        shopitem(ImageName: "p1_G", title: "Camisa", stock: 10, price: 399.00, color: Color.gray, selfIndex: 0)
    }
    
}
