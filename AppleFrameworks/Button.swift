//
//  Button.swift
//  AppleFrameworks
//
//  Created by Diana Duong on 12/9/23.
//  Copyright © 2023 Diana Duong. All rights reserved.
//

import SwiftUI

struct AFButton: View {
    
    var titleName: String
    var body: some View {
        Text(titleName)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}


struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(titleName: "Test Title")
    }
}


