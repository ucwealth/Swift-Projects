//
//  ContentView.swift
//  LcoSwiftuiApp
//
//  Created by Decagon on 20/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("time_management")
                .resizable()
                .scaledToFit()
                .frame(height: 90)
            VStack(alignment: .leading, spacing: 20){
                Text("Interview Preparation Here")
                    .fontWeight(.medium)
                    .font(.headline)
                Text("\u{} 249")
                    .fontWeight(.medium)
                    .font(.subheadline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
