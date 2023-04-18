//
//  ContentView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import ITUIBuilderKit
import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: .zero) {
                
                VStack(alignment: .leading, spacing: .zero) {
                    ForEach(viewModel.headerRows, id: \.id) { row in
                        ForEach(row.fields, id: \.id) { field in
                            Text(field.id)
                        }
                    }
                }
                
                ScrollView {
                    ForEach(viewModel.detailRows, id: \.id) { row in
                        ForEach(row.fields, id: \.id) { field in
                            if field.contents.type == "TextInput" {
                                ITTextInputView(withRow: row, andTintColor: .brandPrimary)
                            }
                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: .zero) {
                    ForEach(viewModel.footerRows, id: \.id) { row in
                        ForEach(row.fields, id: \.id) { field in
                            if field.contents.type == "Button" {
                                ITButtonView(withRow: row, andTintColor: .brandPrimary)
                            }
                        }
                    }
                }
                
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
