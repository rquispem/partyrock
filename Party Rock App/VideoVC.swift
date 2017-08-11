//
//  VideoVC.swift
//  Party Rock App
//
//  Created by Ruben Quispe Montoya on 8/4/17.
//  Copyright © 2017 rquispe. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        }
        set {
            _partyRock = newValue
        }
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = _partyRock.videoTitle
        webView.loadHTMLString(_partyRock.videoURL, baseURL: nil)

    }


}
