//
//  Chat.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/30/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct Chat: View {
    var body: some View {
        TabView{
            ChatCategory()
                .tabItem{
                    Image(systemName: "message.fill")
                        .foregroundColor(Color(UIColorPalettes.text))
                        .font(.system(size: 25))
                    Text("Chat")
                        .foregroundColor(Color(UIColorPalettes.text))
                        .font(.system(size: 25))
            }
            PeopleCategory()
                .tabItem{
                    Image(systemName: "video.circle.fill")
                        .foregroundColor(Color(UIColorPalettes.text))
                        .font(.system(size: 25))
                    Text("People")
                        .foregroundColor(Color(UIColorPalettes.text))
                        .font(.system(size: 25))
            }
        }
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}


struct ChatCategory: View {
    var body : some View {
        VStack{
            HStack{
                SmallCircleImage(imagePath: "user_logo_1")
                    .padding(.leading, 10)
                Spacer()
                Text("Chats")
                    .foregroundColor(Color(UIColorPalettes.text))
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                Spacer()
                NavigationLink(destination: CreateNewMessage()){
                    Image(systemName: "safari")
                        .foregroundColor(Color(UIColorPalettes.text))
                        .font(.system(size: 25))
                        .padding(.trailing,10)
                }
            }
            Spacer()

                List(messageList){
                    message in ChatRow(messageDetail: message)
                }
            Spacer()
        }
    }
}


struct PeopleCategory: View {
    var body: some View {
        Text("People")
    }
}
