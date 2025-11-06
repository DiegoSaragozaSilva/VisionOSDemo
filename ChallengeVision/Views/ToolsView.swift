//
//  ToolsView.swift
//  ChallengeVision
//
//  Created by Diego Saragoza da Silva on 05/11/25.
//

import SwiftUI

struct ToolsView: View {
    @Binding public var toolStates: [Bool]
    
    @State private var isVisible: Bool = false
    
    var body: some View {
        Group {
            if isVisible {
                //                ZStack {
                //                    Color.red
                //                        .frame(maxWidth: .infinity, alignment: .center)
                //                        .onTapGesture {
                //                            withAnimation {
                //                                isVisible = false
                //                            }
                //                        }
                
                HStack(spacing: 35) {
                    ToolButtonView(type: .circle, isPressed: $toolStates[0])
                    ToolButtonView(type: .circle, isPressed: $toolStates[1])
                    ToolButtonView(type: .circle, isPressed: $toolStates[2])
                    Rectangle()
                        .frame(width: 2, height: 48)
                    ToolButtonView(type: .square, isPressed: $toolStates[3])
                    ToolButtonView(type: .diamond, isPressed: $toolStates[4])
                }
                .frame(width: 450, height: 64)
                .glassBackgroundEffect()
                //                }
                .transition(.asymmetric(
                    insertion: .push(from: .trailing).combined(with: .opacity),
                    removal: .push(from: .leading).combined(with: .opacity))
                )
            }
            else {
                Button {
                    withAnimation {
                        isVisible.toggle()
                    }
                } label: {
                    ZStack {
                        Circle()
                            .frame(width: 64)
                            .foregroundStyle(.thinMaterial)
                        Image(systemName: "plus")
                    }
                }
                .buttonStyle(.plain)
            }
        }
    }
}

#Preview {
    @Previewable @State var toolStates: [Bool] = [false, false, false, false, false]
    
    ToolsView(toolStates: $toolStates)
}
