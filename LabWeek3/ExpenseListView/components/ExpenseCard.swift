//
//  ExpenseCard.swift
//  LabWeek3
//
//  Created by Jason Tio on 26/02/26.
//

import SwiftUI

struct ExpenseCard: View {
    var category: String
    var date: String
    var needPercent: Int
    var wantPercent: Int
    var amount: String

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color.blue)
                    .frame(width: 56, height: 56)
                Image(systemName: "fork.knife")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }

            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 0) {
                    Text(category)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)

                    Spacer()

                    HStack(spacing: 10) {
                        HStack(spacing: 5) {
                            Circle()
                                .fill(Color.green)
                                .frame(width: 10, height: 10)
                            Text("\(needPercent)% Need")
                                .font(.system(size: 13))
                                .foregroundColor(.black)
                        }
                        HStack(spacing: 5) {
                            Circle()
                                .fill(Color.red)
                                .frame(width: 10, height: 10)
                            Text("\(wantPercent)% Want")
                                .font(.system(size: 13))
                                .foregroundColor(.black)
                        }
                    }
                }

                HStack {
                    Text(date)
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.blue)

                    Spacer()

                    Text(amount)
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.blue)
                }
            }

            Image(systemName: "chevron.right")
                .foregroundColor(Color(.systemGray3))
                .font(.system(size: 14, weight: .semibold))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 2)
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
