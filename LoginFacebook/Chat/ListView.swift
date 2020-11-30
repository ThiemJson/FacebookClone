//
//  ListView.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/27/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct ListItemDTO : Identifiable {
    var id : UUID = UUID()
    var stuID :String
    var stuName: String
}

struct ListItem: View {
    var listItemDTO : ListItemDTO
    
    var body: some View {
        HStack{
            Group{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .frame(width:  50, height: 50)
                    .padding()
                Spacer()
            }
            Spacer()
            Group{
                VStack(alignment: .leading){
                    Text("ID: " + self.listItemDTO.stuID)
                    Text("Name: " + self.listItemDTO.stuName)
                }
            }
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct ListView: View {
    @State var listItems = [ListItemDTO]()
    @State var textInput : String
    var body: some View {
        VStack()
            {
                Group {
                    
                    HStack {
                        Spacer()
                        Text("TOP Header")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                        Spacer()
                        VStack{
                            Spacer()
                            TextField("Phone number or email", text: $textInput)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .frame( width: UIScreen.screenWidth * 0.3 ,height:UIScreen.screenHeight * (59 / 957) )
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.leading, .trailing], 20)
                                .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color(UIColorPalettes.textColor), lineWidth: 2))
                            Spacer()
                        }
                        Spacer()
                        
                    }
                    
                }.frame(width: UIScreen.screenWidth * 0.99,height: UIScreen.screenHeight * 0.1)
                    .background(Color(UIColorPalettes.primaryColor))
                ScrollView(.vertical, showsIndicators: true)
                {
                    ForEach(0..<listItems.count){
                        ListItem(listItemDTO: self.listItems[$0])
                    }
                }
                Group {
                    Text("BOTTOM FOOTER")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                }.frame(width: UIScreen.screenWidth * 0.99,height: UIScreen.screenHeight * 0.1)
                    .background(Color(UIColorPalettes.primaryColor))
        }
    }
}
let listItems : [ListItemDTO] = [
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
    ListItemDTO(stuID: "185061743", stuName: "Nguyencaothiem"),
]
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(listItems: listItems, textInput: "")
    }
}
