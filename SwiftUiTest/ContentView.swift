//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Myo Set Paing on 10/29/19.
//  Copyright © 2019 Myo Set Paing. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
                CircleImage()
                    .offset( y: -130)
                    .padding(.bottom,-130)
                           
            VStack(alignment: .leading) {
                
               
                Text("Phone Thiri Kyaw")
                    .font(.title)
                HStack {
                    Text("University Of Dagon")
                        .font(.subheadline)
                    Spacer()
                    Text("Yangon")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
