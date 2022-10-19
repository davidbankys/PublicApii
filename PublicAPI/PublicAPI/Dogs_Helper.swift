//
//  API_Helper.swift
//  PublicAPI
//
// Created by David Bankole Abel on 2022-10-18.
//


import Foundation
class Dogs_Helper
{
   static  private let urlSring = "https://dog.ceo/api/breeds/image/random";
   static  private let session:URLSession =
    {
    let config = URLSessionConfiguration.default
    return URLSession(configuration: config)
    
}()
static public func fetchDir()
    {
        guard let url = URL(string: urlSring)
        else{preconditionFailure("Not able to convert  \(urlSring)")}
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) { data, response ,error  in
            if let data = data {
                do {
                     let jsonData = try JSONSerialization.jsonObject(with: data)
                        print(jsonData)
                }catch let error{
                print ("\(error)")
                }
            }
            else if let error = error {
                print("error with data")
            }else
            {
                print("Something wrong with url")

            }
        }
        task.resume()

    }
  }


