//
//  LessonTableViewCell.swift
//  EngPronunciation
//
//  Created by BVU on 5/27/22.
//

import UIKit

class LessonTableViewCell: UITableViewCell {

    @IBOutlet weak var imgLesson: UIImageView!
    @IBOutlet weak var lbDetail: UILabel!
    @IBOutlet weak var lbName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
