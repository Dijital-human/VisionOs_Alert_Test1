//
//  ContentView.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 05.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    
    @State private var textName: String = ""
    @State private var textSurName: String = ""
    @State private var textAge: String = ""

    @State private var user: User? = nil
    @State private var isPresent: Bool = false
    @State private var showAlert: Bool = false
    var body: some View {
        ZStack(alignment: .top, content: {
            Rectangle().clipShape(RoundedRectangle(cornerRadius: 25.0))
            Rectangle().stroke(.red,style: StrokeStyle(lineWidth: 3.0, dash: [5, 10])).clipShape(RoundedRectangle(cornerRadius: 25.0))
            VStack(alignment: .center, spacing: 10.0, content: {
                Text("Alert").font(Font.custom("Optima", size: 44))
                Text("Alert Controller istifadeciye verile bilecek bildirislerdi").font(.title).foregroundStyle(.gray)
                HStack(spacing: 20.0){
                    Text("Ended your name:\t")
                    VStack{
                        TextField("", text: $textName).labelsHidden().padding(.horizontal).multilineTextAlignment(.center)
                        Divider()
                    }
                }.frame(maxWidth: 600, maxHeight: 50)
                HStack(spacing: 20.0){
                    Text("Ended your surname:")
                    VStack{
                        TextField("", text: $textSurName).labelsHidden().padding(.horizontal).multilineTextAlignment(.center)
                        Divider()
                    }
                }.frame(maxWidth: 600, maxHeight: 50)
                HStack(spacing: 20.0){
                    Text("Ended your age:\t\t")
                    VStack{
                        TextField("", text: $textAge).labelsHidden().padding(.horizontal).multilineTextAlignment(.center)
                        Divider()
                    }
                }.frame(maxWidth: 600, maxHeight: 50)
                Button(action: {
                    
                    user = User(name: textName, surname: textSurName, age: textAge)
                    showAlert.toggle()
                    
                }, label: {
                    Text("Button").frame(maxWidth: 500).foregroundStyle(.white)
                }).background(.blue).clipShape(Capsule())
            }).foregroundStyle(.black).padding()
        })
        .alert(item: $user) { us in
            Alert(title: Text("Name: \(us.name)"), message: Text("Surname: \(us.surname) \nAge: \(us.age)"))
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
