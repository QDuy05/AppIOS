//
//  PronunciationViewController.swift
//  EngPronunciation
//
//  Created by BVU on 5/27/22.
//

import UIKit

class PronunciationViewController: UIViewController {
    
    var textLesson: String?
    var indexPath: Int = 0
    var lessoninfo : [LessonInfo] = [
        LessonInfo(name_lesson: "lesson 1",
                   how_tswm: "These two consonants are both stops. The air coming from the lungs is stopped for a short time and let out explosively",
                   where_tswm: "The air is stop by the two lips being closed quite tightly. Then the lips open and the air passes out",
                   voice_length: "/p/ is voiceless sound, the vocal cords are not moving, It is very short sound \n/b/ is a voiced sound, the vocal cords move to make this sound. It is a bit longer than /p/",
                   aspiration: "When /p/ is made at the beginning of a word there is an extra puff of air, a bit like the /h/ sound. /b/ is not aspirated",
                   tongue: "",
                   mouth_lips: "",
                   length: "",
                   spelling: "/p/ is spelt with the letter ‘p’ or ‘pp’ \n/b/ is spelt with the letter ‘b’ or ‘pp'"),
        LessonInfo(name_lesson: "lesson 2",
                   how_tswm: "These two consonants are both stops. The air coming from the lungs is stopped for a short time and let out explosively",
                   where_tswm: "/t/: The air is stopped by the front of the tongue touching the alveolar ridge. This ridge is behind your top teeth and it is important that you touch the ridge and not the teeth.\n/d/: The air is let out when the tongue is taken away from the alveolar ridge",
                   voice_length: "/t/ is voiceless sound, the vocal cords are not moving, It is a short sound \n/d/ is a voiced sound, the vocal cords move to make this sound. It is a longer sound",
                   aspiration: "When /t/ is made at the beginning of a word there is an extra puff of air as it is let out. This extra puff sounds a bit like the /h/ sound. The /d/ sound is not aspirated",
                   tongue: "",
                   mouth_lips: "",
                   length: "",
                   spelling: "/t/ is spelt with the letter ’t’ or ’tt’. There are a few words, however, in which ’th’ is pronounced as /t/. There are also a very few words in which ’t’ is not pronounced \n/d/ is spelt with the letter ‘d’ or ‘dd'")
    ]
    
    @IBOutlet weak var howtswmlb: UILabel!
    @IBOutlet weak var wheretswmlb: UILabel!
    @IBOutlet weak var voicelenghtlb: UILabel!
    @IBOutlet weak var aspiration: UILabel!
    @IBOutlet weak var tonguelb: UILabel!
    @IBOutlet weak var mouthlipslb: UILabel!
    @IBOutlet weak var lengthlb: UILabel!
    @IBOutlet weak var spellinglb: UILabel!
    
    
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        lbl.text = textLesson
        setData()
        // Do any additional setup after loading the view.
    }
    
    func setData(){
        clear()
        for i in 0...lessoninfo.count-1{
            if lessoninfo[i].name_lesson == textLesson?.lowercased()
            {
                indexPath = i
            }
        }
        howtswmlb.text = lessoninfo[indexPath].how_tswm
        wheretswmlb.text = lessoninfo[indexPath].where_tswm
        voicelenghtlb.text = lessoninfo[indexPath].voice_length
        aspiration.text = lessoninfo[indexPath].aspiration
        spellinglb.text = lessoninfo[indexPath].spelling
    }
    func clear(){
        howtswmlb.text = ""
        wheretswmlb.text = ""
        voicelenghtlb.text = ""
        aspiration.text = ""
        spellinglb.text = ""
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
