//
//  StarterScreen.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/5/23.
//

import SwiftUI

struct StarterScreen: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    var body: some View {
        
        VStack{
            if self.status {
                HomeScreen()
            } else {
                SginInScreen()
                }
            }
        .onAppear{
            let forName = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main){ (_) in print("Call Notification Center")
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                }
            }
        }
    }

#Preview {
    StarterScreen()
}
