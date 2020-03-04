//
//  API Client.swift
//  CocoaPodsLab
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
import Alamofire
import SnapKit


//Since we are using alamofire and snap kit we have to import it to the APIClient and it iswritttenm slightly differengt
struct APIClient  {
    
    static func getUsers(completion: @escaping (AFResult<[User]>)->()){
        let endpointURLString = "https://randomuser.me/api/"
        guard let url = URL(string: endpointURLString) else {
               return
           }
        AF.request(url).response { (response) in
            if let error = response.error {
                completion(.failure(error))
                
            } else if let data = response.data {
                do {
                   let pplResults = try JSONDecoder().decode(ResultsWrapper.self, from: data)
                    completion(.success(pplResults.results))
                } catch {
                    print("could not decode the completion due to Alamo\(error)")
                }
            }
        }
    }
    
    static func getImages(image: String, completion: @escaping (AFResult<UIImage>) -> ()) {
        guard let urllkjahed = URL(string: image) else {
            return
        }
        AF.request(urllkjahed).response { (response) in
            if let error = response.error {
                completion(.failure(error))
            } else if let data = response.data {
                if let image = UIImage(data: data) {
                    completion(.success(image))
                }
            }
        }
        
    }

}


