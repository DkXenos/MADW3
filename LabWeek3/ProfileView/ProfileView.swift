import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .bottom) {
            Image("businessguy")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(
                gradient: Gradient(colors: [.black.opacity(0.8), .clear]),
                startPoint: .bottom,
                endPoint: .center
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(alignment: .center, spacing: 8) {
                        Text("Natasha Romanoff")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(.blue)
                            .font(.system(size: 20))
                    }
                    
                    Text("I'm a Brand Designer who focuses on clarity & emotional connection.")
                        .font(.system(size: 16))
                        .foregroundColor(.white.opacity(0.8))
                }
                
                HStack(spacing: 40) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 4) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                .font(.system(size: 14))
                            Text("4.8")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.white)
                        }
                        Text("Rating")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("$45k+")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                        Text("Earned")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("$50/hr")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                        Text("Rate")
                            .font(.system(size: 14))
                            .foregroundColor(.white.opacity(0.7))
                    }
                    
                    Spacer()
                }
                
                HStack(spacing: 16) {
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "envelope")
                            Text("Get In Touch")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(30)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "bookmark")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                    }
                }
                .padding(.top, 10)
                
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 48)

            // Custom back button
            VStack {
                HStack {
                    Button(action: { dismiss() }) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.black.opacity(0.3))
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 56)
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ProfileView()
}
