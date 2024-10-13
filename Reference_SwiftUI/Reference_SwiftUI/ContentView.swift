//
//  ContentView.swift
//  Reference_SwiftUI
//
//  Created by 변상필 on 7/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button {
                print(Date.now.basic)
            } label: {
                Text("Date")
                    
            }
            .buttonStyle(.bordered)
            
//            Button {
//                print(yesterday)
//            } label: {
//                Text("yesterday Date")
//            }
//            .buttonStyle(.bordered)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
