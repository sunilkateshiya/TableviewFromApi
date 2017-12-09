//
//  ViewController.swift
//  MyTask
//
//  Created by Rahul Panchal on 09/12/17.
//  Copyright © 2017 Rahul Panchal. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireImage

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var shereManager = Globles.sharedInstance
     @IBOutlet weak var MyTable: UITableView!
    
    var followersArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTable.delegate = self
        MyTable.dataSource = self
        callAPI()
        MyTable.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func callAPI(){
        let url = "http://dev.bitoutlet.com/gobe/all-list"
        let  param = ["UserID":"28"] as [String:AnyObject]
        
        AFWrapper.requestPOSTURL(url, params: param, headers: nil,  success: {
            (JSONResponse) -> Void in
           
            if JSONResponse != nil {
                if JSONResponse["msg"].rawString()! == "Data retrieved successfully"
                {
                    self.shereManager.dataModel = Mapper<Model>().map(JSONObject: JSONResponse.rawValue)!
                   self.MyTable.reloadData()
                }
                else
                {
                    self.view.makeToast(JSONResponse["msg"].rawString()!, duration: 3, position: .bottom)
                }
            }
            
        }) {
            (error) -> Void in
           
            self.view.makeToast("Server error. Please try again later", duration: 3, position: .bottom)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (shereManager.dataModel?.Followers!.count)!
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:Mycell = MyTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Mycell
        cell.Title.text = self.shereManager.dataModel?.Followers![indexPath.row].Title
        cell.Description.text = self.shereManager.dataModel?.Followers![indexPath.row].Description
        let url=NSURL(string:(self.shereManager.dataModel?.Followers![indexPath.row].Img)!)
       cell.Img.af_setImage(withURL: url!as URL, placeholderImage:nil, filter: nil,  runImageTransitionIfCached: true, completion: nil)
        return cell
    }
}
struct  KEYS
{
  
    static let USERINFO = [:] as! [String:Any]
}

