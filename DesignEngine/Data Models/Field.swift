//
//  Field.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import Foundation




// MAIN ROW ELEMENT





// TEXTFIELD ROW ELEMENT

//class TextInput: RowItem, Identifiable {
//
//    required init(from decoder: Decoder) throws {
//        try! super.init(from: decoder)
//    }
//
//    override func encode(to encoder: Encoder) throws {
//
//    }
//    var id: String = ""
//    var label: String = ""
//    var mandatory: Bool = false
//    var contents: Content
//
//    class Content: Codable {
//        var type: String
//        var placeholder: String
//        var text: String
//    }
//
//}

//
//struct Unknown: Codable {
//    struct Content: Codable {
//        let type: String
//        let placeholder: String
//        let text: String
//    }
//    
//
//}
//








// BUTTON ROW ELEMENT
//
//class ButtonItem: RowItem {
//    
//}






//
//struct Unknown: Codable {
//
//    struct Row: Codable {
//        let id: Int
//        let fields: [TextInput]
//    }
//    let rows: [Row]
//
//}


//struct TextInput: Codable {
//
//
//    struct Content: Codable {
//        let type: String
//        let placeholder: String
//        let text: String
//    }
//
//    let id: String
//    let label: String
//    let mandatory: Bool?
//    let contents: Content
//    let width: String?
//
//}

 
enum RowItemType {

    case none
    case textField
    case button


}
