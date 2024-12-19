//
//  ContentView.swift
//  Mimicry
//
//  Created by me on 19.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isOpened = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                    .frame(width: isOpened ? .infinity : 80, height: isOpened ? 400 : 60)
                    .padding(.bottom, isOpened ? 100 : 0)
                    .overlay {
                        VStack {
                            HStack {
                                Image(systemName: "arrowshape.backward.fill")
                                    .resizable()
                                    .foregroundStyle(.white)
                                    .frame(width: isOpened ? 15 : 0, height: 15)
                                    .opacity(isOpened ? 1 : 0)
                                    .padding(0)
                                    .padding(.leading, isOpened ? 20 : 0)
                                    .padding(.top, isOpened ? 20 : 0)
                                Text(isOpened ? "Back" : "Open")
                                    .padding(.top, isOpened ? 20: 0)
                                    .contentTransition(.identity)
                                    .bold()
                                    .foregroundStyle(.white)
                                    .onTapGesture {
                                        withAnimation(.linear) {
                                            isOpened.toggle()
                                        }
                                    }
                                if isOpened {
                                    Spacer()
                                }
                            }
                            if isOpened {
                                Spacer()
                            }
                        }
                    }
                    .onTapGesture {
                        if !isOpened {
                            withAnimation(.linear) {
                                isOpened.toggle()
                            }
                        }
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
