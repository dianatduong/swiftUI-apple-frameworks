//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Diana Duong on 12/9/23.
//  Copyright © 2023 Diana Duong. All rights reserved.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    
    
    var body: some View {

        VStack {
            HStack {
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(eachFramework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action:  {
                
            }) {
                AFButton(titleName: "Learn More")
            }
        }
    }
}


struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}


