//
//  ViewModel.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import InkTouchHelpers
import ITUIBuilderKit
import Foundation

@MainActor final class ContentViewModel: ObservableObject {
    
    @Published var title: String = .empty
    
        
    var detailRows: [InkUIBuilderKitView.View.Detail.Row] {
        guard let rows = viewElement.view.details?.rows else {
            fatalError()
        }
        return rows
    }
    
    var footerRows: [InkUIBuilderKitView.View.Footer.Row] {
        guard let rows = viewElement.view.footer?.rows else {
            fatalError()
        }
        return rows
    }
    
//    var detailsRows: [Row] {
//        guard let items = viewElement.view?.details?.rows else {
//            return []
//        }
//        return items
//    }
//    
//    var footerRows: [Row] {
//        guard let items = viewElement.view?.footer?.rows else {
//            return []
//        }
//        return items
//    }
    
    
//    var detailsTextInputViews: [RowItem] {
//        return detailsRows.flatMap { $0.fields.filter { $0.contents.type == "TextInput" } }
//    }
    
    private(set) var viewElement: InkUIBuilderKitView//JSONFile
    
    
    
    init() {
        viewElement =  Bundle.main.decode("passenger_on_demand.json")
    }
    
    func updateUI() {
        title = viewElement.view.title
    }
    
    
    
}
