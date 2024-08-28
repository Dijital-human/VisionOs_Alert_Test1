//
//  Alert_Test_4.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 06.08.24.
//

import SwiftUI

struct Alert_Test_4: View {
    @State private var txtName: String = ""
    @State private var number: String = ""

    @State private var num1 = Int.random(in: 1...5)
    @State private var num2 = Int.random(in: 1...5)

    var body: some View {
        VStack(alignment: .center, spacing: 10.0, content: {
            Text("Alert Test - 4")
            Text("Alert Controller istifadeciye verilecek bir bildirisdi").foregroundStyle(.secondary).font(.title)
            VStack{
                ZStack{
                    Rectangle().fill(.brown).clipShape(Capsule())
                    HStack(spacing: 20.0, content: {
                        Text("Adiniz : ")
                        TextField(text: $txtName) {
                            Text("Adinizi qeyd edin :")
                        }.multilineTextAlignment(.leading)
                        
                    }).font(.title).padding(20)
                }.frame(height: 60)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.white)
                    HStack(spacing: 10.0, content: {
                        Text("\(num1)")
                        Image(systemName: "plus")
                        Text("\(num2)")
                        Image(systemName: "equal")
                        TextField(text: $number) {
                            Text("?")
                        }.foregroundStyle(.blue)
                    }).padding()
                }.foregroundStyle(.black).frame(height: 100).padding(.top, 20)
            }.frame(maxWidth: 600)
            Button(action: {}, label: {
                Text("Total").frame(width: 500, height: 60).padding(.horizontal)
            }).background(.blue).clipShape(Capsule())
        }).font(Font.custom("Optima", size: 44))
    }
}

#Preview(windowStyle: .automatic) {
    Alert_Test_4()
}
