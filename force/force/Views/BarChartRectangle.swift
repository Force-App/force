//
//  BarChartRectangle.swift
//  force
//
//  Created by Matthew Fang on 5/31/25.
//

import SwiftUI

struct BarChartRectangle: View {
    var totalVotes: Int
    var vote: VoteType
    var width: CGFloat

    var body: some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .foregroundStyle(vote.color)
                .frame(width: width * CGFloat(vote.votes) / CGFloat(totalVotes))
            VStack(spacing: 0) {
                Text(vote.label)
                    .font(.caption1)
                Text("\(Int(Double(vote.votes) / Double(totalVotes) * 100))%")
                    .font(.caption2)
            }
            .padding(.bottom, Spacing.m)
        }
    }
}

enum VoteType {
    case yes(Int)
    case no(Int)

    var color: Color {
        switch self {
        case .yes: return .lightYellow
        case .no: return .lightBlue
        }
    }

    var label: String {
        switch self {
        case .yes: return "Yes"
        case .no: return "No"
        }
    }

    var votes: Int {
        switch self {
        case .yes(let votes), .no(let votes): return votes
        }
    }
}

#Preview {
    BarChartRectangle(totalVotes: 100, vote: .yes(50), width: 100)
}
