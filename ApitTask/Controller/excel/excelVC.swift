//
//  excelVC.swift
//  ApitTask
//
//  Created by Amr on 10/1/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class excelVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    
    @IBOutlet weak var objTable: UITableView!
    var objs = [objExcel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        objTable.delegate = self
        objTable.dataSource = self
        
        setupTable()
        getData()
        // Do any additional setup after loading the view.
    }
    func setupTable() {
        objTable.register(UINib.init(nibName: "excelCell", bundle: nil), forCellReuseIdentifier: "excelCell")
    }
    func getData(){
        SVProgressHUD.show()
        let data = Database.database().reference().child("Sheet1")
        data.observeSingleEvent(of: .value, with: { snapshot in
            self.objs = [objExcel]()
//            var count = 0
            for child in snapshot.children {
            let snap = child as! DataSnapshot
            let record = snap.value as! [String: Any]
//            let info = placeDict["ACTION_DATETIME"] as! String
                let obj = objExcel.init(fromDictionary: record)
               
//                obj.sYSKEY = count
//                 count += 1
                self.objs.append(obj)
//            let moreInfo = placeDict["moreinfo"] as! String
                print(record)
                
            }
            self.objTable.reloadData()
            SVProgressHUD.dismiss()
        })
        
//        data.observeSingleEvent(of: .childAdded, with: { (snapshot) in
//            if let userDict = snapshot.value as? [String:Any]{
//                //Do not cast print it directly may be score is Int not string
//                print(userDict)
////               self.objs = userDict÷
//            }
//        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goToFoodView(_ sender: UIButton) {
        let sb = UIStoryboard.init(name: "foodView", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "foodVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objs.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : excelCell = tableView.dequeueReusableCell(withIdentifier: "excelCell", for: indexPath) as! excelCell
        cell.keyLbl.text = objs[indexPath.row].sYSKEY ?? ""
        cell.ACTION_USERLbl.text = objs[indexPath.row].aCTIONUSER ?? ""
        cell.ACTION_TAKENLbl.text = objs[indexPath.row].aCTIONTAKEN ?? ""
        cell.ACTION_NOTELbl.text = objs[indexPath.row].aCTIONNOTE ?? ""
        cell.ACTION_DATETIMELbl.text = objs[indexPath.row].aCTIONDATETIME ?? ""
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          let data = Database.database().reference().child("Sheet1")
        data.child(objs[indexPath.row].sYSKEY).removeValue()
        objs.remove(at: indexPath.row)
        tableView.reloadData()
//        getData()
    }
}
