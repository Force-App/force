//
//  Font.swift
//  force
//
//  Created by Matthew Fang on 5/31/25.
//

import SwiftUI

extension Font {
    static let heading1 = Font.custom("Inter", size: 26)
        .weight(.semibold)
    static let heading2 = Font.custom("Inter", size: 18)
        .weight(.semibold)
    static let heading3 = Font.custom("Inter", size: 14)
        .weight(.medium)
    static let caption1 = Font.custom("Inter", size: 12)
    static let caption2 = Font.custom("Inter", size: 12)
        .weight(.semibold)
    static let caption3 = Font.custom("Inter", size: 10)
        .weight(.medium)
    static let body = Font.custom("Inter", size: 14)
    
    static let icon = Font.system(size: 16)
    static let smallIcon = Font.system(size: 12)
}
