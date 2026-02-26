//
//  app.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct ExpenseItem: Identifiable {
    let id = UUID()
    var category: String
    var date: String
    var needPercent: Int
    var wantPercent: Int
    var amount: String
}

struct ExpenseListView: View {
    @State private var searchText: String = ""

    var filteredExpenses: [ExpenseItem] {
        if searchText.isEmpty {
            return expenses
        } else {
            return expenses.filter { $0.category.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                HStack(spacing: 6) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(.systemGray))
                        .font(.system(size: 15))
                    TextField("Value", text: $searchText)
                        .font(.system(size: 15))
                }
                .padding(.horizontal, 14)
                .padding(.vertical, 10)
                .background(Color(.systemBackground))
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(Color(.systemGray3), lineWidth: 1)
                )

                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .medium))
                        .frame(width: 42, height: 42)
                        .background(Color(.systemBackground))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.systemGray3), lineWidth: 1)
                        )
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            .padding(.bottom, 12)
            .background(Color(.systemBackground))

            ScrollView {
                VStack(spacing: 0) {
                    ForEach(filteredExpenses) { expense in
                        ExpenseCard(
                            category: expense.category,
                            date: expense.date,
                            needPercent: expense.needPercent,
                            wantPercent: expense.wantPercent,
                            amount: expense.amount
                        )
                        Divider()
                            .padding(.leading, 80)
                    }
                }
                .background(Color(.systemBackground))
            }
            .background(Color(.systemBackground))
        }
        .background(Color(.systemBackground))
        .navigationBarHidden(true)
    }
}

#Preview {
    ExpenseListView()
}
