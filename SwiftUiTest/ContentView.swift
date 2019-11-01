//
//  ContentView.swift
//  SwiftUiTest
//
//  Created by Myo Set Paing on 10/29/19.
//  Copyright © 2019 Myo Set Paing. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300.0)
            CircleImage(image: landmark.image)
                    .offset( y: -130)
                    .padding(.bottom,-130)
                           
            VStack(alignment: .leading) {
                
               
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
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
        ContentView(landmark:landmarkData[0])
    }
}
