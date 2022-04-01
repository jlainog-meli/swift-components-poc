//
//  ViewController.swift
//  Components
//
//  Created by jlainog-meli on 03/28/2022.
//  Copyright (c) 2022 jlainog-meli. All rights reserved.
//

import UIKit
import SwiftUI
import Components

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadJson()
    }
    
    private func loadJson() {
        if let path = Bundle.main.path(forResource: "Congrats", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data) as? [AnyObject]
//                let views = JSONMapper.map(json: jsonResult!)
            } catch {
                // handle error
            }
        }
    }
}
