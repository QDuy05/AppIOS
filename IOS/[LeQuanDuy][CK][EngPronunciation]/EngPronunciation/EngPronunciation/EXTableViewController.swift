//
//  ExerciseTableViewController.swift
//  EngPronunciation
//
//  Created by BVU on 6/3/22.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    
    var textLesson: String?
    var textExs: String?
    var exercise1: [Exercise] = [
        Exercise(name_lesson: "lesson 1", name_exercise: "exercise 1", decription: "/p/ and /b/ at the begining"),
        Exercise(name_lesson: "lesson 1", name_exercise: "exercise 2", decription: "/p/ and /b/ listening"),
        Exercise(name_lesson: "lesson 1", name_exercise: "exercise 3", decription: "/p/ and /b/ speaking"),
        
    ]
    var exercise2: [Exercise] = [
        Exercise(name_lesson: "lesson 2", name_exercise: "exercise 1", decription: "/t/ and /d/ at the begining"),
        Exercise(name_lesson: "lesson 2", name_exercise: "exercise 2", decription: "/t/ and /d/ listening"),
        Exercise(name_lesson: "lesson 2", name_exercise: "exercise 3", decription: "/t/ and /d/ speaking")
    ]
    
    var exercise: [Exercise] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        // #warning Incomplete implementation, return the number of rows
        return exercise.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExsCell", for: indexPath) as! ExerciseTableViewCell
        cell.namelb.text = exercise[indexPath.row].name_exercise
        cell.decriptionlb.text = exercise[indexPath.row].decription
        return cell
    }
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        textExs = exercise[indexPath.row].name_exercise
        return indexPath
    }
    
    func setData() {
        if textLesson?.lowercased() ==  "lesson 1"{
            exercise = exercise1
        }else {
            exercise = exercise2
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let exersiceinfo = segue.destination as! InfoExsViewController
        exersiceinfo.textExs = textExs
        exersiceinfo.textLesson = textLesson
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
