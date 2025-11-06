//
//  ToolButtonView.swift
//  ChallengeVision
//
//  Created by Diego Saragoza da Silva on 05/11/25.
//

import SwiftUI

struct ToolButtonView: View {
    @State public var type: ToolButtonType
    @Binding public var isPressed: Bool
    
    @State private var data: String = "AAA"
    
    var body: some View {
        Group {
            switch type {
            case .circle:
                Circle()
                    .frame(width: 44)
            case .square:
                Rectangle()
                    .frame(width: 44, height: 44)
            case .diamond:
                Rectangle()
                    .frame(width: 44, height: 44)
                    .rotationEffect(.degrees(45.0))
            }
        }
        .glassBackgroundEffect()
        .draggable(data)
    }
}

#Preview {
    ToolButtonView(type: .circle, isPressed: .constant(false))
}
