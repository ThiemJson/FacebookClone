//
//  ContentView.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/26/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var userPass: String = ""
    
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
                        Button(action: { }) {
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
                        
                        Text("Back")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(10.0)
                            .onTapGesture(count: 1) {
                                print("Double tapped!")
                        }
                        
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
            
            
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    static let heightMainHeader = UIScreen.main.bounds.size.height * (327 / 957)
}

struct UIColorPalettes{
    static let primaryColor = UIColor(rgb: 0x013679)
    static let primaryColorTint = UIColor(rgb: 0xe2f1fe)
    static let secondaryColor = UIColor(rgb: 0x026deb)
    static let textColor = UIColor(rgb: 0xcecece)
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
