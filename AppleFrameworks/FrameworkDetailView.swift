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
            Spacer()

            
            FrameworkTitleView(eachFramework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
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


