//
//  BarChartView.swift
//  force
//
//  Created by Matthew Fang on 5/31/25.
//

import SwiftUI

struct BarChartView: View {
    var totalVotes: Int
    var votesA: Int
    var votesB: Int

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                BarChartRectangle(totalVotes: totalVotes, vote: .yes(votesA), width: geometry.size.width)
                BarChartRectangle(totalVotes: totalVotes, vote: .no(votesB), width: geometry.size.width)
            }
        }
    }
}

#Preview {
    BarChartView(totalVotes: 100, votesA: 50, votesB: 50)
}
