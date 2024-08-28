//
//  Alert_Test_2.swift
//  Alert_Test_1
//
//  Created by Famil Mustafayev on 05.08.24.
//

import SwiftUI

struct Alert_Test_2: View {
    @State private var txtName: String = ""
    @State private var txtSurName: String = ""
    @State private var txtAge: String = ""
    @State private var show: Bool = false
    @State private var alertTest: Alert_1? = nil
    var body: some View {
        ZStack(alignment:.top){
            
            Color.gray.clipShape(RoundedRectangle(cornerRadius: 25.0))
            Rectangle().stroke(.red, style: StrokeStyle(lineWidth: 90.0, dash: [5, 10], dashPhase: 50.0)).clipShape(RoundedRectangle(cornerRadius: 25.0))
            VStack(spacing: 10.0){
                Text("Alert").font(Font.custom("Optima", size: 44)).foregroundStyle(.white)
                Text("Alert Controller istifadeciye verilen bir bildirisdi!!!").font(.title).foregroundStyle(.secondary)
                
                VStack(alignment: .center, spacing: 10.0){
                    HStack(spacing: 10.0){
                        Text("Ended Your name: \t")
                        VStack{
                            TextField(text: $txtName) {
                                Text("Enter name: ")
                            }
                        }
                    }.padding(.horizontal)
                    HStack(spacing: 10.0){
                        Text("Ended Your name: \t")
                        VStack{
                            TextField(text: $txtName) {
                                Text("Enter surname: ")
                            }
                        }
                    }.padding(.horizontal)
                    HStack(spacing: 10.0){
                        Text("Ended Your age: \t\t")
                        VStack{
                            TextField(text: $txtName) {
                                Text("Enter name: ")
                            }
                        }
                    }.padding(.horizontal)
                    Button(action: {
                        alertTest = Alert_1(title: "Istifadeci: \(txtName)", messaj: "\(txtName) \(txtSurName) giris ederken qaydalara riayyet etmetiniz xahis olunur", users: User(name: txtName, surname: txtSurName, age: txtAge))
                        show.toggle()
                        
                    }, label: {
                        Text("Save").frame(width: 600).font(.title)
                    }).background(.blue).clipShape(Capsule()).padding(.top, 30)
                    Text("Qeydiyyatdan kecin").foregroundStyle(.red.opacity(0.7))
                }.frame(maxWidth: 600).padding(.top, 30).textFieldStyle(.roundedBorder)
            }.padding(.top, 50)
        }
        .alert(item: $alertTest) { alert in
            Alert(title: Text(alert.title), message: Text(alert.messaj), primaryButton: Alert.Button.cancel(), secondaryButton: Alert.Button.destructive(Text("destructive")))
        }
    }
}

#Preview(windowStyle: .automatic) {
    Alert_Test_2()
}
