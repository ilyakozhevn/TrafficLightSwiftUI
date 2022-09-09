//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilya Kozhevnikov on 09.09.2022.
//

import SwiftUI

struct TrafficLightView: View {
    var activeColor: Color?
    
    var body: some View {
        VStack {
            ColorCircleView(
                color: .red,
                active: activeColor == .red
            )
            ColorCircleView(
                color: .yellow,
                active: activeColor == .yellow
            )
            ColorCircleView(
                color: .green,
                active: activeColor == .green
            )
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
