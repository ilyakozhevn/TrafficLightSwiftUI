//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilya Kozhevnikov on 09.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var activeColor: Color?
    
    var body: some View {
        VStack {
            TrafficLightView(activeColor: activeColor)
            Button {
                turnSelector()
            } label: {
                Text(activeColor == nil ?
                     "Start" : "Next")
            }
            .padding(.top, 50.0)
            .buttonStyle(.bordered)
            .foregroundColor(.black)
        }
        .padding(.vertical, 50.0)
    }
    
    private func turnSelector() {
        switch activeColor {
        case Color.red:
            activeColor = .yellow
        case Color.yellow:
            activeColor = .green
        default:
            activeColor = .red
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
