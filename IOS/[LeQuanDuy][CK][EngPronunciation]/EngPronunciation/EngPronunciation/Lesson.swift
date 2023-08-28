//
//  Lesson.swift
//  EngPronunciation
//
//  Created by BVU on 5/27/22.
//

import Foundation
struct Lesson{
    var img: String
    var name: String
    var decription: String
}

struct Exercise{
    var name_lesson: String
    var name_exercise: String
    var decription: String
}

struct LessonInfo{
    var name_lesson: String
    var how_tswm: String
    var where_tswm: String
    var voice_length: String
    var aspiration: String
    var tongue: String
    var mouth_lips: String
    var length: String
    var spelling: String
}

struct ExerciseInfo {
    var name_exs: String
    var img: String
    var total: Int
    var finihed: Int
    var completed: Int
}
    
