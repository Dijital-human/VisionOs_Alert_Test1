//
//  Alert_Test_3.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 06.08.24.
//

import SwiftUI

struct Alert_Test_3: View {
    @State private var show: Bool = false
    @ObservedObject private var registeruser = RegisterUsers()
    var body: some View {
        VStack(alignment:.center,spacing: 20.0){
            Image(systemName: "person").foregroundStyle(.orange)
            Text("Aler Test - 1")
            Text("Alert messaj istifadeciye verilen bildiris mesajlaridi").foregroundStyle(.secondary).font(.title)
            VStack(alignment: .center, spacing: 20.0, content: {
                HStack(alignment: .center,spacing: 30.0,  content: {
                    ZStack(alignment: .center, content: {
                        Rectangle().clipShape(RoundedRectangle(cornerRadius: 25.0))
                        if registeruser.name.isEmpty{
                            HStack(spacing: 20.0){
                                Text("Adinizi qeyd edin...")
                                Image(systemName: "pencil")
                            }.foregroundStyle(.gray)
                        }
                        TextField("", text: $registeruser.name).labelsHidden().multilineTextAlignment(.center).foregroundStyle(.black)
                    }).frame(height: 50)
                    
                    
                    
                }).frame(maxWidth: 600, alignment: .center).font(.title)
                HStack(alignment: .center,spacing: 30.0,  content: {
                    ZStack(alignment: .center, content: {
                        Rectangle().clipShape(RoundedRectangle(cornerRadius: 25.0))
                        if registeruser.surname.isEmpty{
                            HStack(spacing: 20.0){
                                Text("Adinizi qeyd edin...")
                                Image(systemName: "pencil")
                            }.foregroundStyle(.gray)
                        }
                        TextField("", text: $registeruser.surname).labelsHidden().multilineTextAlignment(.center).foregroundStyle(.black)
                    }).frame(height: 50)
                    
                    
                    
                }).frame(maxWidth: 600, alignment: .center).font(.title)
                HStack(alignment: .center,spacing: 30.0,  content: {
                    ZStack(alignment: .center, content: {
                        Rectangle().clipShape(RoundedRectangle(cornerRadius: 25.0))
                        if registeruser.age.isEmpty{
                            HStack(spacing: 20.0){
                                Text("Adinizi qeyd edin...")
                                Image(systemName: "pencil")
                            }.foregroundStyle(.gray)
                        }
                        TextField("", text: $registeruser.age).labelsHidden().multilineTextAlignment(.center).foregroundStyle(.black)
                    }).frame(height: 50)
                    
                    
                    
                }).frame(maxWidth: 600, alignment: .center).font(.title)
            })
            
            
            Button(action: {
                
                show = true
                
            }, label: {
                Text("Save").frame(width: 500).font(Font.custom("Futura", size: 32))
            }).background(.blue).clipShape(Capsule())
        }.font(Font.custom("Optima", size: 44))
        
            .alert(isPresented: $show) {
                Alert(title: Text("1"), message: Text("2"), primaryButton: Alert.Button.cancel(), secondaryButton: Alert.Button.destructive(Text("destructive")))
            }
    }
}

#Preview(windowStyle:.automatic) {
    Alert_Test_3()
}
