//
//  foodViewViewController.swift
//  ApitTask
//
//  Created by Amr on 10/2/18.
//  Copyright © 2018 Amr. All rights reserved.
//

import UIKit

class foodVC: UIViewController ,HttpHelperDelegate ,UITableViewDataSource,UITableViewDelegate{
    
    
   
    @IBOutlet weak var foodtable: UITableView!
    var foodList = [foodObj]()
    var http = HttpHelper()
    override func viewDidLoad() {
        super.viewDidLoad()
        http.delegate = self
        foodtable.delegate = self
        foodtable.dataSource = self
        foodtable.register(UINib.init(nibName: "foodCell", bundle: nil), forCellReuseIdentifier: "foodCell")
        let url = "https://www.themealdb.com/api/json/v1/1/latest.php"
        http.requestWithBody(url: url, method: .get, tag: 1, header: nil)
        // Do any additional setup after loading the view.
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
    func receivedResponse(dictResponse: Any, Tag: Int) {
        let dictResponse = dictResponse as! NSDictionary
        let foodinfo = dictResponse as! [String : Any]
//        print(foodinfo)
        let mealsList = foodinfo["meals"] as! [[String : Any]]
        for meal in mealsList{
            let mealobj = foodObj.init(fromDictionary: meal)
//           print(mealobj.idMeal)
            foodList.append(mealobj)
        }
        foodtable.reloadData()
    }
    
    func receivedErrorWithStatusCode(statusCode: Int) {
        print(statusCode)
    }
    
    func retryResponse(numberOfrequest: Int) {
        //
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell :foodCell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! foodCell
        cell.IDlbl.text = foodList[indexPath.row].idMeal ?? ""
        cell.Area.text = foodList[indexPath.row].strArea ?? ""
        cell.mealName.text = foodList[indexPath.row].strMeal ?? ""
        cell.MealCat.text = foodList[indexPath.row].strCategory ?? ""
        cell.strInstructions.text = foodList[indexPath.row].strInstructions ?? ""
        
         return cell
    }
}
