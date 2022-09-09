//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Ilya Kozhevnikov on 09.09.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var active: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .saturation(active ? 1 : 0.1)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, active: false)
    }
}
