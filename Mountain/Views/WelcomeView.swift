//
//  SignInView.swift
//  Mountain
//
//  Created by Jason Cheladyn on 2022/03/31.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Text("Mountain")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Image(uiImage: #imageLiteral(resourceName: "onboardingImage"))
                        .resizable()
                        .frame(width: 300, height: 300)
                    Spacer()
                    NavigationLink(
                        destination: SignInView(), label: {
                            WelcomeButton(title: "Sign In", color: "secondarySupportColor", foregroudColor: "BgColor")
                    })
                    .padding()
                    NavigationLink(
                        destination: SignUpView(), label: {
                            WelcomeButton(title: "New? Sign Up", color: "BgColor", foregroudColor: "secondarySupportColor")
                    })
                    .padding()
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct WelcomeButton: View {
    var title: String
    var color: String
    var foregroudColor: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color(foregroudColor))
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(color))
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}
