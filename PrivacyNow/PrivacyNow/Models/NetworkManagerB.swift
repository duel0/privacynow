//
//  NetworkManagerB.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import Foundation

class NetworkManagerB {
    
    
    static let shared = NetworkManagerB()

    private init() {}
    
    

    func performRequest(testo:String, completion: @escaping (String?) -> Void) {
        
        let headers = [
            "accept": "application/json",
            "content-type": "application/json",
            "authorization": "Bearer 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"
        ]

        let parameters = [
            "model": "pplx-70b-online",
            "messages": [
                [
                    "role": "system",
                    "content": "Categorize this data into a JSON. I will need to store it into an apple dictionary [String : String], so give me just simple key-value pairs without nested objects. Give me as many information as possible, but merge nested stuff into a single string so I get no compatibility errors."
                ],
                [
                    "role": "user",
                    "content": "Given this, send me a JSON so I can create an element in a [String: String] dictionary: \(testo). Please don't write any more text around the JSON, don't comment and don't say anything. The output of this conversation goes directly into APIs"
                ]
            ]
        ] as [String: Any]

        let postData = try! JSONSerialization.data(withJSONObject: parameters, options: [])

        let url = URL(string: "https://api.perplexity.ai/chat/completions")!
        var request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)

        request.httpMethod = "POST"
        request.allHTTPHeaderFields = headers
        request.httpBody = postData

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
                completion(nil)
            } else {
                if let httpResponse = response as? HTTPURLResponse {
                    //print("HTTP Response: \(httpResponse.statusCode)")
                    
                    if let responseData = data {
                        //Handle the response data here
                        
                        if let jsonResponse = try? JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] {
                            if let choices = jsonResponse["choices"] as? [[String: Any]], let firstChoice = choices.first {
                                if let message = firstChoice["message"] as? [String: Any], let content = message["content"] as? String {
                                    completion(content)
                                    return
                                }
                            }
                        }
                        completion(nil)
                    }
                }
            }
        }

        dataTask.resume()
    }
}

