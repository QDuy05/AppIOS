//
//  LessonTableViewController.swift
//  EngPronunciation
//
//  Created by BVU on 5/27/22.
//

import UIKit

class LessonTableViewController: UITableViewController {
    
    var textLesson: String?
    var lesson: [Lesson] = [
        Lesson(img: "P&B", name: "Lesson 1", decription: "The stops /p/ and /b/"),
        Lesson(img: "D&T", name: "Lesson 2", decription: "The stops /d/ and /t/")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return lesson.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LessonTableViewCell
        cell.lbName.text = lesson[indexPath.row].name
        
        cell.lbDetail.text = lesson[indexPath.row].decription
        cell.imgLesson.image = UIImage(named:lesson[indexPath.row].img)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        textLesson = lesson[indexPath.row].name
        return indexPath
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let lessonTB = segue.destination as! LessonTabBarController
        let pronunciationVC = lessonTB.viewControllers![0] as! PronunciationViewController
        let exerciseVC = lessonTB.viewControllers![1]  as! ExerciseTableViewController
      
        pronunciationVC.textLesson = textLesson
        exerciseVC.textLesson = textLesson
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
