//
//  SginInScreen.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/5/23.
//

import SwiftUI

struct SginInScreen: View {
    @State var email =  ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            Image("proimage")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(22.5)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(22.5)
            Button(action: {
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Spacer()
                Text("Sgin In")
                Spacer()
            }).frame(height: 45).foregroundColor(.white)
                .background(Color.red).cornerRadius(22.5)
            Spacer()
            HStack{
                Text("Don't have an account?")
                Text("Sgin Up")
            }
        }
    }
}

#Preview {
    SginInScreen()
}
