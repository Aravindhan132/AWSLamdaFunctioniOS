//
//  ViewControllerInteractor.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import Foundation

extension ViewController {

    func triggerAPI(_ onCompletion: ((Bool) -> ())? = nil) {
        
        CustomURLRequest(urlString: Utility.listURL) { (data, response, error) in
            guard let data = data, error == nil else {
                onCompletion?(false)
                return
            }
            
            let playerModel = try? JSONDecoder().decode(PlayerModel.self, from: data)
            self.dataSource = playerModel
            onCompletion?(true)
            
        }
        
    }
    
}
