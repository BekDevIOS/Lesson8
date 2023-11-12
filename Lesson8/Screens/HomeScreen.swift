//
//  HomeScreen.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/5/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }
                ItemPost(img_url: "image1")
                ItemPost(img_url: "image2")
                ItemPost(img_url: "image3")
            }.listStyle(PlainListStyle())
                .navigationBarItems(leading: Text("Instagram").font(.title).bold().foregroundColor(.red), trailing: HStack{Image("ic_like")
                    Image("ic_send")})
        }
    }
}

#Preview {
    HomeScreen()
}
