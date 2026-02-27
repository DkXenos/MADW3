//
//  ExpenseListView.swift
//  LabWeek3
//
//  Created by Jason Tio on 26/02/26.
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

    let pageBackground = Color(red: 0.92, green: 0.95, blue: 1.0)

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
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .stroke(Color(.systemGray4), lineWidth: 1)
                )

                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(.primary)
                        .font(.system(size: 16, weight: .medium))
                        .frame(width: 42, height: 42)
                        .background(Color.white)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.systemGray4), lineWidth: 1)
                        )
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 16)
            .padding(.bottom, 12)
            .background(pageBackground)

            ScrollView {
                VStack(spacing: 12) {
                    ForEach(filteredExpenses) { expense in
                        ExpenseCard(
                            category: expense.category,
                            date: expense.date,
                            needPercent: expense.needPercent,
                            wantPercent: expense.wantPercent,
                            amount: expense.amount
                        )
                        .padding(.horizontal, 0)
                    }
                }
                .padding(.vertical, 12)
                .background(pageBackground)
            }
            .background(pageBackground)
        }
        .background(pageBackground)
        .navigationBarBackButtonHidden(false)
        .navigationTitle("Expense List")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ExpenseListView()
}
