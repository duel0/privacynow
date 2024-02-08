//
//  NetworkManagerA.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import Foundation

class NetworkManagerA {
    static let shared = NetworkManagerA()

    private init() {}

    func performRequest(name: String, surname: String, other: String, completion: @escaping (String?) -> Void) {
        
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
                    "content": "Search as many online information about me (LinkedIn, Google, etc.)"
                ],
                [
                    "role": "user",
                    "content": "Tell me about \(name) \(surname) \(other)"
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
                        print("\(String(data: responseData, encoding: .utf8))")
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
