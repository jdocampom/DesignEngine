//
//  ContentView.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import ITUIBuilderKit
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ITScreenView(
            withViewElement: Bundle.main.decode("search_passenger_demo.json"),
            andTintColor: .accentColor
        )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
