//
//  CircleImage.swift
//  LoginFacebook
//
//  Created by Teneocto on 11/30/20.
//  Copyright © 2020 NguyenCaoThiem. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var imagePath : String;
    var body: some View {
        Image(imagePath)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.blue, lineWidth: 2))
        .frame(width: 70, height: 70)
    }
}

struct SmallCircleImage: View {
    var imagePath : String;
    var body: some View {
        Image(imagePath)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .clipShape(Circle())
        .frame(width: 42, height: 42)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imagePath: "user_logo_1")
    }
}
