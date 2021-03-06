////
////  HTTPRequest.swift
////  Lab2
////
////  Created by Jessie Albarian on 1/28/16.
////  Copyright © 2016 babyllama. All rights reserved.
////
//
//import UIKit
//import Foundation
//
//
//class HTTPRequest: NSURL {
//
//    /*
//    Messing with JSON
//    */
//    func JSONParseDict(jsonString:String) -> Dictionary<String, AnyObject> {
//        
//        if let data: NSData = jsonString.dataUsingEncoding(
//            NSUTF8StringEncoding){
//                
//                do{
//                    if let jsonObj = try NSJSONSerialization.JSONObjectWithData(
//                        data,
//                        options: NSJSONReadingOptions(rawValue: 0)) as? Dictionary<String, AnyObject>{
//                            return jsonObj
//                    }
//                }catch{
//                    print("Error")
//                }
//        }
//        return [String: AnyObject]()
//    }
//    
//    func HTTPsendRequest(request: NSMutableURLRequest,
//        callback: (String, String?) -> Void) {
//            
//            let task = NSURLSession.sharedSession().dataTaskWithRequest(
//                request, completionHandler :
//                {
//                    data, response, error in
//                    if error != nil {
//                        callback("", (error!.localizedDescription) as String)
//                    } else {
//                        callback(
//                            NSString(data: data!, encoding: NSUTF8StringEncoding) as! String,
//                            nil
//                        )
//                    }
//            })
//            
//            task.resume()
//            
//    }
//    
//    func HTTPGetJSON(
//        url: String,
//        callback: (Dictionary<String, AnyObject>, String?) -> Void) {
//            
//            let request = NSMutableURLRequest(URL: NSURL(string: url)!)
//            request.setValue("application/json", forHTTPHeaderField: "Accept")
//            HTTPsendRequest(request) {
//                (data: String, error: String?) -> Void in
//                if error != nil {
//                    callback(Dictionary<String, AnyObject>(), error)
//                } else {
//                    let jsonObj = self.JSONParseDict(data)
//                    callback(jsonObj, nil)
//                }
//            }
//    }
//    
//    func getURL(){
//        HTTPGetJSON("https://52.32.184.198/humanesociety/dogdata.json") {
//            (data: Dictionary<String, AnyObject>, error: String?) -> Void in
//            if error != nil {
//                print(error)
//            } else {
//                if let feed = data["name"] as? NSDictionary ,
//                    let entries = feed["breed"] as? NSArray{
//                    for elem: AnyObject in entries{
//                        if let dict = elem as? NSDictionary ,let titleDict = dict["code"] as? NSDictionary , let songName = titleDict["status"] as? String{
//                            print(songName)
//                        }
//                    }}
//                }
//            }
//                sleep(5)
//        }
//
//    
//}
