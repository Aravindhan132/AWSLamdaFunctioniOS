//
//  URLRequest.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import Foundation
class CustomURLRequest {
    
    @discardableResult init(urlString: String , _ onCompletion: ((Data?, URLResponse?, Error?) -> ())? = nil) {
        
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.httpMethod = JSONMethodType.get.rawValue
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                onCompletion?(nil , response , error)
                print("*****API Failure*****")
                return
            }
            print("*****API Success*****")
            onCompletion?(data , response , error)
        }
        
        task.resume()
    }
}
