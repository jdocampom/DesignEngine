//
//  ViewModel.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import Foundation

@MainActor final class ContentViewModel: ObservableObject {
    
    var title: String {
        let title = viewElement.view.id
        let formattedTitle = title.replacingOccurrences(of: "_", with: " ")
        return formattedTitle.capitalized
    }
    
    var detailsRows: [Row] {
        guard let items = viewElement.view.details.rows else {
            return []
        }
        return items
    }
    
    
//    var detailsTextInputViews: [RowItem] {
//        return detailsRows.flatMap { $0.fields.filter { $0.contents.type == "TextInput" } }
//    }
    
    private(set) var viewElement: JSONFile
    
    
    
    init() {
        viewElement =  Bundle.main.decode("passenger_on_demand.json")
    }
    
    func test() {}
    
}
