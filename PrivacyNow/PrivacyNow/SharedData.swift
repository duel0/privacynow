//
//  SharedData.swift
//  PrivacyNow
//
//  Created by Francesco Balassone on 06/02/24.
//

import Foundation

class SharedData {
    
    init(){
        
    }
    
    init(name: String, surname: String, other: String) {
        self.name = name
        self.surname = surname
        self.other = other
    }
    
    var name: String = ""
    var surname: String = ""
    var other: String = ""
    var data: [String:String] = [
        "name": "Francesco Balassone",
        "profession": "Computer Engineering Student",
        "university": "University of Naples Federico II",
        "education_level": "MSc",
        "accomplishment": "Cisco Networking Academy Cybersecurity Scholarship",
        "program_participation": "Cisco and Apple",
        "profile_link": "https://www.linkedin.com/in/francesco-balassone/"
    ]
    
    var insights: [Insight] = [
        Insight(imageName: "sso", name: "2FA", symbol: "2.circle.fill"),
        Insight(imageName: "gps", name: "GPS", symbol: "location.fill"),
        Insight(imageName: "ai", name: "AI", symbol: "figure.stand.line.dotted.figure.stand"),
        Insight(imageName: "2fa", name: "SSO", symbol: "touchid"),
        Insight(imageName: "reputation", name: "W-R", symbol: "key"),
        Insight(imageName: "http", name: "HTTP", symbol: "lock.rotation")
    ]
    
    
    
}

var sharedData = SharedData(name: "Francesco", surname: "Balassone", other: "Unina")
