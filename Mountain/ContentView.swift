//
//  ContentView.swift
//  Mountain
//
//  Created by Jason Cheladyn on 2022/03/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    let nm = NetworkManager()
    
    var body: some View {
        VStack (alignment: .center, spacing: 20){
            HStack (alignment: .center, spacing: 20){
                Text("Email")
                TextField("Name's placeholder", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
            }
            HStack (alignment: .center, spacing: 20){
                Text("Password")
                TextField("Name's placeholder", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
            }
            
            HStack {
                Button(action: {
                    
                    nm.registerUser(params: ["email": email, "password": password, "password_confirmation": password])
                }, label: {
                    Image(systemName: "clock")
                    Text("Register")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
                
                Button(action: {
                    
                    nm.loginUser(params: ["email": email, "password": password, "password_confirmation": password])
                }, label: {
                    Image(systemName: "clock")
                    Text("Sign In")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
            }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
