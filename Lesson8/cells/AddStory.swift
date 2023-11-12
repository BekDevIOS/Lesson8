//
//  AddStory.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/12/23.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image("proimage").resizable().frame(width: 70, height: 70).cornerRadius(35)
                Image("ic_add").resizable().scaledToFit().frame(width: 24,height: 24)
            }
            Text("Utkirbek").font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

#Preview {
    AddStory()
}
