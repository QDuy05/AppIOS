//
//  InfoExsViewController.swift
//  EngPronunciation
//
//  Created by BVU on 6/3/22.
//

import UIKit

class InfoExsViewController: UIViewController {
    
    var exsInfo1: [ExerciseInfo] = [
        ExerciseInfo(name_exs: "exercise 1", img: "P&B", total: 10, finihed: 0, completed: 0),
        ExerciseInfo(name_exs: "exercise 2", img: "P&B", total: 10, finihed: 0, completed: 0),
        ExerciseInfo(name_exs: "exercise 3", img: "P&B", total: 10, finihed: 0, completed: 0),
    ]
    var exsInfo2: [ExerciseInfo] = [
        ExerciseInfo(name_exs: "exercise 1", img: "D&T", total: 10, finihed: 0, completed: 0),
        ExerciseInfo(name_exs: "exercise 2", img: "D&T", total: 10, finihed: 0, completed: 0),
        ExerciseInfo(name_exs: "exercise 3", img: "D&T", total: 10, finihed: 0, completed: 0),
    ]
     
    var exsInfo: [ExerciseInfo] = []
    
    var textExs: String?
    var textLesson: String?
    @IBOutlet weak var exslb: UILabel!
    @IBOutlet weak var lessonlb: UILabel!
    @IBOutlet weak var lessonimg: UIImageView!
    @IBOutlet weak var totallb: UILabel!
    @IBOutlet weak var finishedlb: UILabel!
    @IBOutlet weak var completelb: UILabel!
    @IBOutlet weak var resetallbtn: UIButton!
    @IBOutlet weak var unfinishedbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setExsInfo()
        // Do any additional setup after loading the view.
    }
    func setExsInfo(){
        if textLesson?.lowercased() == "lesson 1"{
            exsInfo = exsInfo1
        }else{
            exsInfo = exsInfo2
        }
        setData(exsInfo: exsInfo)
    }
    func setData(exsInfo: [ExerciseInfo]){
        for i in 0...exsInfo.count-1{
            if exsInfo[i].name_exs == textExs{
                exslb.text = textExs
                lessonlb.text = textLesson
                lessonimg.image = UIImage(named:exsInfo[i].img)
                totallb.text = "Total words: \(exsInfo[i].total)"
                finishedlb.text = "Finished words: \(exsInfo[i].finihed)"
                completelb.text = "Complete %: \(exsInfo[i].completed)"
                break
            }
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
