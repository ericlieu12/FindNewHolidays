//
//  ViewController.swift
//  FindNewHolidays
//
//  Created by user on 9/21/19.
//  Copyright © 2019 eric. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate  {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var date2: UILabel!
    @IBOutlet weak var date3: UILabel!

    @IBAction func SendMessage(_ sender: Any) {
        if getnameText() == "Name"
        {}else {
            displayMessageInterface()}
        
    }
    @IBAction func SendMessage2(_ sender: Any) {
        if getnameText2() == "Name"
        {}
        else {
        displayMessageInterface2()
        }}
    @IBAction func SendMessage3(_ sender: Any) {
        if getnameText3() == "Name"
        {}
        else
        {displayMessageInterface3()}
    }
    @IBAction func moreinfo1(_
        
        sender: Any) {
        if getnameText() == "Name"
        {}
        else
        {   var urlmade = urlMaker(name : name.text!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        let svc = SFSafariViewController(url: NSURL(string: urlmade)! as URL)
            present(svc, animated: true, completion: nil)}
    }
    @IBAction func moreinfo2(_ sender: Any) {
        if getnameText2() == "Name"
        {}
        else { var urlmade = urlMaker(name : name2.text!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        let svc = SFSafariViewController(url: NSURL(string: urlmade)! as URL)
        present(svc, animated: true, completion: nil)
        }}
    
    @IBAction func moreinfo3(_ sender: Any) {
        if getnameText3() == "Name"
        {}
        else {var urlmade = urlMaker(name : name3.text!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)
        let svc = SFSafariViewController(url: NSURL(string: urlmade)! as URL)
        present(svc, animated: true, completion: nil)
    }
    }
    
    func urlMaker(name: String)->(String)
    {
        return "https://lmgtfy.com/?q=\(name)"
        
    }
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
       
        let x = getnameText()
        let y = getdateText()
        composeVC.recipients = []
        composeVC.body = "Hi! I heard of this cool new holiday through FindNewHolidays! The name is " + x + " and it is on " + y + ". Check out https://lmgtfy.com/?q=\(x) for more info!"
        
       if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    func displayMessageInterface2() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        
        let x = getnameText2()
        let y = getdateText2()
        composeVC.recipients = []
        composeVC.body = "Hi! I heard of this cool new holiday through FindNewHolidays! The name is " + x + " and it is on " + y + ". Check out https://lmgtfy.com/?q=\(x) for more info!"
       
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    func getnameText()->(String)
    {return name.text!}
    func getdateText()->(String)
    {return date.text!}
    func getnameText2()->(String)
    {return name2.text!}
    func getdateText2()->(String)
    {return date2.text!}
    func getnameText3()->(String)
    {return name3.text!}
    func getdateText3()->(String)
    {return date3.text!}
    func displayMessageInterface3() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
       let x = getnameText3()
        let y = getdateText3()
        composeVC.recipients = []
        composeVC.body = "Hi! I heard of this cool new holiday through FindNewHolidays! The name is " + x + " and it is on " + y + ". Check out https://lmgtfy.com/?q=\(x) for more info!"
        
      
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController,
                                      didFinishWith result: MessageComposeResult) {
        print("cunt")
        self.dismiss(animated: true, completion: nil)}

    func  getCurrentDate() ->(d:String, m: String, y:String){
    let date = Date()
    let calendar = Calendar.current
        let day = calendar.component(.day,from: Date())
        let month = calendar.component(.month,from: Date())
    let year = calendar.component(.year,from: Date())
    return (String(day), String(month), String(year))
    
    }
 
   
    var listofHolidays = [detail]()
    var x = ""
 
    
    @IBAction func look2(_ sender: Any) {
        fakerequest2()
    }
    @IBAction func look(_ sender: Any) {
        fakerequest()
        
    }
    @IBAction func look3(_ sender: Any) {
        fakerequest3()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       

        self.navigationController?.isNavigationBarHidden = true
        
      
    }
    func fuck(x:String, y:String, z:String)
    {date.text=x + " US"
        name.text=y
       
        
    }
    func fuck2(x:String, y:String, z:String)
    {date2.text=x
        name2.text=y
        
        
    }
    func fuck3(x:String, y:String, z:String)
    {date3.text=x
        name3.text=y
        
        
    }
    func randomHoliday(x:Int)->(Int)
    {var max = x-1
        var rand = Int.random(in: 0 ... max)
        print(rand)
        return rand
    }
    func fakerequest3(){
        
         var countries = ["af","al","dz","as","ad","ao","ai","ag","ar","am","aw","au","at","az","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","br","vg","bn","bg","bf","bi","cv","kh","cm","ca","Ky","cf","td","cl","cn","co","Km","cg","cd","ck","cr","ci","hr","cu","cw","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","Fo","fj","fi","fr","pf","ga","gm","ge","de","gi","gr","gl","gd","gu","gt","gg","gn","gw","gy","ht","va","hn","hk","hu","is","in","id","ir","iq","ie","im","il","it","jm","jp","je","jo","kz","ke","ki","xk","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","me","ms","ma","mz","mm","na","nr","np","nl","nc","nz","ni","ne","ng","kp","mk","mp","no","om","pk","pw","pa","pg","py","pe","ph","pl","pt","pr","qa","re","rw","sh","kn","lc","mf","pm","vc","ws","sm","st","sa","sn","rs","sc","sl","sg","sx","sk","si","sb","so","za","kr","ss","es","lk","bl","sd","sr","se","ch","sy","tw","tj","tz","th","bs","tg","to","Tt","tr","tm","tc","tv","vi","Ug","ua","ae","gb","us","uy","uz","vu","ve","vn","wf","ye","zm","zw","sz"]

        var random = Int.random(in: 0 ... 225)
        var CC = countries[random]
        
        
        
        
        var d = ""
        var m = ""
        
        var x = ""
        let holidayrequest = request(countryCode: CC, day: d, month: m, type: "")
        holidayrequest.getHolidays { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let holidays):
                do {    print("jew")
                    self?.listofHolidays = holidays
                    if self?.listofHolidays.count == 0
                        
                    {self?.fuck3(x:"St. David's Day",y:"2019-03-01",z: ":(")}
                    else{ var randy = self!.randomHoliday(x:(self?.listofHolidays.count)!)
                        x = (self?.listofHolidays[randy].date.iso)! + " " + CC.uppercased()
                        self?.fuck3(x:x,y:(self?.listofHolidays[randy].name)!,z:(self?.listofHolidays[randy].name)!)}}}}}
    func fakerequest2(){
        
        var d = ""
        var m = ""
        
        var x = ""
        let holidayrequest = request(countryCode: "US", day: d, month: m, type: "&type=religious")
        holidayrequest.getHolidays { [weak self] result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let holidays):
                do {    print("jew")
                    self?.listofHolidays = holidays
                    if self?.listofHolidays.count == 0
                    {self?.fuck2(x:"2019-03-01 US", y:"St. David's Day",z: ":(")}
                    else{ var randy = self!.randomHoliday(x:(self?.listofHolidays.count)!)
                        x = (self?.listofHolidays[randy].date.iso)! + " US"
                        self?.fuck2(x:x,y:(self?.listofHolidays[randy].name)!,z:(self?.listofHolidays[randy].name)!)}}}}}
    func fakerequest(){
        var d = ""
        var m = ""
        
      
    m = getCurrentDate().m
        d = getCurrentDate().d
        
  
   
                var x = ""
        let holidayrequest = request(countryCode: "US",  day: "&day="+d, month: "&month="+m, type: "")
    holidayrequest.getHolidays { [weak self] result in
    switch result {
    case .failure(let error):
      print(error)
    case .success(let holidays):
        do {    print("jew")
        self?.listofHolidays = holidays
            if self?.listofHolidays.count == 0
            {self?.fuck(x:"No holidays today in the US!",y:"Check again Tomorrow!",z: ":(")}
            else{ var randy = self!.randomHoliday(x:(self?.listofHolidays.count)!)
                x = (self?.listofHolidays[randy].date.iso)!
                self?.fuck(x:x,y:(self?.listofHolidays[randy].name)!,z:(self?.listofHolidays[randy].name)!)}
        }
    }
        
    }
}
}

