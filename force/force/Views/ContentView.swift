//
//  ContentView.swift
//  force
//
//  Created by Matthew Fang on 5/31/25.
//

import SwiftUI

struct ContentView: View {
    let totalVotes: Int
    let yesData: [(String, VoteType)] = [("Life begins at conception. Abortion is murder.", .yes(3)),
                                         ("There are alternatives to abortion, like adoption.", .yes(2)),
                                         ("Abortion destroys human life and makes life appear cheap and disposable.", .yes(1))]
    let noData: [(String, VoteType)] = [("A woman has the right to choose what to do with her body.", .no(2)),
                                        ("In the case of rape, it would be lacking in compassion to deny a woman the right to an abortion.", .no(2)),
                                        ("Stopping legal abortions would mean a return to 'back street' abortions", .no(1))]

    let columns = [
        GridItem(.adaptive(minimum: 150)),
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: Spacing.xl) {
                    header
                        .padding(.top, Spacing.xl)
                    reasons
                }
                .padding()
            }
        }
    }

    var header: some View {
        VStack(alignment: .leading, spacing: Spacing.l) {
            Text("Should abortion be legal in the second trimester?")
                .font(.heading1)
            BarChartView(totalVotes: totalVotes, votesA: 3, votesB: 2)
                .frame(height: 200)
        }
    }

    var reasons: some View {
        VStack(alignment: .leading, spacing: Spacing.l) {
            Text("Reasons")
                .font(.heading2)

            // TODO: fix missing button animation
            // TODO: can this be done with a lazygrid?

            HStack(spacing: Spacing.l) {
                VStack(spacing: Spacing.l) {
                    ForEach(yesData, id: \.0) { reason, vote in
                        ReasonCardView(totalVotes: totalVotes, vote: vote, reason: reason)
                    }
                }

                VStack(spacing: Spacing.l) {
                    ForEach(noData, id: \.0) { reason, vote in
                        ReasonCardView(totalVotes: totalVotes, vote: vote, reason: reason)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView(totalVotes: 5)
}
