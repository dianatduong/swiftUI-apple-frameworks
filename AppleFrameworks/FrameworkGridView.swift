//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Diana Duong on 12/3/23.
//  Copyright © 2023 Diana Duong. All rights reserved.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columnsArray: [GridItem] = [ GridItem(.flexible()),
                                     GridItem(.flexible()),
                                     GridItem(.flexible())
                                    ]
    
    var body: some View {
        
        LazyVGrid(columns: columnsArray) {
            ForEach(MockData.frameworks) { frameworkItem in
                FrameworkTitleView(eachFramework: frameworkItem)
            }
            
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    
    let eachFramework: Framework
    
    var body: some View {
        VStack {
            Image(eachFramework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(eachFramework.name)
                .font(.title)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
