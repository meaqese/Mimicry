//
//  ContentView.swift
//  Mimicry
//
//  Created by me on 19.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isOpened = false
    @Namespace private var transition: Namespace.ID
    
    var body: some View {
        ZStack {
            if isOpened {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.tint)
                    .matchedGeometryEffect(id: "bg", in: transition)
                    .aspectRatio(0.77, contentMode: .fit)
                    .frame(width: 320)
                    .overlay {
                        VStack {
                            HStack {
                                Button {
                                    withAnimation {
                                        isOpened.toggle()
                                    }
                                } label: {
                                    Label("Back", systemImage:  "arrowshape.backward.fill")
                                        .foregroundStyle(.white)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .fixedSize()
                                        .matchedGeometryEffect(id: "text", in: transition)
                                }
                                .padding()
                                
                                Spacer()
                            }
                            Spacer()
                        }
                    }
            } else {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            withAnimation {
                                isOpened.toggle()
                            }
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .matchedGeometryEffect(id: "bg", in: transition)
                                .frame(width: 100 , height: 60)
                                .foregroundStyle(.tint)
                                .overlay {
                                    Text("Open")
                                        .foregroundStyle(.white)
                                        .fontWeight(.semibold)
                                        .font(.title2)
                                        .matchedGeometryEffect(id: "text", in: transition)
                                }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
