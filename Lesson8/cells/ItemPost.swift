//
//  ItemPost.swift
//  Lesson8
//
//  Created by Utkirbek Mekhmonboev on 11/12/23.
//

import SwiftUI

struct ItemPost: View {
    var width = UIScreen.main.bounds.width/2
    var img_url = "image1"
    var body: some View {
        VStack(alignment: .leading){
            //header
            HStack{
                Image("proimage").resizable().frame(width: 50, height: 50).cornerRadius(25)
                HStack{
                    Text("Utkirbek").font(.system(size:  14)).fontWeight(.bold)
                    Text("follow").font(.system(size: 14)).fontWeight(.bold).foregroundColor(.red)
                    Spacer()
                    Image("ic_more")
                }
            }
            
            //post image
            HStack{
                Image(img_url).resizable().scaledToFit().frame(width: width)
                Image(img_url).resizable().scaledToFit().frame(width: width)
            }
            //horizontal bar
            HStack(alignment: .center){
                Image("ic_like")
                Image("ic_comment")
                Image("ic_send")
                Spacer()
                Image("ic_collect")
            }.padding(.bottom, 5)
            
            //description
            Text("Liked by Utkirbek and 45 others").font(.system(size: 13.5)).padding(.bottom, 5)
            Text("Utkirbek thanks for sharing this post thanks for sharing this post")
                .lineLimit(4)
                .font(.system(size: 13.5))
                .foregroundColor(.init(white:0.2))
        }
    }
}

#Preview {
    ItemPost()
}
