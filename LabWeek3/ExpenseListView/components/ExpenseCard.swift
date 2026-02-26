//
//  ExpenseCard.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct ExpenseCard: View {
    var category: String
    var date: String
    var needPercent: Int
    var wantPercent: Int
    var amount: String

    var body: some View {
        HStack(spacing: 12) {
            // Icon
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.blue)
                    .frame(width: 52, height: 52)
                Image(systemName: "fork.knife")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }

            // Middle content
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Text(category)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.primary)

                    // Need indicator
                    HStack(spacing: 4) {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 8, height: 8)
                        Text("\(needPercent)% Need")
                            .font(.system(size: 12))
                            .foregroundColor(.primary)
                    }

                    // Want indicator
                    HStack(spacing: 4) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 8, height: 8)
                        Text("\(wantPercent)% Want")
                            .font(.system(size: 12))
                            .foregroundColor(.primary)
                    }
                }

                HStack {
                    Text(date)
                        .font(.system(size: 13))
                        .foregroundColor(.blue)

                    Spacer()

                    Text(amount)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.blue)
                }
            }

            // Chevron
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.system(size: 14, weight: .semibold))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color(.systemBackground))
    }
}

#Preview {
    ExpenseCard(
        category: "Food",
        date: "02/10/2025 09:46",
        needPercent: 75,
        wantPercent: 25,
        amount: "Rp 50.000"
    )
}
