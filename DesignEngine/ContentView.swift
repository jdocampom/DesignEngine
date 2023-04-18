//
//  ContentView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import InkTouchHelpers
import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: .zero) {
                ScrollView {
                    ForEach(viewModel.detailRows, id: \.id) { row in
//                        var field = row.firstRow
//
//                        var fo = row.fields?.first?.contents.t
                        
                        if let fields = row.fields, var first = fields.first {
                            
                            if first.contents.type == "TextInput" {
                                
                                ITUIBuilderTextInputView(
                                    withLabelText: first.label ?? .empty,
                                    andPlaceholder: first.contents.placeholder ?? .empty,
                                    andText: Binding(
                                        get: {
                                            first.contents.text ?? .empty
                                        },
                                        set: { newValue in
                                            first.contents.text = newValue
                                        }
                                    )
                                )
                            }
                            
                        }
                        
//                        if row.fields?.first?.contents.type == "TextInput" {
//                            ITUIBuilderTextInputView(
//                                withPlaceholder: row.fields?.first?.contents.placeholder ?? .empty,
//                                andText: Binding(
//                                    get: {
//                                        row.fields?.first?.contents.text ?? .empty
//                                    },
//                                    set: { newValue in
//                                        row.fields?.first?.contents.text = newValue
//                                    }
//                                )
//                            )
//                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: .zero) {
                    ForEach(viewModel.footerRows, id: \.id) { row in
//                        var field = row.firstRow
                        
                        if let fields = row.fields, let first = fields.first, let contents = first.contents, let type = contents.type {
                            
                            if type == "Button" {
                                
                                ITUIBuilderButton(
                                    title: contents.text ?? "Empty",
                                    backgroundColor: .brandPrimary,
                                    action: {
                                        HapticFeedback.warning.vibrate()
                                    }
                                )
                            }
                            
                        }
                        
//                        if row.fields?.first?.contents.type == "Button" {
//                            ITUIBuilderButton(
//                                title: row.fields?.first?.contents.text ?? "Empty",
//                                backgroundColor: .brandPrimary,
//                                action: {
//                                    HapticFeedback.warning.vibrate()
//                                }
//                            )
//                        }
                    }
                }
                
                //                List {
                //                    Section {
                //                        Button {
                //                            dump(viewModel.detailsRows)
                //                        } label: {
                //
                //                        }
                //                    } header: {
                //                        Text("Test")
                //                    } footer: {
                //                        Text("Test Section")
                //                    }
                //                }
                
            }
            
            .navigationTitle(viewModel.title)
            .onAppear {
                viewModel.updateUI()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
