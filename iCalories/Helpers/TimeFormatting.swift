//
//  TimeFormatting.swift
//  iCalories
//
//  Created by Itkhld on 5.04.2024.
//

import Foundation

func calcTimeSince(date: Date) ->String {
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = hours/24
    
    if minutes < 60 {
        return "\(minutes)m"
    } else if minutes >= 60 && hours < 24 {
        return "\(hours)h"
    } else {
        return "\(days)d"
    }
}
