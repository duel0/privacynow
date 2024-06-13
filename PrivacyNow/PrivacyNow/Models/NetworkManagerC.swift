//
//  NetworkManagerA.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import Foundation

class NetworkManagerC {
    
    
    static let shared = NetworkManagerC()

    private init() {}
    
    

    func performRequest(testo:String, completion: @escaping (String?) -> Void) {
        
        let headers = [
            "accept": "application/json",
            "content-type": "application/json",
            "authorization": "Bearer pplx-pplx-YOUR_API_KEY_HERE"
        ]

        let parameters = [
            "model": "pplx-70b-online",
            "messages": [
                [
                    "role": "system",
                    "content": "Explain in a simple language, giving some social media examples."
                ],
                [
                    "role": "user",
                    "content": "How can I hide my \(testo) information from the internet? Give me a step by step help. Then, write some examples on how a malicious user can use this information against me."
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
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
          if (error != nil) {
            print(error as Any)
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
        })

        dataTask.resume()
    }
}

/* USAGE

var content: String = "Job"

NetworkManagerC.shared.performRequest(testo: content) { responseContent2 in
    if let content2 = responseContent2 {
        print("\(content2)")
        } else {
            print("Unable to isolate content from response")
            
        }
}
*/
