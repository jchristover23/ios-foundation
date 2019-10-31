//
//  StudyPlan.swift
//  A Project
//
//  Created by Jeremy Christover on 28/08/19.
//  Copyright © 2019 Jeremy Christover. All rights reserved.
//

import Foundation

struct StudyPlan {
    var studyPlanName: String
    var studyPlanImage: String
    var isAdded: Bool
}


var list = [
    StudyPlan(studyPlanName: "Places", studyPlanImage: "city.jpg", isAdded: false),
    StudyPlan(studyPlanName: "Education", studyPlanImage: "education.jpg", isAdded: false),
    StudyPlan(studyPlanName: "Technology", studyPlanImage: "technology.jpg", isAdded: false),
    StudyPlan(studyPlanName: "Sport", studyPlanImage: "sport.jpg", isAdded: false)
]
