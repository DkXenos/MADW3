//
//  app.swift
//  LabWeek3
//
//  Created by Jason TIo on 26/02/26.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.4, green: 0.85, blue: 0.55),
                    Color(red: 0.35, green: 0.70, blue: 0.95)
                ]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 16) {
                Text("Create an account")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.bottom, 4)

                Button(action: {}) {
                    HStack(spacing: 10) {
                        Image(systemName: "globe")
                            .foregroundColor(.blue)
                            .font(.system(size: 18))
                        Text("Sign in with Google")
                            .foregroundColor(.blue)
                            .font(.system(size: 16, weight: .medium))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.12), radius: 6, x: 0, y: 3)
                }

                Text("or")
                    .foregroundColor(.secondary)
                    .font(.system(size: 14))

                HStack(spacing: 12) {
                    TextField("First Name", text: $firstName)
                        .padding(14)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                    TextField("Last Name", text: $lastName)
                        .padding(14)
                        .background(Color(.systemGray6))
                        .cornerRadius(12)
                }

                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding(14)
                    .background(Color(.systemGray6))
                    .cornerRadius(12)

                HStack {
                    if showPassword {
                        TextField("Password", text: $password)
                    } else {
                        SecureField("Password", text: $password)
                    }
                    Button(action: { showPassword.toggle() }) {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundColor(.secondary)
                    }
                }
                .padding(14)
                .background(Color(.systemGray6))
                .cornerRadius(12)

                Button(action: {}) {
                    Text("Create account")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .bold))
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(Color(red: 0.36, green: 0.51, blue: 0.93))
                        .cornerRadius(14)
                }
                .padding(.top, 4)

                Text("Signing up means you agree to the Privacy Policy and Terms of Service.")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)

                HStack(spacing: 4) {
                    Text("Have an account?")
                        .foregroundColor(.secondary)
                        .font(.system(size: 14))
                    Button(action: {}) {
                        Text("Log in here")
                            .foregroundColor(.blue)
                            .font(.system(size: 14, weight: .medium))
                    }
                }
                .padding(.top, 4)
            }
            .padding(28)
            .background(Color.white)
            .cornerRadius(28)
            .shadow(color: Color.black.opacity(0.08), radius: 20, x: 0, y: 8)
            .padding(.horizontal, 24)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    SignUpView()
}
