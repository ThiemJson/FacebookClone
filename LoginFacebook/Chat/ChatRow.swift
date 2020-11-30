//
//  ChatRow.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/30/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct ChatRow: View {
    var messageDetail: MessageDetail;
    var body: some View {
        Group
            {
                HStack{
                    CircleImage(imagePath: "user_logo_1")
                        .padding(.trailing,10)
                        .padding(.leading,0)
                    VStack(alignment: .leading){
                        Spacer();
                        Text(self.messageDetail.user)
                            .foregroundColor(Color(UIColorPalettes.primaryColor))
                            .fontWeight(.bold)
                        Spacer()
                        Text(self.messageDetail.message)
                            .foregroundColor(Color(UIColorPalettes.text))
                        Spacer();
                    }
                    Spacer()
                }
        }
        .frame(width: UIScreen.screenWidth * 0.8,height: UIScreen.screenHeight * 0.09)
    }
}

struct ChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(messageDetail: MessageDetail(user: "Nguyen Cao Thiem", message: "Ăn cơm chưa em??"))
    }
}
