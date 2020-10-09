//
//  ViewController.swift
//  URLContext
//
//  Created by Germán Santos Jaimes on 09/10/20.
//

import UIKit
import SwiftSoup

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getWebPage(url: "https://www.unam.mx")
    }
    
    func getWebPage(url: String){
        let url = URL(string: url)!
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
        let sourcePage = String(data: data!, encoding: .utf8)
            do{
                let doc: Document = try SwiftSoup.parse(sourcePage!)
                let p: Element = try doc.select("p").first()!
                let image: Element = try doc.select("img").first()!
                let head: Element = try doc.select("head").first()!
                print(try p.text())
                print(try image.attr("src"))
                let metas: Elements = try head.select("meta[name=description]")
                for meta in metas{
                    print(try meta.attr("content"))
                }
                
                
//                let srcs: Elements = try doc.select("img[src]")
//                let srcsStringArray: [String?] = srcs.array().map { try? $0.attr("src").description }
//
//                for src in srcsStringArray{
//                    print(src!)
//                }
                
            }catch Exception.Error(type: let type, Message: let message){
                print(type)
                print(message)
            }catch{
                print("")
            }
        }
        task.resume()
    }


}

