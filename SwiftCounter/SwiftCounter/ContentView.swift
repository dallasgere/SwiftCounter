//
//  ContentView.swift
//  SwiftCounter
//
//  Created by Dallas Gere on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(count)")
                Spacer().frame(height: 20)
                HStack {
                    Button {
                        decrease()
                    } label: {
                        Text("decrease")
                            .padding()
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(
                                    cornerRadius: 25,
                                    style: .continuous
                                )
                            )
                            .overlay {
                                
                                RoundedRectangle(
                                    cornerRadius: 25,
                                    style: .continuous
                                )
                                .stroke(.teal, lineWidth: 2)
                            }
                    }
                    
                    Button {
                        increase()
                    } label: {
                        Text("increase")
                            .padding()
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(
                                    cornerRadius: 25,
                                    style: .continuous
                                )
                            )
                            .overlay {
                                
                                RoundedRectangle(
                                    cornerRadius: 25,
                                    style: .continuous
                                )
                                .stroke(.teal, lineWidth: 2)
                            }
                    }
                }
            }
            .navigationTitle("Counter")
        }
    }
    
    func increase() {
        count += 1
    }
    
    func decrease() {
        count -= 1
    }
}

#Preview {
    ContentView()
}
