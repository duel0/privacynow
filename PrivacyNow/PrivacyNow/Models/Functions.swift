//
//  Functions.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import Foundation

func fetchAndProcessData(name: String, surname: String, other: String, completion: @escaping (String?) -> Void) {
    NetworkManagerA.shared.performRequest(name: name, surname: surname, other: other) { responseContent in
        if let content = responseContent {
            NetworkManagerB.shared.performRequest(testo: content) { responseContent2 in
                if let content2 = responseContent2 {
                    if let start = content2.range(of: "{"),
                       let end = content2.range(of: "}", options: .backwards) {
                        let substring = content2[start.upperBound..<end.lowerBound]
                        let formattedContent = "{\(substring)}"
                        completion(formattedContent)
                    } else {
                        print("Unable to isolate content from response")
                        completion(nil)
                    }
                } else {
                    print("Unable to isolate content from response")
                    completion(nil)
                }
            }
        } else {
            print("Unable to isolate content from response")
            completion(nil)
        }
    }
}

/*
 
 MARK: USAGE
 
 fetchAndProcessData(name: "John", surname: "Doe", other: "OtherInfo") { formattedContent in
     if let content = formattedContent {
         print("Formatted Content: \(content)")
     } else {
         print("Unable to fetch and process data")
     }
 }

 
 */
/* MARK: LAST
func extractStringKeyValuePairs(from jsonString: String) -> [String: String] {
    guard let jsonData = jsonString.data(using: .utf8) else {
        print("Invalid JSON string")
        return [:]
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] else {
        print("Failed to decode JSON")
        return [:]
    }
    
    var stringDictionary: [String: String] = [:]
    
    func extractStrings(from json: [String: Any]) {
        for (key, value) in json {
            if let stringValue = value as? String {
                stringDictionary[key] = stringValue
            } else if let arrayValue = value as? [Any], let stringArray = arrayValue as? [String] {
                stringDictionary[key] = stringArray.joined(separator: ", ")
            } else if let nestedJson = value as? [String: Any] {
                extractStrings(from: nestedJson)
            }
        }
    }
    
    extractStrings(from: json)
    
    return stringDictionary
}
*/

func extractStringKeyValuePairs(from jsonString: String) -> [String: String] {
    guard let jsonData = jsonString.data(using: .utf8) else {
        print("Invalid JSON string")
        return [:]
    }
    
    guard let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] else {
        print("Failed to decode JSON")
        return [:]
    }
    
    var stringDictionary: [String: String] = [:]
    
    func extractValueAsString(_ value: Any) -> String? {
        if let stringValue = value as? String {
            return stringValue
        } else if let numberValue = value as? NSNumber {
            // Convert numerical value to string
            return "\(numberValue)"
        } else if let boolValue = value as? Bool {
            return boolValue ? "true" : "false"
        }
        return nil
    }
    
    func extractStrings(from json: [String: Any]) {
        for (key, value) in json {
            if let stringValue = extractValueAsString(value) {
                stringDictionary[key] = stringValue
            } else if let arrayValue = value as? [Any] {
                let stringArray = arrayValue.compactMap { extractValueAsString($0) }
                stringDictionary[key] = stringArray.joined(separator: ", ")
            } else if let nestedJson = value as? [String: Any] {
                extractStrings(from: nestedJson)
            }
        }
    }
    
    extractStrings(from: json)
    
    return stringDictionary
}

/*
func extractStringKeyValuePairs(from json: [String: Any]) -> [String: String] {
    var stringDictionary: [String: String] = [:]

    for (key, value) in json {
        if let stringValue = value as? String {
            stringDictionary[key] = stringValue
        } else if let nestedJson = value as? [String: Any] {
            let nestedStringDictionary = extractStringKeyValuePairs(from: nestedJson)
            stringDictionary.merge(nestedStringDictionary) { (_, new) in new }
        }
    }

    return stringDictionary
}



func jsonStringToDictionary(jsonString: String) -> [String: String]? {
    guard let jsonData = jsonString.data(using: .utf8) else {
        print("Invalid JSON string")
        return nil
    }
    
    guard let jsonDictionary = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any] else {
        fatalError("Failed to decode JSON")
    }
    
    let stringDictionary = extractStringKeyValuePairs(from: jsonDictionary)
    
    return stringDictionary
}


*/
//


func giveSuggestion(content: String, completion: @escaping (String?) -> Void) {
    NetworkManagerC.shared.performRequest(testo: content) { responseContent2 in
        if let content2 = responseContent2 {
            //print("\(content2)")
            completion(content2)
            } else {
                print("Unable to isolate content from response")
                
            }
    }
}
