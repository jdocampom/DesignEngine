//
//  ContentView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ContentViewModel()
    
    @State var test = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: .zero) {
                ScrollView {
                    ForEach(viewModel.detailsRows, id: \.id) { row in
                        TextInputView(
                            withPlaceholder: row.firstRow.contents.placeholder,
                            andText: Binding(
                                get: {
                                    row.firstRow.contents.text
                                },
                                set: { newValue in
                                    row.firstRow.contents.text = newValue
                                }
                            )
                        )
                    }
                    Spacer()
                }
                
                ForEach(0..<2) { _ in
                    Button {
                        print("Test")
                    } label: {
                        Label("Print Detail Rows", systemImage: "hammer.fill")
                    }
                    .frame(height: .largeRowHeight)
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
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
