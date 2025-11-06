//
//  MainView.swift
//  ChallengeVision
//
//  Created by Diego Saragoza da Silva on 05/11/25.
//

import SwiftUI

struct MainView: View {
    @State private var toolButtonsStates: [Bool] = [false, false, false, false, false]
    
    var body: some View {
        VStack {
            ZStack {
                
            }
            Spacer()
            HStack {
                Spacer()
                ToolsView(toolStates: $toolButtonsStates)
                    .padding([.trailing, .bottom], 32)
            }
        }
        .dropDestination(for: String.self) { droppedString, index in
            print(droppedString)
            print(index)
        }
        .toolbar {
            ToolbarItem {
                ZStack {
                    Circle()
                        .frame(width: 64)
                        .foregroundStyle(.thinMaterial)
                    Image(systemName: "trash")
                        .foregroundStyle(.white)
                }
            }
        }
        .background(.white.opacity(0.1))
    }
}

#Preview(windowStyle: .plain) {
    NavigationStack {
        MainView()
    }
}
