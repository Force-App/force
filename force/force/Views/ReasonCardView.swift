//
//  ReasonCardView.swift
//  force
//
//  Created by Matthew Fang on 5/31/25.
//

import SwiftUI

struct ReasonCardView: View {
    var totalVotes: Int
    var vote: VoteType
    var reason: String

    var body: some View {
        Button {
            print("whole card tapped! go to reason detail view!")
        } label: {
            ZStack {
                Rectangle()
                    .foregroundStyle(vote.color)
                VStack(alignment: .leading) {
                    Text("\(reason)")
                        .font(.heading3)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.black)
                    Spacer()
                    HStack {
                        Text("\(Int(Double(vote.votes) / Double(totalVotes) * 100))%")
                            .font(.caption3)
                            .foregroundStyle(.black)
                        Spacer()
                        Button {
                            print("go to reason detail view!")
                        } label: {
                            Image(systemName: "chevron.right")
                                .font(.smallIcon)
                                .foregroundStyle(.black)
                        }
                    }
                }
                .padding(Spacing.m)
            }
            .aspectRatio(1, contentMode: .fit)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ReasonCardView(totalVotes: 50, vote: .yes(25), reason: "Life begins at conception. Abortion is murder.")
        .frame(width: 180)
}
