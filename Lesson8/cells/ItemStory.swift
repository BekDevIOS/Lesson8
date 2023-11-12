//
//  ItemStory.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/12/23.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("proimage").resizable().frame(width: 70, height: 70).cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35)
                    .stroke(Color.red, lineWidth: 2))
            Text("Utkirbek").font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

#Preview {
    ItemStory()
}
