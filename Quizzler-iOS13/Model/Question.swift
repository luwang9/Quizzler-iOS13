//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Lu Wang on 5/25/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text: String
    let answerList: [String]
    let answer: String
    init(q:String, a:[String],correctAnswer: String) {
        text = q
        answerList = a
        answer = correctAnswer
    }
}

