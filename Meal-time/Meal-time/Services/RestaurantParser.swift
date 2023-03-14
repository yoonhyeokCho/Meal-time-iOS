//
//  RestaurantParser.swift
//  Meal-time
//
//  Created by yoonhyeok on 2023/03/14.
//

import Foundation

class RestaurantParser: NSObject, XMLParserDelegate {

    static func fetchData() {
        let urlString = "http://openapi.seoul.go.kr:8088/sample/xml/LOCALDATA_072404/1/5/"
        if let url = URL(string: urlString) {
            if let parser = XMLParser(contentsOf: url) {
                let delegate = RestaurantParser()
                parser.delegate = delegate
                parser.parse()
            }
        }
    }

    var currentElement = ""
    var classification = ""
    var restaurantName = ""

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {

        currentElement = elementName
        if currentElement == "row" {
            classification = ""
            restaurantName = ""
        }
    }
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        switch currentElement {
        case "BPLCNM":
            classification += string
        case "UPTAENM":
            restaurantName += string
        default:
            break
        }
    }
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "row" {
            print("\(classification) - \(restaurantName)")
        }
    }
}
