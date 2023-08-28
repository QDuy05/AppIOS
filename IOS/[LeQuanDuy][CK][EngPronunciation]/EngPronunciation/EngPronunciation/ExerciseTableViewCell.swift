//
//  ExerciseTableViewCell.swift
//  EngPronunciation
//
//  Created by BVU on 6/3/22.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

    @IBOutlet weak var namelb: UILabel!
    @IBOutlet weak var decriptionlb: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
