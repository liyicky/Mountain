//
//  SignUpView.swift
//  Mountain
//
//  Created by Jason Cheladyn on 2022/03/31.
//

import SwiftUI

struct SignUpView: View {
    
    let nm = NetworkManager()
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("Sign Up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "appleLogo")), text: Text("Sign up with Apple"))
                    
                    SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "googleLogo")), text: Text("Sign up with Google").foregroundColor(Color("primaryColor")))
                    
                    Spacer()
                    
                    Text("or sign up with email and password")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                    
                    TextField("Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    Button(action: {
                        nm.registerUser(params: ["email": email, "password": password, "password_confirmation": password])
                    }, label: {
                        WelcomeButton(title: "Register", color: "secondarySupportColor", foregroudColor: "BgColor")
                    })
                        
                    Spacer()
                    
                    
                    
                }
                .padding()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}
