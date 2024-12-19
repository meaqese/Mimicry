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
                if !isOpened {
                    Spacer()
                }
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue)
                    .frame(width: isOpened ? .infinity : 130, height: isOpened ? 400 : 100)
                    .opacity(isOpened ? 1 : 0)
                    .overlay {
                        VStack {
                            HStack {
                                Image(systemName: "arrowshape.backward.fill")
                                    .foregroundStyle(.white)
                                    .opacity(isOpened ? 1 : 0)
                                    .padding(.leading, 10)
                                Text(isOpened ? "Back" : "Open")
                                    .bold()
                                    .padding(isOpened ? .vertical : .all, 20)
                                    .background(isOpened ? .clear : .blue)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
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
                if isOpened {
                    Spacer()
                }
            }
            if isOpened {
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
