//
//  ViewModel.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import ITUIBuilderKit
import Foundation

@MainActor final class ContentViewModel: ObservableObject {
    
    @Published var title: String = ""
    
    var headerRows: [ITUIBuilderKitView.Row] {
        guard let rows = viewElement.view.header?.rows else {
            return []
        }
        return rows
    }
        
    var detailRows: [ITUIBuilderKitView.Row] {
        guard let rows = viewElement.view.details?.rows else {
            return []
        }
        return rows
    }
    
    var footerRows: [ITUIBuilderKitView.Row] {
        guard let rows = viewElement.view.footer?.rows else {
            return []
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
    
    private(set) var viewElement: ITUIBuilderKitView//JSONFile
    
    
    
    init() {
        viewElement =  Bundle.main.decode("passenger_on_demand.json")
    }
    
    func updateUI() {
        title = viewElement.view.title
    }
    
    
    
}
