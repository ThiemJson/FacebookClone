//
//  Login.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/30/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State var userName: String = ""
    @State var userPass: String = ""
    @State var backState: Bool = false;
    
    var body: some View {
        VStack{
            ZStack(){
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .frame(width: 100, height: 100)
            }
            .frame( width: UIScreen.screenWidth, height: UIScreen.heightMainHeader)
            .background(Color(UIColorPalettes.primaryColor))
            
            
            VStack
                {
                    TextField("Phone number or email", text: $userName)
                        .font(.system(size: 20))
                        .frame(height:UIScreen.screenHeight * (59 / 957) )
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.leading, .trailing], 20)
                        .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color(UIColorPalettes.textColor), lineWidth: 2))
                        .padding([.top],20)
                    
                    SecureField("Password", text: $userPass)
                        .font(.system(size: 20))
                        .frame(height:UIScreen.screenHeight * (59 / 957) )
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.leading, .trailing], 20)
                        .overlay(RoundedRectangle(cornerRadius: 0).stroke(Color(UIColorPalettes.textColor), lineWidth: 2))
                        .padding(.bottom,10)
                    
                    Group {
                        Button(action: {
                            print("NguyenCaoThiem")
                            //ListView(listItems: listItems, textInput: "")
                        }) {
                            Text("LOGIN")
                                .fontWeight(.bold)
                                .foregroundColor(Color(UIColorPalettes.textColor))
                                .padding(15.0)
                                .frame(width: UIScreen.screenWidth * 0.95)
                        }
                    }
                    .background(Color(UIColorPalettes.secondaryColor))
                    .cornerRadius(5.0)
                    
                    Group {
                        
                        Text("Forgot Password ?")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(10.0)
                            .padding(.top, 10)
                            .onTapGesture(count: 1) {
                                print("Double tapped!")
                        }
                        Button(action: {
                            self.backState.toggle()
                        }) {
                            Text("Back")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(10.0)
                        }.alert(isPresented: $backState, content:{
                            Alert(title: Text("Are you sure?"), message: Text("Do you want to close Facebook"), primaryButton: .default(Text("Cancel")), secondaryButton: .destructive(Text("OK")))
                        })
                        
                        
                    }
                    .foregroundColor(Color(UIColorPalettes.secondaryColor))
                    
                    Spacer()
                    ZStack{
                        Divider()
                            .frame(width: UIScreen.screenWidth * 0.7 , height: 1.5)
                            .background(Color(UIColorPalettes.textColor))
                        Group {
                            Text("OR")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .padding(.bottom, 15.0)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .background(Color(.white))
                    }
                    Group {
                        Button(action: { }) {
                            Text("CREATE NEW ACCOUNT")
                                .fontWeight(.bold)
                                .foregroundColor(Color(UIColorPalettes.secondaryColor))
                                .padding(15.0)
                                .frame(width: UIScreen.screenWidth * 0.95)
                        }
                    }
                    .background(Color(UIColorPalettes.primaryColorTint))
                    .cornerRadius(5.0)
            }
            .padding([.leading, .trailing], 20)
            .padding(.bottom, 40)
            
            
            
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
